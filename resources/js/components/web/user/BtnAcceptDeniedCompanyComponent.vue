<template>
    <div>
        <button v-if="!press && response == ''" class="btn btn-block btn-success m-2" @click="accept">Aceptar</button>
        <button v-if="!press && response == ''" class="btn btn-block btn-danger m-2" @click="denied">Rechazar</button>
        <span class="bg-success btn-block p-3 rounded text-light font-weight-bold text-center" v-if="response == 1">Aceptada</span>
        <span class="bg-danger btn-block p-3 rounded text-light font-weight-bold text-center" v-if="response == 2">Rechazada</span>
    </div>
</template>

<script>
export default {
    name: 'btn-accept-denied-company-component',
    props: ['company_id'],
    data: () => ({
        press: false,
        response: '',
    }),
    methods: {
        accept(){
            axios.post(`api/web/company/accept/${this.company_id}`)
                .then(() => {
                    this.press = true
                    this.response = 1
                    Swal.fire(  'Aceptado!',  'Se ha aceptado a la empresa a GOODJOB!',  'success')
                }).catch((err) => {
                    console.log(err)
                })
        },
        denied(){
            axios.post(`api/web/company/denied/${this.company_id}`)
                .then(() => {
                    this.press = true
                    this.response = 2
                    Swal.fire(  'Denegado!',  'Se ha denegado el registro a la empresa a GOODJOB!',  'success')
                }).catch((err) => {
                    console.log(err)
                })
        },
    },

}
</script>

<style>

</style>
