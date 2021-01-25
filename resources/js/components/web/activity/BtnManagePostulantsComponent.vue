<template>
    <div>
        <button class="btn btn-primary btn-sm float-right m-1" data-toggle="modal"
            :data-target="'#modalGPActivity' + activity_id" @click="getPostulants">Gestionar Postulantes</button>
        <div class="modal fade" :id="'modalGPActivity' + activity_id" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title">Gestionar Postulantes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="d-flex mb-3">
                    <label>Lista de Postulantes: </label>
                    <select v-model="status" @change="getPostulants" class="form-control">
                        <option value="2">En espera</option>
                        <option value="1">Aceptados</option>
                        <option value="0">Rechazados</option>
                    </select>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th> Nombre Completo </th>
                            <th> Fecha de Postulación </th>
                            <th> Acciones </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(postulant, index) in postulants" :key="index">
                            <td>{{ postulant.profile.name }}</td>
                            <td>{{ postulant.created_at | mydate_messages }}</td>
                            <td v-if="postulant.status == 2">
                                <button class="btn border btn-light btn-sm" title="Aceptar Postulante" @click="accept(postulant)">Aceptar</button>
                                <button class="btn btn-danger btn-sm" title="Rechazar Postulante" @click="denied(postulant)">Rechazar</button>
                            </td>
                            <td v-else>
                                <span class="btn btn-success" v-if="postulant.status == 1">Aceptado</span>
                                <span class="btn btn-danger" v-if="postulant.status == 0">Rechazado</span>
                            </td>
                        </tr>
                        <tr v-if="postulants.length <= 0">
                            <td colspan="4" class="text-center">No hay registros disponibles</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            </div>
        </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'btn-manage-postulants-component',
    props: ['activity_id'],
    data: () => ({
        postulants: [],
        status: 2,
    }),
    methods: {
        getPostulants(){
            axios.get(`api/web/activity/postulants/${this.activity_id}`, {
                params: { status : this.status}
            })
                .then(({data}) => {
                    this.postulants = data
                }).catch((err) => {
                    console.log(err)
                })
        },
        accept(postulant){
            axios.post('api/web/postulation/accept', postulant)
                .then((result) => {
                    this.getPostulants()
                    Swal.fire(  'Aceptado!',  'Se ha notificado al usuario que ha sido aceptado a la actividad.',  'success')
                }).catch((err) => {
                    Swal.fire(  'Oops!',  'Ha ocurrido algo inesperado!',  'error')
                    console.log(err)
                })
        },
        denied(postulant){
            axios.post('api/web/postulation/denied', postulant)
                .then((result) => {
                    this.getPostulants()
                    Swal.fire(  'Rechazado!',  'Se ha notificado al usuario que ha sido rechazado a la actividad.',  'success')
                }).catch((err) => {
                    Swal.fire(  'Oops!',  'Ha ocurrido algo inesperado!',  'error')
                    console.log(err)
                })
        },
    }
}
</script>

<style>

</style>
