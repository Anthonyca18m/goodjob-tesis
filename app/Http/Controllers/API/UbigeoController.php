<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UbigeoController extends Controller
{

    public function getDistricts($province_id)
    {
        return DB::table('districts')->where('province_id', $province_id)->get();
    }

    public function getDepartments()
    {
        return DB::table('departments')->get();
    }

    public function getProvinces($deparment_id)
    {
        return DB::table('provinces')->where('department_id', $deparment_id)->get();
    }


}
