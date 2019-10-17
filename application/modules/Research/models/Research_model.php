<?php

    Class research_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->research = 'research';
            
        }
        // get all Research
        public function get_all_research()
        {
            $ResearchAll = $this->db->get($this->research)->result(); 
            return json_encode($ResearchAll);  
        }
        // insert 
        public function insert_research($data = array())
        {
            $lastID;
            $ins = $this->db->insert($this->research,$data);
            if($ins){
                $lastID = $this->db->insert_id();
                }
            return json_encode($lastID);
        }
        
        



















        
    }
?>