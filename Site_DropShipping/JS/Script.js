var article;
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

function commandeBasket(){
  window.location.href = '/Site_DropShipping/Pages/pagePayement.php';
  article = "basket";

}
function commandeSurvet(){
  window.location.href = '/Site_DropShipping/Pages/pagePayement.php';
  article = "survet";
}
function commandeCasquette(){
  window.location.href = '/Site_DropShipping/Pages/pagePayement.php';
  article = "pages";
}
function commandeBanane(){
  window.location.href = '/Site_DropShipping/Pages/pagePayement.php';
  article = "banane";
}