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
// window.axios.defaults.headers.common['Authorization'] =  "Bearer " + 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzdhM2YzNGQyNTc3NWE2ZWY5ZGIxNDM0M2YyZjk4MmE1ZDQ5NzRkMmU2MGIxZjY3MTg5YTdjZGYzYjk5NWVmMTY0NzlhODcxZTU1M2Q2NGMiLCJpYXQiOjE1OTYwMzU4NjUsIm5iZiI6MTU5NjAzNTg2NSwiZXhwIjoxNjI3NTcxODY1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.lgJ8l9dUZtBpadqbFhbCEyu6gGEEjsb_eXs9BZJzBmqPNzXm4OW5hKgpF7UHvkzzN7P9igU3ABdXNTZgrb7d5YTXRhp6itZ9IDHllt7OrNoquQzYm37La0HjQCZwo7093I3zrNDRAVwQqsUHQEMofo-eOzh1BXf0qH5qPQseH76UwT9mkDpQB5U5RluXWnbsjotQDt6inAhChUimTbliDGCQzhIg2yOwyLny5SoVFPpz2SuWuvAnD1MI0CMCy12_tOlySztrIHYKe62FgqNGd14zQWxsEzj7OMF6HMSrMjAe1PjvLkG3ABTg6EXN0R9Sk-KEFjt_GgpQJto8FenYvL1qzo6a1rHr2kMMca2tNTWaUakRdwOdWBJDAJ1wgSOhDa_Ck3DFtvQhYPv35GuY7TBnWlgovmKcVGP81C5Px8uCcxBj1DknBu3uqF_ryOF3YssTJOCBNLkRA1MGZbn_kt7XV8es-kSnOVYs3xgr3XmKBIBM5aQHSWAJotMZgUAWyogolwlwN9PBVseVrAb0oR9RgZQlzns5KRGBWucVCoRPNIb6lcEZmzTJzvX7PN6wcEeiM22njxjJzR4SpFPVsBxBLFEUKE2dMEshe12wWJsxLSIvUjppjEJHDi8Vql25izLWJtJqM685AKJQszsddJlOnaQpL66zVy8cUZPUeP8';
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
