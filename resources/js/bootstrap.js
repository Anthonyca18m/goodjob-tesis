window._ = require('lodash');

/**
 * We'll load jQuery and the Bootstrap jQuery plugin which provides support
 * for JavaScript based Bootstrap features such as modals and tabs. This
 * code may be modified to fit the specific needs of your application.
 */

try {
    window.Popper = require('popper.js').default;
    window.$ = window.jQuery = require('jquery');

    require('bootstrap');
} catch (e) {}

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
window.axios.defaults.headers.common['Authorization'] =  "Bearer " + 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMGM0Y2FhYjIxZjY1NGViZGQxYjcxMmI5OTNjYzgxN2RmNDUwYTkxNGUwNGY5ZWQwNmI0MWI3YzBhMGRhNDBjYmFiMDYxMDY5Mzk5ZmM0MDMiLCJpYXQiOiIxNjExNTg2NzcxLjQyMjIzOCIsIm5iZiI6IjE2MTE1ODY3NzEuNDIyMjQyIiwiZXhwIjoiMTY0MzEyMjc3MS40MTUzODMiLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.D4XhUOpWVMgFVJsss0vXdXpzteHANma5Vkwv-8bw20m_E7_pDQT4XASMLORA6o6kfGxEeJStBrOnTN8uMFZbEiRlYvVzTThbGpDInATf2iBu5i9V6bPH7xJ0tfF6G06Vk4SoS1MLE0ZEF-a1QEDGKl_cwfSwMbb7Qr2juZ5bh7c8dk_NrcMAdGUp_y3FInwX4dNiCGmsqO6H8a_UR69Nbk60sNtI8tWjQH_TvZnLSyt_u4DlVhWyJp4MSDxghp2pRd-OW0cGmw9cMWY1-VAMRQWpx4pn1On1PHK0duiH8Ox1Lw10OeISHLhGLnFH6AziwwbLZ9HHYe02kqfhDswlozh2px6memHWJ1sBJCWwl8UtDwjCcC78P4CQIphXiP4PaEd4UgCurzWXvyqk0_BImeoohAtJcNWaT7U7el3nLiD3cAodiMJpaXgguVzdy1xETJwKQ8dZ5pYmihD8V_oUCBQLKYhrVDBxAhUqnSx1WodCnOvX9iLIC-NwwhkcvVhmcMfMZNRRRUXSqvT1XC4fjK_PbOhzJG0LAWRNaP3tDjtJhOE9jY9Rp8xO-lW3z23oR9WQ6VhD8WCcwM0GOCd0nAoQaP4L93R8hgwH479aUAlb5eQ8YytGxZ4uZ3t34XCdPetlvh-PRmzj7k_GP_4ZVXHQsnMgv56LzYcpDEN6hOo';
axios.defaults.headers.post['Content-Type'] = 'multipart/form-data';
axios.defaults.baseURL = process.env.APP_URL;

/**
 * We'll load the axios HTTP library which allows us to easily issue requests
 * to our Laravel back-end. This library automatically handles sending the
 * CSRF token as a header based on the value of the "XSRF" token cookie.
 */

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

/**
 * Echo exposes an expressive API for subscribing to channels and listening
 * for events that are broadcast by Laravel. Echo and event broadcasting
 * allows your team to easily build robust real-time web applications.
 */

// import Echo from 'laravel-echo';

// window.Pusher = require('pusher-js');

// window.Echo = new Echo({
//     broadcaster: 'pusher',
//     key: process.env.MIX_PUSHER_APP_KEY,
//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,
//     encrypted: true
// });
