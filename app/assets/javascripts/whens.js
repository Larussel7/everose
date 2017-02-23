$(".dtbox").click(function(e) {
    var text = $("h4", this).text();
    var text2 = $("h3", this).text();
    var dateText = text2 + ", " + text;

    console.log(dateText);

    $("#date_inserted").text(dateText);

    $(this).addClass("selected")
});