<script src="<?= BASE_ASSET; ?>js/loadingoverlay.min.js"></script>

<script type="text/javascript">
	function domo() {
		$('*').bind('keydown', 'Ctrl+s', function () {
			$('#btn_save').trigger('click');
			return false;
		});

		$('*').bind('keydown', 'Ctrl+x', function () {
			$('#btn_cancel').trigger('click');
			return false;
		});

		$('*').bind('keydown', 'Ctrl+d', function () {
			$('.btn_save_back').trigger('click');
			return false;
		});
	}

	jQuery(document).ready(domo);
</script>
<style>
</style>
<section class="content-header">
	<h1>
		Pemohon <small><?= cclang('new', ['Pemohon']); ?> </small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="javascript:void(0);"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="<?= admin_site_url('/pemohon'); ?>">Pemohon</a></li>
		<li class="active"><?= cclang('new'); ?></li>
	</ol>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<?= form_open('', [
					'name' => 'form_pemohon',
					'class' => 'form-horizontal form-step',
					'id' => 'form_pemohon',
					'enctype' => 'multipart/form-data',
					'method' => 'POST'
				]);

				$user_groups = $this->model_group->get_user_group_ids();
			?>
			<div class="box box-primary">
				<div class="box-body">
					<div class="box box-widget widget-user-2">
						<div class="widget-user-header">
							<div class="widget-user-image">
								<img class="img-circle" src="<?= BASE_ASSET; ?>/img/add2.png" alt="User Avatar">
							</div>
							<h3 class="widget-user-username">Pemohon</h3>
							<h5 class="widget-user-desc"><?= cclang('new', ['Pemohon']); ?></h5>
							<hr>
						</div>

						<div class="form-group group-pemohon_nama">
							<label for="pemohon_nama" class="col-sm-2 control-label">Nama Pemohon <i class="required">*</i></label>
							<div class="col-sm-8">
								<input type="email" class="form-control" name="pemohon_nama" id="pemohon_nama" placeholder="Nama Pemohon" value="<?= set_value('pemohon_nama'); ?>">
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-pemohon_nama">
							<label for="pemohon_email" class="col-sm-2 control-label">Email Pemohon <i class="required">*</i></label>
							<div class="col-sm-8">
								<input type="email" class="form-control" name="pemohon_email" id="pemohon_email" placeholder="Email Pemohon" value="<?= set_value('pemohon_email'); ?>">
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-pemohon_jenkel">
							<label for="pemohon_jenkel" class="col-sm-2 control-label">Jenis Kelamin <i class="required">*</i></label>
							<div class="col-sm-8">
								<select class="form-control chosen chosen-select" name="pemohon_jenkel" id="pemohon_jenkel" data-placeholder="Select Jenis Kelamin">
									<option value=""></option>
									<option value="1">Laki-Laki</option>
									<option value="2">Perempuan</option>
								</select>
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-pemohon_alamat">
							<label for="pemohon_alamat" class="col-sm-2 control-label">Alamat Pemohon <i class="required">*</i></label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="pemohon_alamat" id="pemohon_alamat" placeholder="Alamat Pemohon" value="<?= set_value('pemohon_alamat'); ?>">
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-pemohon_rt">
							<label for="pemohon_rt" class="col-sm-2 control-label">RT <i class="required">*</i></label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="pemohon_rt" id="pemohon_rt" placeholder="RT" value="<?= set_value('pemohon_rt'); ?>">
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-pemohon_rw">
							<label for="pemohon_rw" class="col-sm-2 control-label">RW <i class="required">*</i></label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="pemohon_rw" id="pemohon_rw" placeholder="RW" value="<?= set_value('pemohon_rw'); ?>">
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-kecamatan_id">
							<label for="kecamatan_id" class="col-sm-2 control-label">Kecamatan <i class="required">*</i></label>
							<div class="col-sm-8">
								<select class="form-control chosen chosen-select-deselect" name="kecamatan_id" id="kecamatan_id" data-placeholder="Select Kecamatan">
									<option value=""></option>
									<?php foreach (db_get_all_data('kecamatan') as $row): ?>
									<option value="<?= $row->kecamatan_id ?>"><?= $row->kecamatan_nama; ?></option>
									<?php endforeach; ?>
								</select>
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-kelurahan_id">
							<label for="kelurahan_id" class="col-sm-2 control-label">Kelurahan <i class="required">*</i></label>
							<div class="col-sm-8">
								<select class="form-control chosen chosen-select-deselect" name="kelurahan_id" id="kelurahan_id" data-placeholder="Select Kelurahan">
									<option value=""></option>
								</select>
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="form-group group-agama_id">
							<label for="agama_id" class="col-sm-2 control-label">Agama <i class="required">*</i></label>
							<div class="col-sm-8">
								<select class="form-control chosen chosen-select-deselect" name="agama_id" id="agama_id" data-placeholder="Select Agama">
									<option value=""></option>
									<?php foreach (db_get_all_data('agama') as $row): ?>
									<option value="<?= $row->agama_id ?>"><?= $row->agama_nama; ?></option>
									<?php endforeach; ?>
								</select>
								<small class="info help-block"></small>
							</div>
						</div>

						<div class="message"></div>
					</div>
				</div>
				<div class="box-footer">
					<button class="btn btn-flat btn-primary btn_save btn_action" id="btn_save" data-stype='stay' title="<?= cclang('save_button'); ?> (Ctrl+s)">
						<i class="fa fa-save"></i> <?= cclang('save_button'); ?>
					</button>
					<a class="btn btn-flat btn-info btn_save btn_action btn_save_back" id="btn_save" data-stype='back' title="<?= cclang('save_and_go_the_list_button'); ?> (Ctrl+d)">
						<i class="ion ion-ios-list-outline"></i> <?= cclang('save_and_go_the_list_button'); ?>
					</a>

					<div class="custom-button-wrapper"></div>

					<a class="btn btn-flat btn-default btn_action" id="btn_cancel"
						title="<?= cclang('cancel_button'); ?> (Ctrl+x)">
						<i class="fa fa-undo"></i> <?= cclang('cancel_button'); ?>
					</a>

					<span class="loading loading-hide">
						<img src="<?= BASE_ASSET; ?>/img/loading-spin-primary.svg">
						<i><?= cclang('loading_saving_data'); ?></i>
					</span>
				</div>
			</div>
			<?= form_close(); ?>
		</div>
	</div>
