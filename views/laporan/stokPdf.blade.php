<!DOCTYPE html>
<html>
<head>
	<title>Laporan Stok</title>
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
			<span style="font-style: bold; font-size: 20px;"><b>Stok di Bawah Minimum</b></span><br/>
			<br/>
		</center>
		<table align="center" style='border-collapse: collapse; width: 100%;' border="1">
			<tr>
				<th>No</th>
				<th>Barang</th>
				<th>Merek</th>
				<th>Satuan</th>
				<th>Kategori</th>
				<th>Stok</th>
				<th>Stok Minimum</th>
				<th>Pemasok</th>
			</tr>
			
			@foreach($data as $index=>$b)
			<tr>
				<td align="center">{{$index+1}}</td>
				<td align="left">{{$b->nama}}</td>
				<td align="left">{{$b->merek}}</td>
				<td align="center">{{$b->nama_satuan}}</td>
				<td align="center">{{$b->nama_kategori}}</td>
				<td align="center">{{$b->stok}}</td>
				<td align="center">{{$b->stokmin}}</td>
				<td align="left">{{$b->nama_pemasok}}</td>
			</tr>
			@endforeach
		</table>
		<span style="color:red; font-size: 12pt">*Segera lakukan pemesanan untuk barang dengan stok di bawah minimum.<br/>*Atau jika telah melakukan pembelian pada pemasok, pastikan data pembelian sudah diinputkan</span>
	</div>
		
</body>
</html>