$(document).ready(function(){
  $(".when-deliv").text("доступно в " + (d.getHours()+2) + " часов");

});
var d = new Date();
console.log(d.getHours()+2);

