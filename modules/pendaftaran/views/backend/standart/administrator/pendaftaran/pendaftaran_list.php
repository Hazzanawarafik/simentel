<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Pendaftaran/add';
       return false;
   });

   $('*').bind('keydown', 'Ctrl+f', function() {
       $('#sbtn').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+x', function() {
       $('#reset').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+b', function() {

       $('#reset').trigger('click');
       return false;
   });
}

jQuery(document).ready(domo);
</script>
<section class="content-header">
   <h1>
      <?= cclang('pendaftaran') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('pendaftaran') ?></li>
   </ol>
</section>
<!-- Main content -->
<section class="content">
   <div class="row" >
      
      <div class="col-md-12">
         <div class="box box-warning">
            <div class="box-body ">
               <div class="box box-widget widget-user-2">
                  <div class="widget-user-header ">
                     <div class="row pull-right">
                        <?php is_allowed('pendaftaran_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('pendaftaran')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/pendaftaran/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('pendaftaran')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('pendaftaran_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('pendaftaran') ?> " href="<?= site_url('administrator/pendaftaran/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('pendaftaran_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('pendaftaran') ?> " href="<?= site_url('administrator/pendaftaran/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('pendaftaran') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('pendaftaran')]); ?>  <i class="label bg-yellow"><?= $pendaftaran_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_pendaftaran" id="form_pendaftaran" action="<?= base_url('administrator/pendaftaran/index'); ?>">
                  


                     <!-- /.widget-user -->
                  <div class="row">
                     <div class="col-md-8">
                                                <div class="col-sm-2 padd-left-0 " >
                           <select type="text" class="form-control chosen chosen-select" name="bulk" id="bulk" placeholder="Site Email" >
                                                         <option value="delete">Delete</option>
                                                      </select>
                        </div>
                        <div class="col-sm-2 padd-left-0 ">
                           <button type="button" class="btn btn-flat" name="apply" id="apply" title="<?= cclang('apply_bulk_action'); ?>"><?= cclang('apply_button'); ?></button>
                        </div>
                                                <div class="col-sm-3 padd-left-0  " >
                           <input type="text" class="form-control" name="q" id="filter" placeholder="<?= cclang('filter'); ?>" value="<?= $this->input->get('q'); ?>">
                        </div>
                        <div class="col-sm-3 padd-left-0 " >
                           <select type="text" class="form-control chosen chosen-select" name="f" id="field" >
                              <option value=""><?= cclang('all'); ?></option>
                               <option <?= $this->input->get('f') == 'tempat' ? 'selected' :''; ?> value="tempat">Tempat</option>
                            <option <?= $this->input->get('f') == 'tanggal_surat' ? 'selected' :''; ?> value="tanggal_surat">Tanggal Surat</option>
                            <option <?= $this->input->get('f') == 'nomor_surat' ? 'selected' :''; ?> value="nomor_surat">Nomor Surat</option>
                            <option <?= $this->input->get('f') == 'nama_perusahaan' ? 'selected' :''; ?> value="nama_perusahaan">Nama Perusahaan</option>
                            <option <?= $this->input->get('f') == 'alamat_perusahaan' ? 'selected' :''; ?> value="alamat_perusahaan">Alamat Perusahaan</option>
                            <option <?= $this->input->get('f') == 'nama_penanggungjawab' ? 'selected' :''; ?> value="nama_penanggungjawab">Nama Penanggungjawab</option>
                            <option <?= $this->input->get('f') == 'no_telepon_kantor' ? 'selected' :''; ?> value="no_telepon_kantor">No Telepon Kantor</option>
                            <option <?= $this->input->get('f') == 'jabatan' ? 'selected' :''; ?> value="jabatan">Jabatan</option>
                            <option <?= $this->input->get('f') == 'no_hp' ? 'selected' :''; ?> value="no_hp">No Hp</option>
                            <option <?= $this->input->get('f') == 'nama_pemilik' ? 'selected' :''; ?> value="nama_pemilik">Nama Pemilik</option>
                            <option <?= $this->input->get('f') == 'alamat_pemilik' ? 'selected' :''; ?> value="alamat_pemilik">Alamat Pemilik</option>
                            <option <?= $this->input->get('f') == 'lokasi_tanah' ? 'selected' :''; ?> value="lokasi_tanah">Lokasi Tanah</option>
                            <option <?= $this->input->get('f') == 'luas_tanah' ? 'selected' :''; ?> value="luas_tanah">Luas Tanah</option>
                            <option <?= $this->input->get('f') == 'no_persil_tanah' ? 'selected' :''; ?> value="no_persil_tanah">No Persil Tanah</option>
                            <option <?= $this->input->get('f') == 'tanah_dipakai' ? 'selected' :''; ?> value="tanah_dipakai">Tanah Dipakai</option>
                            <option <?= $this->input->get('f') == 'latitude' ? 'selected' :''; ?> value="latitude">Latitude</option>
                            <option <?= $this->input->get('f') == 'longitude' ? 'selected' :''; ?> value="longitude">Longitude</option>
                            <option <?= $this->input->get('f') == 'ktp_pemohon' ? 'selected' :''; ?> value="ktp_pemohon">Ktp Pemohon</option>
                            <option <?= $this->input->get('f') == 'akte_perusahaan' ? 'selected' :''; ?> value="akte_perusahaan">Akte Perusahaan</option>
                            <option <?= $this->input->get('f') == 'surat_perjanjian' ? 'selected' :''; ?> value="surat_perjanjian">Surat Perjanjian</option>
                            <option <?= $this->input->get('f') == 'jumlah_titik_menara' ? 'selected' :''; ?> value="jumlah_titik_menara">Jumlah Titik Menara</option>
                            <option <?= $this->input->get('f') == 'kontruksi_menara' ? 'selected' :''; ?> value="kontruksi_menara">Kontruksi Menara</option>
                            <option <?= $this->input->get('f') == 'sp_fo_ducting' ? 'selected' :''; ?> value="sp_fo_ducting">Sp Fo Ducting</option>
                            <option <?= $this->input->get('f') == 'gambar_site' ? 'selected' :''; ?> value="gambar_site">Gambar Site</option>
                            <option <?= $this->input->get('f') == 'sp_menara_bersama' ? 'selected' :''; ?> value="sp_menara_bersama">Sp Menara Bersama</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/pendaftaran');?>" title="<?= cclang('reset_filter'); ?>">
                           <i class="fa fa-undo"></i>
                           </a>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="dataTables_paginate paging_simple_numbers pull-right" id="example2_paginate" >
                           <?= $pagination; ?>
                        </div>
                     </div>
                  </div>
                  <div class="table-responsive"> 

                  <br>
                  <table class="table table-bordered table-striped dataTable">
                     <thead>
                        <tr class="">
                                                     <th>
                            <input type="checkbox" class="flat-red toltip" id="check_all" name="check_all" title="check all">
                           </th>
                                                    <th data-field="tempat"data-sort="1" data-primary-key="0"> <?= cclang('tempat') ?></th>
                           <th data-field="tanggal_surat"data-sort="1" data-primary-key="0"> <?= cclang('tanggal_surat') ?></th>
                           <th data-field="nomor_surat"data-sort="1" data-primary-key="0"> <?= cclang('nomor_surat') ?></th>
                           <th data-field="nama_perusahaan"data-sort="1" data-primary-key="0"> <?= cclang('nama_perusahaan') ?></th>
                           <th data-field="alamat_perusahaan"data-sort="1" data-primary-key="0"> <?= cclang('alamat_perusahaan') ?></th>
                           <th data-field="nama_penanggungjawab"data-sort="1" data-primary-key="0"> <?= cclang('nama_penanggungjawab') ?></th>
                           <th data-field="no_telepon_kantor"data-sort="1" data-primary-key="0"> <?= cclang('no_telepon_kantor') ?></th>
                           <th data-field="jabatan"data-sort="1" data-primary-key="0"> <?= cclang('jabatan') ?></th>
                           <th data-field="no_hp"data-sort="1" data-primary-key="0"> <?= cclang('no_hp') ?></th>
                           <th data-field="nama_pemilik"data-sort="1" data-primary-key="0"> <?= cclang('nama_pemilik') ?></th>
                           <th data-field="alamat_pemilik"data-sort="1" data-primary-key="0"> <?= cclang('alamat_pemilik') ?></th>
                           <th data-field="lokasi_tanah"data-sort="1" data-primary-key="0"> <?= cclang('lokasi_tanah') ?></th>
                           <th data-field="luas_tanah"data-sort="1" data-primary-key="0"> <?= cclang('luas_tanah') ?></th>
                           <th data-field="no_persil_tanah"data-sort="1" data-primary-key="0"> <?= cclang('no_persil_tanah') ?></th>
                           <th data-field="tanah_dipakai"data-sort="1" data-primary-key="0"> <?= cclang('tanah_dipakai') ?></th>
                           <th data-field="latitude"data-sort="1" data-primary-key="0"> <?= cclang('latitude') ?></th>
                           <th data-field="longitude"data-sort="1" data-primary-key="0"> <?= cclang('longitude') ?></th>
                           <th data-field="ktp_pemohon"data-sort="0" data-primary-key="0"> <?= cclang('ktp_pemohon') ?></th>
                           <th data-field="akte_perusahaan"data-sort="0" data-primary-key="0"> <?= cclang('akte_perusahaan') ?></th>
                           <th data-field="surat_perjanjian"data-sort="0" data-primary-key="0"> <?= cclang('surat_perjanjian') ?></th>
                           <th data-field="jumlah_titik_menara"data-sort="0" data-primary-key="0"> <?= cclang('jumlah_titik_menara') ?></th>
                           <th data-field="kontruksi_menara"data-sort="0" data-primary-key="0"> <?= cclang('kontruksi_menara') ?></th>
                           <th data-field="sp_fo_ducting"data-sort="0" data-primary-key="0"> <?= cclang('sp_fo_ducting') ?></th>
                           <th data-field="gambar_site"data-sort="0" data-primary-key="0"> <?= cclang('gambar_site') ?></th>
                           <th data-field="sp_menara_bersama"data-sort="0" data-primary-key="0"> <?= cclang('sp_menara_bersama') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_pendaftaran">
                     <?php foreach($pendaftarans as $pendaftaran): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $pendaftaran->id_pendaftaran; ?>">
                           </td>
                                                       
                           <td><span class="list_group-tempat"><?= _ent($pendaftaran->tempat); ?></span></td> 
                           <td><span class="list_group-tanggal_surat"><?= _ent($pendaftaran->tanggal_surat); ?></span></td> 
                           <td><span class="list_group-nomor_surat"><?= _ent($pendaftaran->nomor_surat); ?></span></td> 
                           <td><span class="list_group-nama_perusahaan"><?= _ent($pendaftaran->nama_perusahaan); ?></span></td> 
                           <td><span class="list_group-alamat_perusahaan"><?= _ent($pendaftaran->alamat_perusahaan); ?></span></td> 
                           <td><span class="list_group-nama_penanggungjawab"><?= _ent($pendaftaran->nama_penanggungjawab); ?></span></td> 
                           <td><span class="list_group-no_telepon_kantor"><?= _ent($pendaftaran->no_telepon_kantor); ?></span></td> 
                           <td><span class="list_group-jabatan"><?= _ent($pendaftaran->jabatan); ?></span></td> 
                           <td><span class="list_group-no_hp"><?= _ent($pendaftaran->no_hp); ?></span></td> 
                           <td><span class="list_group-nama_pemilik"><?= _ent($pendaftaran->nama_pemilik); ?></span></td> 
                           <td><span class="list_group-alamat_pemilik"><?= _ent($pendaftaran->alamat_pemilik); ?></span></td> 
                           <td><span class="list_group-lokasi_tanah"><?= _ent($pendaftaran->lokasi_tanah); ?></span></td> 
                           <td><span class="list_group-luas_tanah"><?= _ent($pendaftaran->luas_tanah); ?></span></td> 
                           <td><span class="list_group-no_persil_tanah"><?= _ent($pendaftaran->no_persil_tanah); ?></span></td> 
                           <td><span class="list_group-tanah_dipakai"><?= _ent($pendaftaran->tanah_dipakai); ?></span></td> 
                           <td><span class="list_group-latitude"><?= _ent($pendaftaran->latitude); ?></span></td> 
                           <td><span class="list_group-longitude"><?= _ent($pendaftaran->longitude); ?></span></td> 
                           <td>
                              <?php if (!empty($pendaftaran->ktp_pemohon)): ?>
                                <?php if (is_image($pendaftaran->ktp_pemohon)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>" class="image-responsive" alt="image pendaftaran" title="ktp_pemohon pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->ktp_pemohon); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="ktp_pemohon <?= $pendaftaran->ktp_pemohon; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->akte_perusahaan)): ?>
                                <?php if (is_image($pendaftaran->akte_perusahaan)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>" class="image-responsive" alt="image pendaftaran" title="akte_perusahaan pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->akte_perusahaan); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="akte_perusahaan <?= $pendaftaran->akte_perusahaan; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->surat_perjanjian)): ?>
                                <?php if (is_image($pendaftaran->surat_perjanjian)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>" class="image-responsive" alt="image pendaftaran" title="surat_perjanjian pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->surat_perjanjian); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="surat_perjanjian <?= $pendaftaran->surat_perjanjian; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->jumlah_titik_menara)): ?>
                                <?php if (is_image($pendaftaran->jumlah_titik_menara)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>" class="image-responsive" alt="image pendaftaran" title="jumlah_titik_menara pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->jumlah_titik_menara); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="jumlah_titik_menara <?= $pendaftaran->jumlah_titik_menara; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->kontruksi_menara)): ?>
                                <?php if (is_image($pendaftaran->kontruksi_menara)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>" class="image-responsive" alt="image pendaftaran" title="kontruksi_menara pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->kontruksi_menara); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="kontruksi_menara <?= $pendaftaran->kontruksi_menara; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->sp_fo_ducting)): ?>
                                <?php if (is_image($pendaftaran->sp_fo_ducting)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>" class="image-responsive" alt="image pendaftaran" title="sp_fo_ducting pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->sp_fo_ducting); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="sp_fo_ducting <?= $pendaftaran->sp_fo_ducting; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->gambar_site)): ?>
                                <?php if (is_image($pendaftaran->gambar_site)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->gambar_site; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->gambar_site; ?>" class="image-responsive" alt="image pendaftaran" title="gambar_site pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->gambar_site; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->gambar_site); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="gambar_site <?= $pendaftaran->gambar_site; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td>
                              <?php if (!empty($pendaftaran->sp_menara_bersama)): ?>
                                <?php if (is_image($pendaftaran->sp_menara_bersama)): ?>
                                <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>">
                                  <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>" class="image-responsive" alt="image pendaftaran" title="sp_menara_bersama pendaftaran" width="40px">
                                </a>
                                <?php else: ?>
                                  <a href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>" target="blank">
                                   <img src="<?= get_icon_file($pendaftaran->sp_menara_bersama); ?>" class="image-responsive image-icon" alt="image pendaftaran" title="sp_menara_bersama <?= $pendaftaran->sp_menara_bersama; ?>" width="40px"> 
                                 </a>
                                <?php endif; ?>
                              <?php endif; ?>
                           </td>
                            
                           <td width="200">
                            
                                                              <?php is_allowed('pendaftaran_view', function() use ($pendaftaran){?>
                                                              <a href="<?= site_url('administrator/pendaftaran/view/' . $pendaftaran->id_pendaftaran); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('pendaftaran_update', function() use ($pendaftaran){?>
                              <a href="<?= site_url('administrator/pendaftaran/edit/' . $pendaftaran->id_pendaftaran); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('pendaftaran_delete', function() use ($pendaftaran){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/pendaftaran/delete/' . $pendaftaran->id_pendaftaran); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($pendaftaran_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Pendaftaran data is not available
                           </td>
                         </tr>
                      <?php endif; ?>

                     </tbody>
                  </table>
                  </div>
               </div>
               <hr>
             
            </div>
            </form>            
         </div>
      </div>
   </div>
</section>


<script>
  $(document).ready(function(){

    "use strict";
   
    
      
    $('.remove-data').click(function(){

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
        function(isConfirm){
          if (isConfirm) {
            document.location.href = url;            
          }
        });

      return false;
    });


    $('#apply').click(function(){

      var bulk = $('#bulk');
      var serialize_bulk = $('#form_pendaftaran').serialize();

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
          function(isConfirm){
            if (isConfirm) {
               document.location.href = BASE_URL + '/administrator/pendaftaran/delete?' + serialize_bulk;      
            }
          });

        return false;

      } else if(bulk.val() == '')  {
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

    });/*end appliy click*/


    //check all
    var checkAll = $('#check_all');
    var checkboxes = $('input.check');

    checkAll.on('ifChecked ifUnchecked', function(event) {   
        if (event.type == 'ifChecked') {
            checkboxes.iCheck('check');
        } else {
            checkboxes.iCheck('uncheck');
        }
    });

    checkboxes.on('ifChanged', function(event){
        if(checkboxes.filter(':checked').length == checkboxes.length) {
            checkAll.prop('checked', 'checked');
        } else {
            checkAll.removeProp('checked');
        }
        checkAll.iCheck('update');
    });
    initSortable('pendaftaran', $('table.dataTable'));
  }); /*end doc ready*/
</script>