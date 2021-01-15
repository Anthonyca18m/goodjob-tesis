<template>
    <div class="card mb-3 shadow-sm">
        <div class="card-header bg-white" data-toggle="collapse" data-target=".collapse-post"
            aria-expanded="false" aria-controls="collapse-post" style="cursor: pointer;" @click="open">
            <p class="m-0">
                <span class="m-0 h5">Publicar actividad</span>
                <span class="text-muted">(Click para desplegar)</span>
                <i class="fad fa-chevron-double-down float-right"></i>
            </p>
        </div>
        <div class="card-body collapse collapse-post" id="collapse-post">
            <form method="POST" @submit.prevent="save" class="row" id="FormRegisterPost" enctype="multipart/form-data">
                <input type="hidden" name="user_id" :value="user_id">
                <div class="col-md-12">
                    <input type="text" v-model.trim="activity.title" name="title" class="form-control mb-2" v-has-error="'title'" placeholder="Ingresar titulo">
                </div>
                <div class="col-md-12">
                    <textarea v-model.trim="activity.description" name="description" class="form-control" v-has-error="'description'"
                    placeholder="Ingrese descripción" style="max-height:130px;"></textarea>
                </div>
                <div class="col-md-12 mt-2 d-flex">
                    <input type="text" v-model.trim="activity.tag" @keypress.enter="addTag" class="form-control mb-2 mr-2" placeholder="Ingrese tag">
                    <input type="text" v-model.trim="tags" name="tags" class="form-control mb-2" readonly>
                </div>
                <div class="col-md-12 mb-2">
                    <div class="custom-file mt-2">
                        <input type="file" class="custom-file-input" name="image" accept="image/*">
                        <label class="custom-file-label">Subir Imagen Principal</label>
                        <span v-has-error="'image'"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <label>Fecha de Inicio:</label>
                    <input v-model.trim="activity.date_init" type="datetime-local" v-has-error="'date_init'" name="date_init" class="form-control">
                </div>
                <div class="col-md-4">
                    <label>Fecha de Fin:</label>
                    <input v-model.trim="activity.date_end" type="datetime-local" v-has-error="'date_end'" name="date_end" class="form-control">
                </div>
                <div class="col-md-4">
                    <label>N° personas requeridas:</label>
                    <select v-model.trim="activity.nro_person" name="nro_person" v-has-error="'nro_person'" class="form-control">
                        <option value="" selected disabled>Seleccionar Nro</option>
                        <option v-for="(y, x) in 100" :key="x" :value="y">{{ y }}</option>
                    </select>
                </div>
                <div class="col-md-4 mt-2">
                    <label>Distrito:</label>
                    <select v-model.trim="activity.district" name="district" v-has-error="'district'" class="form-control">
                        <option value="" disabled selected>Seleccionar Distrito</option>
                        <option v-for="(district, index) in districts" :key="index" :value="district.id">{{ district.name }}</option>
                    </select>
                </div>
                <div class="col-md-4 mt-2">
                    <label>Dirección:</label>
                    <input v-model.trim="activity.address" type="text" v-has-error="'address'" name="address" class="form-control"
                    placeholder="Ingrese dirección">
                </div>
                <div class="col-md-4 mt-2">
                    <label>Url de Dirección:</label>
                    <input v-model.trim="activity.maps" type="url" v-has-error="'url_address'" name="url_address" class="form-control"
                    placeholder="Ingrese url de google maps">
                </div>
                <div class="col-md-12 mt-2">
                    <label>Monto de Recompensa: (Monto en Soles)</label>
                    <input v-model.trim="activity.amount" type="number" v-has-error="'amount'" name="amount" class="form-control">
                </div>
                <div class="col-md-12">
                    <p class="mt-2">
                        <b>Nota:</b> Peso máximo por imagen es 1024kb = 1MB <br>
                    </p>
                    <button class="btn btn-success border float-right mt-2">Publicar</button>
                    <p class="text-muted">Al registrarse la actividad podrá agregar más imagenes en su editor de actividades.</p>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    name: 'form-register-activity-component',
    props: ['user_id'],
    data: () => ({
        activity: {
            title: '',
            description: '',
            image: [],
            date_init: '',
            date_end: '',
            nro_person: 1,
            district: '',
            address: '',
            maps: '',
            tag: '',
            amount: 0,
        },
        tags: [],
        districts: [],
    }),
    methods: {
        save(){
            let formData = new FormData(event.target)
            axios.post('api/web/activity/register', formData)
                .then(({data}) => {
                    this.clear()
                    Swal.fire({
                        title: '¡Buen Trabajo!',
                        text: "Has registrado una nueva actividad en GoodJob!",
                        icon: 'success',
                        allowOutsideClick: false,
                        showCancelButton: false,
                        confirmButtonColor: '#F96302',
                        confirmButtonText: 'Aceptar',
                    }).then((result) => {
                        if (result.isConfirmed) {
                            location.href = ''
                        }
                    })
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.$setLaravelErrors(err.response.data.errors)
                    }
                })
        },
        getDistricts(){
            axios.get('api/web/ubigeo/district/1501')
                .then(({data}) => {
                    this.districts = data
                })
                .catch((err) => {
                    console.log(err)
                })
        },
        open(){
            if(this.districts.length <= 0)
            this.getDistricts()
        },
        clear(){
            this.activity.title = ''
            this.activity.description = ''
            this.activity.image = []
            this.activity.date_init = ''
            this.activity.date_end = ''
            this.activity.nro_person = 1
            this.activity.district = ''
            this.activity.address = ''
            this.activity.maps = ''
            this.activity.tag = ''
            this.activity.amount = 0
            this.tags = []
        },
        addTag(){
            if(this.activity.tag != ''){
                this.tags.push(this.activity.tag.replace(',', ''));
                this.activity.tag = ''
            }
        },
    },
    watch: {}
}
</script>

<style>

</style>
