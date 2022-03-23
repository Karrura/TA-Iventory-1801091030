<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Penjualan;
use App\Models\Pembelian;
use App\Models\Pemasok;
use App\Models\Satuan;
use App\Models\Kategori;
use App\Models\Barang;
use App\Models\Pengembalian;
use App\Models\Pelanggan;
use Redirect;
use PDF;

class LaporanController extends Controller
{
    public function penjualan(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('penjualans')
                    ->join('pelanggans', 'penjualans.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->whereBetween('tgl', [$tgl1, $tgl2])
                    ->get();
        return view('laporan/penjualan', compact('data', 'tgl1', 'tgl2'));
    }

    public function penjualanPdf(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('penjualans')
                    ->join('pelanggans', 'penjualans.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->whereBetween('tgl', [$tgl1, $tgl2])
                    ->get();
        $penjualan = Penjualan::all();        
        $pdf = PDF::loadview('laporan.penjualanPdf',compact('data', 'penjualan', 'tgl2', 'tgl1'))
        ->setPaper('a4');
        return $pdf->stream('Laporan Penjualan');
    }

    public function pembelian(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('pembelians')
                    ->join('pemasoks', 'pembelians.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->whereBetween('tgl', [$tgl1, $tgl2])
                    ->get();
        return view('laporan/pembelian', compact('data', 'tgl1', 'tgl2'));
    }

    public function pembelianPdf(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('pembelians')
                    ->join('pemasoks', 'pembelians.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->whereBetween('tgl', [$tgl1, $tgl2])
                    ->get();
        $pdf = PDF::loadview('laporan.pembelianPdf',compact('data', 'tgl2', 'tgl1'))
        ->setPaper('letter');
        return $pdf->stream('Lapora Pembelian');
    }

    public function pengembalian(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('pengembalians')
                    ->join('pelanggans', 'pengembalians.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->join('barangs', 'pengembalians.barang_id', '=', 'barangs.id')
                    ->whereBetween('tglretur', [$tgl1, $tgl2])
                    ->get();
        return view('laporan/pengembalian', compact('data', 'tgl2', 'tgl1'));
    }

    public function pengembalianPdf(Request $request)
    {
        $tgl1 = $request->tgl1;
        $tgl2 = $request->tgl2;
        $data = DB::table('pengembalians')
                    ->join('pelanggans', 'pengembalians.pelanggan_id', '=', 'pelanggans.id_pelanggan')
                    ->join('barangs', 'pengembalians.barang_id', '=', 'barangs.id')
                    ->whereBetween('tglretur', [$tgl1, $tgl2])
                    ->get();
        $pdf = PDF::loadview('laporan.pengembalianPdf',compact('data', 'tgl2', 'tgl1'))
        ->setPaper('a4');
        return $pdf->stream('Lapora Pengembalian');
    }

    public function stok()
    {
        $data = DB::table('barangs')
                    ->join('kategoris', 'barangs.kategori_id', '=', 'kategoris.id_kategori')
                    ->join('satuans', 'barangs.satuan_id', '=', 'satuans.id_satuan')
                    ->join('pemasoks', 'barangs.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->whereColumn('stok', '<', 'stokmin')
                    ->get();
        return view('laporan/stok', compact('data'));
    }

    public function stokPdf()
    {
        $data = DB::table('barangs')
                    ->join('kategoris', 'barangs.kategori_id', '=', 'kategoris.id_kategori')
                    ->join('satuans', 'barangs.satuan_id', '=', 'satuans.id_satuan')
                    ->join('pemasoks', 'barangs.pemasok_id', '=', 'pemasoks.id_pemasok')
                    ->whereColumn('stok', '<', 'stokmin')
                    ->get();
        $pdf = PDF::loadview('laporan.stokPdf',compact('data'))
        ->setPaper('a4', 'landscape');
        return $pdf->stream('Demand Stok');
    }

}
