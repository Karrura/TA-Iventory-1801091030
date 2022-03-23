@extends('tema.template')
@section('content')
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
        </div>
    </div><!-- /.container-fluid -->
</section>
<div class="container">
	<div class="container-fluid" style="width: 75%;">
		<div class="card" style="background-color: #343a40; color: white">
			@if(Session::has('success'))
					<div class="alert alert-primary">
						{{Session::get('success')}}
					</div>
			@endif
			<div class="card-body mb-4 mt-4">
				<h1 align="center"><b>Selamat Datang</b></h1>
				<h1 align="center"><b>di SIVENT Mandeh Kanduang</b></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
			    <div class="card mt-2">
				    <div class="inner">
			    		<div class="card-body" style="background-color: #A19882; color: #343a40;">
					        <h3 class="card-title"><b>Barang</b></h3><br/>
					        <h3 class="card-title"><b><ion-icon name="cube-outline" style="font-size: 40px" class="mt-2"></ion-icon>&ensp;{{$barang}}</b></h3><br/>
					        <div class="text-right">
				        	<a href="{{url('barang/index')}}" style="color: #343a40"><ion-icon name="arrow-forward-outline" style="font-size: 30px"></a>
				        </div>
				    	</div>
			    	</div>
			    	
			    </div>
			</div>
			<div class="col-sm-4">
			    <div class="card mt-2" >
			    	<div class="card-body" style="background-color: #C2B8A3; color: #343a40;">
				        <h3 class="card-title"><b>Stok di Bawah Minimum</b></h3><br/>
				        <h3 class="card-title"><b><ion-icon name="warning-outline" style="font-size: 40px" class="mt-2"></ion-icon>&ensp;{{$data}}</b></h3><br/>
				        <div class="text-right">
				        	<a href="{{url('laporan/stok')}}" style="color: #343a40"><ion-icon name="arrow-forward-outline" style="font-size: 30px"></a>
				        </div>
			    	</div>
			    </div>
			</div>
			<div class="col-sm-4">
			    <div class="card mt-2" >
			    	<div class="card-body" style="background-color: #E6DDC6; color: #343a40;">
				        <h3 class="card-title"><b>Pelanggan</b></h3><br/>
				        <h3 class="card-title"><b><ion-icon name="people-outline" style="font-size: 40px" class="mt-2"></ion-icon>&ensp;{{$pelanggan}}</b></h3><br/>
				        <div class="text-right">
				        	<a href="{{url('pelanggan/index')}}" style="color: #343a40"><ion-icon name="arrow-forward-outline" style="font-size: 30px"></a>
				        </div>
			    	</div>
			    </div>
			</div>
		</div>
	</div>
</div>

@endsection