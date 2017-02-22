$(document).ready(function(){
  $(".when-deliv").text("доступно в " + (d.getHours()+2) + " часов");

});
var d = new Date();
console.log(d.getHours()+2);

// Pick date from store/buket and store/index
$("#gate-when-wrap").click(function() {
    var isVisible = $(".gate-location-selector_hero-header").is(":visible");

    if (isVisible){
        $(".gate-location-selector_hero-header").slideUp();
    } else {
        $(".gate-location-selector_hero-header").slideDown();
    }
});

// Pick city
// $("#gate-city-wrap").click(function() {
//     var isVisible = $(".secret-surprise").is(":visible");
//
//     if (isVisible){
//         $(".secret-surprise").hide();
//     } else {
//         $(".secret-surprise").show();
//     }
// });




$(".gate-location-selector-item").click(function(e) {
    var text = $(e.target).text();
    Cookies.set('time', text);
    console.log(text);
    $("#gate-when-wrap .header_result").text(text);
    $(".gate-location-selector_hero-header").slideUp();
});


// Adding loading gif to button
$("#add-submit").click(function() {
    $('#add-submit').addClass( "loading_img" );
});