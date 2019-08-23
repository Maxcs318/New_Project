<?php

    Class Article_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->article = 'article';

        }
        // get all Article
        public function get_all_article()
        {
            // $this->db->order_by('a_id', 'DESC');
            $articleAll = $this->db->get($this->article)->result(); 
            return json_encode($articleAll);  
            
        }
        // insert Article
        public function insert_article($data = array())
        {
            $lastID;
            $ins = $this->db->insert($this->article,$data);
            if($ins){
                $lastID = $this->db->insert_id();
                }
            return json_encode($lastID);
        }
        // update Article
        public function update_article($data = array(), $where = array())
        {
            return json_encode($this->db->where($where)->update($this->article,$data));
        }
        







        
    }
?>