$(".dt_date").click(function(e) {
    var text = $("h4", this).text();
    var text2 = $("h3", this).text();
    var dateText = text2 + ", " + text;
    console.log(dateText);
    $("#date_inserted").text(dateText);

    $(".dt_date").removeClass("selected")
    $(this).addClass("selected")
});

$(".mp-delivery_time_clicked").click(function(e) {
    var text = $("h4", this).text();
    Cookies.set('time', text);
    console.log(text);

    $("#time_inserted").text(text);

    $(".mp-delivery_time_clicked").removeClass("selected")
    $(this).addClass("selected")
});