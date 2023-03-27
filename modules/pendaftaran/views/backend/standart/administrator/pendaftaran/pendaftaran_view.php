<script type="text/javascript">
function domo(){
   $('*').bind('keydown', 'Ctrl+e', function() {
      $('#btn_edit').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+x', function() {
      $('#btn_back').trigger('click');
       return false;
   });
}

jQuery(document).ready(domo);
</script>
<section class="content-header">
   <h1>
      Pendaftaran      <small><?= cclang('detail', ['Pendaftaran']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/pendaftaran'); ?>">Pendaftaran</a></li>
      <li class="active"><?= cclang('detail'); ?></li>
   </ol>
</section>
<section class="content">
   <div class="row" >
     
      <div class="col-md-12">
         <div class="box box-warning">
            <div class="box-body ">

               <div class="box box-widget widget-user-2">
                  <div class="widget-user-header ">
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/view.png" alt="User Avatar">
                     </div>
                     <h3 class="widget-user-username">Pendaftaran</h3>
                     <h5 class="widget-user-desc">Detail Pendaftaran</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_pendaftaran" id="form_pendaftaran" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id Pendaftaran </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id_pendaftaran"><?= _ent($pendaftaran->id_pendaftaran); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tempat </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tempat"><?= _ent($pendaftaran->tempat); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tanggal Surat </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tanggal_surat"><?= _ent($pendaftaran->tanggal_surat); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Nomor Surat </label>

                        <div class="col-sm-8">
                        <span class="detail_group-nomor_surat"><?= _ent($pendaftaran->nomor_surat); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Nama Perusahaan </label>

                        <div class="col-sm-8">
                        <span class="detail_group-nama_perusahaan"><?= _ent($pendaftaran->nama_perusahaan); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Alamat Perusahaan </label>

                        <div class="col-sm-8">
                        <span class="detail_group-alamat_perusahaan"><?= _ent($pendaftaran->alamat_perusahaan); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Nama Penanggungjawab </label>

                        <div class="col-sm-8">
                        <span class="detail_group-nama_penanggungjawab"><?= _ent($pendaftaran->nama_penanggungjawab); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">No Telepon Kantor </label>

                        <div class="col-sm-8">
                        <span class="detail_group-no_telepon_kantor"><?= _ent($pendaftaran->no_telepon_kantor); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Jabatan </label>

                        <div class="col-sm-8">
                        <span class="detail_group-jabatan"><?= _ent($pendaftaran->jabatan); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">No Hp </label>

                        <div class="col-sm-8">
                        <span class="detail_group-no_hp"><?= _ent($pendaftaran->no_hp); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Nama Pemilik </label>

                        <div class="col-sm-8">
                        <span class="detail_group-nama_pemilik"><?= _ent($pendaftaran->nama_pemilik); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Alamat Pemilik </label>

                        <div class="col-sm-8">
                        <span class="detail_group-alamat_pemilik"><?= _ent($pendaftaran->alamat_pemilik); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Lokasi Tanah </label>

                        <div class="col-sm-8">
                        <span class="detail_group-lokasi_tanah"><?= _ent($pendaftaran->lokasi_tanah); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Luas Tanah </label>

                        <div class="col-sm-8">
                        <span class="detail_group-luas_tanah"><?= _ent($pendaftaran->luas_tanah); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">No Persil Tanah </label>

                        <div class="col-sm-8">
                        <span class="detail_group-no_persil_tanah"><?= _ent($pendaftaran->no_persil_tanah); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tanah Dipakai </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tanah_dipakai"><?= _ent($pendaftaran->tanah_dipakai); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Latitude </label>

                        <div class="col-sm-8">
                        <span class="detail_group-latitude"><?= _ent($pendaftaran->latitude); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Longitude </label>

                        <div class="col-sm-8">
                        <span class="detail_group-longitude"><?= _ent($pendaftaran->longitude); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Ktp Pemohon </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->ktp_pemohon)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>" class="image-responsive" alt="image pendaftaran" title="ktp_pemohon pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->ktp_pemohon; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->ktp_pemohon); ?>" class="image-responsive" alt="image pendaftaran" title="ktp_pemohon <?= $pendaftaran->ktp_pemohon; ?>" width="40px"> 
                               <?= $pendaftaran->ktp_pemohon ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Akte Perusahaan </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->akte_perusahaan)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>" class="image-responsive" alt="image pendaftaran" title="akte_perusahaan pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->akte_perusahaan; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->akte_perusahaan); ?>" class="image-responsive" alt="image pendaftaran" title="akte_perusahaan <?= $pendaftaran->akte_perusahaan; ?>" width="40px"> 
                               <?= $pendaftaran->akte_perusahaan ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Surat Perjanjian </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->surat_perjanjian)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>" class="image-responsive" alt="image pendaftaran" title="surat_perjanjian pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->surat_perjanjian; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->surat_perjanjian); ?>" class="image-responsive" alt="image pendaftaran" title="surat_perjanjian <?= $pendaftaran->surat_perjanjian; ?>" width="40px"> 
                               <?= $pendaftaran->surat_perjanjian ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Jumlah Titik Menara </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->jumlah_titik_menara)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>" class="image-responsive" alt="image pendaftaran" title="jumlah_titik_menara pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->jumlah_titik_menara; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->jumlah_titik_menara); ?>" class="image-responsive" alt="image pendaftaran" title="jumlah_titik_menara <?= $pendaftaran->jumlah_titik_menara; ?>" width="40px"> 
                               <?= $pendaftaran->jumlah_titik_menara ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Kontruksi Menara </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->kontruksi_menara)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>" class="image-responsive" alt="image pendaftaran" title="kontruksi_menara pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->kontruksi_menara; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->kontruksi_menara); ?>" class="image-responsive" alt="image pendaftaran" title="kontruksi_menara <?= $pendaftaran->kontruksi_menara; ?>" width="40px"> 
                               <?= $pendaftaran->kontruksi_menara ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Sp Fo Ducting </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->sp_fo_ducting)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>" class="image-responsive" alt="image pendaftaran" title="sp_fo_ducting pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->sp_fo_ducting; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->sp_fo_ducting); ?>" class="image-responsive" alt="image pendaftaran" title="sp_fo_ducting <?= $pendaftaran->sp_fo_ducting; ?>" width="40px"> 
                               <?= $pendaftaran->sp_fo_ducting ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Gambar Site </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->gambar_site)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->gambar_site; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->gambar_site; ?>" class="image-responsive" alt="image pendaftaran" title="gambar_site pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->gambar_site; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->gambar_site); ?>" class="image-responsive" alt="image pendaftaran" title="gambar_site <?= $pendaftaran->gambar_site; ?>" width="40px"> 
                               <?= $pendaftaran->gambar_site ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> Sp Menara Bersama </label>
                        <div class="col-sm-8">
                             <?php if (is_image($pendaftaran->sp_menara_bersama)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>">
                                <img src="<?= BASE_URL . 'uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>" class="image-responsive" alt="image pendaftaran" title="sp_menara_bersama pendaftaran" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/pendaftaran/' . $pendaftaran->sp_menara_bersama; ?>">
                                 <img src="<?= get_icon_file($pendaftaran->sp_menara_bersama); ?>" class="image-responsive" alt="image pendaftaran" title="sp_menara_bersama <?= $pendaftaran->sp_menara_bersama; ?>" width="40px"> 
                               <?= $pendaftaran->sp_menara_bersama ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('pendaftaran_update', function() use ($pendaftaran){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit pendaftaran (Ctrl+e)" href="<?= site_url('administrator/pendaftaran/edit/'.$pendaftaran->id_pendaftaran); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Pendaftaran']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/pendaftaran/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Pendaftaran']); ?></a>
                     </div>
                    
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<script>
$(document).ready(function(){

    "use strict";
    
   
   });
</script>