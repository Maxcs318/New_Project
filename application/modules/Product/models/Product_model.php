<?php

    Class Product_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->product = 'product';
            $this->product_category = 'product_category';
            $this->product_image = 'product_image';

        }
        // get all Product
        public function get_all_product()
        {
            $productAll = $this->db->get($this->product)->result(); 
            return json_encode($productAll);  
        }
        // get all Product_Category
        public function get_all_product_category()
        {
            $product_categoryAll = $this->db->get($this->product_category)->result(); 
            return json_encode($product_categoryAll);              
        }
        // get all Product_Image
        public function get_all_product_image()
        {
            $product_imageAll = $this->db->get($this->product_image)->result(); 
            return json_encode($product_imageAll);  
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
        // update Product
        public function update_product($data = array(), $where = array())
        {
            return json_encode($this->db->where($where)->update($this->product,$data));
        }







        
    }
?>