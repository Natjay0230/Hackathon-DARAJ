<?php

class TechniqueGlobaleController
{
    public function afficheTechGlo()
    {
        $requete = new Requete;
        $tech = $requete -> getAgriGlo1();
        $tech2 = $requete -> getAgriGlo2();

        require_once 'views/TechniqueGlobale.php';
    }
    

}