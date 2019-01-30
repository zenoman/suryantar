@extends('layout.masteradmin')

@section('css')
<link rel="stylesheet" href="{{asset('assets/css/separate/vendor/select2.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/css/lib/ladda-button/ladda-themeless.min.css')}}">
@endsection

@section('header')
@foreach($webinfo as $info)
<title>{{$info->namaweb}}</title>
<link href="{{asset('img/setting/'.$info->icon)}}" rel="icon" type="image/png">
@endforeach
@endsection
@section('content')
<div class="page-content" id="printdiv">
		<div class="container-fluid">
		
<header class="section-header">
				<div class="tbl">
					<div class="tbl-row">
						<div class="tbl-cell">
							<h2>Buat Resi Pengiriman Udara</h2>
						</div>
					</div>
				</div>
			</header>
			<div class="box-typical box-typical-padding">
					<p>No. Resi : <span id="noresi"></span></p>
				<form action="#" role="form" method="POST">
					<div class="form-group row">
						<input type="hidden" value="{{Session::get('username')}}" id="iduser">
						<div class="col-md-8 col-sm-8">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Nama / Isi Barang</label>
							<div class="input-group">
								<input type="text" class="form-control" id="nama_barang" autofocus>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Kategori barang</label>
							<div class="input-group">
								<select class="form-control" id="kategori">
								<option value="biasa"></option>
								@foreach($kategori as $kat)
								<option value="{{$kat->charge}}">{{$kat->spesial_cargo}}</option>
								@endforeach
							</select>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Metode Bayar</label>
							<div class="input-group">
								<select class="form-control" id="metode">
								<option value="cash">cash</option>
								<option value="bt">BT</option>
							</select>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Dimensi Dalam Satuan <b>cm</b> (P, L, T)  </label>
							<div class="input-group">
								<input type="text" onkeypress="return isNumberKey(event)" class="col-sm-4 col-md-4 form-control" id="d_panjang" value="0">&nbsp;
								<input type="text" onkeypress="return isNumberKey(event)" class="col-sm-4 col-md-4 form-control" id="d_lebar" value="0">&nbsp;
								<input type="text" onkeypress="return isNumberKey(event)" class="col-sm-4 col-md-4 form-control" id="d_tinggi" value="0">
									
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Berat Volumetrik</label>
							<div class="input-group">
								<input type="text" class="form-control" id="volume" onkeypress="return isNumberKey(event)"  value="0">
								<div class="input-group-addon">Kg</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Jumlah</label>
							<div class="input-group">
								<input type="text" class="form-control" id="jumlah" onkeypress="return isNumberKey(event)">
								<select class="form-control" id="satuan">
								<option value="kg">&nbsp;</option>
								<option value="koli">koli</option>
							</select>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Berat Aktual</label>
							<div class="input-group">
								<input type="text" class="form-control" id="berat" onkeypress="return isNumberKey(event)" value="0">
								<div class="input-group-addon">Kg</div>
							</div>
						</div>
						<input type="hidden" id="min_heavy" value="0">
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Kota Asal</label>
							<div class="input-group">
								<input type="text" class="form-control" id="kota_asal" >
							</div>
						</div>
					</div>
					<div class="col-md-8 col-sm-8">
						<label class="form-label" for="exampleInputDisabled">Kota Tujuan</label>
						<select class="select2" id="kota_tujuan"></select>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Status</label>
							<div class="input-group">
								<input type="text" class="form-control" id="status" readonly>
								
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Nomer SMU (Boleh Kosong)</label>
							<div class="input-group">
								<input type="text" class="form-control" id="nomer_smu">
							</div>
						</div>
					</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Nama Pengirim</label>
							<div class="input-group">
								<input type="text" class="form-control" id="n_pengirim">
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Telfon Pengirim</label>
							<div class="input-group">
								<input type="text" onkeypress="return isNumberKey(event)" class="form-control" id="t_pengirim" >
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Nama Penerima</label>
							<div class="input-group">
								<input type="text" class="form-control" id="n_penerima" >
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Telfon Penerima</label>
							<div class="input-group">
								<input type="text" onkeypress="return isNumberKey(event)" class="form-control" id="t_penerima" >
							</div>
						</div>
					</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-7 col-md-7">
						<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Biaya Kirim</label>
							<div class="input-group">
								<input type="text" class="form-control" id="biaya_kirim" value="0" onkeypress="return isNumberKey(event)">
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Biaya SMU</label>
							<div class="input-group">
								<input type="text" class="form-control" id="biaya_smu" value="0" onkeypress="return isNumberKey(event)">
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Biaya Karantina</label>
							<div class="input-group">
								<input type="text" class="form-control" id="biaya_karantina" value="0" onkeypress="return isNumberKey(event)">
							</div>
						</div>
					</div>
						</div>
						<div class="col-md-5 col-sm-5">
							<table class="table table-bordered" id="estimasi">
								<thead>
									<tr>
										<th colspan="2" class="text-center">Estimasi Biaya</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Biaya Kirim</td>
										<td id="b_kirim">0</td>
									</tr>
									<tr>
										<td>Biaya SMU</td>
										<td id="b_smu">0</td>
									</tr>
									<tr>
										<td>Biaya Karantina</td>
										<td id="b_karantina">0</td>
									</tr>
									<tr>
										<td>PPN</td>
										<td id="b_ppn">0</td>
									</tr>
									<tr>
										<td>Charge</td>
										<td id="b_charge">0</td>
									</tr>
									<tr>
										<td colspan="2" class="text-center">
											<h3 id="total">0</h3>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label class="form-label" for="exampleInputDisabled">Keterangan</label>
							<div class="input-group">
								<textarea rows="4" class="form-control" id="keterangan"></textarea>
							</div>
						</div>
					</div>
					</div>
					{{csrf_field()}}
							<small class="text-muted">
								<button class="btn btn-success" type="button" id="btncetak"> Cetak</button>

								<button class="btn btn-primary ladda-button" data-style="zoom-out" id="btnsimpan"><span class="ladda-label">Simpan & Selesai</span><span class="ladda-spinner"></span><div class="ladda-progress" style="width: 0px;"></div>
								</button>

								<a onclick="window.history.go(-1);" class="btn btn-danger pull-right">Kembali</a>
								
							</small>
				</form>
			</div>
		
		</div>
	<div id="hidden_div" style="display: none;">
	<div>
		<table style="width: 100%;">
			<tr>
				<td style="width: 25%" align="center">
					<img src="{{asset('img/LOGO.jpeg')}}" alt="" width="60%">
				</td>
				<td style="width: 30%">
				<p align="center">
					<b>Office :</b><br>
					Jalan Pamenang No. 10 Sukorejo <br>
					Gurah, Kediri <br>
					081 216 933 775 <br>
					suryantara.cargo17@gmail.com	
				</p>
				</td>
				<td style="width: 30%">
					<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr style="border: 1px solid black;">
							<td colspan="2" style="border: 1px solid black;">
								<p style="margin-left: 6px;" id="cetak_resi"></p> 
							
							</td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact">
							<p style="font-size: 14;" align="center">Kota Asal</p></td>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Kota Tujuan</p></td>
							
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_asal"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_tujuan">Malang</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Jumlah Barang</p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;background-color: #bee3f7;-webkit-print-color-adjust:exact">Berat</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_jumlah_barang"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_berat"></p></td>
						</tr>
					</table>
				</td>
				<td style="width: 15%">
					<table style="font-size:15;width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
								<p style="margin-left: 2%;">Pengiriman Via</p></td>
						</tr>
						<tr>
							<td> <p style="margin-left: 2%;"><strike>Kargo Darat</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><strike>Kargo Laut</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><b>Kargo Udara</b></p></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
			<tr> 
				<td style="width:30%;border: 1px solid black;" align="center">Pengirim</td>
				<td style="width:30%;border: 1px solid black;" align="center">Penerima</td>
				<td style="width:40%;">
					<table style="width: 100%;border-collapse:collapse; font-size: 12;">
						<tr>
							<td style="border-right: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">Ukuran Dimensi (P x L x T)</td>
							<td align="center" style="background-color: #bee3f7;-webkit-print-color-adjust:exact">Ukuran Volume</td>
						</tr>
						<tr>
							<td style="border-top: 1px solid black; border-bottom: 1px solid black;" align="center" id="cetak_dimensi">

							</td>
							<td style="border-top: 1px solid black; border-left:1px solid black; border-bottom: 1px solid black; " align="center" id="cetak_volumetrik"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr >
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_pengirim"></strong></p>
					<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_pengirim">
						
					</p>
				</td>
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_penerima"></strong></p>
				<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_penerima">
					</p>
				</td>
				<td rowspan="3" align="center" style="width: 40%;">
					<p style="margin-top: 1%;">
						<b>Syarat - syarat :</b>
					</p>
					
					<ol align="left" style="font-size: 10;">
						<li>Barang-barang yang tidak di asuransikan apabila terjadi kehilangan hanya dapat di ganti maximum Rp. 1.000.000 (Satu juta rupiah).</li>
						<li>Barang yang nilainya diatas 1 juta rupiah harus di asuransikan, jika tidak diasuransikan bukan menjadi tanggung jawab kami.</li>
						<li>Barang-barang yang dikemas dengan tidak sempurna, tidak ditanggung kerusakannya.</li>
						<li>Isi tidak diperiksa, apabila isi kiriman/paket tidak sesuai dengan pengakuan pengirim maka segala resiko bukan menjadi tanggung jawab kami.</li>
						<li>Kami tidak bertanggung jawab/terima klaim atas kebocoran/kerusakan untuk jenis barang berupa kaca/pecah belah,cairan,cream dan elektronik.</li>
						<li>Kami tidak bertanggung jawab atas kerugian dalam bentuk apapun yang di akibatkan oleh keterlambatan pengiriman atau penyampaian barang, serta hilang, tertukar atau tidak kembalinya resi pengiriman barang.</li>
						<li>Bilamana dalam waktu 3 (tiga) hari setelah terima barang tidak ada teguran, bukan menjadi tanggung jawab kami.</li>
						
					</ol>
				</td>
			</tr>
			<tr >
				<td style="border: 1px solid black;">
				<p style="margin-left: 2%;margin-bottom: 6%;">Isi Paket/Nama barang :</p>
				<p style="margin-left: 2%;margin-right: 2%;margin-bottom: 10%;margin-top: 3%;" id="cetak_isi_paket"></p>
				<p style="margin-left: 2%;margin-right: 2%;">No.SMU : <span id="cetak_nosmu"></span></p>
				</td>
				<td style="border: 1px solid black;">
					<table style="width: 96%;margin-top: 1%;margin-bottom: 1%;  margin-left: 2%;margin-right: 2%;">
						<tr>
							<td style="width: 25%;font-size: 12;">Biaya Kirim</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_kirim"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">SMU</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_smu"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Karantina</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_karantina"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">PPN</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_ppn"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Charge</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_charge"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;"><b>Total</b></td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;">
								<b id="cetak_total"></b>
							</td>
						</tr>
					</table>
					
				</td>
			</tr>
			<tr >
				<td colspan="2" style="height: 20%;">
					<table style="width: 100%;border-collapse:collapse;">
						<tr>
							<td style="width: 35%;">
							<p style="margin-left: 1%;margin-right: 1%;font-size: 11;">
							Pengirim dengan ini menyatakan bahwa keterangan yang ada pada resi ini benar dan telah memenuhi syarat-syarat pada resi ini
							</p>
							<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
							<td style="border-left: 1px solid black; width: 30%;">
								<p align="center" style="font-size: 12;" id="cetak_tanggal"></p>
									<br>
									<p align="center" style="font-size: 12">Tanda Tangan Petugas</p>
							
							</td>
							<td style="border-left: 1px solid black; width: 35%;">
								<p style="font-size: 11;margin-left: 1%;">Penerima telah menerima barang dalam keadaan baik pada <br>
									Tanggal&nbsp;&nbsp;:........................................ 
									<br>								Jam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:........................................
								</p>
								<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	<span style="font-size: 9">pengirim</span>
	</div>
	<hr>
	 <div>
		<table style="width: 100%;">
			<tr>
				<td style="width: 25%" align="center">
					<img src="{{asset('img/LOGO.jpeg')}}" alt="" width="60%">
				</td>
				<td style="width: 30%">
				<p align="center">
					<b>Office :</b><br>
					Jalan Pamenang No. 10 Sukorejo <br>
					Gurah, Kediri <br>
					081 216 933 775 <br>
					suryantara.cargo17@gmail.com	
				</p>
				</td>
				<td style="width: 30%">
					<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr style="border: 1px solid black;">
							<td colspan="2" style="border: 1px solid black;">
								<p style="margin-left: 6px;" id="cetak_resi2"></p> 
							
							</td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact">
							<p style="font-size: 14;" align="center">Kota Asal</p></td>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Kota Tujuan</p></td>
							
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_asal2"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_tujuan2">Malang</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Jumlah Barang</p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;background-color: #bee3f7;-webkit-print-color-adjust:exact">Berat</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_jumlah_barang2"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_berat2"></p></td>
						</tr>
					</table>
				</td>
				<td style="width: 15%">
					<table style="font-size:15;width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
								<p style="margin-left: 2%;">Pengiriman Via</p></td>
						</tr>
						<tr>
							<td> <p style="margin-left: 2%;"><strike>Kargo Darat</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><strike>Kargo Laut</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><b>Kargo Udara</b></p></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
			<tr> 
				<td style="width:30%;border: 1px solid black;" align="center">Pengirim</td>
				<td style="width:30%;border: 1px solid black;" align="center">Penerima</td>
				<td style="width:40%;">
					<table style="width: 100%;border-collapse:collapse; font-size: 12;">
						<tr>
							<td style="border-right: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">Ukuran Dimensi (P x L x T)</td>
							<td align="center" style="background-color: #bee3f7;-webkit-print-color-adjust:exact">Ukuran Volume</td>
						</tr>
						<tr>
							<td style="border-top: 1px solid black; border-bottom: 1px solid black;" align="center" id="cetak_dimensi2">

							</td>
							<td style="border-top: 1px solid black; border-left:1px solid black; border-bottom: 1px solid black; " align="center" id="cetak_volumetrik2"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr >
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_pengirim2"></strong></p>
					<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_pengirim2">
						
					</p>
				</td>
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_penerima2"></strong></p>
				<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_penerima2">
					</p>
				</td>
				<td rowspan="3" align="center" style="width: 40%;">
					<p style="margin-top: 1%;">
						<b>Syarat - syarat :</b>
					</p>
					
					<ol align="left" style="font-size: 10;">
						<li>Barang-barang yang tidak di asuransikan apabila terjadi kehilangan hanya dapat di ganti maximum Rp. 1.000.000 (Satu juta rupiah).</li>
						<li>Barang yang nilainya diatas 1 juta rupiah harus di asuransikan, jika tidak diasuransikan bukan menjadi tanggung jawab kami.</li>
						<li>Barang-barang yang dikemas dengan tidak sempurna, tidak ditanggung kerusakannya.</li>
						<li>Isi tidak diperiksa, apabila isi kiriman/paket tidak sesuai dengan pengakuan pengirim maka segala resiko bukan menjadi tanggung jawab kami.</li>
						<li>Kami tidak bertanggung jawab/terima klaim atas kebocoran/kerusakan untuk jenis barang berupa kaca/pecah belah,cairan,cream dan elektronik.</li>
						<li>Kami tidak bertanggung jawab atas kerugian dalam bentuk apapun yang di akibatkan oleh keterlambatan pengiriman atau penyampaian barang, serta hilang, tertukar atau tidak kembalinya resi pengiriman barang.</li>
						<li>Bilamana dalam waktu 3 (tiga) hari setelah terima barang tidak ada teguran, bukan menjadi tanggung jawab kami.</li>
						
					</ol>
				</td>
			</tr>
			<tr >
				<td style="border: 1px solid black;">
				<p style="margin-left: 2%;margin-bottom: 6%;">Isi Paket/Nama barang :</p>
				<p style="margin-left: 2%;margin-right: 2%;margin-bottom: 10%;margin-top: 3%;" id="cetak_isi_paket2"></p>
				<p style="margin-left: 2%;margin-right: 2%;">No.SMU : <span id="cetak_nosmu2"></span></p>
				
				</td>
				<td style="border: 1px solid black;">
					<table style="width: 96%;margin-top: 1%;margin-bottom: 1%;  margin-left: 2%;margin-right: 2%;">
						<tr>
							<td style="width: 25%;font-size: 12;">Biaya Kirim</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_kirim2"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">SMU</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_smu2"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Karantina</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_karantina2"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">PPN</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_ppn2"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Charge</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_charge2"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;"><b>Total</b></td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;">
								<b id="cetak_total2"></b>
							</td>
						</tr>
					</table>
					
				</td>
			</tr>
			<tr >
				<td colspan="2" style="height: 20%;">
					<table style="width: 100%;border-collapse:collapse;">
						<tr>
							<td style="width: 35%;">
							<p style="margin-left: 1%;margin-right: 1%;font-size: 11;">
							Pengirim dengan ini menyatakan bahwa keterangan yang ada pada resi ini benar dan telah memenuhi syarat-syarat pada resi ini
							</p>
							<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
							<td style="border-left: 1px solid black; width: 30%;">
								<p align="center" style="font-size: 12;" id="cetak_tanggal2"></p>
									<br>
									<p align="center" style="font-size: 12">Tanda Tangan Petugas</p>
							
							</td>
							<td style="border-left: 1px solid black; width: 35%;">
								<p style="font-size: 11;margin-left: 1%;">Penerima telah menerima barang dalam keadaan baik pada <br>
									Tanggal&nbsp;&nbsp;:........................................ 
									<br>								Jam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:........................................
								</p>
								<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	<span style="font-size: 9">arsip</span>
	</div>
	<br>
	<div>
		<table style="width: 100%;">
			<tr>
				<td style="width: 25%" align="center">
					<img src="{{asset('img/LOGO.jpeg')}}" alt="" width="60%">
				</td>
				<td style="width: 30%">
				<p align="center">
					<b>Office :</b><br>
					Jalan Pamenang No. 10 Sukorejo <br>
					Gurah, Kediri <br>
					081 216 933 775 <br>
					suryantara.cargo17@gmail.com	
				</p>
				</td>
				<td style="width: 30%">
					<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr style="border: 1px solid black;">
							<td colspan="2" style="border: 1px solid black;">
								<p style="margin-left: 6px;" id="cetak_resi3"></p> 
							
							</td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact">
							<p style="font-size: 14;" align="center">Kota Asal</p></td>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Kota Tujuan</p></td>
							
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_asal3"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_tujuan3">Malang</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Jumlah Barang</p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;background-color: #bee3f7;-webkit-print-color-adjust:exact">Berat</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_jumlah_barang3"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_berat3"></p></td>
						</tr>
					</table>
				</td>
				<td style="width: 15%">
					<table style="font-size:15;width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
								<p style="margin-left: 2%;">Pengiriman Via</p></td>
						</tr>
						<tr>
							<td> <p style="margin-left: 2%;"><strike>Kargo Darat</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><strike>Kargo Laut</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><b>Kargo Udara</b></p></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
			<tr> 
				<td style="width:30%;border: 1px solid black;" align="center">Pengirim</td>
				<td style="width:30%;border: 1px solid black;" align="center">Penerima</td>
				<td style="width:40%;">
					<table style="width: 100%;border-collapse:collapse; font-size: 12;">
						<tr>
							<td style="border-right: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">Ukuran Dimensi (P x L x T)</td>
							<td align="center" style="background-color: #bee3f7;-webkit-print-color-adjust:exact">Ukuran Volume</td>
						</tr>
						<tr>
							<td style="border-top: 1px solid black; border-bottom: 1px solid black;" align="center" id="cetak_dimensi3">

							</td>
							<td style="border-top: 1px solid black; border-left:1px solid black; border-bottom: 1px solid black; " align="center" id="cetak_volumetrik3"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr >
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_pengirim3"></strong></p>
					<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_pengirim3">
						
					</p>
				</td>
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_penerima3"></strong></p>
				<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_penerima3">
					</p>
				</td>
				<td rowspan="3" align="center" style="width: 40%;">
					<p style="margin-top: 1%;">
						<b>Syarat - syarat :</b>
					</p>
					
					<ol align="left" style="font-size: 10;">
						<li>Barang-barang yang tidak di asuransikan apabila terjadi kehilangan hanya dapat di ganti maximum Rp. 1.000.000 (Satu juta rupiah).</li>
						<li>Barang yang nilainya diatas 1 juta rupiah harus di asuransikan, jika tidak diasuransikan bukan menjadi tanggung jawab kami.</li>
						<li>Barang-barang yang dikemas dengan tidak sempurna, tidak ditanggung kerusakannya.</li>
						<li>Isi tidak diperiksa, apabila isi kiriman/paket tidak sesuai dengan pengakuan pengirim maka segala resiko bukan menjadi tanggung jawab kami.</li>
						<li>Kami tidak bertanggung jawab/terima klaim atas kebocoran/kerusakan untuk jenis barang berupa kaca/pecah belah,cairan,cream dan elektronik.</li>
						<li>Kami tidak bertanggung jawab atas kerugian dalam bentuk apapun yang di akibatkan oleh keterlambatan pengiriman atau penyampaian barang, serta hilang, tertukar atau tidak kembalinya resi pengiriman barang.</li>
						<li>Bilamana dalam waktu 3 (tiga) hari setelah terima barang tidak ada teguran, bukan menjadi tanggung jawab kami.</li>
						
					</ol>
				</td>
			</tr>
			<tr >
				<td style="border: 1px solid black;">
				<p style="margin-left: 2%;margin-bottom: 6%;">Isi Paket/Nama barang :</p>
				<p style="margin-left: 2%;margin-right: 2%;margin-bottom: 10%;margin-top: 3%;" id="cetak_isi_paket3"></p>
				<p style="margin-left: 2%;margin-right: 2%;">No.SMU : <span id="cetak_nosmu3"></span></p>
				
				</td>
				<td style="border: 1px solid black;">
					<table style="width: 96%;margin-top: 1%;margin-bottom: 1%;  margin-left: 2%;margin-right: 2%;">
						<tr>
							<td style="width: 25%;font-size: 12;">Biaya Kirim</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_kirim3"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">SMU</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_smu3"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Karantina</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_karantina3"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">PPN</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_ppn3"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Charge</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_charge3"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;"><b>Total</b></td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;">
								<b id="cetak_total3"></b>
							</td>
						</tr>
					</table>
					
				</td>
			</tr>
			<tr >
				<td colspan="2" style="height: 20%;">
					<table style="width: 100%;border-collapse:collapse;">
						<tr>
							<td style="width: 35%;">
							<p style="margin-left: 1%;margin-right: 1%;font-size: 11;">
							Pengirim dengan ini menyatakan bahwa keterangan yang ada pada resi ini benar dan telah memenuhi syarat-syarat pada resi ini
							</p>
							<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
							<td style="border-left: 1px solid black; width: 30%;">
								<p align="center" style="font-size: 12;" id="cetak_tanggal3"></p>
									<br>
									<p align="center" style="font-size: 12">Tanda Tangan Petugas</p>
							
							</td>
							<td style="border-left: 1px solid black; width: 35%;">
								<p style="font-size: 11;margin-left: 1%;">Penerima telah menerima barang dalam keadaan baik pada <br>
									Tanggal&nbsp;&nbsp;:........................................ 
									<br>								Jam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:........................................
								</p>
								<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	<span style="font-size: 9">asal</span>
	</div>
	<hr>
	<div>
		<table style="width: 100%;">
			<tr>
				<td style="width: 25%" align="center">
					<img src="{{asset('img/LOGO.jpeg')}}" alt="" width="60%">
				</td>
				<td style="width: 30%">
				<p align="center">
					<b>Office :</b><br>
					Jalan Pamenang No. 10 Sukorejo <br>
					Gurah, Kediri <br>
					081 216 933 775 <br>
					suryantara.cargo17@gmail.com	
				</p>
				</td>
				<td style="width: 30%">
					<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr style="border: 1px solid black;">
							<td colspan="2" style="border: 1px solid black;">
								<p style="margin-left: 6px;" id="cetak_resi4"></p> 
							
							</td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact">
							<p style="font-size: 14;" align="center">Kota Asal</p></td>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Kota Tujuan</p></td>
							
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_asal4"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_kota_tujuan4">Malang</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
							<p style="font-size: 14;">Jumlah Barang</p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;background-color: #bee3f7;-webkit-print-color-adjust:exact">Berat</p></td>
						</tr>
						<tr>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_jumlah_barang4"></p></td>
							<td style="border: 1px solid black;" align="center">
							<p style="font-size: 14;" id="cetak_berat4"></p></td>
						</tr>
					</table>
				</td>
				<td style="width: 15%">
					<table style="font-size:15;width: 100%;border-collapse:collapse;border: 1px solid black;">
						<tr>
							<td style="border: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">
								<p style="margin-left: 2%;">Pengiriman Via</p></td>
						</tr>
						<tr>
							<td> <p style="margin-left: 2%;"><strike>Kargo Darat</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><strike>Kargo Laut</strike></p></td>
						</tr>
						<tr>
							<td><p style="margin-left: 2%;"><b>Kargo Udara</b></p></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<table style="width: 100%;border-collapse:collapse;border: 1px solid black;">
			<tr> 
				<td style="width:30%;border: 1px solid black;" align="center">Pengirim</td>
				<td style="width:30%;border: 1px solid black;" align="center">Penerima</td>
				<td style="width:40%;">
					<table style="width: 100%;border-collapse:collapse; font-size: 12;">
						<tr>
							<td style="border-right: 1px solid black;background-color: #bee3f7;-webkit-print-color-adjust:exact" align="center">Ukuran Dimensi (P x L x T)</td>
							<td align="center" style="background-color: #bee3f7;-webkit-print-color-adjust:exact">Ukuran Volume</td>
						</tr>
						<tr>
							<td style="border-top: 1px solid black; border-bottom: 1px solid black;" align="center" id="cetak_dimensi4">

							</td>
							<td style="border-top: 1px solid black; border-left:1px solid black; border-bottom: 1px solid black; " align="center" id="cetak_volumetrik4"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr >
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_pengirim4"></strong></p>
					<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_pengirim4">
						
					</p>
				</td>
				<td align="center" style="border: 1px solid black; width: 20%;">
					<p style="margin-top: 5%; margin-bottom: 5%; margin-left: 2%;margin-right: 2%;"><strong id="cetak_penerima4"></strong></p>
				<p align="left" style="margin-left: 2%;font-size: 15;" id="cetak_telp_penerima4">
					</p>
				</td>
				<td rowspan="3" align="center" style="width: 40%;">
					<p style="margin-top: 1%;">
						<b>Syarat - syarat :</b>
					</p>
					
					<ol align="left" style="font-size: 10;">
						<li>Barang-barang yang tidak di asuransikan apabila terjadi kehilangan hanya dapat di ganti maximum Rp. 1.000.000 (Satu juta rupiah).</li>
						<li>Barang yang nilainya diatas 1 juta rupiah harus di asuransikan, jika tidak diasuransikan bukan menjadi tanggung jawab kami.</li>
						<li>Barang-barang yang dikemas dengan tidak sempurna, tidak ditanggung kerusakannya.</li>
						<li>Isi tidak diperiksa, apabila isi kiriman/paket tidak sesuai dengan pengakuan pengirim maka segala resiko bukan menjadi tanggung jawab kami.</li>
						<li>Kami tidak bertanggung jawab/terima klaim atas kebocoran/kerusakan untuk jenis barang berupa kaca/pecah belah,cairan,cream dan elektronik.</li>
						<li>Kami tidak bertanggung jawab atas kerugian dalam bentuk apapun yang di akibatkan oleh keterlambatan pengiriman atau penyampaian barang, serta hilang, tertukar atau tidak kembalinya resi pengiriman barang.</li>
						<li>Bilamana dalam waktu 3 (tiga) hari setelah terima barang tidak ada teguran, bukan menjadi tanggung jawab kami.</li>
						
					</ol>
				</td>
			</tr>
			<tr >
				<td style="border: 1px solid black;">
				<p style="margin-left: 2%;margin-bottom: 6%;">Isi Paket/Nama barang :</p>
				<p style="margin-left: 2%;margin-right: 2%;margin-bottom: 10%;margin-top: 3%;" id="cetak_isi_paket4"></p>
				<p style="margin-left: 2%;margin-right: 2%;">No.SMU : <span id="cetak_nosmu4"></span></p>
				
				</td>
				<td style="border: 1px solid black;">
					<table style="width: 96%;margin-top: 1%;margin-bottom: 1%;  margin-left: 2%;margin-right: 2%;">
						<tr>
							<td style="width: 25%;font-size: 12;">Biaya Kirim</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_kirim4"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">SMU</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_smu4"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Karantina</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_karantina4"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">PPN</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_ppn4"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;">Charge</td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;" id="cetak_biaya_charge4"></td>
						</tr>
						<tr>
							<td style="width: 25%;font-size: 12;"><b>Total</b></td>
							<td>&nbsp;:&nbsp;</td>
							<td align="right" style="font-size: 12;">
								<b id="cetak_total4"></b>
							</td>
						</tr>
					</table>
					
				</td>
			</tr>
			<tr >
				<td colspan="2" style="height: 20%;">
					<table style="width: 100%;border-collapse:collapse;">
						<tr>
							<td style="width: 35%;">
							<p style="margin-left: 1%;margin-right: 1%;font-size: 11;">
							Pengirim dengan ini menyatakan bahwa keterangan yang ada pada resi ini benar dan telah memenuhi syarat-syarat pada resi ini
							</p>
							<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
							<td style="border-left: 1px solid black; width: 30%;">
								<p align="center" style="font-size: 12;" id="cetak_tanggal4"></p>
									<br>
									<p align="center" style="font-size: 12">Tanda Tangan Petugas</p>
							
							</td>
							<td style="border-left: 1px solid black; width: 35%;">
								<p style="font-size: 11;margin-left: 1%;">Penerima telah menerima barang dalam keadaan baik pada <br>
									Tanggal&nbsp;&nbsp;:........................................ 
									<br>								Jam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:........................................
								</p>
								<br>
							<hr><p style="font-size: 11;" align="center">
								(Tanda tangan/Cap/Nama jelas)
							</p>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	<span style="font-size: 9">penerima</span>
	</div>
	</div>
	</div>
        @endsection
@section('js')
<script src="{{asset('assets/js/lib/select2/select2.full.min.js')}}"></script>
<script src="{{asset('assets/js/lib/notie/notie.js')}}"></script>
<script src="{{asset('assets/js/lib/notie/notie-init.js')}}"></script>
<script src="{{asset('assets/js/lib/ladda-button/spin.min.js')}}"></script>
<script src="{{asset('assets/js/lib/ladda-button/ladda.min.js')}}"></script>
@endsection

@section('otherjs')
<script src="{{asset('assets/js/resiudara.js')}}"></script>
<script type="text/javascript">
     function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }

</script>

@endsection