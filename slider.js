//var Slider.prototype
(function($) {

    var Slider = function(container, options) {
        $.extend(this.settings, options);
        var that = this;
        $(container).each(function() {
            that.addHandlers($(this), options);
        });
    };

    Slider.prototype.settings = {
        duration: 300,
        nav: {
            selector: ".arrow",
            left: "left",
            right: "right"
        },
        slidesContainer: ".slides"
    };

    Slider.prototype.addHandlers = function($container) {
        $container.find(this.settings.nav.selector).click({that: this}, this.slide);
    };

    Slider.prototype.slide = function(event) {
        var that = event.data.that;
        var moveLeft = $(this).hasClass(that.settings.nav.left);

        var $slides = $(that.settings.slidesContainer).children();
        if (moveLeft) {
            $slides = $($slides.get().reverse());
        }

        $slides.each(function(index, child) {
            if (index == $slides.length - 1) {
                $(child).animate($slides.first().position(), that.settings.duration);
            } else {
                $(child).animate($slides.eq(index + 1).position(), that.settings.duration);
            }
        });
//        slides.children().first().appendTo(slides);
    };

//console.log(typeof foo.addHandlers);
    $.fn.slider = function(options) {
        new Slider(this, options)
    };
}(jQuery));