<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class M_pendaftaran extends CI_Model {

    public function Add($data){
        $this->db->insert('pendaftaran',$data);
    }
}

/* End of file M_pendaftaran.php */

?>