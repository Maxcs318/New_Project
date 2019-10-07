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
        
        



















        
    }
?>