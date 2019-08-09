<?php

    Class Product_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->product = 'product';

        }
        // get all Product
        public function get_all_product()
        {
            $this->db->order_by('p_id', 'DESC');
            $productAll = $this->db->get($this->product)->result(); 
            return json_encode($productAll);  
            
        }
        // insert Product
        public function insert_product($data = array())
        {
            $lastID;
            $ins = $this->db->insert($this->product,$data);
            if($ins){
                $lastID = $this->db->insert_id();
                }
            return json_encode($lastID);
        }
        







        
    }
?>