<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use DB;
use Hash;
use Session;
use App\Models\User;
use App\Models\Pelanggan;
use App\Models\Barang;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function prosesLogin(Request $request)
    {   //dd($request);
        $username = $request->username;
        $password = $request->password;
        $minute = 3;
        $data_user = User::ChekLoginUser($username, $password);
        if($data_user)
        {
            Session::put('username', $data_user->username);
            Session::put('nama', $data_user->nama);
            Session::put('level', $data_user->level);
            Session::put('id_user', $data_user->id_user);
            // $respone = new Response("Hello");
            // $response->withCookie(cookie('id_user', $data_user->id_user, $minute));
            // $response->withCookie(cookie('username', $data_user->username, $minute));
            // $response->withCookie(cookie('nama', $data_user->nama, $minute));
            return ('dashboard');

        } else {
            return back()->with("error","Username atau Password Salah !");
        }

    }

    public function dashboard()
    {
        $pelanggan = DB::table('pelanggans')->count();
        $barang = DB::table('barangs')->count();
        $data = DB::table('barangs')
                ->whereColumn('stok', '<', 'stokmin')
                ->count();
        return view('tema.awal', compact('pelanggan', 'barang', 'data'));
    }

    public function logout(Request $r)
    {
    	$r->session()->forget('username');
        $r->session()->forget('level');
        $r->session()->forget('id_user');
        $r->session()->flush();
    	return redirect("/")->with('pesan', 'Success Logout.');
    }
}
