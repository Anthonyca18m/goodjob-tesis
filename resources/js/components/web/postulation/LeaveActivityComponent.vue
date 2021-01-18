<template>
    <button class="float-right btn btn-danger btn-sm" @click="question">Abandonar</button>
</template>

<script>
export default {
    name: 'leave-activity-component',
    props: ['postulation_id'],
    data: () => ({

    }),
    methods: {
        question(){
            Swal.fire({
                title: '¿Estás seguro de abandonar esta postulación?',
                icon : 'question',
                showDenyButton: true,
                confirmButtonText: 'Si, abandonar',
                denyButtonText: 'Cancelar',
            }).then((result) => {
                if (result.isConfirmed) {
                    this.leaveActivity()
                }
            })
        },
        leaveActivity(){
            axios.delete(`api/web/postulantion/delete/${this.postulation_id}`)
                .then(() => {
                    Swal.fire( 'Has abandonado',  'Lamentamos mucho tu salida de la actividad',  'success')
                    window.location.reload()
                }).catch((err) => {
                    console.log(err)
                })
        },
    },
}
</script>

<style>

</style>
