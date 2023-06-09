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

<style></style>

<section class="content-header">
	<h1>Kelurahan <small><?= cclang('new', ['Kelurahan']); ?> </small></h1>
	<ol class="breadcrumb">
		<li><a href="javascript:void(0);"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="<?= admin_site_url('/kelurahan'); ?>">Kelurahan</a></li>
		<li class="active"><?= cclang('new'); ?></li>
	</ol>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
			<?= form_open('', [
					'name' 		=> 'form_kelurahan',
					'id' 		=> 'form_kelurahan',
					'enctype' 	=> 'multipart/form-data',
					'method' 	=> 'POST'
				]);

				$user_groups = $this->model_group->get_user_group_ids();
			?>
				<div class="box-header">
					<h3 class="box-title"><?= cclang('new', ['Kelurahan']); ?></h3>
				</div>
				<div class="box-body">
					<div class="form-group group-kecamatan-id">
						<label for="kecamatan_id" class="control-label">Kecamatan <i class="required">*</i></label>
						<select class="form-control chosen chosen-select-deselect" name="kecamatan_id" id="kecamatan_id" data-placeholder="Select Nama Kecamatan">
							<option value=""></option>
						</select>
						<small class="info help-block"></small>
					</div>
					<div class="form-group group-kelurahan-nama">
						<label for="kelurahan_nama" class="control-label">Nama Kelurahan <i class="required">*</i></label>
						<input type="text" class="form-control" name="kelurahan_nama" id="kelurahan_nama" placeholder="Nama Kelurahan" value="<?= set_value('kelurahan_nama'); ?>">
						<small class="info help-block"><b>Input Kelurahan Nama</b> Max Length : 255.</small>
					</div>

					<div class="message"></div>
				</div>
				<div class="box-footer">
					<button class="btn btn-flat btn-primary btn_save btn_action" id="btn_save" data-stype='stay' title="<?= cclang('save_button'); ?> (Ctrl+s)">
						<i class="fa fa-save"></i> <?= cclang('save_button'); ?>
					</button>
					<a class="btn btn-flat btn-info btn_save btn_action btn_save_back" id="btn_save" data-stype='back' title="<?= cclang('save_and_go_the_list_button'); ?> (Ctrl+d)">
						<i class="ion ion-ios-list-outline"></i> <?= cclang('save_and_go_the_list_button'); ?>
					</a>

					<div class="custom-button-wrapper"></div>

					<a class="btn btn-flat btn-default btn_action" id="btn_cancel" title="<?= cclang('cancel_button'); ?> (Ctrl+x)">
						<i class="fa fa-undo"></i> <?= cclang('cancel_button'); ?>
					</a>

					<span class="loading loading-hide">
						<img src="<?= BASE_ASSET; ?>/img/loading-spin-primary.svg">
						<i><?= cclang('loading_saving_data'); ?></i>
					</span>
				</div>
				<?= form_close(); ?>
			</div>
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
					window.location.href = ADMIN_BASE_URL + '/kelurahan';
				}
			});

			return false;
		}); /*end btn cancel*/

		$('.btn_save').click(function () {
			$('.message').fadeOut();

			var form_kelurahan = $('#form_kelurahan');
			var data_post = form_kelurahan.serializeArray();
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
				url: ADMIN_BASE_URL + '/kelurahan/add_save',
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
								.prepend(`
				<div class="error-input">` + val + `</div>
				`);
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

		function chained_kecamatan_id(selected, complete) {
			$.LoadingOverlay('show');

			$.ajax({
				url: ADMIN_BASE_URL + '/kelurahan/ajax_kecamatan_id/',
				dataType: 'JSON',
			})
			.done(function (res) {
				var html = '<option value=""></option>';

				$.each(res, function (index, val) {
					html += '<option value="' + val.kecamatan_id + '">' + val.kecamatan_nama + '</option>'
				});

				$('#kecamatan_id').html(html);
				$('#kecamatan_id').trigger('chosen:updated');

			})
			.fail(function () {
				toastr['error']('Error', 'Getting data fail')
			})
			.always(function () {
				$.LoadingOverlay('hide')
			});
		};

		async function chain() {
			await chained_kecamatan_id('');
		}

		chain();
	}); /*end doc ready*/
</script>