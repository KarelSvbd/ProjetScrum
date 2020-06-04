<?php session_start();?>
<!DOCTYPE html>
<html>
  
     
    <head>
        <meta charset="UTF-8">
        <title>Page Article</title>
        <link href="../CSS/Style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header>
          
        <?php require_once './header.inc.php';?>
        </header>
        
        <div id="ligneRouge">.</div>
        <div id="baliseImgArticle"></div>
        
        <ul id="ulArguments">
            <li class="liArguments">• Confortable</li>
            <li class="liArguments">• Résistant</li>
            <li class="liArguments">• Stylé</li>
        </ul>

        <div id="description"></div>

        <div id="contCouleur">
            Selectionnez la couleur :
        </div>
        </div>
        <div id="contTaille">
            Selectionnez la taille :
        </div>

        <button id="btnCommander">Commander - Prix</button>

<?php require_once "./Sidebar.inc.php";?>

    </body>
</html>
<script src="/Site_DropShipping/JS/Script.js"></script>
