<?php

use App\Models\Activity;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ActivitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $activity = Activity::create([
            'user_id' => 2,
            'title' => 'Que es Lorem Ipsum',
            'description' => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
            'date_init' => Carbon::now(),
            'date_end' => date('Y-m-d H:i:s', strtotime("+3 days")),
            'person_required' => 10,
            'address' => Str::random(150),
            'address_reference' => 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419',
            'ubigeo' => '160105',
            'country' => 'PE',
            'status' => 1
        ]);
        $activity->resource()->create([
            'type_resource_id' => 2,
            'resource' => 'https://cdne.diariocorreo.pe/redactor/uploads/2019/07/31/lima-calle.jpg',
        ]);



        $activity = Activity::create([
            'user_id' => 2,
            'title' => 'Que es Lorem Ipsum',
            'description' => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
            'date_init' => Carbon::now(),
            'date_end' => date('Y-m-d H:i:s', strtotime("+1 days")),
            'person_required' => 10,
            'address' => Str::random(150),
            'address_reference' => 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419',
            'ubigeo' => '160105',
            'country' => 'PE',
            'status' => 1
        ]);
        $activity->resource()->create([
            'type_resource_id' => 2,
            'resource' => 'https://cuestionessociales.files.wordpress.com/2011/10/basura33.jpg',
        ]);


        $activity = Activity::create([
            'user_id' => 2,
            'title' => 'Que es Lorem Ipsum',
            'description' => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
            'date_init' => Carbon::now(),
            'date_end' => date('Y-m-d H:i:s', strtotime("+4 days")),
            'person_required' => 10,
            'address' => Str::random(150),
            'address_reference' => 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419',
            'ubigeo' => '160105',
            'country' => 'PE',
            'status' => 1
        ]);
        $activity->resource()->create([
            'type_resource_id' => 2,
            'resource' => 'https://e.rpp-noticias.io/normal/2018/11/15/portada_401540.jpg',
        ]);


        $activity = Activity::create([
            'user_id' => 2,
            'title' => 'Que es Lorem Ipsum',
            'description' => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
            'date_init' => Carbon::now(),
            'date_end' => date('Y-m-d H:i:s', strtotime("+6 days")),
            'person_required' => 10,
            'address' => Str::random(150),
            'address_reference' => 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419',
            'ubigeo' => '160105',
            'country' => 'PE',
            'status' => 1
        ]);
        $activity->resource()->create([
            'type_resource_id' => 2,
            'resource' => 'https://diariouno.pe/wp-content/uploads/2018/06/40-1.jpg',
        ]);

        $activity = Activity::create([
            'user_id' => 2,
            'title' => 'Que es Lorem Ipsum',
            'description' => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
            'date_init' => Carbon::now(),
            'date_end' => date('Y-m-d H:i:s', strtotime("+5 days")),
            'person_required' => 10,
            'address' => Str::random(150),
            'address_reference' => 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419',
            'ubigeo' => '160105',
            'country' => 'PE',
            'status' => 1
        ]);
        $activity->resource()->create([
            'type_resource_id' => 2,
            'resource' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrvXX35FlIr94SQRR3yTyVJc9Pwy7F0zWhJQ&usqp=CAU',
        ]);

    }
}
