<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pelanggan;
use App\Models\Penjualan;
use App\Models\Pembelian;
use App\Models\Pengembalian;
use App\Models\Pemasok;
use App\Models\Barang;
use App\Models\Kategori;
use App\Models\Satuan;
use Illuminate\Support\Facades\DB;

class ApiController extends Controller
{
    public function indexPenjualan()
    {
    	$data = DB::table('penjualans')
                    ->join('pelanggans', 'penjualans.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->orderBy('tgl', 'desc')
                    ->get();
        return response()->json($data);
    }
    public function indexPembelian()
    {
    	$data = DB::table('pembelians')
                    ->join('pemasoks', 'pembelians.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->orderBy('tgl', 'desc')
                    ->get();
        return response()->json($data);
    }
    public function indexPengembalian()
    {
    	$data = DB::table('pengembalians')
                    ->join('pelanggans', 'pengembalians.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->join('barangs', 'pengembalians.barang_id', '=', 'barangs.id')
                    ->orderBy('tglretur', 'desc')
                    ->get();
        return response()->json($data);
    }
    public function stokDarurat()
    {
    	$data = DB::table('barangs')
                    ->join('kategoris', 'barangs.kategori_id', '=', 'kategoris.id_kategori')
                    ->join('satuans', 'barangs.satuan_id', '=', 'satuans.id_satuan')
                    ->join('pemasoks', 'barangs.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->whereColumn('stok', '<', 'stokmin')
                    ->get();
        return response()->json($data);
    }

    public function tesPost(Request $request)
    {
        $query = Kategori::create([
            'nama_kategori' => $request->nama_kategori,
        ]);

        if($query){
            return response()->json(['id' => $id, 'status' => 200, 'message' => 'Insert success']);
        }else{
            return response()->json(['id' => '', 'status' => 400, 'message' => 'Insert failed']);
        }
    }
}
