$(document).ready(function() {
  var location = window.location.pathname;        
   $("nav [href]").each(function() {
    if (this.href == location) {
    $(this).addClass("active");
}  