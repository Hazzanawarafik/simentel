<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css" />
<script type="text/javascript">
	function domo() {
		$('*').bind('keydown', 'Ctrl+e', function () {
			$('#btn_edit').trigger('click');
			return false;
		});

		$('*').bind('keydown', 'Ctrl+x', function () {
			$('#btn_back').trigger('click');
			return false;
		});
	}

	jQuery(document).ready(domo);
</script>
<section class="content-header">
	<h1>
		Menara <small><?= cclang('detail', ['Menara']); ?> </small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class=""><a href="<?= site_url('administrator/menara'); ?>">Menara</a></li>
		<li class="active"><?= cclang('detail'); ?></li>
	</ol>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-body">
					<div class="box box-widget widget-user-2">
						<div class="widget-user-header">
							<div class="widget-user-image">
								<img class="img-circle" src="<?= BASE_ASSET; ?>/img/view.png" alt="User Avatar">
							</div>
							<h3 class="widget-user-username">Menara</h3>
							<h5 class="widget-user-desc">Detail Menara</h5>
							<hr>
						</div>


						<div class="row">
							<div class="col-md-6">
								<table class="table table-striped">
									<tr>
										<th style="width: 10px">#</th>
										<th>Task</th>
										<th>Progress</th>
										<th style="width: 40px">Label</th>
									</tr>
									<tr>
										<td>1.</td>
										<td>Update software</td>
										<td>
											<div class="progress progress-xs">
												<div class="progress-bar progress-bar-danger" style="width: 55%"></div>
											</div>
										</td>
										<td><span class="badge bg-red">55%</span></td>
									</tr>
									<tr>
										<td>2.</td>
										<td>Clean database</td>
										<td>
											<div class="progress progress-xs">
												<div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
											</div>
										</td>
										<td><span class="badge bg-yellow">70%</span></td>
									</tr>
									<tr>
										<td>3.</td>
										<td>Cron job running</td>
										<td>
											<div class="progress progress-xs progress-striped active">
												<div class="progress-bar progress-bar-primary" style="width: 30%"></div>
											</div>
										</td>
										<td><span class="badge bg-light-blue">30%</span></td>
									</tr>
									<tr>
										<td>4.</td>
										<td>Fix and squish bugs</td>
										<td>
											<div class="progress progress-xs progress-striped active">
												<div class="progress-bar progress-bar-success" style="width: 90%"></div>
											</div>
										</td>
										<td><span class="badge bg-green">90%</span></td>
									</tr>
								</table>
							</div>
							
							<div class="col-md-6">
								<div id="map" style="height: 400px; width: 100%;"></div>
							</div>
						</div>


						<!-- <div class="form-horizontal form-step" name="form_menara" id="form_menara">

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">ID </label>

								<div class="col-sm-8">
									<span class="detail_group-menara_id"><?= _ent($menara->menara_id); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Pemohon </label>

								<div class="col-sm-8">
									<?= _ent($menara->pemohon_pemohon_nama); ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Kecamatan </label>

								<div class="col-sm-8">
									<?= _ent($menara->kecamatan_kecamatan_nama); ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Kelurahan </label>

								<div class="col-sm-8">
									<?= _ent($menara->kelurahan_kelurahan_nama); ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Tipe Site </label>

								<div class="col-sm-8">
									<?= _ent($menara->tipe_site_tipe_site_nama); ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Operator </label>

								<div class="col-sm-8">
									<?= join_multi_select($menara->operator_id, 'operator', 'operator_id', 'operator_nama'); ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Nama Menara </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-nama"><?= _ent($menara->menara_nama); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Alamat Menara </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-alamat"><?= _ent($menara->menara_alamat); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">RT </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-rt"><?= _ent($menara->menara_rt); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">RW </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-rw"><?= _ent($menara->menara_rw); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label"> File </label>
								<div class="col-sm-8">
									<?php if (is_image($menara->menara_file_berkas)): ?>
									<a class="fancybox" rel="group"
										href="<?= BASE_URL . 'uploads/menara/' . $menara->menara_file_berkas; ?>">
										<img src="<?= BASE_URL . 'uploads/menara/' . $menara->menara_file_berkas; ?>"
											class="image-responsive" alt="image menara"
											title="menara_file_berkas menara" width="40px">
									</a>
									<?php else: ?>
									<label>
										<a
											href="<?= BASE_URL . 'administrator/file/download/menara/' . $menara->menara_file_berkas; ?>">
											<img src="<?= get_icon_file($menara->menara_file_berkas); ?>"
												class="image-responsive" alt="image menara"
												title="menara_file_berkas <?= $menara->menara_file_berkas; ?>"
												width="40px">
											<?= $menara->menara_file_berkas ?>
										</a>
									</label>
									<?php endif; ?>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Latitude </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-latitude"><?= _ent($menara->menara_latitude); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Longitude </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-longitude"><?= _ent($menara->menara_longitude); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Ketinggian Menara (m) </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-ketinggian"><?= _ent($menara->menara_ketinggian); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label"> Foto </label>
								<div class="col-sm-8">
									<?php if (!empty($menara->menara_image)): ?>
									<?php foreach (explode(',', $menara->menara_image) as $filename): ?>
									<?php if (is_image($menara->menara_image)): ?>
									<a class="fancybox" rel="group"
										href="<?= BASE_URL . 'uploads/menara/' . $filename; ?>">
										<img src="<?= BASE_URL . 'uploads/menara/' . $filename; ?>"
											class="image-responsive" alt="image menara" title="menara_image menara"
											width="40px">
									</a>
									<?php else: ?>
									<label>
										<a href="<?= BASE_URL . 'administrator/file/download/menara/' . $filename; ?>">
											<img src="<?= get_icon_file($filename); ?>" class="image-responsive"
												alt="image menara" title="menara_image <?= $filename; ?>" width="40px">
											<?= $filename ?>
										</a>
									</label>
									<?php endif; ?>
									<?php endforeach; ?>
									<?php endif; ?>
								</div>
							</div>


							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Nama Penyewa </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-nama-penyewa"><?= _ent($menara->menara_nama_penyewa); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Pemilik Menara </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-pemilik"><?= _ent($menara->menara_pemilik); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Kondisi </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-kondisi"><?= _ent($menara->menara_kondisi); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Luas Area </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-luas-area"><?= _ent($menara->menara_luas_area); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">IMB </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-imb"><?= _ent($menara->menara_imb); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Tanggal IMB </label>

								<div class="col-sm-8">
									<span
										class="detail_group-menara-tgl-imb"><?= _ent($menara->menara_tgl_imb); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Status </label>

								<div class="col-sm-8">
									<span class="detail_group-menara-status"><?= _ent($menara->menara_status); ?></span>
								</div>
							</div>

							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">Kawasan </label>

								<div class="col-sm-8">
									<?= _ent($menara->kawasan_kawasan_nama); ?>
								</div>
							</div>

							<br>
							<br>

							<div class="view-nav">
								<?php is_allowed('menara_update', function() use ($menara){?>
								<a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back'
									title="edit menara (Ctrl+e)"
									href="<?= site_url('administrator/menara/edit/'.$menara->menara_id); ?>"><i
										class="fa fa-edit"></i> <?= cclang('update', ['Menara']); ?> </a>
								<?php }) ?>
								<a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)"
									href="<?= site_url('administrator/menara/'); ?>"><i class="fa fa-undo"></i>
									<?= cclang('go_list_button', ['Menara']); ?></a>
							</div>

						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript" src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		"use strict";
		
		var pin;
		var curLocation 	= [<?= $menara->menara_latitude.','.$menara->menara_longitude;?>];
		var latLngZones 	= <?php echo json_encode($zona, JSON_NUMERIC_CHECK);?>;
		var circleArray = [];

		var map = L.map('map').setView(curLocation, 15);

		map.attributionControl.setPrefix(false);

		L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
			attribution: '&copy; <a href="https://semarangkota.go.id/" target="blank">Kota Semarang</a> | <a href="https://diskominfo.semarangkota.go.id/" target="blank">Diskominfo</a> contributors'
		}).addTo(map);

		$.getJSON('<?= base_url().'peta-administrasi/Wilayah-Administrasi-Kecamatan-Kota_Semarang.geojson';?>', function (data) {
			var geoLayer = L.geoJson(data, {
				style : function (feature) {
					return {
						opacity : 0.5,
						color : '#007100',
						weight : 1,
						fillOpacity : 0.4,
						fillColor : 'grey'
					}
				},
			}).addTo(map);
		});

		latLngZones.forEach(function (circleZone) {
			var dataCircleZone =  L.circle(circleZone, {
									color: "green",
									fillColor: "#408039",
									fillOpacity: 0.5,
									radius: circleZone.radius
								}).addTo(map);

			circleArray.push(dataCircleZone);
		});

		var markerDraggable = L.marker(curLocation).addTo(map);
	});
</script>