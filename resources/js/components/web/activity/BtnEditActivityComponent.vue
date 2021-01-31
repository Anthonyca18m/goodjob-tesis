<template>
    <div>
        <button class="btn btn-primary btn-sm float-left m-1" data-toggle="modal" :data-target="'#ModalEditActivity' + activity_id" @click="getActivity">Editar Información</button>

        <div class="modal fade" :id="'ModalEditActivity' + activity_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Formulario Editar Actividad</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Titulo</label>
                                <input type="text" v-model.trim="activity.title" class="form-control">
                                <span v-if="errors.title" :class="['text-danger']">{{ errors.title[0] }}</span>
                            </div>
                            <div class="col-md-4">
                                <label>Fecha de Inicio:</label>
                                <input type="date" v-model.trim="activity.date_init" class="form-control">
                                <span v-if="errors.date_init" :class="['text-danger']">{{ errors.date_init[0] }}</span>
                            </div>
                            <div class="col-md-4">
                                <label>Fecha Fin:</label>
                                <input type="date" v-model.trim="activity.date_end" class="form-control">
                                <span v-if="errors.date_end" :class="['text-danger']">{{ errors.date_end[0] }}</span>
                            </div>
                            <div class="col-md-12 mt-2">
                                <label>Descripción:</label>
                                <textarea  cols="30" rows="10" v-model.trim="activity.description" class="form-control" style="height: 150px;"></textarea>
                                <span v-if="errors.description" :class="['text-danger']">{{ errors.description[0] }}</span>
                            </div>
                            <div class="col-md-4 mt-2">
                                <label>Distrito:</label>
                                <select v-model="activity.district" class="form-control">
                                    <option v-for="(district, index) in districts" :key="index" :value="district.id">{{ district.name }}</option>
                                </select>
                                <span v-if="errors.district" :class="['text-danger']">{{ errors.district[0] }}</span>
                            </div>
                            <div class="col-md-4 mt-2">
                                <label>Dirección:</label>
                                <input type="text" v-model.trim="activity.address" placeholder="Ingrese dirección" class="form-control">
                                <span v-if="errors.address" :class="['text-danger']">{{ errors.address[0] }}</span>
                            </div>
                            <div class="col-md-4 mt-2">
                                <label>Url de Dirección:</label>
                                <input type="url" v-model.trim="activity.reference_address" placeholder="Ingrese url de google maps" class="form-control">
                                <span v-if="errors.reference_address" :class="['text-danger']">{{ errors.reference_address[0] }}</span>
                            </div>
                            <div class="col-md-6 mt-2">
                                <label>Monto de Recompensa: (Monto en Soles)</label>
                                <input type="number" v-model.trim="activity.reward" class="form-control">
                                <span v-if="errors.reward" :class="['text-danger']">{{ errors.reward[0] }}</span>
                            </div>
                            <div class="col-md-6 mt-2">
                                <label>Personas requeridas: </label>
                                <input type="number" class="form-control" v-model.trim="activity.person_required">
                                <span v-if="errors.person_required" :class="['text-danger']">{{ errors.person_required[0] }}</span>
                            </div>
                            <div class="col-md-12">
                                <button class="btn btn-primary border float-right mt-2" @click="updateActivity">Actualizar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'btn-edit-activity-component',
    props: ['activity_id'],
    data: () => ({
        activity: {
            id: '',
            title: '',
            date_init: '',
            date_end: '',
            description: '',
            district: '',
            address: '',
            reference_address: '',
            person_required: '',
            reward: '',
        },
        districts: [],
        errors: [],
    }),
    methods: {
        init(data){
            this.activity.id = this.activity_id
            this.activity.title = data.title
            this.activity.person_required = data.person_required
            this.activity.date_init = data.date_init
            this.activity.date_end = data.date_end
            this.activity.description = data.description
            this.activity.district = data.ubigeo
            this.activity.address = data.address
            this.activity.reference_address = data.address_reference
            this.activity.reward = data.reward.reward
        },
        getActivity(){
            axios.get(`api/web/activity/show/${this.activity_id}`)
                .then(({data}) => {
                    this.getDistricts()
                    this.init(data)
                }).catch((err) => {
                    console.log(err)
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
        updateActivity(){
            axios.post('api/web/activity/update', this.activity)
            .then(() => {
                Swal.fire(  'Actualizado!',  'Se ha actualizado exitosamente!',  'success')
            }).catch((err) => {
                if (err.response.status == 422) {
                    this.errors = err.response.data.errors
                }
            })
        },
    },
}
</script>

<style>

</style>
