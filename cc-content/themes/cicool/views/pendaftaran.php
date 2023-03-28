<?= get_header(); ?>

<!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area text-center shadow dark text-light bg-cover" style="background-image: url(<?= theme_assets();?>img/banner/10.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h1>Contact Us</h1>
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                        <li class="active">Contact</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumb -->

    <!-- Start Contact Area 
    ============================================= -->
    <div class="contact-area default-padding bg-theme inc-shape extra-margin">
        <div class="container">
            <div class="row align-center">
                <div class="col-lg-6 contact-form-box">
                    <div class="form-box">
                        <form action="pendaftaran/add"  method="post" enctype="multipart/form-data">              
                        <h3><b>DATA PEMOHON</b></h3>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" name="nomor_surat" placeholder="Nomor Surat" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input class="form-control" name="tempat" placeholder="Tempat" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input class="form-control" name="tanggal_surat" placeholder="Tanggal Surat" type="date">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input class="form-control" name="nama_perusahaan" placeholder="Nama Perusahaan" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group comments">
                                        <textarea class="form-control" name="alamat_perusahaan" placeholder="Alamat" style="min-height:70px"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="nama_penanggungjawab" placeholder="Nama Penanggung Jawab" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="no_telepon_kantor" placeholder="No. Telepon Kantor" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="jabatan" placeholder="Jabatan" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="no_hp" placeholder="No. HP" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="row">
                                <div class="col-lg-12">
                                    <button type="submit">
                                        Send Message <i class="fa fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div> 
                        </form> -->
                    </div>
                </div>
                <div class="col-lg-6 contact-form-box">
                    <div class="form-box">
                        <h3><b>DATA TANAH</b></h3>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input class="form-control" id="name" name="nama_pemilik" placeholder="Nama Pemilik" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group comments">
                                        <textarea class="form-control" id="alamat" name="alamat_pemilik" placeholder="Alamat Pemilik" style="min-height:70px"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="lokasi_tanah" placeholder="Lokasi Tanah" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="luas_tanah" placeholder="Luas Tanah" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="no_persil_tanah" placeholder="No. Persil Tanah" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="tanah_dipakai" placeholder="Luas Tanah Yang Dipakai" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="latitude" placeholder="Latitude" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input class="form-control" id="text" name="longitude" placeholder="Longitude" type="text">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                
                <div class="col-lg-6  contact-form-box">
                    <div class="form-box">
                        <h3><b>LAMPIRAN</b></h3>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Fotocopy KTP Pemohon</b></label>
                                        <input class="form-control" id="name" name="ktp_pemohon"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Profil Perusahaan (Akte Pendirian Perusahaan)</b></label>
                                        <input class="form-control" id="name" name="akte_perusahaan"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Perjanjian dengan pemerintah apabila lokasi menara di miliki pemerintah, Perjanjian pernyataan persetujuan pemilik tanah apabila lokasi menara di miliki perorangan</b></label>
                                        <input class="form-control" id="name" name="surat_perjanjian"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Jumlah kuota titik menara</b></label>
                                        <input class="form-control" id="name" name="jumlah_titik_menara"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Rencana Kontruksi Menara Telekomunikasi</b></label>
                                        <input class="form-control" id="name" name="kontruksi_menara"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Surat pernyataan penggunaan jaringan FO dan Ducting (Menara Mikrosel)</b></label>
                                        <input class="form-control" id="name" name="sp_fo_ducting"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Gambar site plan titik yang akan didirikan</b></label>
                                        <input class="form-control" id="name" name="gambar_site"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="" style="color:black;"><b>Surat pernyataan sanggup menjadi menara bersama</b></label>
                                        <input class="form-control" id="name" name="sp_menara_bersama"  type="file">
                                        <span class="alert-error"></span>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-12">
                                    <button type="submit">
                                        Send Message <i class="fa fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>                            
                            <!-- Alert Message -->
                            <div class="col-lg-12 alert-notification">
                                <div id="message" class="alert-msg"></div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6  contact-form-box">
                    <div class="form-box">
                        <div class="form-group">
                            <h2><b>Contoh Surat Permohonan</b></h2>
                            <embed type="application/pdf" src="<?= theme_assets();?>document/Surat_permohonan.pdf" width="100%" height="800"></embed>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Contact Area -->

<?= get_footer(); ?>