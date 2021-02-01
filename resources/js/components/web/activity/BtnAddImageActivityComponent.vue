<template>
    <div>
        <button class="btn btn-primary btn-sm float-left m-1" data-toggle="modal" :data-target="'#ModalAddImgActivity' + activity_id" @click="getImgs">Agregar Imagen</button>

        <div class="modal fade" :id="'ModalAddImgActivity' + activity_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Formulario Agregar Imagenes</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form @submit.prevent="saveImg" method="post">
                                    <input type="hidden" name="id" v-model="activity_id">
                                    <div class="row justify-content-center">
                                        <div class="col-md-5">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" name="image" accept="image/*">
                                                <label class="custom-file-label">Subir Imagen</label>
                                                <span v-has-error="'image'"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="submit" class="btn btn-success">Subir</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12 d-flex overflow-auto mt-2">
                                <figure v-for="(img, index) in imgs" :key="index" class="m-1 border rounded">
                                    <img :src="img.resource" class="img-fluid" width="300">
                                    <figcaption class="btn btn-danger d-block" @click="question(img.id)">Eliminar</figcaption>
                                </figure>
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
    name: 'btn-add-image-activity-component',
    props: ['activity_id'],
    data: () => ({
        imgs: [],
    }),
    methods: {
        saveImg(){
            let formData = new FormData(event.target)
            axios.post('api/web/activity/img/store', formData)
                .then(({data}) => {
                    this.getImgs()
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.$setLaravelErrors(err.response.data.errors)
                    }
                })
        },
        getImgs(){
            axios.get(`api/web/activity/img/list/${this.activity_id}`)
                .then(({data}) => {
                    this.imgs = data.resource
                }).catch((err) => {
                    console.log(err)
                })
        },
        question(id){
            Swal.fire({
                title: 'Estas seguro?',
                text: "Esta acción no tiene reversa.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si eliminar!'
                }).then((result) => {
                if (result.isConfirmed) {
                    this.destroy(id)
                }
            })
        },
        destroy(id){
            axios.delete(`api/web/activity/img/delete/${id}`)
                .then(() => {
                    Swal.fire( 'Eliminado!', 'Se ha eliminado el archivo del servidor.', 'success' )
                    this.getImgs()
                }).catch((err) => {
                    console.log(err)
                })
        },
    },
}
</script>

<style>

</style>
