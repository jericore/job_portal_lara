<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TaskController extends Controller
{
  public function create()
  {
    return "Bismillah";
    // return view('home');
  }

  public function store(Request $request)
  {
    $tat = $request->title;
    // $title = request('title');
    echo $tat;
    // return "OK";
  }
}
