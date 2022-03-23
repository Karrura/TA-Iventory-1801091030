@extends('tema.template')
@section('content')
<section class="content-header">

</section>
<section>
<div class="container">	
	<div class="container-fluid">
		<div class="card">
			<div class="card-body">
				@if(Session::has('success'))
					<div class="alert alert-primary">
						{{Session::get('success')}}
					</div>
				@endif
				<div class="card-header">
					<h3 >Stok Barang Di Bawah Minimum*</h3>
				</div>			
			        <table class="table table-bordered">
						<th>No</th>
						<th>Barang</th>
						<th>Merek</th>
						<th>Satuan</th>
						<th>Kategori</th>
						<th>Stok</th>
						<th>Stok Minimum</th>
						<th>Pemasok</th>

						@foreach($data as $index=>$b)
						<tr>
							<td>{{$index+1}}</td>
							<td>{{$b->nama}}</td>
							<td>{{$b->merek}}</td>
							<td>{{$b->nama_satuan}}</td>
							<td>{{$b->nama_kategori}}</td>
							<td>{{$b->stok}}</td>
							<td>{{$b->stokmin}}</td>
							<td>{{$b->nama_pemasok}}</td>
						</tr>
						@endforeach
					</table>
					<span style="color:red; font-size: 10pt">*Segera lakukan pemesanan untuk barang dengan stok di bawah minimum.<br/>*Atau jika telah melakukan pembelian pada pemasok, pastikan data pembelian sudah diinputkan</span>
					<div class="card-body">
						<div class="text-right">
							<a href="{{url('laporan/stokPdf')}}"><button class="btn btn-success">Cetak</button></a>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
@endsection