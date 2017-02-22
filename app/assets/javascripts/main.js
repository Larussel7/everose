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



$("#delivery-select-time").click(function() {
    var isVisible = $(".delivery-time-section").is(":visible");
    if (isVisible){
        $(".delivery-time-section").slideUp();
    } else {
        $(".delivery-time-section").slideDown();
        if ($(".delivery-location-section").is(":visible")){
            $(".delivery-location-section").slideUp();
        }
    }
});

$("#delivery-select-loc").click(function() {
    var isVisible = $(".delivery-location-section").is(":visible");
    if (isVisible){
        $(".delivery-location-section").slideUp();
    } else {
        $(".delivery-location-section").slideDown();
        if ($(".delivery-time-section").is(":visible")){
            $(".delivery-time-section").slideUp();
        }
    }

});

$("#location-search-submit").click(function() {
    $(".delivery-location-section").slideUp();
});





$(".dtbox").click(function() {
    var text = $("h4", this).text();
    var text2 = $("h3", this).text();
    Cookies.set('date', text2);
    console.log(text);
    $("#delivery-select-time .sub-four").text(text);
    $(".delivery-time-section").slideUp();
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
