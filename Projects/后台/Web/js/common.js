/**********CONMON FUNCTION**********/
function $(o){return document.getElementById(o);}
function $$(o,t){return o=(typeof(o)=='object')?o.getElementsByTagName(t):$(o).getElementsByTagName(t);}
function $pre(o,a){/*(a:previousSibling,nextSibling,parentNode)*/
	var o=(typeof(o)=='object')?o[a]:$(o)[a];
	return o.nodeType==1?o:$pre(o,a);
}
function $cld(o){
	var o=(typeof(o)=='object')?o.childNodes:$(o).childNodes,c=[];
	for(var i=0,j=o.length;i<j;i++){if(o[i].nodeType==1)c.push(o[i]);}
	return c;
}
function $pos(o){
	var w=o.offsetWidth,h=o.offsetHeight,l=o.offsetLeft,t=o.offsetTop;
	while(o=o.offsetParent){l+=o.offsetLeft;t+=o.offsetTop;}
	t+=h;
	return {w:w,h:h,l:l,t:t}
}
function $crt(o,t){
	t=document.createElement(t);
	return (typeof(o)=='object')?o.appendChild(t):$(o).appendChild(t);
}
function $bws(){
	var B={},BI=navigator.userAgent.toLowerCase(),BN;
	(BN=BI.match(/msie ([\d.]+)/)) ? B.ie=BN[1]:(BN=BI.match(/firefox\/([\d.]+)/)) ? B.firefox=BN[1]:(BN=BI.match(/chrome\/([\d.]+)/)) ? B.chrome=BN[1]:(BN=BI.match(/opera.([\d.]+)/)) ? B.opera=BN[1]:(BN=BI.match(/version\/([\d.]+).*safari/)) ? B.safari=BN[1]:0;
	return {ie:B.ie,firefox:B.firefox,chrome:B.chrome,opera:B.opera,safari:B.safari}
}
function $trim(v){return v.replace(/^\s+|\s+$/g,'');}
/**********MAIN CLASS**********/
var crt=null;
function searchSelectCate(t){
	var bd=document.body || document.documentElement,
		ipt=$('cate'),
		data=ipt.getAttribute('data').split('|'),
		pos=$pos(t);
	var style={
		//width:pos['w']+12+'px',
		position:'absolute',
		left:pos['l']-($bws().ie<8 ? 5:6)+'px',
		top:pos['t']+($bws().ie<8 ? 6:5)+'px'
	},html='';
	if(!crt){crt=$crt(bd,'div');}else{crt.style.display='';return false;}
	html='<div class="headSearchSelectBox"><ul>';
	for(var i=0,j=data.length;i<j;i++){
		d=data[i].split('-----');
		if(d[1]){
			html+='<li onclick="javascript:urlJump(\''+$trim(d[1])+'\',\''+$trim(d[0])+'\');">'+$trim(d[1])+'</li>';
		}else{
			html+='<li>'+$trim(d[0])+'</li>';
		}
		
	}
	html+='</ul></div>';
	crt.innerHTML=html;
	for(var i in style){crt.style[i]=style[i];}
	bd.onclick=function(){crt.style.display='none';}
}
/*function searchSelectSet(t){
	var ipt=$('cate'),obj=$('select');
	ipt.value=obj.innerHTML=t.innerHTML;
}*/
function urlJump(n,v){
	var ipt=$('cate'),obj=$('select');
	ipt.value=obj.innerHTML=n;
	location.href=v;
}
function setTab(name,current,num){
	for(var i=1;i<=num;i++){
  		var menu=$('menu_'+name+'_'+i);
  		var content=$('content_'+name+'_'+i);
  		menu.className=i==current ? 's':'';
  		content.style.display=i==current ? '':'none';
	}
}
function picZoom(){
	var btn=$$('btn','img'),pic=$$('pic','img')[0],_num=1,_max=700,_min=100,_o=null,_i=null,
		pw=pic.width,ph=pic.height,pb=pw/ph;
	function _out(pw,ph,pd){
		if(_num<100 && pic.width<_max){_num+=5;pic.width=pw+_num;pic.height=pic.width/pd;}
		else{clearInterval(_o);_num=1;}
	}
	function _in(pw,ph,pd){
		if(_num<100 && pic.width>_min){_num+=5;pic.width=pw-_num;pic.height=pic.width/pd;}
		else{clearInterval(_i);_num=1;}
	}
	btn[0].onclick=function(){
		if(_num==1){
			var pw=pic.width,ph=pic.height,pb=pw/ph;
			_o=setInterval(function(){_out(pw,ph,pb);},10);
		}
	}
	btn[1].onclick=function(){
		if(_num==1){
			var pw=pic.width,ph=pic.height,pb=pw/ph;
			_i=setInterval(function(){_in(pw,ph,pb);},10);
		}
	}
	btn[2].onclick=function(){
		pic.width=pw;
		pic.height=ph;
	}
}
function scrollLeftPic(){
	var _s=1,_l=null,_r=null;
	var div=$('centerCon'),leftBtn=$('leftBtn'),rightBtn=$('rightBtn'),ul=$$(div,'ul')[0];
	ul.innerHTML+=ul.innerHTML;
	var lis=$$(ul,'li'),lisLen=lis.length,liWid=lis[0].offsetWidth;
	var ulWid=lisLen*liWid;
	ul.style.width=ulWid+'px';
	function left(divSL){
		if(divSL==ulWid/2){
			divSL=0;
			if(div.scrollLeft==ulWid/2){div.scrollLeft=divSL;}
		}
		if(_s<liWid){_s=Math.ceil(_s*1.05);div.scrollLeft=divSL+_s;}
		else{clearInterval(_l);div.scrollLeft=divSL+liWid;_s=1;}
	}
	function right(divSL){
		if(divSL==0){
			divSL=ulWid/2;
			if(div.scrollLeft==0){div.scrollLeft=divSL;}
		}
		if(_s<liWid){_s=Math.ceil(_s*1.05);div.scrollLeft=divSL-_s;}
		else{clearInterval(_r);div.scrollLeft=divSL-liWid;_s=1;}
	}
	function _left(){
		if(_s==1){var divSL=div.scrollLeft;_l=setInterval(function(){left(divSL);},10);}
		else{return false;}
	}
	function _right(){
		if(_s==1){var divSL=div.scrollLeft;_r=setInterval(function(){right(divSL);},10);}
		else{return false;}
	}
	leftBtn.onclick=_left;
	rightBtn.onclick=_right;
}
function setLeftCon(t){
	$('centerConDetail').innerHTML=t.innerHTML;
}
function scrollTopPic(){
	var _s=1,_l=null,_r=null;
	var div=$('middleCon'),topBtn=$('topBtn'),bottomBtn=$('bottomBtn'),ul=$$(div,'ul')[0];
	ul.innerHTML+=ul.innerHTML;
	var lis=$$(ul,'li'),lisLen=lis.length,liWid=lis[0].offsetHeight;
	var ulWid=lisLen*liWid;
	ul.style.height=ulWid+'px';
	function left(divSL){
		if(divSL==ulWid/2){
			divSL=0;
			if(div.scrollTop==ulWid/2){div.scrollTop=divSL;}
		}
		if(_s<liWid){_s=Math.ceil(_s*1.05);div.scrollTop=divSL+_s;}
		else{clearInterval(_l);div.scrollTop=divSL+liWid;_s=1;}
	}
	function right(divSL){
		if(divSL==0){
			divSL=ulWid/2;
			if(div.scrollTop==0){div.scrollTop=divSL;}
		}
		if(_s<liWid){_s=Math.ceil(_s*1.05);div.scrollTop=divSL-_s;}
		else{clearInterval(_r);div.scrollTop=divSL-liWid;_s=1;}
	}
	function _left(){
		if(_s==1){var divSL=div.scrollTop;_l=setInterval(function(){left(divSL);},10);}
		else{return false;}
	}
	function _right(){
		if(_s==1){var divSL=div.scrollTop;_r=setInterval(function(){right(divSL);},10);}
		else{return false;}
	}
	topBtn.onclick=_left;
	bottomBtn.onclick=_right;
}
function setTopCon(t){
	$('middleConDetail').innerHTML=t.innerHTML;
}
function sendMailTo(name,company,cn){
	this.name=name || 'sales';
	this.company=company || 'zongyi';
	this.cn=cn || 'cn';
	location.replace('mailto:'+this.name+'@'+this.company+'.'+this.cn);
}