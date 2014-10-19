$(document).ready(function () {

    function changePositionLeft() {

        var slides = $('.slides');

        slides.children().each( function(index, child) {
            if (index == 0) {
                $(child).animate(slides.children().last().position());
            }
            else {
                $(child).animate(slides.children().eq(index - 1).position());
            }
        });

        slides.children().first().appendTo(slides);
    }

    $(".arrow.left").click(function() {
        changePositionLeft();
    });
});