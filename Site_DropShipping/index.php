<?php session_start();

if(!isset($_SESSION["LoggedIn"]))
{
$_SESSION["LoggedIn"] = false;
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Accueil</title>
        <link href="./CSS/Style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header>
          
        <?php require_once './pages/header.inc.php';?>
        </header>
         <div id="ligneRouge">.</div>
        <h3>Nouvelle collection</h3>

 <ul id="newCollection">
        <li class="articleDefille"><img src="./Ressources/Banane.jpg" alt="Banane"></li>
        <li class="articleDefille"><img src="./Ressources/BasketFemme.jpg" alt="Basket Femme"></li>
        <li class="articleDefille"><img src="./Ressources/BasketHomme.jpg" alt="Basket Homme"></li>
        <li class="articleDefille"><img src="./Ressources/Casquette.jpg" alt="Casquette"></li>
</ul>
        <h3>Notre Bestseller</h3>

        <div class="articleBestseller"></div>  

        <ul id="Bestseller">   
           <table>
               <tr>
                   <td>  <li><img src="./Ressources/SurvetHomme.jpg" alt=""Survêtement Homme></li></td>
                   <td> <li class="liBestseller"><p>Produits de qualités (certifié par nos tests)</p></li>
            <li class="liBestseller"><p>Produits défiant peu concurance</p></li></td>
</tr>
</table>
          
           
        </ul>



        
<?php require_once './pages/Sidebar.inc.php';?>
    </body>
</html>
<script src="./JS/Script.js"></script>
