<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Post;

class TaskController extends Controller
{
  public function index()
  {
    $user = User::paginate(3);
    return view('paginate',compact('user'));
  }

  public function onetoone()
  {
    $users = User::get();
    // var_dump($users);die;
    return view('onetoone', compact('users'));
  }

  public function onetomany()
  {
    $users = User::has('postss')->get();   // kalo has berfungsi untuk menampilkan yang hanya mempunyai post saja
    // $users = User::with('postss')->get(); //kalo ini menampilkan semua
    // return $users;
    dd($users);
    // var_dump($users);die;
    return view('onetomany', compact('users'));
  }

  public function manytoone()
  {
    $posts = Post::with('users')->get();
    return view('manytoone', compact('posts'));
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
