/**
 * Created by Administrator on 2017/6/16.
 */

function carouselNest() {
    $("#myCarousel").carousel("next");
}

setInterval(carouselNest,5000);