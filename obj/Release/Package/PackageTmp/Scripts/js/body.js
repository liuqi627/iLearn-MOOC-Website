
jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	swing: function (x, t, b, c, d) {
		//alert(jQuery.easing.default);
		return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
	},
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});


function searchbox()
{
		$("#search_box").hover(	
	
	function()
	{
		
		$(this).css("border","1px solid #999");
		
	}
	,function()
	{
		
		$(this).css("border","1px solid #c6d1ad");
		
	}).click(function()
	{
		$(this).css("border","1px solid #4d90fe");
		ifFocus =true;
		
	}).focusout(function(e) {
        ifFocus = false;
		$(this).css("border","1px solid #c6d1ad");
    });
}

function handleSearch()
{
    
  
        var query = $(".search_box").val();
        var thisurl = window.location.host;

        thisurl ="http://"+ thisurl + "/Search.aspx?s=" + query;
        location.href = thisurl;
  
    
}
var changeLeftRight = false;
var ifFocus = false;




$(document).ready(function (e) {
   
	changeLeftRight = true;
	ifSearchBoxChange = false;
	$(".control_item").mouseover(
        function () {
            $(this).find(".control_image").stop().animate({ top: "-167px" }, 200);
            $(this).find(".control_short").stop().animate({ top: "-167px" }, 200);
        }


        ).mouseout(

         function () {
             $(this).find(".control_image").stop().animate({ top: "0px" }, 200);
             $(this).find(".control_short").stop().animate({ top :"0px" }, 200);
         }
        );
	
	//var ifEnter = false;
	searchbox();
	$("#search_button").click(function (e) {

	    // ifEnter = true;
	    if (!ifSearchBoxChange)
	        ifFocus = true;
	       handleSearch();
	    
    });
	$(document).keydown(function(e) {
        if(e.which===13)
		{
			
		    
			handleSearch();
		}
    });
	$(".dropdown-toggle").click(function(){
	    $(".dropdown-menu").show();

	});
	$(document).click(
        function (e) {
            if (e.target != $(".dropdown-toggle")[0]) {
                $(".dropdown-menu").hide();
            }
        }
        );
	$(".dropdown-menu li").mouseover(
        function () {
            $(this).css("background", "#0081C2").addClass("Test");
            $(".Test a").css("color", "white");
        }
        ).mouseout(

         function () {

             $(".Test a").css("color", "black");
             $(this).css("background", "white").removeClass("Test");
         }
        );
	


});



var color_num = 0;
var color_group = ["#1570A6", "#E23300", "#442359"];
var slogan_group = ["100万居民已在此扎根","自主 · 选择 · 学习","学习是一种信仰"]

function BeforeChangeBox() {

    $("#slider").children().each(
        function () {
            if (!($(this).hasClass("unable"))) {
                $(this).animate({ opacity: 0 }, 500, function () {
                    $(this).addClass("unable");
                    $(this).next().removeClass("unable").animate(
                        { opacity: 1 }, 500
                        );
                    var flag = true;
                    $("#slider").children().each(
                        function () {
                            if (!($(this).hasClass("unable"))) {
                                flag = false;
                            }

                        }
                        );
                    if (flag) {
                        $("#slider").children().first().removeClass("unable").animate(
                        { opacity: 1 }, 500
                        );

                    }

                });


            }
        }

        );


    $(".info_box").hide();


    $(".info_box").css({ left: "100px", background: color_group[color_num], opacity: 0 }).show().html(slogan_group[color_num]);

    $(".info_box").animate({ left: "70px", opacity: 1 }, 1000);
    color_num++;
    color_num %= 3;

}
$(document).ready(function () {
    $(".info_box").hide();


    $(".info_box").css({ left: "100px", background: color_group[color_num], opacity: 0 }).show().html(slogan_group[color_num]);

    $(".info_box").animate({ left: "70px", opacity: 1 }, 1000);
    color_num++;
    color_num %= 3;
    setInterval("BeforeChangeBox()", 6000);



    ///处理异步评论添加
    $("#content_add_button").click(
        function () {
           var urlQuery = window.location.search;
           var  urlString="";
           var textString = $(".content_textbox").val();
           urlString="ContentHandle.ashx"+urlQuery+"&text="+textString;
           var curtime = window.Date;
            $.ajax(
                {
                    type: "post",
                    url: urlString,
                    success: function (data) {
                        $(".content_textbox").val("");
                        $("#content_table").append("<tr><td><p>评论发表时间："+curtime+"</p><p>"+textString+"</p><p>发表人：</p></td></tr>")
                    }
                }


                );
        }

        );
})
