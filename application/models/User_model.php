<?php
	class User_model extends CI_Model {
		
		public function login($data)
        {
			$this->db->where('username', $data['username']);  
			$this->db->where('password', $data['password']);  
			$query = $this->db->get('users');  
	  
			if ($query->num_rows() == 1)  
			{  
				return $query->result();  
			} else {  
				return -1;  
			}  
        }
		
		public function create($data){
			$query = $this->db->get_where('users', array('username' => $data['username']));
            if ($query->num_rows() > 0)
			{
				return 0;
			}
			$this->db->insert('users',$data);
			return (($this->db->insert_id()>0)?$this->db->insert_id():0);			
		}

		public function get(){
			$query = $this->db->get('users');
			return $query->result();
		}

		public function getById($id){
			$query = $this->db->get_where('users', array('id' => $id));
            return $query->result();
		}
		
		public function update($data){
		}
		
		
		public function getJoint(){
			$sql = "select u.id,ur.userid,ur.roleid,r.name as rolename ,u.contact,u.name,u.username,u.surname,c.client_name from users u left join userrole ur on u.id=ur.userid left join role r on r.id=ur.roleid left join `client` c on c.client_Id=u.clientid;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
	}
?>