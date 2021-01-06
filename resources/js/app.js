require('./bootstrap');
window.Vue = require('vue');
import VueHasErrorLaravel from 'vue-has-error-laravel'
import moment from "moment"

const Swal = require('sweetalert2')
const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.addEventListener('mouseenter', Swal.stopTimer)
      toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
})
window.Swal = Swal
window.Toast = Toast

Vue.use(VueHasErrorLaravel,{
    className:'is-invalid',
    tagName:'div',
    tagClassName:'invalid-feedback',
    showErrorMessage:true
})

moment.locale('es')
Vue.filter('mydate_messages', function(date_at){
    return moment(date_at).format('LLL a') // September 16, 2020 1:28 PM
})



const files = require.context('./', true, /\.vue$/i)
files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))




const app = new Vue({
    el: '#app',
});
