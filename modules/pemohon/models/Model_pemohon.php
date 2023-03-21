<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pemohon extends MY_Model {
	private $primary_key 	= 'pemohon_id';
	private $table_name 	= 'pemohon';
	public $field_search 	= ['pemohon_nama', 'pemohon_jenkel', 'pemohon_alamat', 'kecamatan_id', 'kelurahan_id', 'agama_id', 'kecamatan.kecamatan_nama', 'kelurahan.kelurahan_nama', 'agama.agama_nama'];
	public $sort_option 	= ['pemohon_id', 'DESC'];

	public function __construct() {
		$config = array(
			'primary_key'   => $this->primary_key,
			'table_name'    => $this->table_name,
			'field_search'  => $this->field_search,
			'sort_option'   => $this->sort_option,
		 );

		parent::__construct($config);
	}

	public function count_all($q = null, $field = null) {
		$iterasi 	= 1;
		$num 		= count($this->field_search);
		$where 		= NULL;
		$q 			= $this->scurity($q);
		$field 		= $this->scurity($field);

		if (empty($field)) {
			foreach ($this->field_search as $field) {
				$f_search = "pemohon.".$field;

				if (strpos($field, '.')) {
					$f_search = $field;
				}
				if ($iterasi == 1) {
					$where .=  $f_search . " LIKE '%" . $q . "%' ";
				} else {
					$where .= "OR " .  $f_search . " LIKE '%" . $q . "%' ";
				}
				$iterasi++;
			}

			$where = '('.$where.')';
		} else {
			$where .= "(" . "pemohon.".$field . " LIKE '%" . $q . "%' )";
		}

		$this->join_avaiable()->filter_avaiable();
		$this->db->where($where);
		$query = $this->db->get($this->table_name);

		return $query->num_rows();
	}

	public function get($q = null, $field = null, $limit = 0, $offset = 0, $select_field = []) {
		$iterasi 	= 1;
		$num 		= count($this->field_search);
		$where 		= NULL;
		$q 			= $this->scurity($q);
		$field 		= $this->scurity($field);

		if (empty($field)) {
			foreach ($this->field_search as $field) {
				$f_search = "pemohon.".$field;
				if (strpos($field, '.')) {
					$f_search = $field;
				}

				if ($iterasi == 1) {
					$where .= $f_search . " LIKE '%" . $q . "%' ";
				} else {
					$where .= "OR " .$f_search . " LIKE '%" . $q . "%' ";
				}
				$iterasi++;
			}

			$where = '('.$where.')';
		} else {
			$where .= "(" . "pemohon.".$field . " LIKE '%" . $q . "%' )";
		}

		if (is_array($select_field) AND count($select_field)) {
			$this->db->select($select_field);
		}
		
		$this->join_avaiable()->filter_avaiable();
		$this->db->where($where);
		$this->db->limit($limit, $offset);
		
		$this->sortable();
		
		$query = $this->db->get($this->table_name);

		return $query->result();
	}

	public function join_avaiable() {
		$this->db->join('kecamatan', 'kecamatan.kecamatan_id = pemohon.kecamatan_id', 'LEFT');
		$this->db->join('kelurahan', 'kelurahan.kelurahan_id = pemohon.kelurahan_id', 'LEFT');
		$this->db->join('agama', 'agama.agama_id = pemohon.agama_id', 'LEFT');
		$this->db->join('aauth_users', 'aauth_users.id = pemohon.user_id', 'LEFT');
		$this->db->where('aauth_users.banned', '0');

		$this->db->select('kecamatan.kecamatan_nama,kelurahan.kelurahan_nama,agama.agama_nama,pemohon.*,aauth_users.*,kecamatan.kecamatan_nama as kecamatan_kecamatan_nama,kecamatan.kecamatan_nama as kecamatan_nama,kelurahan.kelurahan_nama as kelurahan_kelurahan_nama,kelurahan.kelurahan_nama as kelurahan_nama,agama.agama_nama as agama_agama_nama,agama.agama_nama as agama_nama');

		return $this;
	}

	public function filter_avaiable() {
		if (!$this->aauth->is_admin()) {
			// $this->db->where($this->table_name.'.pemohon_user_id', get_user_data('id'));
		}

		return $this;
	}

	public function query_pemohon() {
		$this->db->where('aauth_users.banned', '0');
		$this->db->join('aauth_users', 'aauth_users.id = pemohon.pemohon_id', 'LEFT');
		
		$query = $this->db->get('pemohon');
		return $query;
	}

}

/* End of file Model_pemohon.php */
/* Location: ./application/models/Model_pemohon.php */