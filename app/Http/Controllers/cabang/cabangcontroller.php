<?php

namespace App\Http\Controllers\cabang;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;

class cabangcontroller extends Controller
{
    
    public function index()
    {
      $setting = DB::table('setting')->get();
      $datacabang = DB::table('cabang')
                ->orderby('id','desc')
                ->get();
      return view('cabang/index',['datacabang'=>$datacabang,'title'=>$setting]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $setting = DB::table('setting')->get();
        return view('cabang/create',['title'=>$setting]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('cabang')
        ->insert([
        	'nama'=>$request->nama,
        	'alamat'=>$request->alamat
        ]);
        return redirect('cabang')->with('status','Data berhasil disimpan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $setting = DB::table('setting')->get();
        $data = DB::table('cabang')->where('id',$id)->get();
        return view('cabang/edit',['title'=>$setting,'data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        DB::table('cabang')
        ->where('id',$id)
        ->update([
        	'nama'=>$request->nama,
        	'alamat'=>$request->alamat
        ]);
        return redirect('cabang')->with('status','Data berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('cabang')->where('id',$id)->delete();
        return redirect('cabang')->with('status','Data berhasil dihapus');
    }
}
