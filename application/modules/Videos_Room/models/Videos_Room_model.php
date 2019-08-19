<?php

    Class Videos_Room_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->member = 'member';
            $this->logged = 'logged';
            $this->videos = 'videos';
            $this->video_room = 'video_room';

        }
        // get all Videos
        public function get_all_videos()
        {
            $videosAll = $this->db->get($this->videos)->result(); 
            return json_encode($videosAll);  
        }
        // get all Video_room
        public function get_all_video_room()
        {               
            // $this->db->order_by('vr_id', 'DESC');
            $videosAll = $this->db->get($this->video_room)->result(); 
            return json_encode($videosAll);  
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
        // insert Room
        public function insert_room($data = array())
        {
            $lastID;
            $ins = $this->db->insert($this->video_room,$data);
            if($ins){
                $lastID = $this->db->insert_id();
                }
            return json_encode($lastID);
        }
        







        
    }
?>