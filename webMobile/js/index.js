$(function() {
    // top-nav
    $(window).scroll(function() {
        var topValue = $(document).scrollTop();
        if (topValue >= 210) {
            $('.top-nav-two').css('display', 'flex');
        } else {
            $('.top-nav-two').css('display', 'none');
        };
    });
    // /top-nav 

    // banner
    var $ul = $('.wrap ul');
    var $li = $('.wrap ul li');
    var $span = $('.wrap div span');
    var index = 1;
    var spanIndex = 0;
    var timear;
    var startX,
        startY,
        endY,
        endX,
        moveX;
    timears();
    // 先自动动起来
    function timears() {
        timear = setInterval(function() {
            index++;
            IF();
            spanAuto();
            transitionAuto();
        }, 2100);
    }

    $ul.on('touchstart', function(e) {
        // and手指放上去后 定时器 关闭 
        clearInterval(timear);
        startX = e.targetTouches[0].pageX;
        startY = e.targetTouches[0].pageY;
    });

    $ul.on('touchmove', function(e) {
        // and手指左右拖动移动图片，超过 100px 翻业 不然 回去
        e.preventDefault();
        moveX = startX - e.originalEvent.changedTouches[0].pageX;
        var newX = $li.width() * index + moveX;
        $ul.css({
            transition: 'none',
            'transform': 'translateX(-' + newX + 'px)',
        });
    });

    $ul.on('touchend', function(e) {
        // and手指放上去后 定时器 关闭 
        endX = e.originalEvent.changedTouches[0].pageX;
        endY = e.originalEvent.changedTouches[0].pageY;
        // and手指左右拖动移动图片，超过 100px 翻业 不然 回去
        if (Math.abs(moveX) >= 100) {
            if (moveX > 0) {
                // 下一张
                index++;
            } else {
                // 上一张
                index--;
            }
        }
        IF();
        auto();
        spanAuto();
        timears();
    });

    function IF() {
        if (index === 5) {
            spanIndex = 1;
            spanAuto();
        } else if (index <= 0) {
            spanIndex = $li.length - 2;
            spanAuto();
            index = spanIndex;
        }
        if (index === 6) {
            spanIndex = 2;
            index = 1;
            auto();
            index++;
            transitionAuto();
            spanAuto();
        }
        spanIndex = index;
    }

    function transitionAuto() {
        // 带有过渡的移动
        $ul.css({
            transition: 'all .2s',
            'transform': 'translateX(-' + $li.width() * index + 'px)'
        });
    };

    function auto() {
        // 没有带过渡的移动
        $ul.css({
            transition: 'none',
            'transform': 'translateX(-' + $li.width() * index + 'px)'
        });
    }

    function spanAuto() {
        // and小圆点跟着一起动,实在没办法不能用 index 只好用 spanIndex
        $span.eq(spanIndex - 1).addClass('filling').siblings().removeClass('filling');

    }
    // /banner
})