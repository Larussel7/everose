//var inputCity = document.getElementById('input_city');
//inputCity.setAttribute('value', 'Челябинск');

$(document).ready(function(){
    $("#input_city").attr("value", "Челябинск");


    $('.your-class').slick({
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 5,
        slidesToScroll: 5,
        responsive: [
            {
                breakpoint: 1700,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4,
                    infinite: true,
                    dots: false
                }
            },
            {
                breakpoint: 1350,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: false
                }
            },
            {
                breakpoint: 980,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            }

        ]
    });
});

$( "#input_city" ).click(function() {
    alert( "Handler for .click() called." );
});

$("#delivery-select-time").click(function() {
    var isVisible = $(".delivery-time-section").is(":visible");
    if (isVisible){
        $(".delivery-time-section").slideUp();
    } else {
        $(".delivery-time-section").slideDown();
    }
});

$("#delivery-select-loc").click(function() {
    var isVisible = $(".delivery-location-section").is(":visible");
    if (isVisible){
        $(".delivery-location-section").slideUp();
    } else {
        $(".delivery-location-section").slideDown();
    }

});

$(".dtbox").click(function() {
    var text = $("h4", this).text();
    console.log(text);
    $("#delivery-select-time .sub-four").text(text);
    $(".delivery-time-section").slideUp();
});


$("#gate-when-wrap").click(function() {
    var isVisible = $(".gate-location-selector_hero-header").is(":visible");

    if (isVisible){
        $(".gate-location-selector_hero-header").slideUp();
    } else {
        $(".gate-location-selector_hero-header").slideDown();
    }
});

$(".gate-location-selector-item").click(function(e) {
    var text = $(e.target).text();
    $("#gate-when-wrap .header_result").text(text);
    $(".gate-location-selector_hero-header").slideUp();
});

// continue shopping button from cart
$("#keep-on-bloomin").click(function() {
    window.location.href = "/store";
});

// ajax for checkout test
/*$(function (){
    $.ajax({
        type: 'GET',
        url: '/line_items/5.json',
        success: function(data) {
            console.log('success', data);
        }
    });
});
*/

