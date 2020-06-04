<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="/Site_DropShipping/index.php">Accueil</a>
  <a href="/Site_DropShipping/pages/Articles.php?typeArticle=Casquette">Casquette</a>
  <a href="/Site_DropShipping/pages/Articles.php?typeArticle=Survetement">Survêtement</a>
  <a href="/Site_DropShipping/pages/Articles.php?typeArticle=Banane">Banane</a>
  <a href="/Site_DropShipping/pages/Articles.php?typeArticle=Basket">Basket</a>
  <?php if(!$_SESSION["LoggedIn"])
  {
      echo "<a href=\"/Site_DropShipping/pages/Login.php\">Login</a>";
  }
  ?>

</div>