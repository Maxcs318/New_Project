<?php
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');
?>
<?php

    class Welcome_model extends CI_Model
    {
        
        public function check_User($username,$password)
        {
            $this->load->helper('cookie');

            $this->db->where('m_username',$username);
			$this->db->where('m_password',$password);
            $query = $this->db->get('member');
            if($query->result()>0){
                $Now_user;
				foreach ($query->result() as $row)
				{
                    $Now_user   =   $row->m_id;
                    
					$_SESSION['id']         = $row->m_id;
					$_SESSION['username']   = $row->m_username;
					$_SESSION['status']     = $row->m_status;
                    // print_r($row);
                    $genDate = date('dmYHis').$Now_user;
                    $data    = array('l_id_m_id'=>$Now_user,'token'=>$genDate);
                    $create_token = $this->db->insert('logged',$data);
                    if($create_token == true){  
                        $_SESSION['chk']='login_success';
                        // echo $_SESSION['chk'];
                        return $genDate;
                    }
                }
            }else{
                $_SESSION['chk']='login_fail';
                // echo $_SESSION['chk'];
                return json_encode('Fail');
            }      
        }

        public function check_UserOn($token_chk){
            // return $token_chk;
            return 1;

        }
        













    }
?>