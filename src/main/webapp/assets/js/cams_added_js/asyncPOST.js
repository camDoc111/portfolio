/**
 * Created by doche on 6/12/2017.
 */

$(document).on("submit", "#contactMe", function(event){

    var $form = $(this);
    var servResp = true;

    $.post($form.attr("action"), $form.serialize(), function (data, status)
    {
        if (status === 'success')
        {
            servResp = true;
        }
        else
        {
            servResp = false;
        }
    });
    // Prevents non-ajax submit.
    event.preventDefault();

    /*
        Feedback
    =============================== */

    var comStr = '';

    if(servResp)
    {
        comStr = 'Email sent successfully!'
    }
    else
    {
        comStr = 'Email failed to send!';
    }

    $("#feedback").html(comStr);
});
