<<<<<<< HEAD
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/stats.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/other.css">
    <link rel="stylesheet" href="assets/Bootstrap/css/bootstrap.min.css">
    <title>Techniques </title>
</head>
<body>
    <div class="header4">
        <div class="ocean">
        </div>
        <div class="container">
                <div class="col">
                    <div class="text-container">
                        <h1 class="titre4">Les Techniques pour la région de <?= $region['nom_region'] ?> </h1>
                        <p class="p-large">Trouvons la solution pour notre région</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-container titre1">
                <h1 class="h1">Les Problèmes et Techniques appropriées</h1>
                <p class="p-large">(Agriculture Intelligente face au Climat)</p>
    </div>
    <section class="probleme">
      <div class="jumbotron backg">
            <h1 class="display-4">Les Problèmes</h1>
            <p class="lead">les problèmes dans la région de <?= $region['nom_region'] ?></p>
            <?php foreach ($pb as $val): ?>
              
              <h2> <?=  $val['descri_probleme']?> </h2>
              
              <hr class="my-4"></p>
              <?php endforeach;?>
        </div>
    </section>

    <section class=" container solution ">
        <div class="text-container titre1">
            <h1 class="h1">Les Techniques appropriées</h1>
        </div>
        <div class="col">
        <div class="card-group">
          <?php foreach ($pb as $valpb): ?>
            
            <?php $tech = $requete->getTechnique($valpb['id_probleme']);?>
            <?php foreach ($tech as $val2): ?>
                <div class="card">
                "assets/<?=$val2['lien_image']?>"
                  <img src="assets/image/technique/<?=$val2['lien_image']?>" alt="aa">
                  <div class="card-body solution">
                    <h5 class="card-title"><?=$val2['nom_technique']?></h5>
                    <p class="card-text">
                      <?= $val2['descri_technique']?>
                    </p>
                  </div>
                </div>
                </div>
        
              <?php endforeach;?>

            <?php endforeach;?>
            
          </div>
    </section>

    

    <section class="foot">
        <footer class="bg-dark text-white">
          <div class="container p-4">
            <div class="row">
              <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase">A propos</h5>
      
                <p>
                  DARAJ est un groupe de jeune développeur motivé à faire évoluer son pays par l'intermédiaire de l'informatique, 
                </p>
              </div>
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Partenaires</h5>
      
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-white">FCA</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">HAVANA</a>
                  </li>
                </ul> 
              </div>
              
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-0">Contact</h5>
      
                <ul class="list-unstyled">
                  <li>
                    <a href="#!" class="text-white">Tel: +261 34 80 466 42 </a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Gmail: nyaiansoa.andria@gmail.com </a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Facebook: Ny Ainasoa ANDRIAMAMPITA</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Linkedin: Jérémie ANDRIANAIVO</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2021 Copyright:
            <a class="text-white" href="">DARAJ</a>
          </div>
        </footer>
      </section>

</body>

</html>