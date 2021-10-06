<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Webpage Title -->
  <title>Hackaton 2021</title>

  <!-- Styles -->
  <link href="assets/Bootstrap/css/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/stats.css">
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/other.css" rel="stylesheet">


  <link rel="icon" href="">
</head>

<body>

  <section>
    <div class="header3">
      <div class="ocean">
      </div>
      <div class="container">
        <div class="col">
          <div class="text-container">
            <h1 class="titre4">Les techniques globales pour favoriser la production agricole</h1>
            <p class="p-large">Osez l'innovation pour favoriser votre productivité</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ******************************************************************************************************************************************************* -->

  <div class="container fiel">
    <div class="text-container titre2">
      <h1 class="h1">Fondement de l'agriculture intelligente face au climat</h1>
      <p class="p-large">(Agriculture Intelligente face au Climat)</p>
    </div>
    <?php foreach ($tech as $item) : ?>
      <div class="text-container titre2">
        <h2 class="h1"><?= $item['nom_agri_glo'] ?> </h2>
      </div>
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <?php $tech3 = $requete->getTechniqueGlo1($item['id_agri_glo']); ?>
        <?php foreach ($tech3 as $item3) : ?>
          <div class="col">
            <div class="card clir">
              <img src="assets/image/techniqueGlo/<?= $item3['id_technique_glo'] ?>/1.jpg" class="card-img-top tete" alt="..." />
              <div class="card-body">
                <h5 class="card-title"><?= $item3['nom_technique_glo']; ?></h5>
                <p class="card-text">
                  <?= $item3['descri_technique_glo'] ?>
                </p>
              </div>
            </div>
          </div>

        <?php endforeach; ?>

      </div>
      <?php $pilier = $requete->getPilier($item['id_agri_glo']); ?>
      <?php foreach ($pilier as $item5) : ?>
        <div class="pilier">
          <div class=" container jumbotron bg-dark pilfont">
            <h1 class="display-4">Pilier:</h1>
            <p class="lead"><strong>Productivité : </strong> <?= $item5['productivite'] ?></p>
            <p class="lead"><strong>Adaptation : </strong> <?= $item5['adaptation'] ?></p>
            <p class="lead"><strong>Mitigation : </strong> <?= $item5['mitigation'] ?></p>
            </p>
          </div>
        <?php endforeach; ?>

        </div>

  </div>
<?php endforeach; ?>
<div class="parallax3">
  <div class="arrondi3"></div>
</div>

<!-- ******************************************************************************************************************************************************* -->
<div class="container tech">
  <div class="text-container titre2">
    <h1 class="h1">Adoption d'une approche paysagère</h1>
    <p class="p-large">(Agriculture Intelligente face au Climat)</p>
  </div>
  <?php foreach ($tech2 as $item2) : ?>
    <div class="text-container titre2">
      <h2 class="h1"><?= $item2['nom_agri_glo'] ?></h2>
    </div>
    <div class="row">
      <?php $tech4 = $requete->getTechniqueGlo2($item2['id_agri_glo']); ?>
      <?php foreach ($tech4 as $item4) : ?>
        <div class="col">
          <div class="card clir">

            <img class="card-img-top tete" src="assets/image/techniqueGlo/<?= $item4['id_technique_glo'] ?>/1.jpg" />
            <div class="card-body">
              <h5 class="card-title"><?= $item4['nom_technique_glo'] ?></h5>
              <p class="card-text">
                <?= $item4['descri_technique_glo'] ?>
              </p>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
    <?php $pilier = $requete->getPilier($item2['id_agri_glo']); ?>
    <?php foreach ($pilier as $item5) : ?>
      <div class="pilier">
        <div class=" container jumbotron">
          <h1 class="display-4">Pilier:</h1>
          <p class="lead"><strong>Productivité : </strong><?= $item5['productivite'] ?></p>
          <p class="lead"><strong>Adaptation : </strong><?= $item5['adaptation'] ?></p>
          <p class="lead"><strong>Mitigation : </strong><?= $item5['mitigation'] ?></p>
          </p>
        </div>
      </div>
    <?php endforeach; ?>
</div>
<?php endforeach; ?>


<div class="parallax1">
  <div class="container news">
  </div>
</div>
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
              <a class="text-white">Tel: +261 34 80 466 42 </a>
            </li>
            <li>
              <a class="text-white">Gmail: nyainasoa.andria@gmail.com </a>
            </li>
            <li>
              <a href="https://www.facebook.com/ainasoa.robdera" class="text-white">Facebook: Ny Ainasoa ANDRIAMAMPITA</a>
            </li>
            <li>
              <a href="https://www.linkedin.com/in/j%C3%A9r%C3%A9mie-andrianaivo-146108210/" class="text-white">Linkedin: Jérémie ANDRIANAIVO</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2021 Copyright :
      <a class="text-white" href="">DARAJ</a>
    </div>
  </footer>
</section>



</body>

</html>
