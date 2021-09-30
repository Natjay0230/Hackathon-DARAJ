<?php

class Technique
{
    public function afficheMada()
    {
        require_once 'views/Madagascar.php';
    }
    public function afficheTech()
    {

        require_once 'models/Requete.php';
        $requete = new Requete;


        $region = $requete -> getRegion($_GET['id']);
        $pb = $requete->getProblem($_GET['id']);
        require_once "views/Techniques.php";
    }
}