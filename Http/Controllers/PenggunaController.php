<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Redirect;

class PenggunaController extends Controller
{
    public function index()
    {
    	$pengguna = User::all();
    	return view('/pengguna/index', compact('pengguna'));
    }

    public function create()
    {
        return view('pengguna/create');
    }

    public function edit($id_user)
    {
        $pengguna = User::find($id_user);

        return view('pengguna/edit')->with('pengguna', $pengguna);
    }

    public function update(Request $request, $id_user)
    {
        $pengguna = User::whereId_user($id_user)->first();
        $pengguna->update([
            'nama'=>$request->nama,
            'username'=>$request->username,
            'password'=>bcrypt($request->password),
            'level'=>$request->level,
            ]);

        return Redirect::to('pengguna/index');
    }

    public function store(Request $request)
    {   
        $request->validate([
            'nama'=>'required',
            'username'=>'required',
            'password'=>'required',
            'level'=>'required',
        ]);
        $pengguna = new User();
        $pengguna=User::create([
            'nama'=>$request->nama,
            'username'=>$request->username,
            'password'=>bcrypt($request->password),
            'level'=>$request->level,
        ]);
        $pengguna->save();
        return redirect('pengguna/index')->with('success', 'Data berhasil ditambahkan');
    }

    public function destroy($id_user)
    {
    	User::whereId_user($id_user)->delete();
    	return back()->with('success', 'Data berhasil dihapus');
    }
}
