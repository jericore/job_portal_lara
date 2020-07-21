<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\Http\Requests\ContactRequest;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $tes = env('DB_HOST'); ini manggil fungsi yang ada di dalem file .env
        // var_dump($tes);die;

        // $a = [1,2,3,4,5];
        // $aa = array();
        // foreach ($a as $item ) {
        //     // print($item);
        //     $b = $item;
        //     echo " <ul><li> $b </li></ul> ";
        //     $aa[] = $item;
        // }
        
        // var_dump($aa[1]);

        $contacts = Contact::get();
        // dd($contacts);
        return view('contact.index', compact('contacts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('contact.create');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ContactRequest $request)
    {
        // Contact::create([
        //     'name'  => $request->get('name'),
        //     'address' => $request->get('address'),
        //     'phone'   => $request->get('phone')
        // ]);

        //cara ke 2
        $data = $request->all();
        // dd($data);
        Contact::create($data);

        return redirect()->to('/contact');
        // dd($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $contact = Contact::findOrFail($id);
        return view('contact.show', compact('contact'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $contact = Contact::findOrFail($id);
        var_dump($contact->name);die;
        return view('contact.edit', compact('contact'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ContactRequest $request, $id)
    {
        $data = $request->all();

        $contact = Contact::findOrFail($id);
        $contact->update($data); 
        return redirect()->to('/contact');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();
        return redirect()->to('/contact');
    }
}
