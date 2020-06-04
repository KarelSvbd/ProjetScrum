<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="/Site_DropShipping/index.php">Accueil</a>
  <a href="/Site_DropShipping/Pages/PagesArticles/casquette.php">Casquette</a>
  <a href="/Site_DropShipping/Pages/PagesArticles/survetement.php">Survêtement</a>
  <a href="/Site_DropShipping/Pages/PagesArticles/banane.php">Banane</a>
  <a href="/Site_DropShipping/Pages/PagesArticles/basket.php">Basket</a>
  <?php if(!$_SESSION["LoggedIn"])
  {
      echo "<a href=\"/Site_DropShipping/pages/Login.php\">Login</a>";
  }
  ?>

</div>