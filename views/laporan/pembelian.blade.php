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
					<h3 >Laporan Pembelian</h3>
				</div>
				<div class="card-body">
					<div class="card-header">
						<form class="form-group" action="{{url('/laporan/pembelian')}}" method="GET" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label >Tanggal</label>
                                <input class="form-control" type="date" value="{{$tgl1}}" name="tgl1">
                            </div>
                            <div class="form-group">
                                <label >Sampai</label>
                                <input class="form-control" type="date" value="{{$tgl2}}" name="tgl2">
                            </div>                       
                            <div class="text">
                                <button type="submit" class="btn btn-primary">Next</button>
                            </div>
                        </form>
					</div>					
			        <table class="table table-bordered">
						<th>No</th>
						<th>Faktur</th>
						<th>Pemasok</th>
						<th>Tanggal</th>
						<th>Harga</th>

						@foreach($data as $index=>$b)
						<tr>
							<td>{{$index+1}}</td>
							<td>{{$b->faktur}}</td>
							<td>{{$b->nama_pemasok}}</td>
							<td>{{$b->tgl}}</td>
							<td>{{$b->harga}}</td>
						</tr>
						@endforeach
						<tr>
							<td></td>
						<td>
							Total
						</td>
						<td></td>
						<td></td>
						<td>
							@php
							$satu = 0;
							@endphp							
							@foreach($data as $index=>$b)	
								@php							
									$satu += $b->harga;
								@endphp
							@endforeach
							{{$satu}}
						</td>
						</tr>
						
					</table>
					<div class="card-body">
						<div class="text-right">
							<form class="form-group" action="{{url('/laporan/pembelianPdf')}}" method="GET" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <input hidden="" class="form-control" type="date" value="{{$tgl1}}" name="tgl1">
                            </div>
                            <div class="form-group">
                                <input hidden="" class="form-control" type="date" value="{{$tgl2}}" name="tgl2">
                            </div>                            
                            <div class="text">
                                <button type="submit" class="btn btn-success">Cetak</button>
                            </div>
                        	</form>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
@endsection