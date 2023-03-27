
    <link href="<?= BASE_ASSET; ?>/fine-upload/fine-uploader-gallery.min.css" rel="stylesheet">
    <script src="<?= BASE_ASSET; ?>/fine-upload/jquery.fine-uploader.js"></script>
    <?php $this->load->view('core_template/fine_upload'); ?>
<script type="text/javascript">
    function domo() {

        $('*').bind('keydown', 'Ctrl+s', function() {
            $('#btn_save').trigger('click');
            return false;
        });

        $('*').bind('keydown', 'Ctrl+x', function() {
            $('#btn_cancel').trigger('click');
            return false;
        });

        $('*').bind('keydown', 'Ctrl+d', function() {
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
        Pendaftaran        <small><?= cclang('new', ['Pendaftaran']); ?> </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= admin_site_url('/pendaftaran'); ?>">Pendaftaran</a></li>
        <li class="active"><?= cclang('new'); ?></li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-body ">
                    <div class="box box-widget widget-user-2">
                        <div class="widget-user-header ">
                            <div class="widget-user-image">
                                <img class="img-circle" src="<?= BASE_ASSET; ?>/img/add2.png" alt="User Avatar">
                            </div>
                            <h3 class="widget-user-username">Pendaftaran</h3>
                            <h5 class="widget-user-desc"><?= cclang('new', ['Pendaftaran']); ?></h5>
                            <hr>
                        </div>
                        <?= form_open('', [
                            'name' => 'form_pendaftaran',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_pendaftaran',
                            'enctype' => 'multipart/form-data',
                            'method' => 'POST'
                        ]); ?>
                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                        <div class="form-group group-tempat ">
                            <label for="tempat" class="col-sm-2 control-label">Tempat                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="tempat" id="tempat" placeholder="Tempat" value="<?= set_value('tempat'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-tanggal_surat ">
                            <label for="tanggal_surat" class="col-sm-2 control-label">Tanggal Surat                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="tanggal_surat" id="tanggal_surat" placeholder="Tanggal Surat" value="<?= set_value('tanggal_surat'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-nomor_surat ">
                            <label for="nomor_surat" class="col-sm-2 control-label">Nomor Surat                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="nomor_surat" id="nomor_surat" placeholder="Nomor Surat" value="<?= set_value('nomor_surat'); ?>">
                                <small class="info help-block">
                                    <b>Input Nomor Surat</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-nama_perusahaan ">
                            <label for="nama_perusahaan" class="col-sm-2 control-label">Nama Perusahaan                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="nama_perusahaan" id="nama_perusahaan" placeholder="Nama Perusahaan" value="<?= set_value('nama_perusahaan'); ?>">
                                <small class="info help-block">
                                    <b>Input Nama Perusahaan</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-alamat_perusahaan ">
                            <label for="alamat_perusahaan" class="col-sm-2 control-label">Alamat Perusahaan                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="alamat_perusahaan" id="alamat_perusahaan" placeholder="Alamat Perusahaan" value="<?= set_value('alamat_perusahaan'); ?>">
                                <small class="info help-block">
                                    <b>Input Alamat Perusahaan</b> Max Length : 255.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-nama_penanggungjawab ">
                            <label for="nama_penanggungjawab" class="col-sm-2 control-label">Nama Penanggungjawab                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="nama_penanggungjawab" id="nama_penanggungjawab" placeholder="Nama Penanggungjawab" value="<?= set_value('nama_penanggungjawab'); ?>">
                                <small class="info help-block">
                                    <b>Input Nama Penanggungjawab</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-no_telepon_kantor ">
                            <label for="no_telepon_kantor" class="col-sm-2 control-label">No Telepon Kantor                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" name="no_telepon_kantor" id="no_telepon_kantor" placeholder="No Telepon Kantor" value="<?= set_value('no_telepon_kantor'); ?>">
                                <small class="info help-block">
                                    <b>Input No Telepon Kantor</b> Max Length : 11.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-jabatan ">
                            <label for="jabatan" class="col-sm-2 control-label">Jabatan                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="jabatan" id="jabatan" placeholder="Jabatan" value="<?= set_value('jabatan'); ?>">
                                <small class="info help-block">
                                    <b>Input Jabatan</b> Max Length : 50.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-no_hp ">
                            <label for="no_hp" class="col-sm-2 control-label">No Hp                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" name="no_hp" id="no_hp" placeholder="No Hp" value="<?= set_value('no_hp'); ?>">
                                <small class="info help-block">
                                    <b>Input No Hp</b> Max Length : 12.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-nama_pemilik ">
                            <label for="nama_pemilik" class="col-sm-2 control-label">Nama Pemilik                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="nama_pemilik" id="nama_pemilik" placeholder="Nama Pemilik" value="<?= set_value('nama_pemilik'); ?>">
                                <small class="info help-block">
                                    <b>Input Nama Pemilik</b> Max Length : 50.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-alamat_pemilik ">
                            <label for="alamat_pemilik" class="col-sm-2 control-label">Alamat Pemilik                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="alamat_pemilik" id="alamat_pemilik" placeholder="Alamat Pemilik" value="<?= set_value('alamat_pemilik'); ?>">
                                <small class="info help-block">
                                    <b>Input Alamat Pemilik</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-lokasi_tanah ">
                            <label for="lokasi_tanah" class="col-sm-2 control-label">Lokasi Tanah                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="lokasi_tanah" id="lokasi_tanah" placeholder="Lokasi Tanah" value="<?= set_value('lokasi_tanah'); ?>">
                                <small class="info help-block">
                                    <b>Input Lokasi Tanah</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-luas_tanah ">
                            <label for="luas_tanah" class="col-sm-2 control-label">Luas Tanah                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="luas_tanah" id="luas_tanah" placeholder="Luas Tanah" value="<?= set_value('luas_tanah'); ?>">
                                <small class="info help-block">
                                    <b>Input Luas Tanah</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-no_persil_tanah ">
                            <label for="no_persil_tanah" class="col-sm-2 control-label">No Persil Tanah                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="no_persil_tanah" id="no_persil_tanah" placeholder="No Persil Tanah" value="<?= set_value('no_persil_tanah'); ?>">
                                <small class="info help-block">
                                    <b>Input No Persil Tanah</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-tanah_dipakai ">
                            <label for="tanah_dipakai" class="col-sm-2 control-label">Tanah Dipakai                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="tanah_dipakai" id="tanah_dipakai" placeholder="Tanah Dipakai" value="<?= set_value('tanah_dipakai'); ?>">
                                <small class="info help-block">
                                    <b>Input Tanah Dipakai</b> Max Length : 100.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-latitude ">
                            <label for="latitude" class="col-sm-2 control-label">Latitude                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="latitude" id="latitude" placeholder="Latitude" value="<?= set_value('latitude'); ?>">
                                <small class="info help-block">
                                    <b>Input Latitude</b> Max Length : 50.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-longitude ">
                            <label for="longitude" class="col-sm-2 control-label">Longitude                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="longitude" id="longitude" placeholder="Longitude" value="<?= set_value('longitude'); ?>">
                                <small class="info help-block">
                                    <b>Input Longitude</b> Max Length : 50.</small>
                            </div>
                        </div>
                    

    <div class="form-group group-ktp_pemohon ">
                            <label for="ktp_pemohon" class="col-sm-2 control-label">Ktp Pemohon                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_ktp_pemohon_galery"></div>
                                <input class="data_file" name="pendaftaran_ktp_pemohon_uuid" id="pendaftaran_ktp_pemohon_uuid" type="hidden" value="<?= set_value('pendaftaran_ktp_pemohon_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_ktp_pemohon_name" id="pendaftaran_ktp_pemohon_name" type="hidden" value="<?= set_value('pendaftaran_ktp_pemohon_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-akte_perusahaan ">
                            <label for="akte_perusahaan" class="col-sm-2 control-label">Akte Perusahaan                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_akte_perusahaan_galery"></div>
                                <input class="data_file" name="pendaftaran_akte_perusahaan_uuid" id="pendaftaran_akte_perusahaan_uuid" type="hidden" value="<?= set_value('pendaftaran_akte_perusahaan_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_akte_perusahaan_name" id="pendaftaran_akte_perusahaan_name" type="hidden" value="<?= set_value('pendaftaran_akte_perusahaan_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-surat_perjanjian ">
                            <label for="surat_perjanjian" class="col-sm-2 control-label">Surat Perjanjian                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_surat_perjanjian_galery"></div>
                                <input class="data_file" name="pendaftaran_surat_perjanjian_uuid" id="pendaftaran_surat_perjanjian_uuid" type="hidden" value="<?= set_value('pendaftaran_surat_perjanjian_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_surat_perjanjian_name" id="pendaftaran_surat_perjanjian_name" type="hidden" value="<?= set_value('pendaftaran_surat_perjanjian_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-jumlah_titik_menara ">
                            <label for="jumlah_titik_menara" class="col-sm-2 control-label">Jumlah Titik Menara                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_jumlah_titik_menara_galery"></div>
                                <input class="data_file" name="pendaftaran_jumlah_titik_menara_uuid" id="pendaftaran_jumlah_titik_menara_uuid" type="hidden" value="<?= set_value('pendaftaran_jumlah_titik_menara_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_jumlah_titik_menara_name" id="pendaftaran_jumlah_titik_menara_name" type="hidden" value="<?= set_value('pendaftaran_jumlah_titik_menara_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-kontruksi_menara ">
                            <label for="kontruksi_menara" class="col-sm-2 control-label">Kontruksi Menara                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_kontruksi_menara_galery"></div>
                                <input class="data_file" name="pendaftaran_kontruksi_menara_uuid" id="pendaftaran_kontruksi_menara_uuid" type="hidden" value="<?= set_value('pendaftaran_kontruksi_menara_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_kontruksi_menara_name" id="pendaftaran_kontruksi_menara_name" type="hidden" value="<?= set_value('pendaftaran_kontruksi_menara_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-sp_fo_ducting ">
                            <label for="sp_fo_ducting" class="col-sm-2 control-label">Sp Fo Ducting                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_sp_fo_ducting_galery"></div>
                                <input class="data_file" name="pendaftaran_sp_fo_ducting_uuid" id="pendaftaran_sp_fo_ducting_uuid" type="hidden" value="<?= set_value('pendaftaran_sp_fo_ducting_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_sp_fo_ducting_name" id="pendaftaran_sp_fo_ducting_name" type="hidden" value="<?= set_value('pendaftaran_sp_fo_ducting_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-gambar_site ">
                            <label for="gambar_site" class="col-sm-2 control-label">Gambar Site                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_gambar_site_galery"></div>
                                <input class="data_file" name="pendaftaran_gambar_site_uuid" id="pendaftaran_gambar_site_uuid" type="hidden" value="<?= set_value('pendaftaran_gambar_site_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_gambar_site_name" id="pendaftaran_gambar_site_name" type="hidden" value="<?= set_value('pendaftaran_gambar_site_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    <div class="form-group group-sp_menara_bersama ">
                            <label for="sp_menara_bersama" class="col-sm-2 control-label">Sp Menara Bersama                                <i class="required">*</i>
                                </label>
                            <div class="col-sm-8">
                                <div id="pendaftaran_sp_menara_bersama_galery"></div>
                                <input class="data_file" name="pendaftaran_sp_menara_bersama_uuid" id="pendaftaran_sp_menara_bersama_uuid" type="hidden" value="<?= set_value('pendaftaran_sp_menara_bersama_uuid'); ?>">
                                <input class="data_file" name="pendaftaran_sp_menara_bersama_name" id="pendaftaran_sp_menara_bersama_name" type="hidden" value="<?= set_value('pendaftaran_sp_menara_bersama_name'); ?>">
                                <small class="info help-block">
                                    </small>
                            </div>
                        </div>
                    

    

    <div class="message"></div>
<div class="row-fluid col-md-7 container-button-bottom">
    <button class="btn btn-flat btn-primary btn_save btn_action" id="btn_save" data-stype='stay' title="<?= cclang('save_button'); ?> (Ctrl+s)">
        <i class="fa fa-save"></i> <?= cclang('save_button'); ?>
    </button>
    <a class="btn btn-flat btn-info btn_save btn_action btn_save_back" id="btn_save" data-stype='back' title="<?= cclang('save_and_go_the_list_button'); ?> (Ctrl+d)">
        <i class="ion ion-ios-list-outline"></i> <?= cclang('save_and_go_the_list_button'); ?>
    </a>

    <div class="custom-button-wrapper">

            </div>


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
</div>
</div>
</section>

<script>
    $(document).ready(function() {

        "use strict";

        window.event_submit_and_action = '';

        


        

                    
    $('#btn_cancel').click(function() {
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
            function(isConfirm) {
                if (isConfirm) {
                    window.location.href = ADMIN_BASE_URL + '/pendaftaran';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_pendaftaran = $('#form_pendaftaran');
    var data_post = form_pendaftaran.serializeArray();
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
            url: ADMIN_BASE_URL + '/pendaftaran/add_save',
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('.steps li').removeClass('error');
            $('form').find('.error-input').remove();
            if (res.success) {
                var id_ktp_pemohon = $('#pendaftaran_ktp_pemohon_galery').find('li').attr('qq-file-id');
            var id_akte_perusahaan = $('#pendaftaran_akte_perusahaan_galery').find('li').attr('qq-file-id');
            var id_surat_perjanjian = $('#pendaftaran_surat_perjanjian_galery').find('li').attr('qq-file-id');
            var id_jumlah_titik_menara = $('#pendaftaran_jumlah_titik_menara_galery').find('li').attr('qq-file-id');
            var id_kontruksi_menara = $('#pendaftaran_kontruksi_menara_galery').find('li').attr('qq-file-id');
            var id_sp_fo_ducting = $('#pendaftaran_sp_fo_ducting_galery').find('li').attr('qq-file-id');
            var id_gambar_site = $('#pendaftaran_gambar_site_galery').find('li').attr('qq-file-id');
            var id_sp_menara_bersama = $('#pendaftaran_sp_menara_bersama_galery').find('li').attr('qq-file-id');
            
            if (save_type == 'back') {
                window.location.href = res.redirect;
                return;
            }

            $('.message').printMessage({
                message: res.message
            });
            $('.message').fadeIn();
            resetForm();
            if(typeof id_ktp_pemohon !== 'undefined') {
                $('#pendaftaran_ktp_pemohon_galery').fineUploader('deleteFile', id_ktp_pemohon);
            }
            if(typeof id_akte_perusahaan !== 'undefined') {
                $('#pendaftaran_akte_perusahaan_galery').fineUploader('deleteFile', id_akte_perusahaan);
            }
            if(typeof id_surat_perjanjian !== 'undefined') {
                $('#pendaftaran_surat_perjanjian_galery').fineUploader('deleteFile', id_surat_perjanjian);
            }
            if(typeof id_jumlah_titik_menara !== 'undefined') {
                $('#pendaftaran_jumlah_titik_menara_galery').fineUploader('deleteFile', id_jumlah_titik_menara);
            }
            if(typeof id_kontruksi_menara !== 'undefined') {
                $('#pendaftaran_kontruksi_menara_galery').fineUploader('deleteFile', id_kontruksi_menara);
            }
            if(typeof id_sp_fo_ducting !== 'undefined') {
                $('#pendaftaran_sp_fo_ducting_galery').fineUploader('deleteFile', id_sp_fo_ducting);
            }
            if(typeof id_gambar_site !== 'undefined') {
                $('#pendaftaran_gambar_site_galery').fineUploader('deleteFile', id_gambar_site);
            }
            if(typeof id_sp_menara_bersama !== 'undefined') {
                $('#pendaftaran_sp_menara_bersama_galery').fineUploader('deleteFile', id_sp_menara_bersama);
            }
            $('.chosen option').prop('selected', false).trigger('chosen:updated');
            
            } else {
                if (res.errors) {

                    $.each(res.errors, function(index, val) {
                        $('form #' + index).parents('.form-group').addClass('has-error');
                        $('form #' + index).parents('.form-group').find('small').prepend(`
                      <div class="error-input">` + val + `</div>
                      `);
                    });
                    $('.steps li').removeClass('error');
                    $('.content section').each(function(index, el) {
                        if ($(this).find('.has-error').length) {
                            $('.steps li:eq(' + index + ')').addClass('error').find('a').trigger('click');
                        }
                    });
                }
                $('.message').printMessage({
                    message: res.message,
                    type: 'warning'
                });
            }

        })
        .fail(function() {
            $('.message').printMessage({
                message: 'Error save data',
                type: 'warning'
            });
        })
        .always(function() {
            $('.loading').hide();
            $('html, body').animate({
                scrollTop: $(document).height()
            }, 2000);
        });

    return false;
    }); /*end btn save*/

            var params = {};
        params[csrf] = token;

        $('#pendaftaran_ktp_pemohon_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_ktp_pemohon_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_ktp_pemohon_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_ktp_pemohon_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_ktp_pemohon_uuid').val(uuid);
                        $('#pendaftaran_ktp_pemohon_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_ktp_pemohon_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_ktp_pemohon_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_ktp_pemohon_uuid').val('');
                        $('#pendaftaran_ktp_pemohon_name').val('');
                    }
                }
            }
        }); /*end ktp_pemohon galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_akte_perusahaan_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_akte_perusahaan_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_akte_perusahaan_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_akte_perusahaan_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_akte_perusahaan_uuid').val(uuid);
                        $('#pendaftaran_akte_perusahaan_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_akte_perusahaan_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_akte_perusahaan_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_akte_perusahaan_uuid').val('');
                        $('#pendaftaran_akte_perusahaan_name').val('');
                    }
                }
            }
        }); /*end akte_perusahaan galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_surat_perjanjian_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_surat_perjanjian_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_surat_perjanjian_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_surat_perjanjian_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_surat_perjanjian_uuid').val(uuid);
                        $('#pendaftaran_surat_perjanjian_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_surat_perjanjian_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_surat_perjanjian_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_surat_perjanjian_uuid').val('');
                        $('#pendaftaran_surat_perjanjian_name').val('');
                    }
                }
            }
        }); /*end surat_perjanjian galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_jumlah_titik_menara_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_jumlah_titik_menara_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_jumlah_titik_menara_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_jumlah_titik_menara_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_jumlah_titik_menara_uuid').val(uuid);
                        $('#pendaftaran_jumlah_titik_menara_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_jumlah_titik_menara_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_jumlah_titik_menara_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_jumlah_titik_menara_uuid').val('');
                        $('#pendaftaran_jumlah_titik_menara_name').val('');
                    }
                }
            }
        }); /*end jumlah_titik_menara galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_kontruksi_menara_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_kontruksi_menara_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_kontruksi_menara_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_kontruksi_menara_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_kontruksi_menara_uuid').val(uuid);
                        $('#pendaftaran_kontruksi_menara_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_kontruksi_menara_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_kontruksi_menara_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_kontruksi_menara_uuid').val('');
                        $('#pendaftaran_kontruksi_menara_name').val('');
                    }
                }
            }
        }); /*end kontruksi_menara galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_sp_fo_ducting_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_sp_fo_ducting_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_sp_fo_ducting_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_sp_fo_ducting_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_sp_fo_ducting_uuid').val(uuid);
                        $('#pendaftaran_sp_fo_ducting_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_sp_fo_ducting_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_sp_fo_ducting_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_sp_fo_ducting_uuid').val('');
                        $('#pendaftaran_sp_fo_ducting_name').val('');
                    }
                }
            }
        }); /*end sp_fo_ducting galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_gambar_site_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_gambar_site_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_gambar_site_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_gambar_site_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_gambar_site_uuid').val(uuid);
                        $('#pendaftaran_gambar_site_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_gambar_site_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_gambar_site_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_gambar_site_uuid').val('');
                        $('#pendaftaran_gambar_site_name').val('');
                    }
                }
            }
        }); /*end gambar_site galery*/
                var params = {};
        params[csrf] = token;

        $('#pendaftaran_sp_menara_bersama_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: ADMIN_BASE_URL + '/pendaftaran/upload_sp_menara_bersama_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: ADMIN_BASE_URL + '/pendaftaran/delete_sp_menara_bersama_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#pendaftaran_sp_menara_bersama_galery').fineUploader('getUuid', id);
                        $('#pendaftaran_sp_menara_bersama_uuid').val(uuid);
                        $('#pendaftaran_sp_menara_bersama_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#pendaftaran_sp_menara_bersama_uuid').val();
                    $.get(ADMIN_BASE_URL + '/pendaftaran/delete_sp_menara_bersama_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#pendaftaran_sp_menara_bersama_uuid').val('');
                        $('#pendaftaran_sp_menara_bersama_name').val('');
                    }
                }
            }
        }); /*end sp_menara_bersama galery*/
        

    

    


    }); /*end doc ready*/
</script>