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

    // public function add(){
    //     $nomor_surat = $this->input->post('nomor_surat');
    //     // $nama_perusahaan = $this->post('nama_perusahaan');


    //     $data = array(
    //         'nomor_surat'        => $nomor_surat,
    //         // 'nama_perusahaan' => $nama_perusahaan,
    //     );

    //     // $this->db->insert('pendaftaran',$data);
    //     $this->m_pendaftaran->Add($data);
    //     redirect('peta-menara');
    // }

    public function add(){
        $this->form_validation->set_rules('nomor_surat', 'Nomor Surat', 'required');
        // $this->form_validation->set_rules('tempat', 'Tempat', 'required');
        // $this->form_validation->set_rules('tanggal_surat', 'Tanggal Surat', 'required');
        // $this->form_validation->set_rules('nama_perusahaan', 'Nama Perusahaan', 'required');
        // $this->form_validation->set_rules('alamat_perusahaan', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('nama_penanggungjawab', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('no_telepon_kantor', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('jabatan', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('no_hp', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('nama_pemilik', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('alamat_pemilik', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('lokasi_tanah', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('luas_tanah', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('no_persil_tanah', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('tanah_dipakai', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('latitude', 'fieldlabel', 'required');
        // $this->form_validation->set_rules('longitude', 'fieldlabel', 'required');

        // $this->form_validation->set_rules('ktp_pemohon', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('akte_perusahaan', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('surat_perjanjian', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('jumlah_titik_menara', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('kontruksi_menara', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('sp_fo_ducting', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('gambar_site', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        // $this->form_validation->set_rules('sp_menara_bersama', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]');
        
        if($this->form_validation->run() == FALSE){
            // Jika tidak lolos validasi form 
            // $this->template->build('pendaftaran');
            redirect('pendaftaran','refresh');
        }else{
            $config['upload_path']          = './uploads/pendaftaran';
            $config['allowed_types']        = 'gif|jpg|png|jpeg';
            $config['max_size']             = 2048;
             // Load library upload
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            $field_name = "ktp_pemohon";

            // $this->load->library('upload', $config);

            if ( ! $this->upload->do_upload('field_name'))
            {
                //Jika gagal upload gambar
                
            }
            else
            {
                // Jika berhasil upload gambar
                    $data = array('uploads' => $this->upload->data());
                    $config['image_library'] = 'gd2';
                    $config['source_image'] = './uploads/pendaftaran/'.$upload_data['uploads']['file_name'];
                    $this->load->library('image_lib'.$config);
                    $data = array(
                        'nomor_surat' => $this->input->post('nomor_surat'),
                        // 'tempat' => $this->input->post('tempat'),
                        // 'tanggal_surat' => $this->input->post('tanggal_surat'),
                        // 'nama_perusahaan' => $this->input->post('nama_perusahaan'),
                        // 'alamat_perusahaan' => $this->input->post('alamat_perusahaan'),
                        // 'nama_penanggungjawab' => $this->input->post('nama_penanggungjawab'),
                        // 'no_telepon_kantor' => $this->input->post('no_telepon_kantor'),
                        // 'jabatan' => $this->input->post('jabatan'),
                        // 'no_hp' => $this->input->post('no_hp'),
                        // 'nama_pemilik' => $this->input->post('nama_pemilik'),
                        // 'alamat_pemilik' => $this->input->post('alamat_pemilik'),
                        // 'lokasi_tanah' => $this->input->post('lokasi_tanah'),
                        // 'luas_tanah' => $this->input->post('luas_tanah'),
                        // 'no_persil_tanah' => $this->input->post('no_persil_tanah'),
                        // 'tanah_dipakai' => $this->input->post('tanah_dipakai'),
                        // 'latitude' => $this->input->post('latitude'),
                        // 'longitude' => $this->input->post('longitude'),
                        'ktp_pemohon' => $upload_data['uploads']['file_name'],
        
                        // 'ktp_pemohon' => $this->input-post('ktp_pemohon'),
                        // 'akte_perusahaan' => $this->input-post('akte_perusahaan'),
                        // 'surat_perjanjian' => $this->input-post('surat_perjanjian'),
                        // 'jumlah_titik_menara' => $this->input-post('jumlah_titik_menara'),
                        // 'kontruksi_menara' => $this->input-post('kontruksi_menara'),
                        // 'sp_fo_ducting' => $this->input-post('sp_fo_ducting'),
                        // 'gambar_site' => $this->input-post('gambar_site'),
                        // 'sp_menara_bersama' => $this->input-post('sp_menara_bersama'),
                    );
                    $this->m_pendaftaran->Add($data);
                    redirect('peta-menara','refresh');
            }
            $data = array(
                'nomor_surat' => $this->input->post('nomor_surat'),
                // 'tempat' => $this->input->post('tempat'),
                // 'tanggal_surat' => $this->input->post('tanggal_surat'),
                // 'nama_perusahaan' => $this->input->post('nama_perusahaan'),
                // 'alamat_perusahaan' => $this->input->post('alamat_perusahaan'),
                // 'nama_penanggungjawab' => $this->input->post('nama_penanggungjawab'),
                // 'no_telepon_kantor' => $this->input->post('no_telepon_kantor'),
                // 'jabatan' => $this->input->post('jabatan'),
                // 'no_hp' => $this->input->post('no_hp'),
                // 'nama_pemilik' => $this->input->post('nama_pemilik'),
                // 'alamat_pemilik' => $this->input->post('alamat_pemilik'),
                // 'lokasi_tanah' => $this->input->post('lokasi_tanah'),
                // 'luas_tanah' => $this->input->post('luas_tanah'),
                // 'no_persil_tanah' => $this->input->post('no_persil_tanah'),
                // 'tanah_dipakai' => $this->input->post('tanah_dipakai'),
                // 'latitude' => $this->input->post('latitude'),
                // 'longitude' => $this->input->post('longitude'),

                // 'ktp_pemohon' => $this->input-post('ktp_pemohon'),
                // 'akte_perusahaan' => $this->input-post('akte_perusahaan'),
                // 'surat_perjanjian' => $this->input-post('surat_perjanjian'),
                // 'jumlah_titik_menara' => $this->input-post('jumlah_titik_menara'),
                // 'kontruksi_menara' => $this->input-post('kontruksi_menara'),
                // 'sp_fo_ducting' => $this->input-post('sp_fo_ducting'),
                // 'gambar_site' => $this->input-post('gambar_site'),
                // 'sp_menara_bersama' => $this->input-post('sp_menara_bersama'),
            );
            $this->m_pendaftaran->Add($data);
            redirect('peta-menara','refresh');
        }
    }

    
}

/* End of file Pendaftaran.php */

?>