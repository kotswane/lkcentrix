<?php
	class SearchHistory_model extends CI_Model {
		
		public function create($data){
			$this->db->insert('search_history',$data);
			return (($this->db->insert_id()>0)?true:false);
		}
		
		public function getOverViewReportLastSevenDays($userId){
			$sql = "SELECT reportname as Report, count(*) as 'Total' FROM search_history WHERE userId='".$userId."' and created >=DATE(NOW()) - INTERVAL 7 DAY GROUP BY reportname;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function getDetailedReportLastSevenDays($userId){
			$sql = "SELECT reportname as Report,reporttype as 'Type',count(*) as Total FROM search_history WHERE userId='".$userId."' and created >=DATE(NOW()) - INTERVAL 7 DAY GROUP BY reportname,reporttype;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function getTotalLastSevenDays($userId){
			$sql = "SELECT count(*) as Total FROM search_history WHERE userId='".$userId."' and created >=DATE(NOW()) - INTERVAL 7 DAY;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function getOverViewReportDateRange($userId,$startDate,$endDate){
			$sql = "SELECT reportname as Report, count(*) as 'Total' FROM search_history WHERE userId='".$userId."' AND created BETWEEN '".$startDate."' AND '".$endDate."' GROUP BY reportname;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function getDetailedReportDateRange($userId,$startDate,$endDate){
			$sql = "SELECT reportname as Report,reporttype as 'Type',count(*) as Total FROM search_history WHERE userId='".$userId."' AND created BETWEEN '".$startDate."' AND '".$endDate."' GROUP BY reportname,reporttype;";
			$query=$this->db->query($sql);
			return $query->result();
		}
		
		public function getTotalDateRange($userId,$startDate,$endDate){
			$sql = "SELECT count(*) as Total FROM search_history WHERE userId='".$userId."' AND created BETWEEN '".$startDate."' AND '".$endDate."';";
			$query=$this->db->query($sql);
			return $query->result();
		}
	}
?>