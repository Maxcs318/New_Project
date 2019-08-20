<?php

    Class Check__model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->logged = 'logged';
            $this->member = 'member';

        }
        
        // check token 
        public function chk_token($data)
        {
            $this->db->where('token', $data);
            $tokenUser = $this->db->get($this->logged)->result();                      
            return $tokenUser[0]->l_id_m_id;
        }
        // check status
        public function chk_status($data)
        {
            $this->db->where('m_id', $data);
            $userS = $this->db->get($this->member)->result();                      
            return $userS[0]->m_status;
        }







        
    }
?>