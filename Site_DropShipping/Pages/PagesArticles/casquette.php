<?php session_start();?>
<!DOCTYPE html>
<html>
  
     
    <head>
        <meta charset="UTF-8">
        <title>Page Article</title>
        <link href="/Site_DropShipping/CSS/Style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header>
          
        <?php require_once '../header.inc.php';?>
        </header>
        
        <div id="ligneRouge">.</div>
        <div id="baliseImgArticle"><img src="/Site_DropShipping/Ressources/Casquette.jpg" width="70%"></div>
        
        <ul id="ulArguments">
            <li class="liArguments">• Confortable</li>
            <li class="liArguments">• Résistant</li>
            <li class="liArguments">• Stylé</li>
        </ul>

        <div id="description">Nos produits possèdent la meilleure finission sur le marché. Grâce à nos tests, on a pu déterminer la résistance de nos produits et leurs nombreuses qualités. Si vous comptez avoir un minimum de "street-cred" notre site est une référence à ne surtout pas louper.</div>
        <button id="btnCommander">Commander - 12,99 CHF</button>

<?php require_once "../Sidebar.inc.php";?>

    </body>
</html>
<script src="/Site_DropShipping/JS/Script.js"></script>
