<!DOCTYPE html>
<html>
<head>
	<title>Laporan Pengembalian</title>
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
			<span style="font-style: bold; font-size: 20px;"><b>Laporan Pengembalian</b></span><br/>
			<span style="font-size: 14px">Dari <b>{{$tgl1}}</b> Sampai <b>{{$tgl2}}</b></span>
			<br/><br/><br/>
		</center>
		<table align="center" style='border-collapse: collapse; width: 100%;' border="1">
			<tr>
				<th>No</th>
				<th>Faktur</th>
				<th>Pelanggan</th>
				<th>Tanggal Retur</th>
				<th>Barang</th>
				<th>Keterangan</th>
			</tr>
			
			@foreach($data as $index=>$b)
			<tr>
				<td align="center">{{$index+1}}</td>
				<td align="center">{{$b->penjualan_faktur}}</td>
				<td align="left">{{$b->pelanggan}}</td>
				<td align="center">{{$b->tglretur}}</td>
				<td align="left">{{$b->nama}}</td>
				<td align="right">{{$b->descretur}}</td>
			</tr>
			@endforeach
		</table>
	</div>
		
</body>
</html>