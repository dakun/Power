// JavaScript Document
var menudelay=true;
setTimeout("menudelay=false",500);


function TopMenu(){
		$(".dropmenu p").bind({
			mouseover: function() {
			  //if($(this).children("img").length<1) 
			  $(this).addClass("dropmenuhigh");
			 
			},    
			mouseout: function() {
			  $(this).removeClass("dropmenuhigh");
			}  
		});
		
		$(".dropmenu p").click(function()
		{
			var h=$(this).children("a").attr("href");
			if(h!=" ")	window.location.href=$(this).children("a").attr("href");
			return false;
		});

				
		$("#menu>ul>li").bind('mouseenter',function() 
		{
	
		//if($(this).children("div").length > 0 ) $(this).addClass("menuover");
		//else $(this).addClass("menuoversingle");
		if(menudelay) return false;
		$(this).addClass("cshow");
		
		
		var l=$(this).offset().left-1; 
		var tp=$(this).offset().top + $(this).height() ;
		$(this).children('div').css("left",l);
		$(this).children('div').css("top",tp);
				
		$(this).children('div').slideDown('normal');
		}).bind('mouseleave',function() // 顶级菜单项的鼠标移出操作
		{
		$(this).children('div').stop(true,true).slideUp('fast');
		$(this).removeClass("cshow");
		//$(this).removeClass("menuoversingle");
		});
		
		 $("#menu>ul>li").bind('click',function() {
		var s=$(this).children("a").attr("href");
		if(s!=" ")	window.location.href=$(this).children("a").attr("href");
		}); 
		
		var str = window.location.href; 
		var stra;
		str=str.substring(str.lastIndexOf("/") + 1) ;
		str=str.substring(0,str.lastIndexOf(".") ) ;
		str=str.toLowerCase();
		stra=str.split("_");
		var opagecount={index:0,company:1,products:2, supports:3, contact:4 };
		var hip=opagecount[stra[0]];
		//$("#menu>ul>li").eq(hip).addClass("cshow");
		
		$("#header .rt").children("a").eq(1).bind('click',function()
		{
		//var ul=$(this).attr("href");
		var strul = window.location.href; 
		strul=strul.substring(strul.lastIndexOf("/") + 1) ;
		var goul="";
		var sitecode=$(this).text();
		sitecode=$.trim(sitecode);
		if(sitecode=="Chinese") 
		{
			goul = "cn/"+ strul;
			if(strul=="Supports_MSDS.html") goul="cn/Supports_Index.html";
		}
		else 
		{
			goul ="../" + strul;
			if(goul=="../Supports_FAQ.html") goul="../Supports_Index.html";
		}
		window.location.href=goul;
		//alert(strul);
		return false;
		
		
		});
		
}

function TechMenu(n)
{
	var techmenutxt=$("#techmenu>ul>li").eq(n).text();
	$("#techmenu>ul>li").eq(n).html(techmenutxt);
	$("#techmenu>ul>li").eq(n).addClass("highlightme");
}