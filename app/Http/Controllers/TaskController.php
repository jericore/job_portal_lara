<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class TaskController extends Controller
{
  public function index()
  {
    $user = User::paginate(3);
    return view('paginate',compact('user'));
  }

  public function detail($id)
  {
    // var_dump($id);die;
    $users = User::find($id); //bisa memakai findorfail atau find aja
    // var_dump($user);die;
    if($users){
    // return $user; //pengujian pertama
    return view('task',compact('users'));
  } else {
    // die('2');
    echo "Tidak Ada Data !";
  }

  }

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
