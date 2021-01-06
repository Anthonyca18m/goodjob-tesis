<template>
    <button @click="postulation" class="btn btn-danger btn-block m-2" title="Postular">
        Postular
    </button>
</template>

<script>
export default {
    name: 'btn-postulation-activity-component',
    props: ['activity_id'],
    data: () => ({

    }),
    methods: {
        postulation(){
            let form = new FormData()
            form.append('user_id', user_logeo.id)
            form.append('activity_id', this.activity_id)

            axios.post('api/web/postulation/register', form)
                .then(({data}) => {
                    if(data == 1){
                        Swal.fire(  'Ya postulaste',  'Solo se puede postular una sola vez por actividad!.',  'info')
                    } else {
                        Swal.fire(  'Postulación Exitosa',  'Te has postulado exitosamente!.',  'success')
                    }
                }).catch((err) => {
                    console.log(err)
                })
        },
    }

}
</script>

<style>

</style>
