<!DOCTYPE html>
<html>
    <style>
        #baliseImgArticle{
            border: 1px solid black;
            width: 30%;
            height: 30vh;
            margin-top: 5%;
            margin-left: 5%;
            float : left;
        }
        #ulArguments{
            float : left;
            height: 30vh;
            margin-top: 5%;
            margin-left: 15%;
        }
        .liArguments{
            height: 10vh;
            color: #990000;
            font-size: 300%;
        }
        #description{
            margin-top: 5%;
            margin-left: 5%;
            width: 90%;
            height: 20vh;
            border: 1px solid black;
            float: left;
        }
        #contCouleur{
            width: 50%;
            height: 5vh;
            float: left;
            margin-top: 5%;
            margin-left: 25%;
            text-align: center;

        }
        #contTaille{
            width: 100%;
            height: 5vh;
            float: left;
            margin-top: 2%;
            text-align: center;
        }
        #btnCommander{
            border: none;
            padding: 15px 32px;
            width: 25%;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            color: white;
            background-color: #990000;
            font-size: 150%;
            cursor: pointer;
            float: left;

            border: 2px solid black;
            border-radius: 10px;
            text-align: center;
            margin-left: 38.5%;
            margin-top: 2%;
        }
        


    </style>
    <head>
        <meta charset="UTF-8">
        <title>Page Article</title>
        <link href="../CSS/Style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header>
          
        <?php require_once '../Pages/header.inc.php';?>
        </header>
        
        <div id="ligneRouge">.</div>
        <div id="baliseImgArticle"></div>
        
        <ul id="ulArguments">
            <li class="liArguments">• Confortable</li>
            <li class="liArguments">• Résistant</li>
            <li class="liArguments">• Stylés</li>
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
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>



    </body>
</html>
<script src="../JS/Script.js"></script>
