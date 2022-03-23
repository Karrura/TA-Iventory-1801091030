<!DOCTYPE html>
<html>
<head>
	<title>Laporan Penjualan</title>
</head>
<body>
<center>
	<div>
		<span style="font-style: bold; font-size: 32px;"><b>TOKO MANDEH KANDUANG</b></span><br/>
		<span style="font-size: 14px">Jalan Sandang Pangan Pasar Raya Fase V Petak 41, Kelurahan Kp. Jao, Kecamatan Padang Barat<br/>Kota Padang, Sumatera Barat (25112)<br/>0812 6649 0707</span>
		<hr>
	</div>	
</center>
	<span><br/></span>
	<div>
		<span><br/></span>
		<center>
			<span style="font-style: bold; font-size: 20px;"><b>Laporan Penjualan</b></span><br/>
			<span style="font-size: 14px">Dari <b>{{$tgl1}}</b> Sampai <b>{{$tgl2}}</b></span>
			<br/><br/><br/>
		</center>
		<table align="center" style='border-collapse: collapse; width: 100%;' border="1">
			<tr>
				<th>No</th>
				<th>Faktur</th>
				<th>Pelanggan</th>
				<th>Tanggal</th>
				<th>Status</th>
				<th>Harga</th>
			</tr>
			
			@foreach($data as $index=>$b)
			<tr>
				<td align="center">{{$index+1}}</td>
				<td align="center">{{$b->faktur}}</td>
				<td align="left">{{$b->pelanggan}}</td>
				<td align="center">{{$b->tgl}}</td>
				<td align="center">{{$b->status}}</td>
				<td align="right">{{$b->tharga}}</td>
			</tr>
			@endforeach
			<tr>
				<td></td>
			<td align="center">
				Total
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td align="right">
				@php
				$satu = 0;
				@endphp							
				@foreach($data as $index=>$b)	
					@php							
						$satu += $b->tharga;
					@endphp
				@endforeach
				{{$satu}}
			</td>
			</tr>
		</table>
	</div>
		
</body>
</html>