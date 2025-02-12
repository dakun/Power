/*
jqueryLib.js
Copyright (c) 2011, Eoim Studio.
Author：SteveTinne(tinghe2006@gmail.com)
*/

/*!
 * jQuery Tools v1.2.6 - The missing UI library for the Web
 * 
 * 
 * NO COPYRIGHTS OR LICENSES. DO WHAT YOU LIKE.
 * 
 * http://flowplayer.org/tools/
 * 
 */
(function(a,b){function g(a,b){return(new Date(a,b+1,0)).getDate()}function h(a,b){a=""+a,b=b||2;while(a.length<b)a="0"+a;return a}function k(a,b,c){var d=a.getDate(),e=a.getDay(),g=a.getMonth(),k=a.getFullYear(),l={d:d,dd:h(d),ddd:f[c].shortDays[e],dddd:f[c].days[e],m:g+1,mm:h(g+1),mmm:f[c].shortMonths[g],mmmm:f[c].months[g],yy:String(k).slice(2),yyyy:k},m=b.replace(i,function(a){return a in l?l[a]:a.slice(1,a.length-1)});return j.html(m).html()}function l(a){return parseInt(a,10)}function m(a,b){return a.getFullYear()===b.getFullYear()&&a.getMonth()==b.getMonth()&&a.getDate()==b.getDate()}function n(a){if(a===b)return;if(a.constructor==Date)return a;if(typeof a=="string"){var c=a.split("-");if(c.length==3)return new Date(l(c[0]),l(c[1])-1,l(c[2]));if(!/^-?\d+$/.test(a))return;a=l(a)}var d=new Date;return d.setDate(d.getDate()+a),d}function o(d,h){function M(b,c,e){z=b,w=b.getFullYear(),x=b.getMonth(),y=b.getDate(),e=e||a.Event("api"),e.type="beforeChange",G.trigger(e,[b]);if(e.isDefaultPrevented())return;d.val(k(b,c.format,c.lang)),e.type="change",G.trigger(e),d.data("date",b),i.hide(e)}function N(b){b.type="onShow",G.trigger(b),a(document).bind("keydown.d",function(b){if(b.ctrlKey)return!0;var c=b.keyCode;if(c==8)return d.val(""),i.hide(b);if(c==27||c==9)return i.hide(b);if(a(e).index(c)>=0){if(!C)return i.show(b),b.preventDefault();var f=a("#"+p.weeks+" a"),g=a("."+p.focus),h=f.index(g);g.removeClass(p.focus);if(c==74||c==40)h+=7;else if(c==75||c==38)h-=7;else if(c==76||c==39)h+=1;else if(c==72||c==37)h-=1;return h>41?(i.addMonth(),g=a("#"+p.weeks+" a:eq("+(h-42)+")")):h<0?(i.addMonth(-1),g=a("#"+p.weeks+" a:eq("+(h+42)+")")):g=f.eq(h),g.addClass(p.focus),b.preventDefault()}return c==34?i.addMonth():c==33?i.addMonth(-1):c==36?i.today():(c==13&&(a(b.target).is("select")||a("."+p.focus).click()),a([16,17,18,9]).index(c)>=0)}),a(document).bind("click.d",function(b){var c=b.target;!a(c).parents("#"+p.root).length&&c!=d[0]&&(!t||c!=t[0])&&i.hide(b)})}var i=this,j=new Date,o=j.getFullYear(),p=h.css,q=f[h.lang],r=a("#"+p.root),s=r.find("#"+p.title),t,u,v,w,x,y,z=d.attr("data-value")||h.value||d.val(),A=d.attr("min")||h.min,B=d.attr("max")||h.max,C,D;A===0&&(A="0"),z=n(z)||j,A=n(A||new Date(o+h.yearRange[0],1,1)),B=n(B||new Date(o+h.yearRange[1]+1,1,-1));if(!q)throw"Dateinput: invalid language: "+h.lang;if(d.attr("type")=="date"){var D=d.clone(),E=D.wrap("<div/>").parent().html(),F=a(E.replace(/type/i,"type=text data-orig-type"));h.value&&F.val(h.value),d.replaceWith(F),d=F}d.addClass(p.input);var G=d.add(i);if(!r.length){r=a("<div><div><a/><div/><a/></div><div><div/><div/></div></div>").hide().css({position:"absolute"}).attr("id",p.root),r.children().eq(0).attr("id",p.head).end().eq(1).attr("id",p.body).children().eq(0).attr("id",p.days).end().eq(1).attr("id",p.weeks).end().end().end().find("a").eq(0).attr("id",p.prev).end().eq(1).attr("id",p.next),s=r.find("#"+p.head).find("div").attr("id",p.title);if(h.selectors){var H=a("<select/>").attr("id",p.month),I=a("<select/>").attr("id",p.year);s.html(H.add(I))}var J=r.find("#"+p.days);for(var K=0;K<7;K++)J.append(a("<span/>").text(q.shortDays[(K+h.firstDay)%7]));a("body").append(r)}h.trigger&&(t=a("<a/>").attr("href","#").addClass(p.trigger).click(function(a){return h.toggle?i.toggle():i.show(),a.preventDefault()}).insertAfter(d));var L=r.find("#"+p.weeks);I=r.find("#"+p.year),H=r.find("#"+p.month),a.extend(i,{show:function(b){if(d.attr("readonly")||d.attr("disabled")||C)return;b=b||a.Event(),b.type="onBeforeShow",G.trigger(b);if(b.isDefaultPrevented())return;a.each(c,function(){this.hide()}),C=!0,H.unbind("change").change(function(){i.setValue(I.val(),a(this).val())}),I.unbind("change").change(function(){i.setValue(a(this).val(),H.val())}),u=r.find("#"+p.prev).unbind("click").click(function(a){return u.hasClass(p.disabled)||i.addMonth(-1),!1}),v=r.find("#"+p.next).unbind("click").click(function(a){return v.hasClass(p.disabled)||i.addMonth(),!1}),i.setValue(z);var e=d.offset();return/iPad/i.test(navigator.userAgent)&&(e.top-=a(window).scrollTop()),r.css({top:e.top+d.outerHeight({margins:!0})+h.offset[0],left:e.left+h.offset[1]}),h.speed?r.show(h.speed,function(){N(b)}):(r.show(),N(b)),i},setValue:function(c,d,e){var f=l(d)>=-1?new Date(l(c),l(d),l(e==b||isNaN(e)?1:e)):c||z;f<A?f=A:f>B&&(f=B),typeof c=="string"&&(f=n(c)),c=f.getFullYear(),d=f.getMonth(),e=f.getDate(),d==-1?(d=11,c--):d==12&&(d=0,c++);if(!C)return M(f,h),i;x=d,w=c,y=e;var k=new Date(c,d,1-h.firstDay),o=k.getDay(),r=g(c,d),t=g(c,d-1),D;if(h.selectors){H.empty(),a.each(q.months,function(b,d){A<new Date(c,b+1,1)&&B>new Date(c,b,0)&&H.append(a("<option/>").html(d).attr("value",b))}),I.empty();var E=j.getFullYear();for(var F=E+h.yearRange[0];F<E+h.yearRange[1];F++)A<new Date(F+1,0,1)&&B>new Date(F,0,0)&&I.append(a("<option/>").text(F));H.val(d),I.val(c)}else s.html(q.months[d]+" "+c);L.empty(),u.add(v).removeClass(p.disabled);for(var G=o?0:-7,J,K;G<(o?42:35);G++)J=a("<a/>"),G%7===0&&(D=a("<div/>").addClass(p.week),L.append(D)),G<o?(J.addClass(p.off),K=t-o+G+1,f=new Date(c,d-1,K)):G>=o+r?(J.addClass(p.off),K=G-r-o+1,f=new Date(c,d+1,K)):(K=G-o+1,f=new Date(c,d,K),m(z,f)?J.attr("id",p.current).addClass(p.focus):m(j,f)&&J.attr("id",p.today)),A&&f<A&&J.add(u).addClass(p.disabled),B&&f>B&&J.add(v).addClass(p.disabled),J.attr("href","#"+K).text(K).data("date",f),D.append(J);return L.find("a").click(function(b){var c=a(this);return c.hasClass(p.disabled)||(a("#"+p.current).removeAttr("id"),c.attr("id",p.current),M(c.data("date"),h,b)),!1}),p.sunday&&L.find(p.week).each(function(){var b=h.firstDay?7-h.firstDay:0;a(this).children().slice(b,b+1).addClass(p.sunday)}),i},setMin:function(a,b){return A=n(a),b&&z<A&&i.setValue(A),i},setMax:function(a,b){return B=n(a),b&&z>B&&i.setValue(B),i},today:function(){return i.setValue(j)},addDay:function(a){return this.setValue(w,x,y+(a||1))},addMonth:function(a){var b=x+(a||1),c=g(w,b),d=y<=c?y:c;return this.setValue(w,b,d)},addYear:function(a){return this.setValue(w+(a||1),x,y)},destroy:function(){d.add(document).unbind("click.d").unbind("keydown.d"),r.add(t).remove(),d.removeData("dateinput").removeClass(p.input),D&&d.replaceWith(D)},hide:function(b){if(C){b=a.Event(),b.type="onHide",G.trigger(b),a(document).unbind("click.d").unbind("keydown.d");if(b.isDefaultPrevented())return;r.hide(),C=!1}return i},toggle:function(){return i.isOpen()?i.hide():i.show()},getConf:function(){return h},getInput:function(){return d},getCalendar:function(){return r},getValue:function(a){return a?k(z,a,h.lang):z},isOpen:function(){return C}}),a.each(["onBeforeShow","onShow","change","onHide"],function(b,c){a.isFunction(h[c])&&a(i).bind(c,h[c]),i[c]=function(b){return b&&a(i).bind(c,b),i}}),h.editable||d.bind("focus.d click.d",i.show).keydown(function(b){var c=b.keyCode;return!C&&a(e).index(c)>=0?(i.show(b),b.preventDefault()):b.shiftKey||b.ctrlKey||b.altKey||c==9?!0:b.preventDefault()}),n(d.val())&&M(z,h)}a.tools=a.tools||{version:"1.2.6"};var c=[],d,e=[75,76,38,39,74,72,40,37],f={};d=a.tools.dateinput={conf:{format:"mm/dd/yy",selectors:!1,yearRange:[-5,5],lang:"en",offset:[0,0],speed:0,firstDay:0,min:b,max:b,trigger:0,toggle:0,editable:0,css:{prefix:"cal",input:"date",root:0,head:0,title:0,prev:0,next:0,month:0,year:0,days:0,body:0,weeks:0,today:0,current:0,week:0,off:0,sunday:0,focus:0,disabled:0,trigger:0}},localize:function(b,c){a.each(c,function(a,b){c[a]=b.split(",")}),f[b]=c}},d.localize("en",{months:"January,February,March,April,May,June,July,August,September,October,November,December",shortMonths:"Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec",days:"Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday",shortDays:"Sun,Mon,Tue,Wed,Thu,Fri,Sat"});var i=/d{1,4}|m{1,4}|yy(?:yy)?|"[^"]*"|'[^']*'/g,j=a("<a/>");a.expr[":"].date=function(b){var c=b.getAttribute("type");return c&&c=="date"||!!a(b).data("dateinput")},a.fn.dateinput=function(b){if(this.data("dateinput"))return this;b=a.extend(!0,{},d.conf,b),a.each(b.css,function(a,c){!c&&a!="prefix"&&(b.css[a]=(b.css.prefix||"")+(c||a))});var e;return this.each(function(){var d=new o(a(this),b);c.push(d);var f=d.getInput().data("dateinput",d);e=e?e.add(f):f}),e?e:this}})(jQuery),function(a){function d(d,e){var f=this,g=d.add(f),h=a(window),i,j,k,l=a.tools.expose&&(e.mask||e.expose),m=Math.random().toString().slice(10);l&&(typeof l=="string"&&(l={color:l}),l.closeOnClick=l.closeOnEsc=!1);var n=e.target||d.attr("rel");j=n?a(n):null||d;if(!j.length)throw"Could not find Overlay: "+n;d&&d.index(j)==-1&&d.click(function(a){return f.load(a),a.preventDefault()}),a.extend(f,{load:function(d){if(f.isOpened())return f;var i=c[e.effect];if(!i)throw'Overlay: cannot find effect : "'+e.effect+'"';e.oneInstance&&a.each(b,function(){this.close(d)}),d=d||a.Event(),d.type="onBeforeLoad",g.trigger(d);if(d.isDefaultPrevented())return f;k=!0,l&&a(j).expose(l);var n=e.top,o=e.left,p=j.outerWidth({margin:!0}),q=j.outerHeight({margin:!0});return typeof n=="string"&&(n=n=="center"?Math.max((h.height()-q)/2,0):parseInt(n,10)/100*h.height()),o=="center"&&(o=Math.max((h.width()-p)/2,0)),i[0].call(f,{top:n,left:o},function(){k&&(d.type="onLoad",g.trigger(d))}),l&&e.closeOnClick&&a.mask.getMask().one("click",f.close),e.closeOnClick&&a(document).bind("click."+m,function(b){a(b.target).parents(j).length||f.close(b)}),e.closeOnEsc&&a(document).bind("keydown."+m,function(a){a.keyCode==27&&f.close(a)}),f},close:function(b){if(!f.isOpened())return f;b=b||a.Event(),b.type="onBeforeClose",g.trigger(b);if(b.isDefaultPrevented())return;return k=!1,c[e.effect][1].call(f,function(){b.type="onClose",g.trigger(b)}),a(document).unbind("click."+m).unbind("keydown."+m),l&&a.mask.close(),f},getOverlay:function(){return j},getTrigger:function(){return d},getClosers:function(){return i},isOpened:function(){return k},getConf:function(){return e}}),a.each("onBeforeLoad,onStart,onLoad,onBeforeClose,onClose".split(","),function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){return b&&a(f).bind(c,b),f}}),i=j.find(e.close||".close"),!i.length&&!e.close&&(i=a('<a class="close"></a>'),j.prepend(i)),i.click(function(a){f.close(a)}),e.load&&f.load()}a.tools=a.tools||{version:"1.2.6"},a.tools.overlay={addEffect:function(a,b,d){c[a]=[b,d]},conf:{close:null,closeOnClick:!0,closeOnEsc:!0,closeSpeed:"fast",effect:"default",fixed:!a.browser.msie||a.browser.version>6,left:"center",load:!1,mask:null,oneInstance:!0,speed:"normal",target:null,top:"10%"}};var b=[],c={};a.tools.overlay.addEffect("default",function(b,c){var d=this.getConf(),e=a(window);d.fixed||(b.top+=e.scrollTop(),b.left+=e.scrollLeft()),b.position=d.fixed?"fixed":"absolute",this.getOverlay().css(b).fadeIn(d.speed,c)},function(a){this.getOverlay().fadeOut(this.getConf().closeSpeed,a)}),a.fn.overlay=function(c){var e=this.data("overlay");return e?e:(a.isFunction(c)&&(c={onBeforeLoad:c}),c=a.extend(!0,{},a.tools.overlay.conf,c),this.each(function(){e=new d(a(this),c),b.push(e),a(this).data("overlay",e)}),c.api?e:this)}}(jQuery),function(a){function d(a){var b=a.offset();return{top:b.top+a.height()/2,left:b.left+a.width()/2}}var b=a.tools.overlay,c=a(window);a.extend(b.conf,{start:{top:null,left:null},fadeInSpeed:"fast",zIndex:9999});var e=function(b,e){var f=this.getOverlay(),g=this.getConf(),h=this.getTrigger(),i=this,j=f.outerWidth({margin:!0}),k=f.data("img"),l=g.fixed?"fixed":"absolute";if(!k){var m=f.css("backgroundImage");if(!m)throw"background-image CSS property not set for overlay";m=m.slice(m.indexOf("(")+1,m.indexOf(")")).replace(/\"/g,""),f.css("backgroundImage","none"),k=a('<img src="'+m+'"/>'),k.css({border:0,display:"none"}).width(j),a("body").append(k),f.data("img",k)}var n=g.start.top||Math.round(c.height()/2),o=g.start.left||Math.round(c.width()/2);if(h){var p=d(h);n=p.top,o=p.left}g.fixed?(n-=c.scrollTop(),o-=c.scrollLeft()):(b.top+=c.scrollTop(),b.left+=c.scrollLeft()),k.css({position:"absolute",top:n,left:o,width:0,zIndex:g.zIndex}).show(),b.position=l,f.css(b),k.animate({top:f.css("top"),left:f.css("left"),width:j},g.speed,function(){f.css("zIndex",g.zIndex+1).fadeIn(g.fadeInSpeed,function(){i.isOpened()&&!a(this).index(f)?e.call():f.hide()})}).css("position",l)},f=function(b){var e=this.getOverlay().hide(),f=this.getConf(),g=this.getTrigger(),h=e.data("img"),i={top:f.start.top,left:f.start.left,width:0};g&&a.extend(i,d(g)),f.fixed&&h.css({position:"absolute"}).animate({top:"+="+c.scrollTop(),left:"+="+c.scrollLeft()},0),h.animate(i,f.closeSpeed,b)};b.addEffect("apple",e,f)}(jQuery),function(a){function e(a,b){var c=Math.pow(10,b);return Math.round(a*c)/c}function f(a,b){var c=parseInt(a.css(b),10);if(c)return c;var d=a[0].currentStyle;return d&&d.width&&parseInt(d.width,10)}function g(a){var b=a.data("events");return b&&b.onSlide}function h(b,c){function y(a,f,g,h){g===undefined?g=f/m*q:h&&(g-=c.min),r&&(g=Math.round(g/r)*r);if(f===undefined||r)f=g*m/q;if(isNaN(g))return d;f=Math.max(0,Math.min(f,m)),g=f/m*q;if(h||!j)g+=c.min;j&&(h?f=m-f:g=c.max-g),g=e(g,s);var i=a.type=="click";if(x&&k!==undefined&&!i){a.type="onSlide",w.trigger(a,[g,f]);if(a.isDefaultPrevented())return d}var l=i?c.speed:0,t=i?function(){a.type="change",w.trigger(a,[g])}:null;return j?(o.animate({top:f},l,t),c.progress&&p.animate({height:m-f+o.height()/2},l)):(o.animate({left:f},l,t),c.progress&&p.animate({width:f+o.width()/2},l)),k=g,n=f,b.val(g),d}function z(){j=c.vertical||f(i,"height")>f(i,"width"),j?(m=f(i,"height")-f(o,"height"),l=i.offset().top+m):(m=f(i,"width")-f(o,"width"),l=i.offset().left)}function A(){z(),d.setValue(c.value!==undefined?c.value:c.min)}var d=this,h=c.css,i=a("<div><div/><a href='#'/></div>").data("rangeinput",d),j,k,l,m,n;b.before(i);var o=i.addClass(h.slider).find("a").addClass(h.handle),p=i.find("div").addClass(h.progress);a.each("min,max,step,value".split(","),function(a,d){var e=b.attr(d);parseFloat(e)&&(c[d]=parseFloat(e,10))});var q=c.max-c.min,r=c.step=="any"?0:c.step,s=c.precision;if(s===undefined)try{s=r.toString().split(".")[1].length}catch(t){s=0}if(b.attr("type")=="range"){var u=b.clone().wrap("<div/>").parent().html(),v=a(u.replace(/type/i,"type=text data-orig-type"));v.val(c.value),b.replaceWith(v),b=v}b.addClass(h.input);var w=a(d).add(b),x=!0;a.extend(d,{getValue:function(){return k},setValue:function(b,c){return z(),y(c||a.Event("api"),undefined,b,!0)},getConf:function(){return c},getProgress:function(){return p},getHandle:function(){return o},getInput:function(){return b},step:function(b,e){e=e||a.Event();var f=c.step=="any"?1:c.step;d.setValue(k+f*(b||1),e)},stepUp:function(a){return d.step(a||1)},stepDown:function(a){return d.step(-a||-1)}}),a.each("onSlide,change".split(","),function(b,e){a.isFunction(c[e])&&a(d).bind(e,c[e]),d[e]=function(b){return b&&a(d).bind(e,b),d}}),o.drag({drag:!1}).bind("dragStart",function(){z(),x=g(a(d))||g(b)}).bind("drag",function(a,c,d){if(b.is(":disabled"))return!1;y(a,j?c:d)}).bind("dragEnd",function(a){a.isDefaultPrevented()||(a.type="change",w.trigger(a,[k]))}).click(function(a){return a.preventDefault()}),i.click(function(a){if(b.is(":disabled")||a.target==o[0])return a.preventDefault();z();var c=j?o.height()/2:o.width()/2;y(a,j?m-l-c+a.pageY:a.pageX-l-c)}),c.keyboard&&b.keydown(function(c){if(b.attr("readonly"))return;var e=c.keyCode,f=a([75,76,38,33,39]).index(e)!=-1,g=a([74,72,40,34,37]).index(e)!=-1;if((f||g)&&!(c.shiftKey||c.altKey||c.ctrlKey))return f?d.step(e==33?10:1,c):g&&d.step(e==34?-10:-1,c),c.preventDefault()}),b.blur(function(b){var c=a(this).val();c!==k&&d.setValue(c,b)}),a.extend(b[0],{stepUp:d.stepUp,stepDown:d.stepDown}),A(),m||a(window).load(A)}a.tools=a.tools||{version:"1.2.6"};var b;b=a.tools.rangeinput={conf:{min:0,max:100,step:"any",steps:0,value:0,precision:undefined,vertical:0,keyboard:!0,progress:!1,speed:100,css:{input:"range",slider:"slider",progress:"progress",handle:"handle"}}};var c,d;a.fn.drag=function(b){return document.ondragstart=function(){return!1},b=a.extend({x:!0,y:!0,drag:!0},b),c=c||a(document).bind("mousedown mouseup",function(e){var f=a(e.target);if(e.type=="mousedown"&&f.data("drag")){var g=f.position(),h=e.pageX-g.left,i=e.pageY-g.top,j=!0;c.bind("mousemove.drag",function(a){var c=a.pageX-h,e=a.pageY-i,g={};b.x&&(g.left=c),b.y&&(g.top=e),j&&(f.trigger("dragStart"),j=!1),b.drag&&f.css(g),f.trigger("drag",[e,c]),d=f}),e.preventDefault()}else try{d&&d.trigger("dragEnd")}finally{c.unbind("mousemove.drag"),d=null}}),this.data("drag",!0)},a.expr[":"].range=function(b){var c=b.getAttribute("type");return c&&c=="range"||!!a(b).filter("input").data("rangeinput")},a.fn.rangeinput=function(c){if(this.data("rangeinput"))return this;c=a.extend(!0,{},b.conf,c);var d;return this.each(function(){var b=new h(a(this),a.extend(!0,{},c)),e=b.getInput().data("rangeinput",b);d=d?d.add(e):e}),d?d:this}}(jQuery),function(a){function b(a,b){var c=parseInt(a.css(b),10);if(c)return c;var d=a[0].currentStyle;return d&&d.width&&parseInt(d.width,10)}function c(b,c){var d=a(c);return d.length<2?d:b.parent().find(c)}function e(b,e){var f=this,g=b.add(f),h=b.children(),i=0,j=e.vertical;d||(d=f),h.length>1&&(h=a(e.items,b)),e.size>1&&(e.circular=!1),a.extend(f,{getConf:function(){return e},getIndex:function(){return i},getSize:function(){return f.getItems().size()},getNaviButtons:function(){return n.add(o)},getRoot:function(){return b},getItemWrap:function(){return h},getItems:function(){return h.find(e.item).not("."+e.clonedClass)},move:function(a,b){return f.seekTo(i+a,b)},next:function(a){return f.move(e.size,a)},prev:function(a){return f.move(-e.size,a)},begin:function(a){return f.seekTo(0,a)},end:function(a){return f.seekTo(f.getSize()-1,a)},focus:function(){return d=f,f},addItem:function(b){return b=a(b),e.circular?(h.children().last().before(b),h.children().first().replaceWith(b.clone().addClass(e.clonedClass))):(h.append(b),o.removeClass("disabled")),g.trigger("onAddItem",[b]),f},seekTo:function(b,c,k){b.jquery||(b*=1);if(e.circular&&b===0&&i==-1&&c!==0)return f;if(!e.circular&&b<0||b>f.getSize()||b<-1)return f;var l=b;b.jquery?b=f.getItems().index(b):l=f.getItems().eq(b);var m=a.Event("onBeforeSeek");if(!k){g.trigger(m,[b,c]);if(m.isDefaultPrevented()||!l.length)return f}var n=j?{top:-l.position().top}:{left:-l.position().left};return i=b,d=f,c===undefined&&(c=e.speed),h.animate(n,c,e.easing,k||function(){g.trigger("onSeek",[b])}),f}}),a.each(["onBeforeSeek","onSeek","onAddItem"],function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){return b&&a(f).bind(c,b),f}});if(e.circular){var k=f.getItems().slice(-1).clone().prependTo(h),l=f.getItems().eq(1).clone().appendTo(h);k.add(l).addClass(e.clonedClass),f.onBeforeSeek(function(a,b,c){if(a.isDefaultPrevented())return;if(b==-1)return f.seekTo(k,c,function(){f.end(0)}),a.preventDefault();b==f.getSize()&&f.seekTo(l,c,function(){f.begin(0)})});var m=b.parents().add(b).filter(function(){if(a(this).css("display")==="none")return!0});m.length?(m.show(),f.seekTo(0,0,function(){}),m.hide()):f.seekTo(0,0,function(){})}var n=c(b,e.prev).click(function(a){a.stopPropagation(),f.prev()}),o=c(b,e.next).click(function(a){a.stopPropagation(),f.next()});e.circular||(f.onBeforeSeek(function(a,b){setTimeout(function(){a.isDefaultPrevented()||(n.toggleClass(e.disabledClass,b<=0),o.toggleClass(e.disabledClass,b>=f.getSize()-1))},1)}),e.initialIndex||n.addClass(e.disabledClass)),f.getSize()<2&&n.add(o).addClass(e.disabledClass),e.mousewheel&&a.fn.mousewheel&&b.mousewheel(function(a,b){if(e.mousewheel)return f.move(b<0?1:-1,e.wheelSpeed||50),!1});if(e.touch){var p={};h[0].ontouchstart=function(a){var b=a.touches[0];p.x=b.clientX,p.y=b.clientY},h[0].ontouchmove=function(a){if(a.touches.length==1&&!h.is(":animated")){var b=a.touches[0],c=p.x-b.clientX,d=p.y-b.clientY;f[j&&d>0||!j&&c>0?"next":"prev"](),a.preventDefault()}}}e.keyboard&&a(document).bind("keydown.scrollable",function(b){if(!e.keyboard||b.altKey||b.ctrlKey||b.metaKey||a(b.target).is(":input"))return;if(e.keyboard!="static"&&d!=f)return;var c=b.keyCode;if(!(!j||c!=38&&c!=40))return f.move(c==38?-1:1),b.preventDefault();if(!j&&(c==37||c==39))return f.move(c==37?-1:1),b.preventDefault()}),e.initialIndex&&f.seekTo(e.initialIndex,0,function(){})}a.tools=a.tools||{version:"1.2.6"},a.tools.scrollable={conf:{activeClass:"active",circular:!1,clonedClass:"cloned",disabledClass:"disabled",easing:"swing",initialIndex:0,item:"> *",items:".items",keyboard:!0,mousewheel:!1,next:".next",prev:".prev",size:1,speed:400,vertical:!1,touch:!0,wheelSpeed:0}};var d;a.fn.scrollable=function(b){var c=this.data("scrollable");return c?c:(b=a.extend({},a.tools.scrollable.conf,b),this.each(function(){c=new e(a(this),b),a(this).data("scrollable",c)}),b.api?c:this)}}(jQuery),function(a){var b=a.tools.scrollable;b.autoscroll={conf:{autoplay:!0,interval:3e3,autopause:!0}},a.fn.autoscroll=function(c){typeof c=="number"&&(c={interval:c});var d=a.extend({},b.autoscroll.conf,c),e;return this.each(function(){function h(){f=setTimeout(function(){b.next()},d.interval)}var b=a(this).data("scrollable"),c=b.getRoot(),f,g=!1;b&&(e=b),b.play=function(){if(f)return;g=!1,c.bind("onSeek",h),h()},b.pause=function(){f=clearTimeout(f),c.unbind("onSeek",h)},b.resume=function(){g||b.play()},b.stop=function(){g=!0,b.pause()},d.autopause&&c.add(b.getNaviButtons()).hover(b.pause,b.resume),d.autoplay&&b.play()}),d.api?e:this}}(jQuery),function(a){function c(b,c){var d=a(c);return d.length<2?d:b.parent().find(c)}var b=a.tools.scrollable;b.navigator={conf:{navi:".navi",naviItem:null,activeClass:"active",indexed:!1,idPrefix:null,history:!1}},a.fn.navigator=function(d){typeof d=="string"&&(d={navi:d}),d=a.extend({},b.navigator.conf,d);var e;return this.each(function(){function k(a,c,d){b.seekTo(c),d.preventDefault(),i&&history.pushState({i:c})}function l(){return f.find(d.naviItem||"> *")}function m(b){var c=a("<"+(d.naviItem||"a")+"/>").click(function(c){k(a(this),b,c)});return b===0&&c.addClass(h),d.indexed&&c.text(b+1),d.idPrefix&&c.attr("id",d.idPrefix+b),c.appendTo(f)}var b=a(this).data("scrollable"),f=d.navi.jquery?d.navi:c(b.getRoot(),d.navi),g=b.getNaviButtons(),h=d.activeClass,i=d.history&&!!history.pushState,j=b.getConf().size;b&&(e=b),b.getNaviButtons=function(){return g.add(f)},i&&(history.pushState({i:0}),a(window).bind("popstate",function(a){var c=a.originalEvent.state;c&&b.seekTo(c.i)})),l().length?l().each(function(b){a(this).click(function(c){k(a(this),b,c)})}):a.each(b.getItems(),function(a){a%j==0&&m(a)}),b.onBeforeSeek(function(a,b){setTimeout(function(){if(!a.isDefaultPrevented()){var c=b/j,d=l().eq(c);d.length&&l().removeClass(h).eq(c).addClass(h)}},1)}),b.onAddItem(function(a,c){var d=b.getItems().index(c);d%j==0&&m(d)})}),d.api?e:this}}(jQuery),function(a){function e(c,d,e){var f=this,g=c.add(this),h=c.find(e.tabs),i=d.jquery?d:c.children(d),j;h.length||(h=c.children()),i.length||(i=c.parent().find(d)),i.length||(i=a(d)),a.extend(this,{click:function(c,d){var i=h.eq(c);typeof c=="string"&&c.replace("#","")&&(i=h.filter("[href*="+c.replace("#","")+"]"),c=Math.max(h.index(i),0));if(e.rotate){var k=h.length-1;if(c<0)return f.click(k,d);if(c>k)return f.click(0,d)}if(!i.length){if(j>=0)return f;c=e.initialIndex,i=h.eq(c)}if(c===j)return f;d=d||a.Event(),d.type="onBeforeClick",g.trigger(d,[c]);if(d.isDefaultPrevented())return;return b[e.effect].call(f,c,function(){j=c,d.type="onClick",g.trigger(d,[c])}),h.removeClass(e.current),i.addClass(e.current),f},getConf:function(){return e},getTabs:function(){return h},getPanes:function(){return i},getCurrentPane:function(){return i.eq(j)},getCurrentTab:function(){return h.eq(j)},getIndex:function(){return j},next:function(){return f.click(j+1)},prev:function(){return f.click(j-1)},destroy:function(){return h.unbind(e.event).removeClass(e.current),i.find("a[href^=#]").unbind("click.T"),f}}),a.each("onBeforeClick,onClick".split(","),function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){return b&&a(f).bind(c,b),f}}),e.history&&a.fn.history&&(a.tools.history.init(h),e.event="history"),h.each(function(b){a(this).bind(e.event,function(a){return f.click(b,a),a.preventDefault()})}),i.find("a[href^=#]").bind("click.T",function(b){f.click(a(this).attr("href"),b)}),location.hash&&e.tabs=="a"&&c.find("[href="+location.hash+"]").length?f.click(location.hash):(e.initialIndex===0||e.initialIndex>0)&&f.click(e.initialIndex)}a.tools=a.tools||{version:"1.2.6"},a.tools.tabs={conf:{tabs:"a",current:"current",onBeforeClick:null,onClick:null,effect:"default",initialIndex:0,event:"click",rotate:!1,slideUpSpeed:400,slideDownSpeed:400,history:!1},addEffect:function(a,c){b[a]=c}};var b={"default":function(a,b){this.getPanes().hide().eq(a).show(),b.call()},fade:function(a,b){var c=this.getConf(),d=c.fadeOutSpeed,e=this.getPanes();d?e.fadeOut(d):e.hide(),e.eq(a).fadeIn(c.fadeInSpeed,b)},slide:function(a,b){var c=this.getConf();this.getPanes().slideUp(c.slideUpSpeed),this.getPanes().eq(a).slideDown(c.slideDownSpeed,b)},ajax:function(a,b){this.getPanes().eq(0).load(this.getTabs().eq(a).attr("href"),b)}},c,d;a.tools.tabs.addEffect("horizontal",function(b,e){if(c)return;var f=this.getPanes().eq(b),g=this.getCurrentPane();d||(d=this.getPanes().eq(0).width()),c=!0,f.show(),g.animate({width:0},{step:function(a){f.css("width",d-a)},complete:function(){a(this).hide(),e.call(),c=!1}}),g.length||(e.call(),c=!1)}),a.fn.tabs=function(b,c){var d=this.data("tabs");return d&&(d.destroy(),this.removeData("tabs")),a.isFunction(c)&&(c={onBeforeClick:c}),c=a.extend({},a.tools.tabs.conf,c),this.each(function(){d=new e(a(this),b,c),a(this).data("tabs",d)}),c.api?d:this}}(jQuery),function(a){function c(b,c){function i(c){var d=a(c);return d.length<2?d:b.parent().find(c)}function l(){g=setTimeout(function(){f.next()},c.interval)}var d=this,e=b.add(this),f=b.data("tabs"),g,h=!0,j=i(c.next).click(function(){f.next()}),k=i(c.prev).click(function(){f.prev()});a.extend(d,{getTabs:function(){return f},getConf:function(){return c},play:function(){if(g)return d;var b=a.Event("onBeforePlay");return e.trigger(b),b.isDefaultPrevented()?d:(h=!1,e.trigger("onPlay"),e.bind("onClick",l),l(),d)},pause:function(){if(!g)return d;var b=a.Event("onBeforePause");return e.trigger(b),b.isDefaultPrevented()?d:(g=clearTimeout(g),e.trigger("onPause"),e.unbind("onClick",l),d)},resume:function(){h||d.play()},stop:function(){d.pause(),h=!0}}),a.each("onBeforePlay,onPlay,onBeforePause,onPause".split(","),function(b,e){a.isFunction(c[e])&&a(d).bind(e,c[e]),d[e]=function(b){return a(d).bind(e,b)}}),c.autopause&&f.getTabs().add(j).add(k).add(f.getPanes()).hover(d.pause,d.resume),c.autoplay&&d.play(),c.clickable&&f.getPanes().click(function(){f.next()});if(!f.getConf().rotate){var m=c.disabledClass;f.getIndex()||k.addClass(m),f.onBeforeClick(function(a,b){k.toggleClass(m,!b),j.toggleClass(m,b==f.getTabs().length-1)})}}var b;b=a.tools.tabs.slideshow={conf:{next:".forward",prev:".backward",disabledClass:"disabled",autoplay:!1,autopause:!0,interval:3e3,clickable:!0,api:!1}},a.fn.slideshow=function(d){var e=this.data("slideshow");return e?e:(d=a.extend({},b.conf,d),this.each(function(){e=new c(a(this),d),a(this).data("slideshow",e)}),d.api?e:this)}}(jQuery),function(a){function c(){if(a.browser.msie){var b=a(document).height(),c=a(window).height();return[window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth,b-c<20?c:b]}return[a(document).width(),a(document).height()]}function d(b){if(b)return b.call(a.mask)}a.tools=a.tools||{version:"1.2.6"};var b;b=a.tools.expose={conf:{maskId:"exposeMask",loadSpeed:"slow",closeSpeed:"fast",closeOnClick:!0,closeOnEsc:!0,zIndex:9998,opacity:.8,startOpacity:0,color:"#fff",onLoad:null,onClose:null}};var e,f,g,h,i;a.mask={load:function(j,k){if(g)return this;typeof j=="string"&&(j={color:j}),j=j||h,h=j=a.extend(a.extend({},b.conf),j),e=a("#"+j.maskId),e.length||(e=a("<div/>").attr("id",j.maskId),a("body").append(e));var l=c();return e.css({position:"absolute",top:0,left:0,width:l[0],height:l[1],display:"none",opacity:j.startOpacity,zIndex:j.zIndex}),j.color&&e.css("backgroundColor",j.color),d(j.onBeforeLoad)===!1?this:(j.closeOnEsc&&a(document).bind("keydown.mask",function(b){b.keyCode==27&&a.mask.close(b)}),j.closeOnClick&&e.bind("click.mask",function(b){a.mask.close(b)}),a(window).bind("resize.mask",function(){a.mask.fit()}),k&&k.length&&(i=k.eq(0).css("zIndex"),a.each(k,function(){var b=a(this);/relative|absolute|fixed/i.test(b.css("position"))||b.css("position","relative")}),f=k.css({zIndex:Math.max(j.zIndex+1,i=="auto"?0:i)})),e.css({display:"block"}).fadeTo(j.loadSpeed,j.opacity,function(){a.mask.fit(),d(j.onLoad),g="full"}),g=!0,this)},close:function(){if(g){if(d(h.onBeforeClose)===!1)return this;e.fadeOut(h.closeSpeed,function(){d(h.onClose),f&&f.css({zIndex:i}),g=!1}),a(document).unbind("keydown.mask"),e.unbind("click.mask"),a(window).unbind("resize.mask")}return this},fit:function(){if(g){var a=c();e.css({width:a[0],height:a[1]})}},getMask:function(){return e},isLoaded:function(a){return a?g=="full":g},getConf:function(){return h},getExposed:function(){return f}},a.fn.mask=function(b){return a.mask.load(b),this},a.fn.expose=function(b){return a.mask.load(b,this),this}}(jQuery),function(){function f(a,b){if(b)for(var c in b)b.hasOwnProperty(c)&&(a[c]=b[c]);return a}function g(a,b){var c=[];for(var d in a)a.hasOwnProperty(d)&&(c[d]=b(a[d]));return c}function j(c,d,e){if(h.isSupported(d.version))c.innerHTML=h.getHTML(d,e);else if(d.expressInstall&&h.isSupported([6,65]))c.innerHTML=h.getHTML(f(d,{src:d.expressInstall}),{MMredirectURL:location.href,MMplayerType:"PlugIn",MMdoctitle:document.title});else{c.innerHTML.replace(/\s/g,"")||(c.innerHTML="<h2>Flash version "+d.version+" or greater is required</h2>"+"<h3>"+(i[0]>0?"Your version is "+i:"You have no flash plugin installed")+"</h3>"+(c.tagName=="A"?"<p>Click here to download latest version</p>":"<p>Download latest version from <a href='"+b+"'>here</a></p>"),c.tagName=="A"&&(c.onclick=function(){location.href=b}));if(d.onFail){var g=d.onFail.call(this);typeof g=="string"&&(c.innerHTML=g)}}a&&(window[d.id]=document.getElementById(d.id)),f(this,{getRoot:function(){return c},getOptions:function(){return d},getConf:function(){return e},getApi:function(){return c.firstChild}})}var a=document.all,b="http://www.adobe.com/go/getflashplayer",c=typeof jQuery=="function",d=/(\d+)[^\d]+(\d+)[^\d]*(\d*)/,e={width:"100%",height:"100%",id:"_"+(""+Math.random()).slice(9),allowfullscreen:!0,allowscriptaccess:"always",quality:"high",version:[3,0],onFail:null,expressInstall:null,w3c:!1,cachebusting:!1};window.attachEvent&&window.attachEvent("onbeforeunload",function(){__flash_unloadHandler=function(){},__flash_savedUnloadHandler=function(){}}),window.flashembed=function(a,b,c){typeof a=="string"&&(a=document.getElementById(a.replace("#","")));if(!a)return;return typeof b=="string"&&(b={src:b}),new j(a,f(f({},e),b),c)};var h=f(window.flashembed,{conf:e,getVersion:function(){var a,b;try{b=navigator.plugins["Shockwave Flash"].description.slice(16)}catch(c){try{a=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7"),b=a&&a.GetVariable("$version")}catch(e){try{a=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6"),b=a&&a.GetVariable("$version")}catch(f){}}}return b=d.exec(b),b?[b[1],b[3]]:[0,0]},asString:function(a){if(a===null||a===undefined)return null;var b=typeof a;b=="object"&&a.push&&(b="array");switch(b){case"string":return a=a.replace(new RegExp('(["\\\\])',"g"),"\\$1"),a=a.replace(/^\s?(\d+\.?\d*)%/,"$1pct"),'"'+a+'"';case"array":return"["+g(a,function(a){return h.asString(a)}).join(",")+"]";case"function":return'"function()"';case"object":var c=[];for(var d in a)a.hasOwnProperty(d)&&c.push('"'+d+'":'+h.asString(a[d]));return"{"+c.join(",")+"}"}return String(a).replace(/\s/g," ").replace(/\'/g,'"')},getHTML:function(b,c){b=f({},b);var d='<object width="'+b.width+'" height="'+b.height+'" id="'+b.id+'" name="'+b.id+'"';b.cachebusting&&(b.src+=(b.src.indexOf("?")!=-1?"&":"?")+Math.random()),b.w3c||!a?d+=' data="'+b.src+'" type="application/x-shockwave-flash"':d+=' classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',d+=">";if(b.w3c||a)d+='<param name="movie" value="'+b.src+'" />';b.width=b.height=b.id=b.w3c=b.src=null,b.onFail=b.version=b.expressInstall=null;for(var e in b)b[e]&&(d+='<param name="'+e+'" value="'+b[e]+'" />');var g="";if(c){for(var i in c)if(c[i]){var j=c[i];g+=i+"="+encodeURIComponent(/function|object/.test(typeof j)?h.asString(j):j)+"&"}g=g.slice(0,-1),d+='<param name="flashvars" value=\''+g+"' />"}return d+="</object>",d},isSupported:function(a){return i[0]>a[0]||i[0]==a[0]&&i[1]>=a[1]}}),i=h.getVersion();c&&(jQuery.tools=jQuery.tools||{version:"1.2.6"},jQuery.tools.flashembed={conf:e},jQuery.fn.flashembed=function(a,b){return this.each
(function(){jQuery(this).data("flashembed",flashembed(this,a,b))})})}(),function(a){function f(a){if(a){var b=c.contentWindow.document;b.open().close(),b.location.hash=a}}var b,c,d,e;a.tools=a.tools||{version:"1.2.6"},a.tools.history={init:function(g){if(e)return;a.browser.msie&&a.browser.version<"8"?c||(c=a("<iframe/>").attr("src","javascript:false;").hide().get(0),a("body").prepend(c),setInterval(function(){var d=c.contentWindow.document,e=d.location.hash;b!==e&&a(window).trigger("hash",e)},100),f(location.hash||"#")):setInterval(function(){var c=location.hash;c!==b&&a(window).trigger("hash",c)},100),d=d?d.add(g):g,g.click(function(b){var d=a(this).attr("href");c&&f(d);if(d.slice(0,1)!="#")return location.href="#"+d,b.preventDefault()}),e=!0}},a(window).bind("hash",function(c,e){e?d.filter(function(){var b=a(this).attr("href");return b==e||b==e.replace("#","")}).trigger("history",[e]):d.eq(0).trigger("history",[e]),b=e}),a.fn.history=function(b){return a.tools.history.init(this),this.bind("history",b)}}(jQuery),function(a){function c(b){switch(b.type){case"mousemove":return a.extend(b.data,{clientX:b.clientX,clientY:b.clientY,pageX:b.pageX,pageY:b.pageY});case"DOMMouseScroll":a.extend(b,b.data),b.delta=-b.detail/3;break;case"mousewheel":b.delta=b.wheelDelta/120}return b.type="wheel",a.event.handle.call(this,b,b.delta)}a.fn.mousewheel=function(a){return this[a?"bind":"trigger"]("wheel",a)},a.event.special.wheel={setup:function(){a.event.add(this,b,c,{})},teardown:function(){a.event.remove(this,b,c)}};var b=a.browser.mozilla?"DOMMouseScroll"+(a.browser.version<"1.9"?" mousemove":""):"mousewheel"}(jQuery),function(a){function c(b,c,d){var e=d.relative?b.position().top:b.offset().top,f=d.relative?b.position().left:b.offset().left,g=d.position[0];e-=c.outerHeight()-d.offset[0],f+=b.outerWidth()+d.offset[1],/iPad/i.test(navigator.userAgent)&&(e-=a(window).scrollTop());var h=c.outerHeight()+b.outerHeight();g=="center"&&(e+=h/2),g=="bottom"&&(e+=h),g=d.position[1];var i=c.outerWidth()+b.outerWidth();return g=="center"&&(f-=i/2),g=="left"&&(f-=i),{top:e,left:f}}function d(d,e){var f=this,g=d.add(f),h,i=0,j=0,k=d.attr("title"),l=d.attr("data-tooltip"),m=b[e.effect],n,o=d.is(":input"),p=o&&d.is(":checkbox, :radio, select, :button, :submit"),q=d.attr("type"),r=e.events[q]||e.events[o?p?"widget":"input":"def"];if(!m)throw'Nonexistent effect "'+e.effect+'"';r=r.split(/,\s*/);if(r.length!=2)throw"Tooltip: bad events configuration for "+q;d.bind(r[0],function(a){clearTimeout(i),e.predelay?j=setTimeout(function(){f.show(a)},e.predelay):f.show(a)}).bind(r[1],function(a){clearTimeout(j),e.delay?i=setTimeout(function(){f.hide(a)},e.delay):f.hide(a)}),k&&e.cancelDefault&&(d.removeAttr("title"),d.data("title",k)),a.extend(f,{show:function(b){if(!h){l?h=a(l):e.tip?h=a(e.tip).eq(0):k?h=a(e.layout).addClass(e.tipClass).appendTo(document.body).hide().append(k):(h=d.next(),h.length||(h=d.parent().next()));if(!h.length)throw"Cannot find tooltip for "+d}if(f.isShown())return f;h.stop(!0,!0);var o=c(d,h,e);e.tip&&h.html(d.data("title")),b=a.Event(),b.type="onBeforeShow",g.trigger(b,[o]);if(b.isDefaultPrevented())return f;o=c(d,h,e),h.css({position:"absolute",top:o.top,left:o.left}),n=!0,m[0].call(f,function(){b.type="onShow",n="full",g.trigger(b)});var p=e.events.tooltip.split(/,\s*/);return h.data("__set")||(h.unbind(p[0]).bind(p[0],function(){clearTimeout(i),clearTimeout(j)}),p[1]&&!d.is("input:not(:checkbox, :radio), textarea")&&h.unbind(p[1]).bind(p[1],function(a){a.relatedTarget!=d[0]&&d.trigger(r[1].split(" ")[0])}),e.tip||h.data("__set",!0)),f},hide:function(c){if(!h||!f.isShown())return f;c=a.Event(),c.type="onBeforeHide",g.trigger(c);if(c.isDefaultPrevented())return;return n=!1,b[e.effect][1].call(f,function(){c.type="onHide",g.trigger(c)}),f},isShown:function(a){return a?n=="full":n},getConf:function(){return e},getTip:function(){return h},getTrigger:function(){return d}}),a.each("onHide,onBeforeShow,onShow,onBeforeHide".split(","),function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){return b&&a(f).bind(c,b),f}})}a.tools=a.tools||{version:"1.2.6"},a.tools.tooltip={conf:{effect:"toggle",fadeOutSpeed:"fast",predelay:0,delay:30,opacity:1,tip:0,fadeIE:!1,position:["top","center"],offset:[0,0],relative:!1,cancelDefault:!0,events:{def:"mouseenter,mouseleave",input:"focus,blur",widget:"focus mouseenter,blur mouseleave",tooltip:"mouseenter,mouseleave"},layout:"<div/>",tipClass:"tooltip"},addEffect:function(a,c,d){b[a]=[c,d]}};var b={toggle:[function(a){var b=this.getConf(),c=this.getTip(),d=b.opacity;d<1&&c.css({opacity:d}),c.show(),a.call()},function(a){this.getTip().hide(),a.call()}],fade:[function(b){var c=this.getConf();!a.browser.msie||c.fadeIE?this.getTip().fadeTo(c.fadeInSpeed,c.opacity,b):(this.getTip().show(),b())},function(b){var c=this.getConf();!a.browser.msie||c.fadeIE?this.getTip().fadeOut(c.fadeOutSpeed,b):(this.getTip().hide(),b())}]};a.fn.tooltip=function(b){var c=this.data("tooltip");return c?c:(b=a.extend(!0,{},a.tools.tooltip.conf,b),typeof b.position=="string"&&(b.position=b.position.split(/,?\s/)),this.each(function(){c=new d(a(this),b),a(this).data("tooltip",c)}),b.api?c:this)}}(jQuery),function(a){function c(b){var c=a(window),d=c.width()+c.scrollLeft(),e=c.height()+c.scrollTop();return[b.offset().top<=c.scrollTop(),d<=b.offset().left+b.width(),e<=b.offset().top+b.height(),c.scrollLeft()>=b.offset().left]}function d(a){var b=a.length;while(b--)if(a[b])return!1;return!0}var b=a.tools.tooltip;b.dynamic={conf:{classNames:"top right bottom left"}},a.fn.dynamic=function(e){typeof e=="number"&&(e={speed:e}),e=a.extend({},b.dynamic.conf,e);var f=a.extend(!0,{},e),g=e.classNames.split(/\s/),h;return this.each(function(){var b=a(this).tooltip().onBeforeShow(function(b,e){var i=this.getTip(),j=this.getConf();h||(h=[j.position[0],j.position[1],j.offset[0],j.offset[1],a.extend({},j)]),a.extend(j,h[4]),j.position=[h[0],h[1]],j.offset=[h[2],h[3]],i.css({visibility:"hidden",position:"absolute",top:e.top,left:e.left}).show();var k=a.extend(!0,{},f),l=c(i);if(!d(l)){l[2]&&(a.extend(j,k.top),j.position[0]="top",i.addClass(g[0])),l[3]&&(a.extend(j,k.right),j.position[1]="right",i.addClass(g[1])),l[0]&&(a.extend(j,k.bottom),j.position[0]="bottom",i.addClass(g[2])),l[1]&&(a.extend(j,k.left),j.position[1]="left",i.addClass(g[3]));if(l[0]||l[2])j.offset[0]*=-1;if(l[1]||l[3])j.offset[1]*=-1}i.css({visibility:"visible"}).hide()});b.onBeforeShow(function(){var a=this.getConf(),b=this.getTip();setTimeout(function(){a.position=[h[0],h[1]],a.offset=[h[2],h[3]]},0)}),b.onHide(function(){var a=this.getTip();a.removeClass(e.classNames)}),ret=b}),e.api?ret:this}}(jQuery),function(a){var b=a.tools.tooltip;a.extend(b.conf,{direction:"up",bounce:!1,slideOffset:10,slideInSpeed:200,slideOutSpeed:200,slideFade:!a.browser.msie});var c={up:["-","top"],down:["+","top"],left:["-","left"],right:["+","left"]};b.addEffect("slide",function(a){var b=this.getConf(),d=this.getTip(),e=b.slideFade?{opacity:b.opacity}:{},f=c[b.direction]||c.up;e[f[1]]=f[0]+"="+b.slideOffset,b.slideFade&&d.css({opacity:0}),d.show().animate(e,b.slideInSpeed,a)},function(b){var d=this.getConf(),e=d.slideOffset,f=d.slideFade?{opacity:0}:{},g=c[d.direction]||c.up,h=""+g[0];d.bounce&&(h=h=="+"?"-":"+"),f[g[1]]=h+"="+e,this.getTip().animate(f,d.slideOutSpeed,function(){a(this).hide(),b.call()})})}(jQuery),function(a){function h(b,c,d){var e=b.offset().top,f=b.offset().left,g=d.position.split(/,?\s+/),h=g[0],i=g[1];e-=c.outerHeight()-d.offset[0],f+=b.outerWidth()+d.offset[1],/iPad/i.test(navigator.userAgent)&&(e-=a(window).scrollTop());var j=c.outerHeight()+b.outerHeight();h=="center"&&(e+=j/2),h=="bottom"&&(e+=j);var k=b.outerWidth();return i=="center"&&(f-=(k+c.outerWidth())/2),i=="left"&&(f-=k),{top:e,left:f}}function i(a){function b(){return this.getAttribute("type")==a}return b.key="[type="+a+"]",b}function l(b,c,e){function l(b,c,d){if(!e.grouped&&b.length)return;var f;if(d===!1||a.isArray(d)){f=g.messages[c.key||c]||g.messages["*"],f=f[e.lang]||g.messages["*"].en;var h=f.match(/\$\d/g);h&&a.isArray(d)&&a.each(h,function(a){f=f.replace(this,d[a])})}else f=d[e.lang]||d;b.push(f)}var f=this,i=c.add(f);b=b.not(":button, :image, :reset, :submit"),c.attr("novalidate","novalidate"),a.extend(f,{getConf:function(){return e},getForm:function(){return c},getInputs:function(){return b},reflow:function(){return b.each(function(){var b=a(this),c=b.data("msg.el");if(c){var d=h(b,c,e);c.css({top:d.top,left:d.left})}}),f},invalidate:function(c,d){if(!d){var g=[];a.each(c,function(a,c){var d=b.filter("[name='"+a+"']");d.length&&(d.trigger("OI",[c]),g.push({input:d,messages:[c]}))}),c=g,d=a.Event()}return d.type="onFail",i.trigger(d,[c]),d.isDefaultPrevented()||k[e.effect][0].call(f,c,d),f},reset:function(c){return c=c||b,c.removeClass(e.errorClass).each(function(){var b=a(this).data("msg.el");b&&(b.remove(),a(this).data("msg.el",null))}).unbind(e.errorInputEvent||""),f},destroy:function(){return c.unbind(e.formEvent+".V").unbind("reset.V"),b.unbind(e.inputEvent+".V").unbind("change.V"),f.reset()},checkValidity:function(c,g){c=c||b,c=c.not(":disabled");if(!c.length)return!0;g=g||a.Event(),g.type="onBeforeValidate",i.trigger(g,[c]);if(g.isDefaultPrevented())return g.result;var h=[];c.not(":radio:not(:checked)").each(function(){var b=[],c=a(this).data("messages",b),k=d&&c.is(":date")?"onHide.v":e.errorInputEvent+".v";c.unbind(k),a.each(j,function(){var a=this,d=a[0];if(c.filter(d).length){var h=a[1].call(f,c,c.val());if(h!==!0){g.type="onBeforeFail",i.trigger(g,[c,d]);if(g.isDefaultPrevented())return!1;var j=c.attr(e.messageAttr);if(j)return b=[j],!1;l(b,d,h)}}}),b.length&&(h.push({input:c,messages:b}),c.trigger("OI",[b]),e.errorInputEvent&&c.bind(k,function(a){f.checkValidity(c,a)}));if(e.singleError&&h.length)return!1});var m=k[e.effect];if(!m)throw'Validator: cannot find effect "'+e.effect+'"';return h.length?(f.invalidate(h,g),!1):(m[1].call(f,c,g),g.type="onSuccess",i.trigger(g,[c]),c.unbind(e.errorInputEvent+".v"),!0)}}),a.each("onBeforeValidate,onBeforeFail,onFail,onSuccess".split(","),function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){return b&&a(f).bind(c,b),f}}),e.formEvent&&c.bind(e.formEvent+".V",function(a){if(!f.checkValidity(null,a))return a.preventDefault();a.target=c,a.type=e.formEvent}),c.bind("reset.V",function(){f.reset()}),b[0]&&b[0].validity&&b.each(function(){this.oninvalid=function(){return!1}}),c[0]&&(c[0].checkValidity=f.checkValidity),e.inputEvent&&b.bind(e.inputEvent+".V",function(b){f.checkValidity(a(this),b)}),b.filter(":checkbox, select").filter("[required]").bind("change.V",function(b){var c=a(this);(this.checked||c.is("select")&&a(this).val())&&k[e.effect][1].call(f,c,b)});var m=b.filter(":radio").change(function(a){f.checkValidity(m,a)});a(window).resize(function(){f.reflow()})}a.tools=a.tools||{version:"1.2.6"};var b=/\[type=([a-z]+)\]/,c=/^-?[0-9]*(\.[0-9]+)?$/,d=a.tools.dateinput,e=/^([a-z0-9_\.\-\+]+)@([\da-z\.\-]+)\.([a-z\.]{2,6})$/i,f=/^(https?:\/\/)?[\da-z\.\-]+\.[a-z\.]{2,6}[#&+_\?\/\w \.\-=]*$/i,g;g=a.tools.validator={conf:{grouped:!1,effect:"default",errorClass:"invalid",inputEvent:null,errorInputEvent:"keyup",formEvent:"submit",lang:"en",message:"<div/>",messageAttr:"data-message",messageClass:"error",offset:[0,0],position:"center right",singleError:!1,speed:"normal"},messages:{"*":{en:"Please correct this value"}},localize:function(b,c){a.each(c,function(a,c){g.messages[a]=g.messages[a]||{},g.messages[a][b]=c})},localizeFn:function(b,c){g.messages[b]=g.messages[b]||{},a.extend(g.messages[b],c)},fn:function(c,d,e){a.isFunction(d)?e=d:(typeof d=="string"&&(d={en:d}),this.messages[c.key||c]=d);var f=b.exec(c);f&&(c=i(f[1])),j.push([c,e])},addEffect:function(a,b,c){k[a]=[b,c]}};var j=[],k={"default":[function(b){var c=this.getConf();a.each(b,function(b,d){var e=d.input;e.addClass(c.errorClass);var f=e.data("msg.el");f||(f=a(c.message).addClass(c.messageClass).appendTo(document.body),e.data("msg.el",f)),f.css({visibility:"hidden"}).find("p").remove(),a.each(d.messages,function(b,c){a("<p/>").html(c).appendTo(f)}),f.outerWidth()==f.parent().width()&&f.add(f.find("p")).css({display:"inline"});var g=h(e,f,c);f.css({visibility:"visible",position:"absolute",top:g.top,left:g.left}).fadeIn(c.speed)})},function(b){var c=this.getConf();b.removeClass(c.errorClass).each(function(){var b=a(this).data("msg.el");b&&b.css({visibility:"hidden"})})}]};a.each("email,url,number".split(","),function(b,c){a.expr[":"][c]=function(a){return a.getAttribute("type")===c}}),a.fn.oninvalid=function(a){return this[a?"bind":"trigger"]("OI",a)},g.fn(":email","Please enter a valid email address",function(a,b){return!b||e.test(b)}),g.fn(":url","Please enter a valid URL",function(a,b){return!b||f.test(b)}),g.fn(":number","Please enter a numeric value.",function(a,b){return c.test(b)}),g.fn("[max]","Please enter a value no larger than $1",function(a,b){if(b===""||d&&a.is(":date"))return!0;var c=a.attr("max");return parseFloat(b)<=parseFloat(c)?!0:[c]}),g.fn("[min]","Please enter a value of at least $1",function(a,b){if(b===""||d&&a.is(":date"))return!0;var c=a.attr("min");return parseFloat(b)>=parseFloat(c)?!0:[c]}),g.fn("[required]","Please complete this mandatory field.",function(a,b){return a.is(":checkbox")?a.is(":checked"):!!b}),g.fn("[pattern]",function(a){var b=new RegExp("^"+a.attr("pattern")+"$");return b.test(a.val())}),a.fn.validator=function(b){var c=this.data("validator");return c&&(c.destroy(),this.removeData("validator")),b=a.extend(!0,{},g.conf,b),this.is("form")?this.each(function(){var d=a(this);c=new l(d.find(":input"),d,b),d.data("validator",c)}):(c=new l(this,this.eq(0).closest("form"),b),this.data("validator",c))}}(jQuery);
//jScrollPane
(function($) {

$.jScrollPane = {
	active : []
};
$.fn.jScrollPane = function(settings)
{
	settings = $.extend({}, $.fn.jScrollPane.defaults, settings);

	var rf = function() { return false; };
	
	return this.each(
		function()
		{
			var $this = $(this);
			var paneEle = this;
			var currentScrollPosition = 0;
			var paneWidth;
			var paneHeight;
			var trackHeight;
			var trackOffset = settings.topCapHeight;
			var $container;
			
			if ($(this).parent().is('.jScrollPaneContainer')) {
				$container = $(this).parent();
				currentScrollPosition = settings.maintainPosition ? $this.position().top : 0;
				var $c = $(this).parent();
				paneWidth = $c.innerWidth();
				paneHeight = $c.outerHeight();
				$('>.jScrollPaneTrack, >.jScrollArrowUp, >.jScrollArrowDown, >.jScrollCap', $c).remove();
				$this.css({'top':0});
			} else {
				$this.data('originalStyleTag', $this.attr('style'));
				// Switch the element's overflow to hidden to ensure we get the size of the element without the scrollbars [http://plugins.jquery.com/node/1208]
				$this.css('overflow', 'hidden');
				this.originalPadding = $this.css('paddingTop') + ' ' + $this.css('paddingRight') + ' ' + $this.css('paddingBottom') + ' ' + $this.css('paddingLeft');
				this.originalSidePaddingTotal = (parseInt($this.css('paddingLeft')) || 0) + (parseInt($this.css('paddingRight')) || 0);
				paneWidth = $this.innerWidth();
				paneHeight = $this.innerHeight();
				$container = $('<div></div>')
					.attr({'className':'jScrollPaneContainer'})
					.css(
						{
							'height':paneHeight+'px', 
							'width':paneWidth+'px'
						}
					);
				if (settings.enableKeyboardNavigation) {
					$container.attr(
						'tabindex', 
						settings.tabIndex
					);
				}
				$this.wrap($container);
				$container = $this.parent();
				// deal with text size changes (if the jquery.em plugin is included)
				// and re-initialise the scrollPane so the track maintains the
				// correct size
				$(document).bind(
					'emchange', 
					function(e, cur, prev)
					{
						$this.jScrollPane(settings);
					}
				);
				
			}
			trackHeight = paneHeight;
			
			if (settings.reinitialiseOnImageLoad) {
				// code inspired by jquery.onImagesLoad: http://plugins.jquery.com/project/onImagesLoad
				// except we re-initialise the scroll pane when each image loads so that the scroll pane is always up to size...
				// TODO: Do I even need to store it in $.data? Is a local variable here the same since I don't pass the reinitialiseOnImageLoad when I re-initialise?
				var $imagesToLoad = $.data(paneEle, 'jScrollPaneImagesToLoad') || $('img', $this);
				var loadedImages = [];
				
				if ($imagesToLoad.length) {
					$imagesToLoad.each(function(i, val)	{
						$(this).bind('load readystatechange', function() {
							if($.inArray(i, loadedImages) == -1){ //don't double count images
								loadedImages.push(val); //keep a record of images we've seen
								$imagesToLoad = $.grep($imagesToLoad, function(n, i) {
									return n != val;
								});
								$.data(paneEle, 'jScrollPaneImagesToLoad', $imagesToLoad);
								var s2 = $.extend(settings, {reinitialiseOnImageLoad:false});
								$this.jScrollPane(s2); // re-initialise
							}
						}).each(function(i, val) {
							if(this.complete || this.complete===undefined) { 
								//needed for potential cached images
								this.src = this.src; 
							} 
						});
					});
				};
			}

			var p = this.originalSidePaddingTotal;
			var realPaneWidth = paneWidth - settings.scrollbarWidth - settings.scrollbarMargin - p;

			var cssToApply = {
				'height':'auto',
				'width': realPaneWidth + 'px'
			}

			if(settings.scrollbarOnLeft) {
				cssToApply.paddingLeft = settings.scrollbarMargin + settings.scrollbarWidth + 'px';
			} else {
				cssToApply.paddingRight = settings.scrollbarMargin + 'px';
			}

			$this.css(cssToApply);

			var contentHeight = $this.outerHeight();
			var percentInView = paneHeight / contentHeight;
			
			var isScrollable = percentInView < .99;
			$container[isScrollable ? 'addClass' : 'removeClass']('jScrollPaneScrollable');

			if (isScrollable) {
				$container.append(
					$('<div></div>').addClass('jScrollCap jScrollCapTop').css({height:settings.topCapHeight}),
					$('<div></div>').attr({'className':'jScrollPaneTrack'}).css({'width':settings.scrollbarWidth+'px'}).append(
						$('<div></div>').attr({'className':'jScrollPaneDrag'}).css({'width':settings.scrollbarWidth+'px'}).append(
							$('<div></div>').attr({'className':'jScrollPaneDragTop'}).css({'width':settings.scrollbarWidth+'px'}),
							$('<div></div>').attr({'className':'jScrollPaneDragBottom'}).css({'width':settings.scrollbarWidth+'px'})
						)
					),
					$('<div></div>').addClass('jScrollCap jScrollCapBottom').css({height:settings.bottomCapHeight})
				);
				
				var $track = $('>.jScrollPaneTrack', $container);
				var $drag = $('>.jScrollPaneTrack .jScrollPaneDrag', $container);
				
				
				var currentArrowDirection;
				var currentArrowTimerArr = [];// Array is used to store timers since they can stack up when dealing with keyboard events. This ensures all timers are cleaned up in the end, preventing an acceleration bug.
				var currentArrowInc;
				var whileArrowButtonDown = function() 
				{
					if (currentArrowInc > 4 || currentArrowInc % 4 == 0) {
						positionDrag(dragPosition + currentArrowDirection * mouseWheelMultiplier);
					}
					currentArrowInc++;
				};

				if (settings.enableKeyboardNavigation) {
					$container.bind(
						'keydown.jscrollpane',
						function(e) 
						{
							switch (e.keyCode) {
								case 38: //up
									currentArrowDirection = -1;
									currentArrowInc = 0;
									whileArrowButtonDown();
									currentArrowTimerArr[currentArrowTimerArr.length] = setInterval(whileArrowButtonDown, 100);
									return false;
								case 40: //down
									currentArrowDirection = 1;
									currentArrowInc = 0;
									whileArrowButtonDown();
									currentArrowTimerArr[currentArrowTimerArr.length] = setInterval(whileArrowButtonDown, 100);
									return false;
								case 33: // page up
								case 34: // page down
									// TODO
									return false;
								default:
							}
						}
					).bind(
						'keyup.jscrollpane',
						function(e) 
						{
							if (e.keyCode == 38 || e.keyCode == 40) {
								for (var i = 0; i < currentArrowTimerArr.length; i++) {
									clearInterval(currentArrowTimerArr[i]);
								}
								return false;
							}
						}
					);
				}

				if (settings.showArrows) {
					
					var currentArrowButton;
					var currentArrowInterval;

					var onArrowMouseUp = function(event)
					{
						$('html').unbind('mouseup', onArrowMouseUp);
						currentArrowButton.removeClass('jScrollActiveArrowButton');
						clearInterval(currentArrowInterval);
					};
					var onArrowMouseDown = function() {
						$('html').bind('mouseup', onArrowMouseUp);
						currentArrowButton.addClass('jScrollActiveArrowButton');
						currentArrowInc = 0;
						whileArrowButtonDown();
						currentArrowInterval = setInterval(whileArrowButtonDown, 100);
					};
					$container
						.append(
							$('<a></a>')
								.attr(
									{
										'href':'javascript:;', 
										'className':'jScrollArrowUp', 
										'tabindex':-1
									}
								)
								.css(
									{
										'width':settings.scrollbarWidth+'px',
										'top':settings.topCapHeight + 'px'
									}
								)
								.html('Scroll up')
								.bind('mousedown', function()
								{
									currentArrowButton = $(this);
									currentArrowDirection = -1;
									onArrowMouseDown();
									this.blur();
									return false;
								})
								.bind('click', rf),
							$('<a></a>')
								.attr(
									{
										'href':'javascript:;', 
										'className':'jScrollArrowDown', 
										'tabindex':-1
									}
								)
								.css(
									{
										'width':settings.scrollbarWidth+'px',
										'bottom':settings.bottomCapHeight + 'px'
									}
								)
								.html('Scroll down')
								.bind('mousedown', function()
								{
									currentArrowButton = $(this);
									currentArrowDirection = 1;
									onArrowMouseDown();
									this.blur();
									return false;
								})
								.bind('click', rf)
						);
					var $upArrow = $('>.jScrollArrowUp', $container);
					var $downArrow = $('>.jScrollArrowDown', $container);
				}
				
				if (settings.arrowSize) {
					trackHeight = paneHeight - settings.arrowSize - settings.arrowSize;
					trackOffset += settings.arrowSize;
				} else if ($upArrow) {
					var topArrowHeight = $upArrow.height();
					settings.arrowSize = topArrowHeight;
					trackHeight = paneHeight - topArrowHeight - $downArrow.height();
					trackOffset += topArrowHeight;
				}
				trackHeight -= settings.topCapHeight + settings.bottomCapHeight;
				$track.css({'height': trackHeight+'px', top:trackOffset+'px'})
				
				var $pane = $(this).css({'position':'absolute', 'overflow':'visible'});
				
				var currentOffset;
				var maxY;
				var mouseWheelMultiplier;
				// store this in a seperate variable so we can keep track more accurately than just updating the css property..
				var dragPosition = 0;
				var dragMiddle = percentInView*paneHeight/2;
				
				// pos function borrowed from tooltip plugin and adapted...
				var getPos = function (event, c) {
					var p = c == 'X' ? 'Left' : 'Top';
					return event['page' + c] || (event['client' + c] + (document.documentElement['scroll' + p] || document.body['scroll' + p])) || 0;
				};
				
				var ignoreNativeDrag = function() {	return false; };
				
				var initDrag = function()
				{
					ceaseAnimation();
					currentOffset = $drag.offset(false);
					currentOffset.top -= dragPosition;
					maxY = trackHeight - $drag[0].offsetHeight;
					mouseWheelMultiplier = 2 * settings.wheelSpeed * maxY / contentHeight;
				};
				
				var onStartDrag = function(event)
				{
					initDrag();
					dragMiddle = getPos(event, 'Y') - dragPosition - currentOffset.top;
					$('html').bind('mouseup', onStopDrag).bind('mousemove', updateScroll).bind('mouseleave', onStopDrag)
					if ($.browser.msie) {
						$('html').bind('dragstart', ignoreNativeDrag).bind('selectstart', ignoreNativeDrag);
					}
					return false;
				};
				var onStopDrag = function()
				{
					$('html').unbind('mouseup', onStopDrag).unbind('mousemove', updateScroll);
					dragMiddle = percentInView*paneHeight/2;
					if ($.browser.msie) {
						$('html').unbind('dragstart', ignoreNativeDrag).unbind('selectstart', ignoreNativeDrag);
					}
				};
				var positionDrag = function(destY)
				{
					$container.scrollTop(0);
					destY = destY < 0 ? 0 : (destY > maxY ? maxY : destY);
					dragPosition = destY;
					$drag.css({'top':destY+'px'});
					var p = destY / maxY;
					$this.data('jScrollPanePosition', (paneHeight-contentHeight)*-p);
					$pane.css({'top':((paneHeight-contentHeight)*p) + 'px'});
					$this.trigger('scroll');
					if (settings.showArrows) {
						$upArrow[destY == 0 ? 'addClass' : 'removeClass']('disabled');
						$downArrow[destY == maxY ? 'addClass' : 'removeClass']('disabled');
					}
				};
				var updateScroll = function(e)
				{
					positionDrag(getPos(e, 'Y') - currentOffset.top - dragMiddle);
				};
				
				var dragH = Math.max(Math.min(percentInView*(paneHeight-settings.arrowSize*2), settings.dragMaxHeight), settings.dragMinHeight);
				
				$drag.css(
					{'height':dragH+'px'}
				).bind('mousedown', onStartDrag);
				
				var trackScrollInterval;
				var trackScrollInc;
				var trackScrollMousePos;
				var doTrackScroll = function()
				{
					if (trackScrollInc > 8 || trackScrollInc%4==0) {
						positionDrag((dragPosition - ((dragPosition - trackScrollMousePos) / 2)));
					}
					trackScrollInc ++;
				};
				var onStopTrackClick = function()
				{
					clearInterval(trackScrollInterval);
					$('html').unbind('mouseup', onStopTrackClick).unbind('mousemove', onTrackMouseMove);
				};
				var onTrackMouseMove = function(event)
				{
					trackScrollMousePos = getPos(event, 'Y') - currentOffset.top - dragMiddle;
				};
				var onTrackClick = function(event)
				{
					initDrag();
					onTrackMouseMove(event);
					trackScrollInc = 0;
					$('html').bind('mouseup', onStopTrackClick).bind('mousemove', onTrackMouseMove);
					trackScrollInterval = setInterval(doTrackScroll, 100);
					doTrackScroll();
					return false;
				};
				
				$track.bind('mousedown', onTrackClick);
				
				$container.bind(
					'mousewheel',
					function (event, delta) {
						delta = delta || (event.wheelDelta ? event.wheelDelta / 120 : (event.detail) ?
-event.detail/3 : 0);
						initDrag();
						ceaseAnimation();
						var d = dragPosition;
						positionDrag(dragPosition - delta * mouseWheelMultiplier);
						var dragOccured = d != dragPosition;
						return !dragOccured;
					}
				);

				var _animateToPosition;
				var _animateToInterval;
				function animateToPosition()
				{
					var diff = (_animateToPosition - dragPosition) / settings.animateStep;
					if (diff > 1 || diff < -1) {
						positionDrag(dragPosition + diff);
					} else {
						positionDrag(_animateToPosition);
						ceaseAnimation();
					}
				}
				var ceaseAnimation = function()
				{
					if (_animateToInterval) {
						clearInterval(_animateToInterval);
						delete _animateToPosition;
					}
				};
				var scrollTo = function(pos, preventAni)
				{
					if (typeof pos == "string") {
						// Legal hash values aren't necessarily legal jQuery selectors so we need to catch any
						// errors from the lookup...
						try {
							$e = $(pos, $this);
						} catch (err) {
							return;
						}
						if (!$e.length) return;
						pos = $e.offset().top - $this.offset().top;
					}
					ceaseAnimation();
					var maxScroll = contentHeight - paneHeight;
					pos = pos > maxScroll ? maxScroll : pos;
					$this.data('jScrollPaneMaxScroll', maxScroll);
					var destDragPosition = pos/maxScroll * maxY;
					if (preventAni || !settings.animateTo) {
						positionDrag(destDragPosition);
					} else {
						$container.scrollTop(0);
						_animateToPosition = destDragPosition;
						_animateToInterval = setInterval(animateToPosition, settings.animateInterval);
					}
				};
				$this[0].scrollTo = scrollTo;
				
				$this[0].scrollBy = function(delta)
				{
					var currentPos = -parseInt($pane.css('top')) || 0;
					scrollTo(currentPos + delta);
				};
				
				initDrag();
				
				scrollTo(-currentScrollPosition, true);
			
				// Deal with it when the user tabs to a link or form element within this scrollpane
				$('*', this).bind(
					'focus',
					function(event)
					{
						var $e = $(this);
						
						// loop through parents adding the offset top of any elements that are relatively positioned between
						// the focused element and the jScrollPaneContainer so we can get the true distance from the top
						// of the focused element to the top of the scrollpane...
						var eleTop = 0;
						
						var preventInfiniteLoop = 100;
						
						while ($e[0] != $this[0]) {
							eleTop += $e.position().top;
							$e = $e.offsetParent();
							if (!preventInfiniteLoop--) {
								return;
							}
						}
						
						var viewportTop = -parseInt($pane.css('top')) || 0;
						var maxVisibleEleTop = viewportTop + paneHeight;
						var eleInView = eleTop > viewportTop && eleTop < maxVisibleEleTop;
						if (!eleInView) {
							var destPos = eleTop - settings.scrollbarMargin;
							if (eleTop > viewportTop) { // element is below viewport - scroll so it is at bottom.
								destPos += $(this).height() + 15 + settings.scrollbarMargin - paneHeight;
							}
							scrollTo(destPos);
						}
					}
				)
				
				
				if (settings.observeHash) {
					if (location.hash && location.hash.length > 1) {
						setTimeout(function(){
							scrollTo(location.hash);
						}, $.browser.safari ? 100 : 0);
					}
					
					// use event delegation to listen for all clicks on links and hijack them if they are links to
					// anchors within our content...
					$(document).bind('click', function(e){
						$target = $(e.target);
						if ($target.is('a')) {
							var h = $target.attr('href');
							if (h && h.substr(0, 1) == '#' && h.length > 1) {
								setTimeout(function(){
									scrollTo(h, !settings.animateToInternalLinks);
								}, $.browser.safari ? 100 : 0);
							}
						}
					});
				}
				
				// Deal with dragging and selecting text to make the scrollpane scroll...
				function onSelectScrollMouseDown(e)
				{
				   $(document).bind('mousemove.jScrollPaneDragging', onTextSelectionScrollMouseMove);
				   $(document).bind('mouseup.jScrollPaneDragging',   onSelectScrollMouseUp);
				  
				}
				
				var textDragDistanceAway;
				var textSelectionInterval;
				
				function onTextSelectionInterval()
				{
					direction = textDragDistanceAway < 0 ? -1 : 1;
					$this[0].scrollBy(textDragDistanceAway / 2);
				}

				function clearTextSelectionInterval()
				{
					if (textSelectionInterval) {
						clearInterval(textSelectionInterval);
						textSelectionInterval = undefined;
					}
				}
				
				function onTextSelectionScrollMouseMove(e)
				{
					var offset = $this.parent().offset().top;
					var maxOffset = offset + paneHeight;
					var mouseOffset = getPos(e, 'Y');
					textDragDistanceAway = mouseOffset < offset ? mouseOffset - offset : (mouseOffset > maxOffset ? mouseOffset - maxOffset : 0);
					if (textDragDistanceAway == 0) {
						clearTextSelectionInterval();
					} else {
						if (!textSelectionInterval) {
							textSelectionInterval  = setInterval(onTextSelectionInterval, 100);
						}
					}
				}

				function onSelectScrollMouseUp(e)
				{
				   $(document)
					  .unbind('mousemove.jScrollPaneDragging')
					  .unbind('mouseup.jScrollPaneDragging');
				   clearTextSelectionInterval();
				}

				$container.bind('mousedown.jScrollPane', onSelectScrollMouseDown);

				
				$.jScrollPane.active.push($this[0]);
				
			} else {
				$this.css(
					{
						'height':paneHeight+'px',
						'width':paneWidth-this.originalSidePaddingTotal+'px',
						'padding':this.originalPadding
					}
				);
				$this[0].scrollTo = $this[0].scrollBy = function() {};
				// clean up listeners
				$this.parent().unbind('mousewheel').unbind('mousedown.jScrollPane').unbind('keydown.jscrollpane').unbind('keyup.jscrollpane');
			}
			
		}
	)
};

$.fn.jScrollPaneRemove = function()
{
	$(this).each(function()
	{
		$this = $(this);
		var $c = $this.parent();
		if ($c.is('.jScrollPaneContainer')) {
			$this.css(
				{
					'top':'',
					'height':'',
					'width':'',
					'padding':'',
					'overflow':'',
					'position':''
				}
			);
			$this.attr('style', $this.data('originalStyleTag'));
			$c.after($this).remove();
		}
	});
}

$.fn.jScrollPane.defaults = {
	scrollbarWidth : 10,
	scrollbarMargin : 5,
	wheelSpeed : 18,
	showArrows : false,
	arrowSize : 0,
	animateTo : false,
	dragMinHeight : 1,
	dragMaxHeight : 99999,
	animateInterval : 100,
	animateStep: 3,
	maintainPosition: true,
	scrollbarOnLeft: false,
	reinitialiseOnImageLoad: false,
	tabIndex : 0,
	enableKeyboardNavigation: true,
	animateToInternalLinks: false,
	topCapHeight: 0,
	bottomCapHeight: 0,
	observeHash: true
};

// clean up the scrollTo expandos
$(window)
	.bind('unload', function() {
		var els = $.jScrollPane.active; 
		for (var i=0; i<els.length; i++) {
			els[i].scrollTo = els[i].scrollBy = null;
		}
	}
);

})(jQuery);
/******************************************************
    * jQuery plug-in
    * Easy Background Image Resizer
    * Developed by J.P. Given (http://johnpatrickgiven.com)
    * Useage: anyone so long as credit is left alone
******************************************************/

(function($) {
	// Global Namespace
    var jqez = {};

    // Define the plugin
    $.fn.ezBgResize = function(options) {
		
		// Set global to obj passed
		jqez = options;
		
		// If img option is string convert to array.
		// This is in preparation for accepting an slideshow of images.
		if (!$.isArray(jqez.img)) {
			var tmp_img = jqez.img;
			jqez.img = [tmp_img]
		}
		
		$("<img/>").attr("src", jqez.img).load(function() {
			jqez.width = this.width;
			jqez.height = this.height;
			
			// Create a unique div container
			$("body").append('<div id="jq_ez_bg"></div>');

			// Add the image to it.
			$("#jq_ez_bg").html('<img src="' + jqez.img[0] + '" width="' + jqez.width + '" height="' + jqez.height + '" border="0">');

			// First position object
	        $("#jq_ez_bg").css("visibility","hidden");

			// Overflow set to hidden so scroll bars don't mess up image size.
	        $("body").css({
	            "overflow":"hidden"
	        });

			resizeImage();
		});
    };

	$(window).bind("resize", function() {
		resizeImage();
	});
	
	// Actual resize function
    function resizeImage() {
	
        $("#jq_ez_bg").css({
            "position":"absolute",
            "top":"0px",
            "left":"0px",
            "z-index":"-1",
            "overflow":"hidden",
            "width":$(window).width() + "px",
            "height":$(window).height() + "px",
			"opacity" : jqez.opacity
        });
		
		// Image relative to its container
		$("#jq_ez_bg").children('img').css("position", "relative");

        // Resize the img object to the proper ratio of the window.
        var iw = $("#jq_ez_bg").children('img').width();
        var ih = $("#jq_ez_bg").children('img').height();
        
        if ($(window).width() > $(window).height()) {
            //console.log(iw, ih);
            if (iw > ih) {
                var fRatio = iw/ih;
                $("#jq_ez_bg").children('img').css("width",$(window).width() + "px");
                $("#jq_ez_bg").children('img').css("height",Math.round($(window).width() * (1/fRatio)));

                var newIh = Math.round($(window).width() * (1/fRatio));

                if(newIh < $(window).height()) {
                    var fRatio = ih/iw;
                    $("#jq_ez_bg").children('img').css("height",$(window).height());
                    $("#jq_ez_bg").children('img').css("width",Math.round($(window).height() * (1/fRatio)));
                }
            } else {
                var fRatio = ih/iw;
                $("#jq_ez_bg").children('img').css("height",$(window).height());
                $("#jq_ez_bg").children('img').css("width",Math.round($(window).height() * (1/fRatio)));
            }
        } else {
            var fRatio = ih/iw;
            $("#jq_ez_bg").children('img').css("height",$(window).height());
            $("#jq_ez_bg").children('img').css("width",Math.round($(window).height() * (1/fRatio)));
        }
		
		// Center the image
		if (typeof(jqez.center) == 'undefined' || jqez.center) {
			if ($("#jq_ez_bg").children('img').width() > $(window).width()) {
				var this_left = ($("#jq_ez_bg").children('img').width() - $(window).width()) / 2;
				$("#jq_ez_bg").children('img').css({
					"top"  : 0,
					"left" : -this_left
				});
			}
			if ($("#jq_ez_bg").children('img').height() > $(window).height()) {
				var this_height = ($("#jq_ez_bg").children('img').height() - $(window).height()) / 2;
				$("#jq_ez_bg").children('img').css({
					"left" : 0,
					"top" : -this_height
				});
			}
		}

        $("#jq_ez_bg").css({
			"visibility" : "visible"
		});

		// Allow scrolling again
		$("body").css({
            "overflow":"auto"
        });
		
        
    }
})(jQuery);
/******************************************************
	* jQuery plug-in
	* Easy Pinned Footer
	* Developed by J.P. Given (http://johnpatrickgiven.com)
	* Useage: anyone so long as credit is left alone
******************************************************/
(function($) {
	// plugin definition
	$.fn.pinFooter = function(options) {		
		// Get the height of the footer and window + window width
		var wH = $(window).height();
		var wW = getWindowWidth();
		var fH = $(this).outerHeight(true);
		var bH = $("body").outerHeight(true);
		var mB = parseInt($("body").css("margin-bottom"));
		
		if (options == 'relative') {
			if (bH > getWindowHeight()) {
				$(this).css("position","absolute");
				$(this).css("width",wW + "px");
				$(this).css("top",bH - fH + "px");
				$("body").css("overflow-x","hidden");
			} else {
				$(this).css("position","fixed");
				$(this).css("width",wW + "px");
				$(this).css("top",wH - fH + "px");
			}
		} else { // Pinned option
			// Set CSS attributes for positioning footer
			$(this).css("position","fixed");
			$(this).css("width",wW + "px");
			$(this).css("top",wH - fH + "px");
			$("body").css("height",(bH + mB) + "px");
		}
	};
	
	// private function for debugging
	function debug($obj) {
		if (window.console && window.console.log) {
			window.console.log('Window Width: ' + $(window).width());
			window.console.log('Window Height: ' + $(window).height());
		}
	};
	
	// Dependable function to get Window Height
	function getWindowHeight() {
		var windowHeight = 0;
		if (typeof(window.innerHeight) == 'number') {
			windowHeight = window.innerHeight;
		}
		else {
			if (document.documentElement && document.documentElement.clientHeight) {
				windowHeight = document.documentElement.clientHeight;
			}
			else {
				if (document.body && document.body.clientHeight) {
					windowHeight = document.body.clientHeight;
				}
			}
		}
		return windowHeight;
	};
	
	// Dependable function to get Window Width
	function getWindowWidth() {
		var windowWidth = 0;
		if (typeof(window.innerWidth) == 'number') {
			windowWidth = window.innerWidth;
		}
		else {
			if (document.documentElement && document.documentElement.clientWidth) {
				windowWidth = document.documentElement.clientWidth;
			}
			else {
				if (document.body && document.body.clientWidth) {
					windowWidth = document.body.clientWidth;
				}
			}
		}
		return windowWidth;
	};
})(jQuery);