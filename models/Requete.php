<<<<<<< HEAD
<?php

class Requete extends Connect{

    public function getRegion($id)
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
                SELECT region.*
                from region 
                where region.id_region=?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetch(PDO::FETCH_ASSOC);
        return $data;
    }
    public function affichePbTechnique()
    {
        require_once 'views/TechniqueView.php';
    }
// --------------------------------------------------------------------------
    public function getAgriGlo1()
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
                SELECT agriculture_glo.*
                FROM agriculture_glo
                WHERE agriculture_glo.id_agri_glo<4
			');
        $q->execute();
        $data = $q->fetchall();
        return $data;
    }
    public function getAgriGlo2()
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
                SELECT agriculture_glo.*
                FROM agriculture_glo
                WHERE agriculture_glo.id_agri_glo>=4
			');
        $q->execute();
        $data = $q->fetchall();
        return $data;
    }
    public function getTechniqueGlo1($id)
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
            SELECT agriculture_glo.id_agri_glo, technique_glo.*
            FROM agriculture_glo, technique_glo, agri_technique_glo
            WHERE agri_technique_glo.id_agri_glo=agriculture_glo.id_agri_glo 
            AND agri_technique_glo.id_technique_glo=technique_glo.id_technique_glo
            AND agriculture_glo.id_agri_glo<4
            AND agriculture_glo.id_agri_glo = ?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall();
        return $data;
    }
    public function getTechniqueGlo2($id)
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
            SELECT agriculture_glo.id_agri_glo, technique_glo.*
            FROM agriculture_glo, technique_glo, agri_technique_glo
            WHERE agri_technique_glo.id_agri_glo=agriculture_glo.id_agri_glo 
            AND agri_technique_glo.id_technique_glo=technique_glo.id_technique_glo
            AND agriculture_glo.id_agri_glo>=4
            AND agriculture_glo.id_agri_glo = ?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall();
        return $data;
    }
    public function getPilier($id)
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
            SELECT * FROM `piliers_aic`,agriculture_glo 
            WHERE agriculture_glo.id_agri_glo=piliers_aic.id_agri_glo
            AND agriculture_glo.id_agri_glo= ?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall();
        return $data;
    }
    public function getImg($id)
    {
        $db = $this->dbConnect();
			$q = $db->prepare('
            SELECT * FROM `piliers_aic`,agriculture_glo 
            WHERE agriculture_glo.id_agri_glo=piliers_aic.id_agri_glo
            AND agriculture_glo.id_agri_glo= ?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall();
        return $data;
    }
    public function getProblem($id)
    {
    $db = $this->dbConnect();
			$q = $db->prepare('
            Select DISTINCT region.id_region, region.nom_region, probleme.descri_probleme, probleme.id_probleme
            from region
            inner JOIN region_probleme
            on region.id_region=region_probleme.id_region
            INNER join probleme
            on region_probleme.id_probleme=probleme.id_probleme
            where region.id_region=?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall();
        return $data;
    }
    public function getTechnique($id)
    {
    $db = $this->dbConnect();
			$q = $db->prepare('
            SELECT DISTINCT image.lien_image, technique.id_technique, technique.nom_technique, technique.descri_technique, probleme.descri_probleme
            from technique
            INNER JOIN probleme_technique
            on technique.id_technique=probleme_technique.id_technique
            INNER JOIN probleme
            ON probleme.id_probleme=probleme_technique.id_probleme
            INNER JOIN image
            ON image.id_technique = technique.id_technique
            WHERE probleme.id_probleme=?
			');
        $q->execute(array(intval($id)));
        $data = $q->fetchall(); 
        return $data;
    }
}



