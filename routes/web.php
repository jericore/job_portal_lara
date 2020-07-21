<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Post;
use App\Tag;
use App\Video;
use App\Comment;

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('latihan')->group(function(){
  Route::get('nyoba', 'TaskController@create');
  Route::post('inputan','TaskController@store')->name('jobs.store');
});

Route::get('/users', function(){
  $users = [
    'jerico',
    'reynaldi',
    'erik'
  ];
  return view('home', compact('users'));
});

Route::get('/user', 'TaskController@index');
Route::get('/user/{id}', 'TaskController@detail');
Route::get('/post', function(){
  // $post = new Post;
  // $post->title = "a title";
  // $post->description = "a desc";
  // $post->save(); --> Cara Pertama

  // Post::create([
  //   'title'       => 'a title again',
  //   'description' => 'a new desc again'
  // ]); --> Cara Kedua

  //KALO MAU NYARI
  // $posts = Post::find(1);
  // return $posts;

  //Kalo Mau Update
});

Route::get('/', function () {
    return view('pages.home');
});

Route::get('/about', function () {
    return view('pages.about');
});

// Route::get('/contact', function () {
//     return view('pages.contact');
// });

Route::get('/contact','ContactController@index')->name('contact.view');

Route::get('/helper', function(){
  $sentences = 'The QUick Brown fox Jumos over the lazy dog.';

  echo str_limit($sentences,20,'----');
});

Route::get('/helperr', function(){
  $sentences = 'Car';

  echo str_plural($sentences);
});

Route::get('/helper_3', function(){
  $sentences = 'pens';

  echo str_singular($sentences);
});

Route::get('/array', function(){
  $array = [
    'name'      => 'Jerico Reynaldi',
    'array_lagi'=> ['array1','array2'],
    'age'       => 22
  ];
  $array = array_add($array,'country','USA');
  $array = array_add($array,'number',9898);
  dd($array);
});

Route::get('/array2', function(){
  $array = [
    'name'    => ['Jerico Reynaldi','dul boy moyi' => ['anaknya puput'],'tes' => ['tesu','tesi',[1,2,[4,5,6,['jadi objek','jadi objek kedua']]]]],
    'age'     => 22
  ];

  // $array = array_divide($array);
  // dd($array);
  dd($array['name']);
});

Route::get('/array3', function(){
  $array = [
    ['1','2','3','4'],
    ['5','6','7'],
  ];

  $array = array_collapse($array);
  dd($array);
});

Route::get('/array4', function(){
  $array = ['name'=>'sampo','price'=>50];

  $array = array_except($array,['price']);
  dd($array);
});

Route::get('/array5', function(){
  $_conf['db']['payslip']['host'] 	= '192.168.1.24';

  // $array = array_except($array,['price']);
  dd($_conf);
});



Route::get('/collect', function(){
  $array = collect([1,2,3,4,5,6,7,8,9]);
  // $array = [1,2,3,4,5,6,7,8,9];
  dd($array->sum());
  var_dump($array);die;
});


Route::get('/contains', function(){
  $data =collect([['role' => 'admin'],
['role' => 'supervisor'],
['role' => 'editor']]);
  // dd($array->sum());
  // var_dump($array);die;
  dd($data->pluck('role')->contains('editor'));
});

Route::get('/filter', function(){
  $data = collect([1,2,3,4,5,6]);
  $filtered = $data->filter(function($value,$key){
    return $value>2;
  });
  dd($filtered->all());
});

Route::get('/filter_2', function(){
  $collection = collect([
    [
      'User_id'         => '1',
      'name'            => 'Jerico Reynaldi',
      'email'           => 'jerico@gmail.com',
      'address'         => 'USA'
    ],
    [
      'User_id'         => '2',
      'name'            => 'Jerico',
      'email'           => 'jer@gmail.com',
      'address'         => 'UK'
    ],
    [
      'User_id'         => '3',
      'name'            => 'Je',
      'email'           => 'je@gmail.com',
      'address'         => 'USA'
    ],
  ]);
  $filtered = $collection->filter(function($value,$key){
    if ($value['User_id'] == 3) {
          return true;
    }
  });
  dd($filtered->all());
});

Route::get('/onetoone','TaskController@onetoone');
Route::get('/onetomany','TaskController@onetomany');
Route::get('/manytoone','TaskController@manytoone');
Route::get('/tasks', function(){
  $post = Post::find(2);
  $post->tagg()->attach(2);
});
Route::get('/m2m_fetch_data', 'TaskController@manytomanyfetchdata');

Route::get('polym_relat', function(){
  // $post = Post::find(2); bisa Post:: dan bisa Video:: kaya dibawah
  $post = Video::find(2);
  $comment = new Comment;
  $comment->body = 'This is 2 Comment';
  $post->comments()->save($comment);

  // dd($post);
});


//Route Project ----------------------------------------------------------------------------------------
Route::get('/contacts', 'ContactController@index');
Route::get('/contacts/create', 'ContactController@create');
Route::post('/contacts', 'ContactController@store')->name('contact.store');
Route::get('/contacts/{id}/edit', 'ContactController@edit')->name('contact.edit');
Route::post('/contacts/{id}/update', 'ContactController@update')->name('contact.update');
Route::get('/contacts/{id}', 'ContactController@show')->name('contact.show');
Route::POST('/contacts/{id}/delete', 'ContactController@destroy')->name('contact.destroy');