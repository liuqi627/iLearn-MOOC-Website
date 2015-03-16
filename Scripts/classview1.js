
$(document).ready(function () {
        $(".content").each(function (i) {
            $(".content").mouseover(function () {
                $(this).children(".image").css("display", "none");
            })
            $(".content").mouseout(function () {
                $(this).children(".image").show("slow");
            });
        });
    });