</section>

<script>
	$(document).ready(function () {
		"use strict";

		window.event_submit_and_action = '';

		$('#btn_cancel').click(function () {
			swal({
				title: "<?= cclang('are_you_sure'); ?>",
				text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "Yes!",
				cancelButtonText: "No!",
				closeOnConfirm: true,
				closeOnCancel: true
			},
			function (isConfirm) {
				if (isConfirm) {
					window.location.href = ADMIN_BASE_URL + '/pemohon';
				}
			});

			return false;
		}); /*end btn cancel*/

		$('.btn_save').click(function () {
			$('.message').fadeOut();

			var form_pemohon = $('#form_pemohon');
			var data_post = form_pemohon.serializeArray();
			var save_type = $(this).attr('data-stype');

			data_post.push({
				name: 'save_type',
				value: save_type
			});

			data_post.push({
				name: 'event_submit_and_action',
				value: window.event_submit_and_action
			});

			$('.loading').show();

			$.ajax({
				url: ADMIN_BASE_URL + '/pemohon/add_save',
				type: 'POST',
				dataType: 'json',
				data: data_post,
			})
			.done(function (res) {
				$('form').find('.form-group').removeClass('has-error');
				$('.steps li').removeClass('error');
				$('form').find('.error-input').remove();
				if (res.success) {
					if (save_type == 'back') {
						window.location.href = res.redirect;
						return;
					}

					$('.message').printMessage({
						message: res.message
					});
					$('.message').fadeIn();
					resetForm();
					$('.chosen option').prop('selected', false).trigger('chosen:updated');

				} else {
					if (res.errors) {
						$.each(res.errors, function (index, val) {
							$('form #' + index).parents('.form-group').addClass(
								'has-error');
							$('form #' + index).parents('.form-group').find('small')
								.prepend(`<div class="error-input">` + val + `</div>`);
						});
						$('.steps li').removeClass('error');
						$('.content section').each(function (index, el) {
							if ($(this).find('.has-error').length) {
								$('.steps li:eq(' + index + ')').addClass('error').find(
									'a').trigger('click');
							}
						});
					}
					$('.message').printMessage({
						message: res.message,
						type: 'warning'
					});
				}

			})
			.fail(function () {
				$('.message').printMessage({
					message: 'Error save data',
					type: 'warning'
				});
			})
			.always(function () {
				$('.loading').hide();
				$('html, body').animate({
					scrollTop: $(document).height()
				}, 2000);
			});

			return false;
		}); /*end btn save*/

		$('#kecamatan_id').change(function (event) {
			var val = $(this).val();
			$.LoadingOverlay('show')
			$.ajax({
				url: ADMIN_BASE_URL + '/pemohon/ajax_kelurahan_id/' + val,
				dataType: 'JSON',
			})
			.done(function (res) {
				var html = '<option value=""></option>';
				$.each(res, function (index, val) {
					html += '<option value="' + val.kelurahan_id + '">' + val
						.kelurahan_nama + '</option>'
				});
				$('#kelurahan_id').html(html);
				$('#kelurahan_id').trigger('chosen:updated');

			})
			.fail(function () {
				toastr['error']('Error', 'Getting data fail')
			})
			.always(function () {
				$.LoadingOverlay('hide')
			});
		});

	}); /*end doc ready*/
</script>