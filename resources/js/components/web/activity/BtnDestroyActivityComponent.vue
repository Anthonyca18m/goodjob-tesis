<template>
    <button class="btn btn-danger btn-sm float-right m-1" @click="question">Eliminar</button>
</template>

<script>
export default {
    name: 'btn-destroy-activity-component',
    props: ['activity_id'],
    data: () => ({

    }),
    methods: {
        question(){
            Swal.fire({
                title: 'Estas seguro?',
                text: "Esta acción no tiene reversa!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si eliminar'
                }).then((result) => {
                    if (result.isConfirmed) {
                        this.destroy()
                    }
            })
        },
        destroy(){
            axios.delete(`api/web/activity/destroy/${this.activity_id}`)
                .then(({data}) => {
                    Swal.fire(  'Eliminado!',  'La actividad ha sido eliminado exitosamente!',  'success')
                    window.location.reload()
                }).catch((err) => {
                    if (err.response.status == 422) {
                        Swal.fire(  'Oops!',  err.response.data,  'error')
                    }
                })
        }
    }
}
</script>

<style>

</style>
