<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Pendaftaran Controller
*| --------------------------------------------------------------------------
*| Pendaftaran site
*|
*/
class Pendaftaran extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_pendaftaran');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Pendaftarans
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('pendaftaran_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['pendaftarans'] = $this->model_pendaftaran->get($filter, $field, $this->limit_page, $offset);
		$this->data['pendaftaran_counts'] = $this->model_pendaftaran->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/pendaftaran/index/',
			'total_rows'   => $this->data['pendaftaran_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Pendaftaran List');
		$this->render('backend/standart/administrator/pendaftaran/pendaftaran_list', $this->data);
	}
	
	/**
	* Add new pendaftarans
	*
	*/
	public function add()
	{
		$this->is_allowed('pendaftaran_add');

		$this->template->title('Pendaftaran New');
		$this->render('backend/standart/administrator/pendaftaran/pendaftaran_add', $this->data);
	}

	/**
	* Add New Pendaftarans
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('tempat', 'Tempat', 'trim|required');
		

		$this->form_validation->set_rules('tanggal_surat', 'Tanggal Surat', 'trim|required');
		

		$this->form_validation->set_rules('nomor_surat', 'Nomor Surat', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('nama_perusahaan', 'Nama Perusahaan', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('alamat_perusahaan', 'Alamat Perusahaan', 'trim|required|max_length[255]');
		

		$this->form_validation->set_rules('nama_penanggungjawab', 'Nama Penanggungjawab', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('no_telepon_kantor', 'No Telepon Kantor', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('jabatan', 'Jabatan', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('no_hp', 'No Hp', 'trim|required|max_length[12]');
		

		$this->form_validation->set_rules('nama_pemilik', 'Nama Pemilik', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('alamat_pemilik', 'Alamat Pemilik', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('lokasi_tanah', 'Lokasi Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('luas_tanah', 'Luas Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('no_persil_tanah', 'No Persil Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('tanah_dipakai', 'Tanah Dipakai', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('latitude', 'Latitude', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('longitude', 'Longitude', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('pendaftaran_ktp_pemohon_name', 'Ktp Pemohon', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_akte_perusahaan_name', 'Akte Perusahaan', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_surat_perjanjian_name', 'Surat Perjanjian', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_jumlah_titik_menara_name', 'Jumlah Titik Menara', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_kontruksi_menara_name', 'Kontruksi Menara', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_sp_fo_ducting_name', 'Sp Fo Ducting', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_gambar_site_name', 'Gambar Site', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_sp_menara_bersama_name', 'Sp Menara Bersama', 'trim|required');
		

		

		if ($this->form_validation->run()) {
			$pendaftaran_ktp_pemohon_uuid = $this->input->post('pendaftaran_ktp_pemohon_uuid');
			$pendaftaran_ktp_pemohon_name = $this->input->post('pendaftaran_ktp_pemohon_name');
			$pendaftaran_akte_perusahaan_uuid = $this->input->post('pendaftaran_akte_perusahaan_uuid');
			$pendaftaran_akte_perusahaan_name = $this->input->post('pendaftaran_akte_perusahaan_name');
			$pendaftaran_surat_perjanjian_uuid = $this->input->post('pendaftaran_surat_perjanjian_uuid');
			$pendaftaran_surat_perjanjian_name = $this->input->post('pendaftaran_surat_perjanjian_name');
			$pendaftaran_jumlah_titik_menara_uuid = $this->input->post('pendaftaran_jumlah_titik_menara_uuid');
			$pendaftaran_jumlah_titik_menara_name = $this->input->post('pendaftaran_jumlah_titik_menara_name');
			$pendaftaran_kontruksi_menara_uuid = $this->input->post('pendaftaran_kontruksi_menara_uuid');
			$pendaftaran_kontruksi_menara_name = $this->input->post('pendaftaran_kontruksi_menara_name');
			$pendaftaran_sp_fo_ducting_uuid = $this->input->post('pendaftaran_sp_fo_ducting_uuid');
			$pendaftaran_sp_fo_ducting_name = $this->input->post('pendaftaran_sp_fo_ducting_name');
			$pendaftaran_gambar_site_uuid = $this->input->post('pendaftaran_gambar_site_uuid');
			$pendaftaran_gambar_site_name = $this->input->post('pendaftaran_gambar_site_name');
			$pendaftaran_sp_menara_bersama_uuid = $this->input->post('pendaftaran_sp_menara_bersama_uuid');
			$pendaftaran_sp_menara_bersama_name = $this->input->post('pendaftaran_sp_menara_bersama_name');
		
			$save_data = [
				'tempat' => $this->input->post('tempat'),
				'tanggal_surat' => $this->input->post('tanggal_surat'),
				'nomor_surat' => $this->input->post('nomor_surat'),
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
			];

			
			



			
			if (!is_dir(FCPATH . '/uploads/pendaftaran/')) {
				mkdir(FCPATH . '/uploads/pendaftaran/');
			}

			if (!empty($pendaftaran_ktp_pemohon_name)) {
				$pendaftaran_ktp_pemohon_name_copy = date('YmdHis') . '-' . $pendaftaran_ktp_pemohon_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_ktp_pemohon_uuid . '/' . $pendaftaran_ktp_pemohon_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_ktp_pemohon_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_ktp_pemohon_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['ktp_pemohon'] = $pendaftaran_ktp_pemohon_name_copy;
			}
		
			if (!empty($pendaftaran_akte_perusahaan_name)) {
				$pendaftaran_akte_perusahaan_name_copy = date('YmdHis') . '-' . $pendaftaran_akte_perusahaan_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_akte_perusahaan_uuid . '/' . $pendaftaran_akte_perusahaan_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_akte_perusahaan_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_akte_perusahaan_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['akte_perusahaan'] = $pendaftaran_akte_perusahaan_name_copy;
			}
		
			if (!empty($pendaftaran_surat_perjanjian_name)) {
				$pendaftaran_surat_perjanjian_name_copy = date('YmdHis') . '-' . $pendaftaran_surat_perjanjian_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_surat_perjanjian_uuid . '/' . $pendaftaran_surat_perjanjian_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_surat_perjanjian_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_surat_perjanjian_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['surat_perjanjian'] = $pendaftaran_surat_perjanjian_name_copy;
			}
		
			if (!empty($pendaftaran_jumlah_titik_menara_name)) {
				$pendaftaran_jumlah_titik_menara_name_copy = date('YmdHis') . '-' . $pendaftaran_jumlah_titik_menara_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_jumlah_titik_menara_uuid . '/' . $pendaftaran_jumlah_titik_menara_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_jumlah_titik_menara_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_jumlah_titik_menara_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['jumlah_titik_menara'] = $pendaftaran_jumlah_titik_menara_name_copy;
			}
		
			if (!empty($pendaftaran_kontruksi_menara_name)) {
				$pendaftaran_kontruksi_menara_name_copy = date('YmdHis') . '-' . $pendaftaran_kontruksi_menara_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_kontruksi_menara_uuid . '/' . $pendaftaran_kontruksi_menara_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_kontruksi_menara_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_kontruksi_menara_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['kontruksi_menara'] = $pendaftaran_kontruksi_menara_name_copy;
			}
		
			if (!empty($pendaftaran_sp_fo_ducting_name)) {
				$pendaftaran_sp_fo_ducting_name_copy = date('YmdHis') . '-' . $pendaftaran_sp_fo_ducting_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_sp_fo_ducting_uuid . '/' . $pendaftaran_sp_fo_ducting_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_sp_fo_ducting_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_sp_fo_ducting_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['sp_fo_ducting'] = $pendaftaran_sp_fo_ducting_name_copy;
			}
		
			if (!empty($pendaftaran_gambar_site_name)) {
				$pendaftaran_gambar_site_name_copy = date('YmdHis') . '-' . $pendaftaran_gambar_site_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_gambar_site_uuid . '/' . $pendaftaran_gambar_site_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_gambar_site_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_gambar_site_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['gambar_site'] = $pendaftaran_gambar_site_name_copy;
			}
		
			if (!empty($pendaftaran_sp_menara_bersama_name)) {
				$pendaftaran_sp_menara_bersama_name_copy = date('YmdHis') . '-' . $pendaftaran_sp_menara_bersama_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_sp_menara_bersama_uuid . '/' . $pendaftaran_sp_menara_bersama_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_sp_menara_bersama_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_sp_menara_bersama_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['sp_menara_bersama'] = $pendaftaran_sp_menara_bersama_name_copy;
			}
		
			
			$save_pendaftaran = $id = $this->model_pendaftaran->store($save_data);
            

			if ($save_pendaftaran) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_pendaftaran;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/pendaftaran/edit/' . $save_pendaftaran, 'Edit Pendaftaran'),
						anchor('administrator/pendaftaran', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/pendaftaran/edit/' . $save_pendaftaran, 'Edit Pendaftaran')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/pendaftaran');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/pendaftaran');
				}
			}

		} else {
			$this->data['success'] = false;
			$this->data['message'] = 'Opss validation failed';
			$this->data['errors'] = $this->form_validation->error_array();
		}

		$this->response($this->data);
	}
	
		/**
	* Update view Pendaftarans
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('pendaftaran_update');

		$this->data['pendaftaran'] = $this->model_pendaftaran->find($id);

		$this->template->title('Pendaftaran Update');
		$this->render('backend/standart/administrator/pendaftaran/pendaftaran_update', $this->data);
	}

	/**
	* Update Pendaftarans
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('tempat', 'Tempat', 'trim|required');
		

		$this->form_validation->set_rules('tanggal_surat', 'Tanggal Surat', 'trim|required');
		

		$this->form_validation->set_rules('nomor_surat', 'Nomor Surat', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('nama_perusahaan', 'Nama Perusahaan', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('alamat_perusahaan', 'Alamat Perusahaan', 'trim|required|max_length[255]');
		

		$this->form_validation->set_rules('nama_penanggungjawab', 'Nama Penanggungjawab', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('no_telepon_kantor', 'No Telepon Kantor', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('jabatan', 'Jabatan', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('no_hp', 'No Hp', 'trim|required|max_length[12]');
		

		$this->form_validation->set_rules('nama_pemilik', 'Nama Pemilik', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('alamat_pemilik', 'Alamat Pemilik', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('lokasi_tanah', 'Lokasi Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('luas_tanah', 'Luas Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('no_persil_tanah', 'No Persil Tanah', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('tanah_dipakai', 'Tanah Dipakai', 'trim|required|max_length[100]');
		

		$this->form_validation->set_rules('latitude', 'Latitude', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('longitude', 'Longitude', 'trim|required|max_length[50]');
		

		$this->form_validation->set_rules('pendaftaran_ktp_pemohon_name', 'Ktp Pemohon', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_akte_perusahaan_name', 'Akte Perusahaan', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_surat_perjanjian_name', 'Surat Perjanjian', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_jumlah_titik_menara_name', 'Jumlah Titik Menara', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_kontruksi_menara_name', 'Kontruksi Menara', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_sp_fo_ducting_name', 'Sp Fo Ducting', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_gambar_site_name', 'Gambar Site', 'trim|required');
		

		$this->form_validation->set_rules('pendaftaran_sp_menara_bersama_name', 'Sp Menara Bersama', 'trim|required');
		

		
		if ($this->form_validation->run()) {
			$pendaftaran_ktp_pemohon_uuid = $this->input->post('pendaftaran_ktp_pemohon_uuid');
			$pendaftaran_ktp_pemohon_name = $this->input->post('pendaftaran_ktp_pemohon_name');
			$pendaftaran_akte_perusahaan_uuid = $this->input->post('pendaftaran_akte_perusahaan_uuid');
			$pendaftaran_akte_perusahaan_name = $this->input->post('pendaftaran_akte_perusahaan_name');
			$pendaftaran_surat_perjanjian_uuid = $this->input->post('pendaftaran_surat_perjanjian_uuid');
			$pendaftaran_surat_perjanjian_name = $this->input->post('pendaftaran_surat_perjanjian_name');
			$pendaftaran_jumlah_titik_menara_uuid = $this->input->post('pendaftaran_jumlah_titik_menara_uuid');
			$pendaftaran_jumlah_titik_menara_name = $this->input->post('pendaftaran_jumlah_titik_menara_name');
			$pendaftaran_kontruksi_menara_uuid = $this->input->post('pendaftaran_kontruksi_menara_uuid');
			$pendaftaran_kontruksi_menara_name = $this->input->post('pendaftaran_kontruksi_menara_name');
			$pendaftaran_sp_fo_ducting_uuid = $this->input->post('pendaftaran_sp_fo_ducting_uuid');
			$pendaftaran_sp_fo_ducting_name = $this->input->post('pendaftaran_sp_fo_ducting_name');
			$pendaftaran_gambar_site_uuid = $this->input->post('pendaftaran_gambar_site_uuid');
			$pendaftaran_gambar_site_name = $this->input->post('pendaftaran_gambar_site_name');
			$pendaftaran_sp_menara_bersama_uuid = $this->input->post('pendaftaran_sp_menara_bersama_uuid');
			$pendaftaran_sp_menara_bersama_name = $this->input->post('pendaftaran_sp_menara_bersama_name');
		
			$save_data = [
				'tempat' => $this->input->post('tempat'),
				'tanggal_surat' => $this->input->post('tanggal_surat'),
				'nomor_surat' => $this->input->post('nomor_surat'),
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
			];

			

			


			
			if (!is_dir(FCPATH . '/uploads/pendaftaran/')) {
				mkdir(FCPATH . '/uploads/pendaftaran/');
			}

			if (!empty($pendaftaran_ktp_pemohon_uuid)) {
				$pendaftaran_ktp_pemohon_name_copy = date('YmdHis') . '-' . $pendaftaran_ktp_pemohon_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_ktp_pemohon_uuid . '/' . $pendaftaran_ktp_pemohon_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_ktp_pemohon_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_ktp_pemohon_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['ktp_pemohon'] = $pendaftaran_ktp_pemohon_name_copy;
			}
		
			if (!empty($pendaftaran_akte_perusahaan_uuid)) {
				$pendaftaran_akte_perusahaan_name_copy = date('YmdHis') . '-' . $pendaftaran_akte_perusahaan_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_akte_perusahaan_uuid . '/' . $pendaftaran_akte_perusahaan_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_akte_perusahaan_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_akte_perusahaan_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['akte_perusahaan'] = $pendaftaran_akte_perusahaan_name_copy;
			}
		
			if (!empty($pendaftaran_surat_perjanjian_uuid)) {
				$pendaftaran_surat_perjanjian_name_copy = date('YmdHis') . '-' . $pendaftaran_surat_perjanjian_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_surat_perjanjian_uuid . '/' . $pendaftaran_surat_perjanjian_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_surat_perjanjian_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_surat_perjanjian_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['surat_perjanjian'] = $pendaftaran_surat_perjanjian_name_copy;
			}
		
			if (!empty($pendaftaran_jumlah_titik_menara_uuid)) {
				$pendaftaran_jumlah_titik_menara_name_copy = date('YmdHis') . '-' . $pendaftaran_jumlah_titik_menara_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_jumlah_titik_menara_uuid . '/' . $pendaftaran_jumlah_titik_menara_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_jumlah_titik_menara_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_jumlah_titik_menara_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['jumlah_titik_menara'] = $pendaftaran_jumlah_titik_menara_name_copy;
			}
		
			if (!empty($pendaftaran_kontruksi_menara_uuid)) {
				$pendaftaran_kontruksi_menara_name_copy = date('YmdHis') . '-' . $pendaftaran_kontruksi_menara_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_kontruksi_menara_uuid . '/' . $pendaftaran_kontruksi_menara_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_kontruksi_menara_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_kontruksi_menara_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['kontruksi_menara'] = $pendaftaran_kontruksi_menara_name_copy;
			}
		
			if (!empty($pendaftaran_sp_fo_ducting_uuid)) {
				$pendaftaran_sp_fo_ducting_name_copy = date('YmdHis') . '-' . $pendaftaran_sp_fo_ducting_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_sp_fo_ducting_uuid . '/' . $pendaftaran_sp_fo_ducting_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_sp_fo_ducting_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_sp_fo_ducting_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['sp_fo_ducting'] = $pendaftaran_sp_fo_ducting_name_copy;
			}
		
			if (!empty($pendaftaran_gambar_site_uuid)) {
				$pendaftaran_gambar_site_name_copy = date('YmdHis') . '-' . $pendaftaran_gambar_site_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_gambar_site_uuid . '/' . $pendaftaran_gambar_site_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_gambar_site_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_gambar_site_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['gambar_site'] = $pendaftaran_gambar_site_name_copy;
			}
		
			if (!empty($pendaftaran_sp_menara_bersama_uuid)) {
				$pendaftaran_sp_menara_bersama_name_copy = date('YmdHis') . '-' . $pendaftaran_sp_menara_bersama_name;

				rename(FCPATH . 'uploads/tmp/' . $pendaftaran_sp_menara_bersama_uuid . '/' . $pendaftaran_sp_menara_bersama_name, 
						FCPATH . 'uploads/pendaftaran/' . $pendaftaran_sp_menara_bersama_name_copy);

				if (!is_file(FCPATH . '/uploads/pendaftaran/' . $pendaftaran_sp_menara_bersama_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['sp_menara_bersama'] = $pendaftaran_sp_menara_bersama_name_copy;
			}
		
			
			$save_pendaftaran = $this->model_pendaftaran->change($id, $save_data);

			if ($save_pendaftaran) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/pendaftaran', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/pendaftaran');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/pendaftaran');
				}
			}
		} else {
			$this->data['success'] = false;
			$this->data['message'] = 'Opss validation failed';
			$this->data['errors'] = $this->form_validation->error_array();
		}

		$this->response($this->data);
	}
	
	/**
	* delete Pendaftarans
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('pendaftaran_delete');

		$this->load->helper('file');

		$arr_id = $this->input->get('id');
		$remove = false;

		if (!empty($id)) {
			$remove = $this->_remove($id);
		} elseif (count($arr_id) >0) {
			foreach ($arr_id as $id) {
				$remove = $this->_remove($id);
			}
		}

		if ($remove) {
            set_message(cclang('has_been_deleted', 'pendaftaran'), 'success');
        } else {
            set_message(cclang('error_delete', 'pendaftaran'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Pendaftarans
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('pendaftaran_view');

		$this->data['pendaftaran'] = $this->model_pendaftaran->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Pendaftaran Detail');
		$this->render('backend/standart/administrator/pendaftaran/pendaftaran_view', $this->data);
	}
	
	/**
	* delete Pendaftarans
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$pendaftaran = $this->model_pendaftaran->find($id);

		if (!empty($pendaftaran->ktp_pemohon)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->ktp_pemohon;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->akte_perusahaan)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->akte_perusahaan;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->surat_perjanjian)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->surat_perjanjian;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->jumlah_titik_menara)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->jumlah_titik_menara;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->kontruksi_menara)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->kontruksi_menara;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->sp_fo_ducting)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->sp_fo_ducting;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->gambar_site)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->gambar_site;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($pendaftaran->sp_menara_bersama)) {
			$path = FCPATH . '/uploads/pendaftaran/' . $pendaftaran->sp_menara_bersama;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		
		
		return $this->model_pendaftaran->remove($id);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_ktp_pemohon_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_ktp_pemohon_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'ktp_pemohon', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_ktp_pemohon_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'ktp_pemohon', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_ktp_pemohon_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_akte_perusahaan_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_akte_perusahaan_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'akte_perusahaan', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_akte_perusahaan_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'akte_perusahaan', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_akte_perusahaan_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_surat_perjanjian_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_surat_perjanjian_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'surat_perjanjian', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_surat_perjanjian_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'surat_perjanjian', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_surat_perjanjian_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_jumlah_titik_menara_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_jumlah_titik_menara_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'jumlah_titik_menara', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_jumlah_titik_menara_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'jumlah_titik_menara', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_jumlah_titik_menara_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_kontruksi_menara_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_kontruksi_menara_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'kontruksi_menara', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_kontruksi_menara_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'kontruksi_menara', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_kontruksi_menara_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_sp_fo_ducting_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_sp_fo_ducting_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'sp_fo_ducting', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_sp_fo_ducting_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'sp_fo_ducting', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_sp_fo_ducting_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_gambar_site_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_gambar_site_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'gambar_site', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_gambar_site_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'gambar_site', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_gambar_site_file'
        ]);
	}
	
	/**
	* Upload Image Pendaftaran	* 
	* @return JSON
	*/
	public function upload_sp_menara_bersama_file()
	{
		if (!$this->is_allowed('pendaftaran_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'pendaftaran',
		]);
	}

	/**
	* Delete Image Pendaftaran	* 
	* @return JSON
	*/
	public function delete_sp_menara_bersama_file($uuid)
	{
		if (!$this->is_allowed('pendaftaran_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'sp_menara_bersama', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/'
        ]);
	}

	/**
	* Get Image Pendaftaran	* 
	* @return JSON
	*/
	public function get_sp_menara_bersama_file($id)
	{
		if (!$this->is_allowed('pendaftaran_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$pendaftaran = $this->model_pendaftaran->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'sp_menara_bersama', 
            'table_name'        => 'pendaftaran',
            'primary_key'       => 'id_pendaftaran',
            'upload_path'       => 'uploads/pendaftaran/',
            'delete_endpoint'   => 'administrator/pendaftaran/delete_sp_menara_bersama_file'
        ]);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('pendaftaran_export');

		$this->model_pendaftaran->export(
			'pendaftaran', 
			'pendaftaran',
			$this->model_pendaftaran->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('pendaftaran_export');

		$this->model_pendaftaran->pdf('pendaftaran', 'pendaftaran');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('pendaftaran_export');

		$table = $title = 'pendaftaran';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_pendaftaran->find($id);
        $fields = $result->list_fields();

        $content = $this->pdf->loadHtmlPdf('core_template/pdf/pdf_single', [
            'data' => $data,
            'fields' => $fields,
            'title' => $title
        ], TRUE);

        $this->pdf->initialize($config);
        $this->pdf->pdf->SetDisplayMode('fullpage');
        $this->pdf->writeHTML($content);
        $this->pdf->Output($table.'.pdf', 'H');
	}

	
}


/* End of file pendaftaran.php */
/* Location: ./application/controllers/administrator/Pendaftaran.php */