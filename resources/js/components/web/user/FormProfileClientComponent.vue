<template>
    <div class="row">
        <div class="col-md-12 text-center">
            <h3>Mi Perfil</h3>
            <img :src="user.image.resource" class="img-fluid img-profile" width="100">
            <button class="d-block mx-auto mt-2 btn btn-sm btn-primary">Cambiar Foto de Perfil</button>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos Básicos</h5>
                    <button class="btn btn-sm btn-primary float-right">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Nombre Completo:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Tipo de Documento:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar Documento</option>
                                <option value="1">DNI</option>
                                <option value="2">CE</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label>Nro de Documento:</label>
                            <input type="text" name="" id="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Razón Social:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Nombre Comercial:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>RUC:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Fecha de Nacimiento:</label>
                            <input type="date" name="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Género:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar Género</option>
                                <option value="1">Hombre</option>
                                <option value="2">Mujer</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Contacto</h5>
                    <button class="btn btn-sm btn-primary float-right">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Celular:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label>Email Opcional:</label>
                            <input type="email" name="" class="form-control">
                        </div>
                        <div class="col-md-3">
                            <label>Facebook:</label>
                            <input type="url" name="" class="form-control" placeholder="Ingrese url de Facebook">
                        </div>
                        <div class="col-md-3">
                            <label>Twitter:</label>
                            <input type="url" name="" class="form-control" placeholder="Ingrese url de Twitter">
                        </div>
                        <div class="col-md-3">
                            <label>Linkedin:</label>
                            <input type="url" name="" class="form-control" placeholder="Ingrese url de Linkedin">
                        </div>
                        <div class="col-md-3">
                            <label>Github:</label>
                            <input type="url" name="" class="form-control" placeholder="Ingrese url de Github">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Dirección</h5>
                    <button class="btn btn-sm btn-primary float-right">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Departamento:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar Departamento</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label>Provincia:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar Provincia</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label>Distrito:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar Distrito</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Dirección:</label>
                            <input type="text" name="" id="" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label>Referencia:</label>
                            <input type="text" name="" id="" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="card">
                <div class="card-header bg-light pb-1 pt-2">
                    <h5 class="float-left">Datos de Pago</h5>
                    <button class="btn btn-sm btn-primary float-right">Editar</button>
                    <button class="btn btn-sm btn-secondary float-right">Cancelar</button>
                    <button class="btn btn-sm btn-success float-right mr-2">Guardar</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <label>Número de Cuenta Bancaria:</label>
                            <input type="text" name="" id="" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label>Número de Cuenta Interbancario:</label>
                            <input type="text" name="" id="" class="form-control">
                        </div>
                        <div class="col-md-3">
                            <label>Banco:</label>
                            <select name="" id="" class="form-control">
                                <option value="">Seleccionar banco</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <label class="text-white">Boton </label>
                            <button class="btn btn-success">Agregar</button>
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
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
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

    }),
    methods: {

    },
    mounted(){
        console.log(this.user)
    }
}
</script>

<style>
.img-profile {
  border-radius: 50%;
}
</style>
