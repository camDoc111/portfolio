/**
 * Created by doche on 6/14/2017.
 */


// index.jsp line 134
// When user clicks section link to portfolio, this
// toggles the portfolio references anchor tag for added UX.
document.getElementById("refLink").onclick = function(){

        document.getElementById("refFilter").click();

    };


// index.jsp section works
// Customizes jQuery fancybox so I can do things
// like add buttons, a gallery of images, and AJAX to
// servlets for added features.
$(document).ready(function ()
{
    $(".fancybox").fancybox(
    {
        beforeLoad: function()
        {
            var id = $(this.element).data('title-id');
            var text;

            if(id)
            {
                text = $('#' + id);

                if(text.length)
                {
                    this.title = text.html();
                }
            }
        },
        helpers:
        {
            title:
            {
                type: "inside",
                position: 'bottom'
            }
        },
        nextEffect: 'fade',
        prevEffect: 'fade'
    });
});
// after helpers
//

//.attr('rel', 'gallery') // optional if you already have rel in your html