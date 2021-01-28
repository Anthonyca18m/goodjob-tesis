<template>
<div class="modal fade" id="RegisterClientModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header mx-auto">
                <h5 class="modal-title text-center" id="exampleModalLabel">Formulario de Registro</h5>
                 <button type="button" class="close d-none close-model" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" @submit.prevent="register">
                    <input type="hidden" name="typeuser" :value="company" class="d-none">
                    <div class="row pl-5 pr-5">
                        <div class="col-md-6 text-center mb-3 border rounded">
                            <label class="m-1 btn btn-sm" @click.stop="company = false">Soy Persona <i class="fal fa-user"></i></label>
                        </div>
                        <div class="col-md-6 text-center mb-3 border rounded">
                            <label class="m-1 btn btn-sm" @click.stop="company = true">Soy Empresa <i class="fal fa-building"></i></label>
                        </div>
                        <div class="col-md-12 text-center" v-if="!company">
                            <label class="m-1">Nombre Completo:</label>
                            <input type="text" v-model.trim="client.name" name="name" v-has-error="'name'" class="form-control">
                        </div>
                        <div class="col-md-12 text-center" v-if="company">
                            <label class="m-1">Razón social:</label>
                            <input type="text" v-model.trim="client.businessname" name="businessname" v-has-error="'businessname'" class="form-control">
                        </div>
                        <div class="col-md-12 text-center" v-if="company">
                            <label class="m-1">Nombre Comercial:</label>
                            <input type="text" v-model.trim="client.tradename" name="tradename" v-has-error="'tradename'" class="form-control">
                        </div>
                        <div class="col-md-12 text-center mt-2">
                            <label>Identidad:</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                <select v-model.trim="client.type_document" name="type_document"  class="form-control">
                                    <option value="" selected disabled>Tipo de Documento</option>
                                    <option value="1" v-if="!company">DNI</option>
                                    <option value="2">RUC</option>
                                    <option value="3" v-if="!company">CE</option>
                                </select>
                                </div>
                                <input type="text" v-model.trim="client.document" name="document"   class="form-control">
                                <span v-has-error="'type_document'"></span>
                                <span v-has-error="'document'"></span>
                            </div>
                        </div>
                        <div class="col-md-12 text-center mt-2">
                            <label>Email: <small class="text-muted small">(Este será su usuario)</small></label>
                            <input type="email" v-model.trim="client.email" name="email" v-has-error="'email'"  class="form-control">
                        </div>
                        <div class="col-md-12 text-center mt-2">
                            <label>Contraseña: <small class="text-muted small">(Mínimo 6 dígitos)</small></label>
                            <input type="password" v-model.trim="client.password" name="password" v-has-error="'password'"  class="form-control">
                        </div>
                        <div class="col-md-12 text-center mt-2">
                            <label>Confirmar Contraseña:</label>
                            <input type="password" v-model.trim="client.repassword" name="repassword" v-has-error="'repassword'"  class="form-control">
                        </div>
                        <div class="col-md-12 text-center mt-3">
                            <button type="submit" class="btn btn-light border">Registrarme</button>
                        </div>
                        <div class="col-md-12 text-center">
                            <hr>
                            <p class="mb-2">O Regístrate con</p>
                            <a class="btn btn-primary border btn-sm">Regístrate con Facebook <i class="fab fa-facebook"></i></a>
                            <a class="btn btn-light border btn-sm">Regístrate con Google <i class="fab fa-google"></i></a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</template>

<script>
export default {
    name: 'modal-register-client-component',
    data: () => ({
        company: false,
        client: {
            name: '',
            businessname: '',
            tradename: '',
            type_document: '',
            document: '',
            email: '',
            password: '',
            repassword: '',
        },
    }),
    methods: {
        register(){
            const formData = new FormData(event.target)
            axios.post('api/web/client/store', formData)
                .then(({data}) => {
                    this.clearInputs()
                    this.type_document = ''
                    $('.close-model').click()
                    if(this.company == false ){
                        Swal.fire({
                            title: '¡Bienvenido a GoodJob!',
                            text: 'Te has registrado exitosamente!',
                            icon: 'success'
                        })
                    } else {
                        Swal.fire({
                            title: '¡Bienvenido a GoodJob!',
                            text: 'Te has registrado exitosamente, la cuenta se activará en un rango de 12 horas!',
                            icon: 'success'
                        })
                    }
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.$setLaravelErrors(err.response.data.errors)
                        if(err.response.data.errors.document != null){
                            Toast.fire({  icon: 'warning',  title: err.response.data.errors.document[0]})
                        }
                    }
                })
        },
        clearInputs(){
            this.client.name = ''
            this.client.businessname = ''
            this.client.tradename = ''
            this.client.document = ''
            this.client.email = ''
            this.client.password = ''
            this.client.repassword = ''
            this.$setLaravelErrors([])
        },
    },
    watch: {
        company: function (val){
            if(val == true){
                this.company = true
                this.client.type_document = 2
                this.clearInputs()
            } else {
                this.company = false
                this.client.type_document = ''
                this.clearInputs()
            }
        }
    }
}
</script>

<style>

</style>
