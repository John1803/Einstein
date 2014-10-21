$(document).ready(function () {

    $(".arrow.left").click(function() {
        changePositionLeft();
    });

    $(".arrow.right").click(function() {
        changePositionRight();
    });
    
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
    function changePositionRight() {

        var slides = $('.slides');

        slides.children().each( function(index, child) {
            if (index == 5) {
                $(child).animate(slides.children().first().position());
            }
            else {
                $(child).animate(slides.children().eq(index + 1).position());
            }
        });

        slides.children().last().prependTo(slides);
    }

});
