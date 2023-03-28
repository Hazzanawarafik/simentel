<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends Front {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_pendaftaran');
    }
    
    public function index()
    {
        $this->template->build('pendaftaran');
    }

    public function add(){
        $this->form_validation->set_rules('nomor_surat', 'Nomor Surat', 'required');
        $this->form_validation->set_rules('tempat', 'Tempat', 'required');
        $this->form_validation->set_rules('tanggal_surat', 'Tanggal Surat', 'required');
        $this->form_validation->set_rules('nama_perusahaan', 'Nama Perusahaan', 'required');
        $this->form_validation->set_rules('alamat_perusahaan', 'fieldlabel', 'required');
        $this->form_validation->set_rules('nama_penanggungjawab', 'fieldlabel', 'required');
        $this->form_validation->set_rules('no_telepon_kantor', 'fieldlabel', 'required');
        $this->form_validation->set_rules('jabatan', 'fieldlabel', 'required');
        $this->form_validation->set_rules('no_hp', 'fieldlabel', 'required');
        $this->form_validation->set_rules('nama_pemilik', 'fieldlabel', 'required');
        $this->form_validation->set_rules('alamat_pemilik', 'fieldlabel', 'required');
        $this->form_validation->set_rules('lokasi_tanah', 'fieldlabel', 'required');
        $this->form_validation->set_rules('luas_tanah', 'fieldlabel', 'required');
        $this->form_validation->set_rules('no_persil_tanah', 'fieldlabel', 'required');
        $this->form_validation->set_rules('tanah_dipakai', 'fieldlabel', 'required');
        $this->form_validation->set_rules('latitude', 'fieldlabel', 'required');
        $this->form_validation->set_rules('longitude', 'fieldlabel', 'required');
        
        if ($this->form_validation->run() == FALSE) {
            //Jika tidak lolos validasi form
            $this->template->build('pendaftaran');
        } else {
            // jika lolos validasi form
            $ktp_pemohon = "ktp_pemohon";
            $akte_perusahaan = "akte_perusahaan";
            $surat_perjanjian = "surat_perjanjian";
            $jumlah_titik_menara = "jumlah_titik_menara";
            $kontruksi_menara = "kontruksi_menara";
            $sp_fo_ducting = "sp_fo_ducting";
            $gambar_site = "gambar_site";
            $sp_menara_bersama = "sp_menara_bersama";


            if($ktp_pemohon = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif|pdf';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('ktp_pemohon')){
                    //echo "Gambar gagal di upload";
                }else{
                    $ktp_pemohon= $this->upload->data();
                    $ktp_pemohon= $ktp_pemohon['file_name'];
                }
            }

            if($akte_perusahaan = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif|pdf';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('akte_perusahaan')){
                    //echo "Gambar gagal di upload";
                }else{
                    $akte_perusahaan=$this->upload->data();
                    $akte_perusahaan= $akte_perusahaan['file_name'];
                }
            }

            if($surat_perjanjian = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('surat_perjanjian')){
                    //echo "Gambar gagal di upload";
                }else{
                    $surat_perjanjian=$this->upload->data();
                    $surat_perjanjian= $surat_perjanjian['file_name'];
                }
            }

            if($jumlah_titik_menara = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('jumlah_titik_menara')){
                    //echo "Gambar gagal di upload";
                }else{
                    $jumlah_titik_menara=$this->upload->data();
                    $jumlah_titik_menara= $jumlah_titik_menara['file_name'];
                }
            }

            if($kontruksi_menara = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('kontruksi_menara')){
                    //echo "Gambar gagal di upload";
                }else{
                    $kontruksi_menara=$this->upload->data();
                    $kontruksi_menara= $kontruksi_menara['file_name'];
                }
            }

            if($sp_fo_ducting = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('sp_fo_ducting')){
                    //echo "Gambar gagal di upload";
                }else{
                    $sp_fo_ducting=$this->upload->data();
                    $sp_fo_ducting= $sp_fo_ducting['file_name'];
                }
            }

            if($gambar_site = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('gambar_site')){
                    //echo "Gambar gagal di upload";
                }else{
                    $gambar_site=$this->upload->data();
                    $gambar_site= $gambar_site['file_name'];
                }
            }

            if($sp_menara_bersama = ''){}else{
                $config['upload_path']      = './uploads/pendaftaran';
                $config['allowed_types']    = 'jpg|jpeg|png|gif';
                $config['max_size']         = 5000;

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload('sp_menara_bersama')){
                    //echo "Gambar gagal di upload";
                }else{
                    $sp_menara_bersama=$this->upload->data();
                    $sp_menara_bersama= $sp_menara_bersama['file_name'];
                }
            }

            $data = array(
                'nomor_surat' => $this->input->post('nomor_surat'),
                'tempat' => $this->input->post('tempat'),
                'tanggal_surat' => $this->input->post('tanggal_surat'),
                'nama_perusahaan' => $this->input->post('nama_perusahaan'),
                'alamat_perusahaan' => $this->input->post('alamat_perusahaan'),
                'nama_penanggungjawab' => $this->input->post('nama_penanggungjawab'),
                'no_telepon_kantor' => $this->input->post('no_telepon_kantor'),
                'jabatan' => $this->input->post('jabatan'),
                'no_hp' => $this->input->post('no_hp'),
                'nama_pemilik' => $this->input->post('nama_pemilik'),
                'alamat_pemilik' => $this->input->post('alamat_pemilik'),
                'lokasi_tanah' => $this->input->post('lokasi_tanah'),
                'luas_tanah' => $this->input->post('luas_tanah'),
                'no_persil_tanah' => $this->input->post('no_persil_tanah'),
                'tanah_dipakai' => $this->input->post('tanah_dipakai'),
                'latitude' => $this->input->post('latitude'),
                'longitude' => $this->input->post('longitude'),

                'ktp_pemohon' => $ktp_pemohon,
                'akte_perusahaan' => $akte_perusahaan,
                'surat_perjanjian' => $surat_perjanjian,
                'jumlah_titik_menara' => $jumlah_titik_menara,
                'kontruksi_menara' => $kontruksi_menara,
                'sp_fo_ducting' => $sp_fo_ducting,
                'gambar_site' => $gambar_site,
                'sp_menara_bersama' => $sp_menara_bersama,
            );
            $this->m_pendaftaran->Add($data);
            redirect('peta-menara','refresh');
        }
        
    }

}

/* End of file Pendaftaran.php */

?>