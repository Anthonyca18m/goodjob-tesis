<template>
    <div class="row">
        <div class="col-md-12 text-center">
            <h3>Mi Perfil</h3>
            <img :src="photo" class="img-fluid img-profile" width="100">
            <button class="d-block mx-auto mt-2 btn btn-sm btn-primary">Cambiar imagen de perfil</button>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos Básicos</h5>
                    <button class="btn btn-sm btn-primary float-right" v-show="!editbasic" @click="EnableEditBasic">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right" v-show="editbasic" @click="CancelBasic">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2" v-show="editbasic" @click="saveBasic">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4" v-show="user.account_type_id == 1">
                            <label>Nombre Completo:</label>
                            <input v-model.trim="basic.name" type="text" class="form-control" :disabled="!editbasic">
                            <span v-if="errors.name" class="text-danger">{{ errors.name[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 1">
                            <label>Tipo de Documento:</label>
                            <select v-model.trim="basic.document_type" class="form-control" :disabled="!editbasic">
                                <option value="">Seleccionar Documento</option>
                                <option value="1">DNI</option>
                                <option value="2">CE</option>
                            </select>
                            <span v-if="errors.document_type" class="text-danger">{{ errors.document_type[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 1">
                            <label>Nro de Documento:</label>
                            <input type="text" v-model.trim="basic.document"  class="form-control" :disabled="!editbasic">
                            <span v-if="errors.document" class="text-danger">{{ errors.document[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 2">
                            <label>Razón Social:</label>
                            <input type="text" v-model.trim="basic.trade_name" class="form-control" :disabled="!editbasic">
                            <span v-if="errors.trade_name" class="text-danger">{{ errors.trade_name[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 2">
                            <label>Nombre Comercial:</label>
                            <input type="text" v-model.trim="basic.bussines_name" class="form-control" :disabled="!editbasic">
                            <span v-if="errors.bussines_name" class="text-danger">{{ errors.bussines_name[0] }}</span>
                        </div>
                        <div class="col-md-4">
                            <label>RUC:</label>
                            <input type="text" v-model.trim="basic.ruc" class="form-control" :disabled="!editbasic">
                            <span v-if="errors.ruc" class="text-danger">{{ errors.ruc[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 1">
                            <label>Fecha de Nacimiento:</label>
                            <input type="date" v-model.trim="basic.date_nac" class="form-control" :disabled="!editbasic">
                            <span v-if="errors.date_nac" class="text-danger">{{ errors.date_nac[0] }}</span>
                        </div>
                        <div class="col-md-4" v-show="user.account_type_id == 1">
                            <label>Género:</label>
                            <select v-model.trim="basic.gener" class="form-control" :disabled="!editbasic">
                                <option value="">Seleccionar Género</option>
                                <option value="1">Hombre</option>
                                <option value="2">Mujer</option>
                            </select>
                            <span v-if="errors.gener" class="text-danger">{{ errors.gener[0] }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Contacto</h5>
                    <button class="btn btn-sm btn-primary float-right" v-show="!editcontact" @click="EnableEditContact">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right" v-show="editcontact" @click="CancelContact">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2" v-show="editcontact" @click="saveContact">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Celular:</label>
                            <input type="text" v-model.trim="contact.phone" class="form-control" :disabled="!editcontact">
                            <span v-if="errors.phone" class="text-danger">{{ errors.phone[0] }}</span>
                        </div>
                        <div class="col-md-6">
                            <label>Email Opcional:</label>
                            <input type="email" v-model.trim="contact.email_opt" class="form-control" :disabled="!editcontact">
                            <span v-if="errors.email_opt" class="text-danger">{{ errors.email_opt[0] }}</span>
                        </div>
                        <div class="col-md-3">
                            <label>Facebook:</label>
                            <input type="url" v-model.trim="contact.facebook" class="form-control" placeholder="Ingrese url de Facebook" :disabled="!editcontact">
                            <span v-if="errors.facebook" class="text-danger">{{ errors.facebook[0] }}</span>
                        </div>
                        <div class="col-md-3">
                            <label>Twitter:</label>
                            <input type="url" v-model.trim="contact.twitter" class="form-control" placeholder="Ingrese url de Twitter" :disabled="!editcontact">
                            <span v-if="errors.twitter" class="text-danger">{{ errors.twitter[0] }}</span>
                        </div>
                        <div class="col-md-3">
                            <label>Linkedin:</label>
                            <input type="url" v-model.trim="contact.linkedin" class="form-control" placeholder="Ingrese url de Linkedin" :disabled="!editcontact">
                            <span v-if="errors.linkedin" class="text-danger">{{ errors.linkedin[0] }}</span>
                        </div>
                        <div class="col-md-3">
                            <label>Github:</label>
                            <input type="url" v-model.trim="contact.github" class="form-control" placeholder="Ingrese url de Github" :disabled="!editcontact">
                            <span v-if="errors.github" class="text-danger">{{ errors.github[0] }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Dirección</h5>
                    <button class="btn btn-sm btn-primary float-right" v-show="!editaddress" @click="EnableEditAddress">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right" v-show="editaddress" @click="CancelAddress">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2" v-show="editaddress" @click="saveAddress">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Departamento:</label>
                            <select v-model="department" class="form-control" @change="getProvinces" :disabled="!editaddress">
                                <option value="">Seleccionar Departamento</option>
                                <option v-for="(depart, index) in departments" :key="index" :value="depart.id">{{ depart.name }}</option>
                            </select>
                            <span v-if="errors.department" class="text-danger">{{ errors.department[0] }}</span>
                        </div>
                        <div class="col-md-4">
                            <label>Provincia:</label>
                            <select v-model="province" class="form-control" @change="getDistricts" :disabled="!editaddress">
                                <option value="">Seleccionar Provincia</option>
                                <option v-for="(prov, index) in provinces" :key="index" :value="prov.id">{{ prov.name }}</option>
                            </select>
                            <span v-if="errors.province" class="text-danger">{{ errors.province[0] }}</span>
                        </div>
                        <div class="col-md-4">
                            <label>Distrito:</label>
                            <select v-model="address.ubigeo" class="form-control" :disabled="!editaddress">
                                <option value="">Seleccionar Distrito</option>
                                <option v-for="(district, index) in districts" :key="index" :value="district.id">{{ district.name }}</option>
                            </select>
                            <span v-if="errors.ubigeo" class="text-danger">{{ errors.ubigeo[0] }}</span>
                        </div>
                        <div class="col-md-6">
                            <label>Dirección:</label>
                            <input type="text" v-model.trim="address.address" class="form-control" :disabled="!editaddress">
                            <span v-if="errors.address" class="text-danger">{{ errors.address[0] }}</span>
                        </div>
                        <div class="col-md-6">
                            <label>Referencia:</label>
                            <input type="text" v-model.trim="address.address_reference" class="form-control" :disabled="!editaddress">
                            <span v-if="errors.address_reference" class="text-danger">{{ errors.address_reference[0] }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Pago</h5>
                    <button class="btn btn-sm btn-primary float-right" v-show="!editpayment" @click="EnableEditPayment">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right" v-show="editpayment" @click="CancelPayment">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2" v-show="editpayment" @click="CancelPayment">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <label>Número de Cuenta Bancaria:</label>
                            <input type="text" v-model.trim="payment.number_bank" class="form-control" :disabled="!editpayment">
                            <span v-if="errors.number_bank" class="text-danger">{{ errors.number_bank[0] }}</span>
                        </div>
                        <div class="col-md-4">
                            <label>Número de Cuenta Interbancario:</label>
                            <input type="text" v-model.trim="payment.number_ibank" class="form-control" :disabled="!editpayment">
                            <span v-if="errors.number_ibank" class="text-danger">{{ errors.number_ibank[0] }}</span>
                        </div>
                        <div class="col-md-3">
                            <label>Banco:</label>
                            <select v-model="payment.bank" class="form-control" :disabled="!editpayment">
                                <option value="">Seleccionar banco</option>
                                <option v-for="(bank, index) in banks" :key="index" :value="bank.id">{{ bank.name }}</option>
                            </select>
                            <span v-if="errors.bank" class="text-danger">{{ errors.bank[0] }}</span>
                        </div>
                        <div class="col-md-2">
                            <label class="text-white">Label bottum</label>
                            <button class="btn btn-success" :disabled="!editpayment" @click="addNumberBank">Agregar</button>
                        </div>
                        <div class="col-md-12 mt-3">
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Número de Cuenta Bancaria</th>
                                        <th>Número de Cuenta Interbancario</th>
                                        <th>Banco</th>
                                        <th>Estado</th>
                                        <th class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(account, index) in account_banks" :key="index">
                                        <td>{{ index + 1 }}</td>
                                        <td>{{ account.number }}</td>
                                        <td>{{ account.number_inter }}</td>
                                        <td>{{ account.bank.name }}</td>
                                        <td>{{ (account.status == 1) ? 'Activo' : 'Desactivado' }}</td>
                                        <td class="text-center">
                                            <i class="fas fa-plus-circle btn btn-sm text-success border" title="Activar" @click="StatusAccountBank(account.id)" v-if="account.status == 0"></i>
                                            <i class="fas fa-minus-circle btn btn-sm text-danger border" title="Desactivar" @click="StatusAccountBank(account.id)" v-if="account.status == 1"></i>
                                            <i class="fas fa-trash-alt btn btn-sm border" title="Eliminar" @click="dropAccountBank(account.id)"></i>
                                        </td>
                                    </tr>
                                    <tr v-show="account_banks.length <= 0">
                                        <td colspan="5" class="text-center">No hay números de cuenta para recibir pagos.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'form-profile-client-component',
    props: ['user'],
    data: () => ({
        errors: [],
        editbasic: false,
        editcontact: false,
        editaddress: false,
        editpayment: false,
        basic: {
            id: '',
            name: '',
            document_type: '',
            document: '',
            trade_name: '',
            bussines_name: '',
            ruc: '',
            date_nac: '',
            gener: '',
            updated: 'basic',
        },
        contact: {
            id: '',
            phone: '',
            email_opt : '',
            facebook: '',
            twitter: '',
            linkedin: '',
            github: '',
            updated: 'contact',
        },
        address: {
            id: '',
            ubigeo: '',
            address: '',
            address_reference: '',
            updated: 'address',
        },
        departments: [],
        provinces: [],
        districts: [],
        department: '',
        province: '',
        payment: {
            id: '',
            number_bank: '',
            number_ibank: '',
            bank: '',
        },
        banks: [],
        account_banks: [],
        photo: '',
    }),
    methods: {
        EnableEditBasic(){
            this.editbasic = !this.editbasic
            this.errors = []
        },
        CancelBasic(){
            this.editbasic = !this.editbasic
            this.errors = []
        },
        saveBasic(){
            axios.post('api/web/client/profile/update', this.basic)
                .then(() => {
                    this.CancelBasic()
                    Swal.fire(  'Actualizado',  'Información Básica actualizada exitosamente!',  'success')
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.errors = err.response.data.errors
                    }
                })
        },

        EnableEditContact(){
            this.editcontact = !this.editcontact
            this.errors = []
        },
        CancelContact(){
            this.editcontact = !this.editcontact
            this.errors = []
        },
        saveContact(){
            axios.post('api/web/client/profile/update', this.contact)
                .then(() => {
                    this.CancelContact()
                    Swal.fire(  'Actualizado',  'Información de Contacto actualizada exitosamente!',  'success')
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.errors = err.response.data.errors
                    }
                })
        },

        EnableEditAddress(){
            this.editaddress = !this.editaddress
            this.errors = []
            this.getDepartments()
        },
        CancelAddress(){
            this.editaddress = !this.editaddress
            this.errors = []
        },
        saveAddress(){
            axios.post('api/web/client/profile/update', this.address)
                .then(() => {
                    this.CancelAddress()
                    Swal.fire(  'Actualizado',  'Información de Dirección actualizada exitosamente!',  'success')
                }).catch((err) => {
                    if (err.response.status == 422) {
                        this.errors = err.response.data.errors
                    }
                })
        },

        EnableEditPayment(){
            this.editpayment = !this.editpayment
            this.errors = []
            this.getBanks()
        },
        CancelPayment(){
            this.editpayment = !this.editpayment
            this.errors = []
        },
        addNumberBank(){
            axios.post('api/web/bank/store', this.payment)
            .then(() => {
                this.payment.number_bank = ''
                this.payment.number_ibank = ''
                this.payment.bank = ''
                this.errors = []
                Swal.fire( 'Agregado',  'Se ha agregado cuenta bancaria Exitosamente!',  'success')
                this.getNumberBanks()
            }).catch((err) => {
                if (err.response.status == 422) {
                    this.errors = err.response.data.errors
                }
            })
        },
        getNumberBanks(){
            axios.get(`api/web/bank/number/user/${this.user.id}`)
            .then(({data}) => {
                this.account_banks = data
            }).catch((err) => {
                console.log(err)
            })
        },

        init(){
            this.basic.id = this.user.id
            this.basic.name = this.user.profile.name
            this.basic.document_type = this.user.profile.type_document_id
            this.basic.document = this.user.profile.document
            this.basic.trade_name = this.user.profile.trade_name
            this.basic.ruc = this.user.profile.ruc
            this.basic.date_nac = this.user.profile.birth_date
            this.basic.gener = this.user.profile.gener

            this.contact.id = this.user.id
            this.contact.phone = this.user.profile.phone
            this.contact.email_opt = this.user.profile.email_opt
            this.contact.facebook = this.user.profile.facebook
            this.contact.twitter = this.user.profile.twitter
            this.contact.github = this.user.profile.github
            this.contact.linkedin = this.user.profile.linkedin

            this.address.id = this.user.id
            this.address.ubigeo = this.user.profile.ubigeo
            this.address.address = this.user.profile.address
            this.address.address_reference = this.user.profile.address_reference

            this.payment.id = this.user.id
            this.getNumberBanks()

            this.photo = this.user.image.resource
        },
        getDepartments(){
            axios.get('api/web/ubigeo/department')
            .then(({data}) => {
                this.departments = data
            }).catch((err) => {
                console.log(err)
            })
        },
        getProvinces(){
            axios.get(`api/web/ubigeo/province/${this.department}`)
            .then(({data}) => {
                this.provinces = data
            }).catch((err) => {
                console.log(err)
            })
        },
        getDistricts(){
            axios.get(`api/web/ubigeo/district/${this.province}`)
            .then(({data}) => {
                this.districts = data
            }).catch((err) => {
                console.log(err)
            })
        },
        getBanks(){
            axios.get('api/web/bank/list')
            .then(({data}) => {
                this.banks = data
            }).catch((err) => {
                console.log(err)
            })
        },
        dropAccountBank(id){
            const context = this
            Swal.fire({
                title: '¿Estás seguro de eliminar la cuenta?',
                icon: 'question',
                showDenyButton: true,
                confirmButtonText: 'Si, eliminar',
                denyButtonText: 'No estoy seguro',
            }).then((result) => {
                if (result.isConfirmed) {
                    axios.delete(`api/web/bank/user/delete/${id}`)
                        .then(() => {
                            context.getNumberBanks()
                            Swal.fire( 'Eliminado',  'Se ha eliminado exitosamente!',  'success')
                        }).catch((err) => {
                            console.log(err)
                        })
                }
            })
        },
        StatusAccountBank(id){
            axios.get(`api/web/bank/user/update/${id}`)
                .then(() => {
                    this.getNumberBanks()
                    Swal.fire( 'Actualizado',  'Estado actualizado exitosamente!.',  'success')
                }).catch((err) => {
                    console.log(err)
                })
        },
    },
    mounted(){
        this.init()
    }
}
</script>

<style>
.img-profile {
  border-radius: 50%;
}
</style>
