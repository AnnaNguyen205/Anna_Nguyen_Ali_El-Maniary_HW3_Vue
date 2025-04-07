<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Studio;


class StudioController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getStudios() {
         $studios = Studio::all();
         return response()->json($studios);
     }
    
}
