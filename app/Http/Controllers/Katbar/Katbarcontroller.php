<?php

namespace App\Http\Controllers\katbar;
ini_set('max_execution_time', 180);
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\models\katbarmodel;
use Illuminate\Support\Facades\Session;

class katbarcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $katbars = katbarmodel::paginate(20);
        $setting = DB::table('setting')->get();
        $datkatbar = DB::table('kategori_barang')->paginate(20);
        // dd($datkatbar);
        return view('katbar/index',['katbar'=>$datkatbar,'title'=>$setting]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function create()
    {
        $setting = DB::table('setting')->get();
        return view('katbar/create',['title'=>$setting]);
    }

    public function store(Request $request)
    {
        $rules = [
                    'spesial_cargo'  =>'required',
                    'charge'  =>'required'
                    ];
 
    $customMessages = [
        'required'  => 'Maaf, :attribute harus di isi',
    ];
        $this->validate($request,$rules,$customMessages);
        //
        $data=$request->spesial_cargo;

        for ($i=0; $i < count($data) ; $i++) { 
            if($i == count($data)-1){
                $spc = $data[$i];
                $char =$request->charge[$i];
            }else{
                $spc = $data[$i];
                $char =$request->charge[$i];
            }
        katbarmodel::create([
            'spesial_cargo' => $spc,
            'charge'  => $char

        ]);
        }
        
        return redirect('kat_bar')->with('status','Input Data Sukses');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $jab = katbarmodel::find($id);
        $setting = DB::table('setting')->get();
        return view('katbar/edit',['katbar'=>$jab,'title'=>$setting]);

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
        $rules = [
                    'spesial_cargo'  => 'required|min:2',
                    'charge'  => 'required|min:2',
            ];
        $customMessages = [
        'required'  => 'Maaf, :attribute harus di isi',
        'min'       => 'Maaf, data yang anda masukan terlalu sedikit',

         ];
        $this->validate($request,$rules,$customMessages);
        katbarmodel::find($id)->update([
            'spesial_cargo'  => $request->spesial_cargo,
            'charge'  => $request->charge
            ]);
        return redirect('/kat_bar')->with('status','Edit Data Sukses');
 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->aid;
         katbarmodel::destroy($id);
        return back()->with('status','Hapus Data Sukses');
    }
}
