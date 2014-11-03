/**
 * Base js functions
 */

$(document).ready(function(){
    //Init jQuery Masonry layout
    init_masonry();
});


function init_masonry(){
    var $container = $('#content');

    var gutter = 20;
    var min_width = 278;
    $container.imagesLoaded( function(){
        $container.masonry({
            itemSelector : '.box',
            gutterWidth: gutter,
            isAnimated: true,
              columnWidth: function( containerWidth ) {
                var num_of_boxes = (containerWidth/min_width | 0);

                var box_width = (((containerWidth - (num_of_boxes-1)*gutter)/num_of_boxes) | 0) ;

                if (containerWidth < min_width) {
                    box_width = containerWidth;
                }

                $('.box').width(box_width);

                return box_width;
              }
        });
    });
}
