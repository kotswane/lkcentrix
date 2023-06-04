<?php
	class Ocds_model extends CI_Model {
		
		
		public function get(){
			$query = $this->db->get('client');
			return $query->result();
		}
		
		public function update($data,$id){
			
			$this->db->where('client_Id', $id);
			$this->db->update('client', $data); 

			return (($this->db->affected_rows()>0)?true:false);
		}
		
		public function getReleaseById($ocid){
			$sql = "SELECT * FROM `ocdsreleases` WHERE ocid ='".$ocid."';";
			$query=$this->db->query($sql);
			return $query->result();
		}	
		
		public function getDocsById($ocid){
			
			$sql = "SELECT * FROM `ocdsreleasesdocs` WHERE ocid ='".$ocid."';";
			$query=$this->db->query($sql);
			return $query->result();
		}

		public function getByName($name){
			$sql = "SELECT * FROM `tenderaward` WHERE name ='".$name."';";
			$query=$this->db->query($sql);
			return $query->result();
		}		
		
		public function getByNameLike($name){
			$sql = "SELECT * FROM `tenderaward` WHERE name like '%".$name."%';";
			$query=$this->db->query($sql);
			return $query->result();
		}		
		
	}
?>