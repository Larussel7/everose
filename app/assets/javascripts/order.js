$(document).ready(function(){
    var title = $(document).find("title").text();
    console.log(title);

    switch (title) {
        case 'Доставка || OtpravBuket':
            break;
        case 'Дата и Время || OtpravBuket':
            $('#delivery_header_link').removeClass('checkout-active');
            $('#delivery_header_link').addClass('link-disabled');
            $('#date_header_link').addClass('checkout-active');
            break;
        case 'mootools':
            alert('mootools Wins!');
            break;
        case 'dojo':
            alert('dojo Wins!');
            break;
        default:
            alert('Nobody Wins!');
    }

});