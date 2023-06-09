<script type="text/javascript">
	function domo() {
		$('*').bind('keydown', 'Ctrl+a', function () {
			window.location.href = BASE_URL + '/administrator/Kecamatan/add';
			return false;
		});

		$('*').bind('keydown', 'Ctrl+f', function () {
			$('#sbtn').trigger('click');
			return false;
		});

		$('*').bind('keydown', 'Ctrl+x', function () {
			$('#reset').trigger('click');
			return false;
		});

		$('*').bind('keydown', 'Ctrl+b', function () {

			$('#reset').trigger('click');
			return false;
		});
	}

	jQuery(document).ready(domo);
</script>
<section class="content-header">
	<h1><?= cclang('kecamatan') ?><small><?= cclang('list_all'); ?></small></h1>
	<ol class="breadcrumb">
		<li><ahref="javascript:void(0);"><i class="fa fa-dashboard"></i> Home</ahref=></li>
		<li class="active"><?= cclang('kecamatan') ?></li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title"><?= cclang('list_all', [cclang('kecamatan')]); ?> <i class="label bg-yellow"><?= $kecamatan_counts; ?> <?= cclang('items'); ?></i></h3>
					<div class="pull-right">
				<?php
					is_allowed('kecamatan_add', function(){?>
						<a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('kecamatan')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/kecamatan/add'); ?>">
							<i class="fa fa-plus-square-o"></i> <?= cclang('add_new_button', [cclang('kecamatan')]);?>
						</a>
				<?php 
					});

					is_allowed('kecamatan_export', function() {
				?>
						<a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('kecamatan') ?> " href="<?= site_url('administrator/kecamatan/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>">
							<i class="fa fa-file-excel-o"></i> <?= cclang('export'); ?> XLS
						</a>
				<?php
					});

					is_allowed('kecamatan_export', function() {
				?>
						<a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('kecamatan') ?> " href="<?= site_url('administrator/kecamatan/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>">
							<i class="fa fa-file-pdf-o"></i> <?= cclang('export'); ?> PDF
						</a>
				<?php });?>
					</div>
				</div>
				<div class="box-body">
					<form name="form_kecamatan" id="form_kecamatan" action="<?= base_url('administrator/kecamatan/index'); ?>">
						<div class="row">
							<div class="col-md-8">
								<div class="col-sm-2 padd-left-0">
									<select type="text" class="form-control chosen chosen-select" name="bulk" id="bulk" placeholder="Site Email">
										<option value="delete">Delete</option>
									</select>
								</div>
								<div class="col-sm-2 padd-left-0">
									<button type="button" class="btn btn-flat" name="apply" id="apply" title="<?= cclang('apply_bulk_action'); ?>"><?= cclang('apply_button'); ?></button>
								</div>
								<div class="col-sm-3 padd-left-0 ">
									<input type="text" class="form-control" name="q" id="filter" placeholder="<?= cclang('filter'); ?>" value="<?= $this->input->get('q'); ?>">
								</div>
								<div class="col-sm-3 padd-left-0">
									<select type="text" class="form-control chosen chosen-select" name="f" id="field">
										<option value=""><?= cclang('all'); ?></option>
										<option <?= $this->input->get('f') == 'kecamatan_nama' ? 'selected' :''; ?> value="kecamatan_nama">Nama Kecamatan</option>
									</select>
								</div>
								<div class="col-sm-1 padd-left-0">
									<button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
										Filter
									</button>
								</div>
								<div class="col-sm-1 padd-left-0">
									<a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/kecamatan');?>" title="<?= cclang('reset_filter'); ?>">
										<i class="fa fa-undo"></i>
									</a>
								</div>
							</div>
							<div class="col-md-4">
								<div class="dataTables_paginate paging_simple_numbers pull-right" id="example2_paginate">
									<?= $pagination; ?>
								</div>
							</div>
						</div>
						<div class="table-responsive" style="margin-top: 10px;">
							<table class="table table-bordered table-striped dataTable">
								<thead>
									<tr>
										<th><input type="checkbox" class="flat-red toltip" id="check_all" name="check_all" title="check all"></th>
										<th data-field="kecamatan_nama" data-sort="1" data-primary-key="0"><?= cclang('kecamatan_nama') ?></th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody id="tbody_kecamatan">
									<?php foreach($kecamatans as $kecamatan): ?>
									<tr>
										<td width="5"><input type="checkbox" class="flat-red check" name="id[]" value="<?= $kecamatan->kecamatan_id; ?>"></td>
										<td><span class="list_group-kecamatan-nama"><?= _ent($kecamatan->kecamatan_nama); ?></span>
										</td>
										<td width="200">
											<?php is_allowed('kecamatan_view', function() use ($kecamatan){?>
											<a href="<?= site_url('administrator/kecamatan/view/' . $kecamatan->kecamatan_id); ?>"
												class="label-default"><i class="fa fa-newspaper-o"></i>
												<?= cclang('view_button'); ?>
												<?php }) ?>
												<?php is_allowed('kecamatan_update', function() use ($kecamatan){?>
												<a href="<?= site_url('administrator/kecamatan/edit/' . $kecamatan->kecamatan_id); ?>"
													class="label-default"><i class="fa fa-edit"></i>
													<?= cclang('update_button'); ?></a>
												<?php }) ?>
												<?php is_allowed('kecamatan_delete', function() use ($kecamatan){?>
												<a href="javascript:void(0);"
													data-href="<?= site_url('administrator/kecamatan/delete/' . $kecamatan->kecamatan_id); ?>"
													class="label-default remove-data"><i class="fa fa-close"></i>
													<?= cclang('remove_button'); ?></a>
												<?php }) ?>

										</td>
									</tr>
									<?php endforeach; ?>
									<?php if ($kecamatan_counts == 0) :?>
									<tr>
										<td colspan="100">
											Kecamatan data is not available
										</td>
									</tr>
									<?php endif; ?>
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	$(document).ready(function () {
		"use strict";

		$('.remove-data').click(function () {
			var url = $(this).attr('data-href');
			swal({
				title: "<?= cclang('are_you_sure'); ?>",
				text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "<?= cclang('yes_delete_it'); ?>",
				cancelButtonText: "<?= cclang('no_cancel_plx'); ?>",
				closeOnConfirm: true,
				closeOnCancel: true
			},
			function (isConfirm) {
				if (isConfirm) {
					document.location.href = url;
				}
			});

			return false;
		});

		$('#apply').click(function () {
			var bulk = $('#bulk');
			var serialize_bulk = $('#form_kecamatan').serialize();

			if (bulk.val() == 'delete') {
				swal({
					title: "<?= cclang('are_you_sure'); ?>",
					text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
					type: "warning",
					showCancelButton: true,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "<?= cclang('yes_delete_it'); ?>",
					cancelButtonText: "<?= cclang('no_cancel_plx'); ?>",
					closeOnConfirm: true,
					closeOnCancel: true
				},
				function (isConfirm) {
					if (isConfirm) {
						document.location.href = BASE_URL + '/administrator/kecamatan/delete?' +
							serialize_bulk;
					}
				});

				return false;
			} else if (bulk.val() == '') {
				swal({
					title: "Upss",
					text: "<?= cclang('please_choose_bulk_action_first'); ?>",
					type: "warning",
					showCancelButton: false,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "Okay!",
					closeOnConfirm: true,
					closeOnCancel: true
				});

				return false;
			}

			return false;

		}); /*end appliy click*/

		//check all
		var checkAll = $('#check_all');
		var checkboxes = $('input.check');

		checkAll.on('ifChecked ifUnchecked', function (event) {
			if (event.type == 'ifChecked') {
				checkboxes.iCheck('check');
			} else {
				checkboxes.iCheck('uncheck');
			}
		});

		checkboxes.on('ifChanged', function (event) {
			if (checkboxes.filter(':checked').length == checkboxes.length) {
				checkAll.prop('checked', 'checked');
			} else {
				checkAll.removeProp('checked');
			}
			checkAll.iCheck('update');
		});
		initSortable('kecamatan', $('table.dataTable'));
	}); /*end doc ready*/
</script>