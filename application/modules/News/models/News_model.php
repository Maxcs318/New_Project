<?php

    Class News_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->news = 'news';

        }
        // get all News
        public function get_all_news()
        {
            // $this->db->order_by('n_id', 'DESC');
            $newsAll = $this->db->get($this->news)->result(); 
            return json_encode($newsAll);  
            
        }
        // insert News
        public function insert_news($data = array())
        {
            $lastID;
            $ins = $this->db->insert($this->news,$data);
            if($ins){
                $lastID = $this->db->insert_id();
                }
            return json_encode($lastID);
        }
        







        
    }
?>