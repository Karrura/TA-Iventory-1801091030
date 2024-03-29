@extends('tema.template')
@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Transaksi Pengembalian</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item active"></li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <!-- /.card -->

          <div class="card">
            <div class="card-header">
                <h3 class="card-title">Form Pengembalian</h3>
                <div class="text-right">
                    <a href="{{ url('penjualan/index') }}" class="btn btn-sm btn-success mb-1">Kembali</a>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                         <form action="{{url('/pengembalian/store')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="penjualan_faktur">Faktur Penjualan</label>
                                <input class="form-control" type="text" value="{{$retur->faktur}}" name="penjualan_faktur" readonly="">
                            </div>
                            <div class="form-group">
                                <label for="pelanggan_id">Pelanggan</label>
                                <input class="form-control" type="text" name="pelanggan_id" value="{{$retur->id_pelanggan}}" readonly="" hidden>
                                <input class="form-control" type="text" value="{{$retur->pelanggan}}" readonly="">                                
                            </div>
                            <div class="form-group">
                                <label for="penjualan_tgl">Tanggal Transaksi</label>
                                <input class="form-control" type="text" name="penjualan_tgl" value="{{$retur->tgl}}" readonly="">
                            </div>
                            <div class="form-group">
                                <label for="tglretur">Tanggal Retur</label>
                                <input class="form-control" placeholder="Input Tanggal Pengembalian" type="date" name="tglretur" >
                            </div>
                            <div class="form-group">
                                <label for="barang_id">Barang</label>
                                <select class="form-control" id="barang_id" name="barang_id">
                                    <option value="">Select Barang</option>
                                    @foreach($barang as $k)
                                    <option value="{{ $k->barang_id }}">{{ $k->nama }}</option> 
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jml">Jumlah</label>
                                <input class="form-control" placeholder="Input Jumlah Dikembalikan" type="number" name="jml" >
                            </div>
                            <div class="form-group">
                                <label for="descretur">Keterangan</label>
                                <textarea class="form-control" id="descretur" name="descretur" placeholder="Input Keterangan" cols="30" rows="4"></textarea> 
                            </div>
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Simpan Data</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->


@endsection