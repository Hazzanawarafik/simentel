<?php 

defined('BASEPATH') OR exit('No direct script access allowedk kmmpm');

class Pemohon extends Front {

     public function __construct()
    {
        parent::__construct();    
        // $this->load->helper(array('form','url'));
        
    }

    public function index()
    {
			$this->template->build('pendaftaran');
    }

}

/* End of file Pendaftaran.php */

?>