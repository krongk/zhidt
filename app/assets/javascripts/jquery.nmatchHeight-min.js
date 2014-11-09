/**
* jquery.matchHeight-min.js v0.5.2
* http://brm.io/jquery-match-height/
* License: MIT
*/
(function(d){var g=-1,e=-1,n=function(a){var b=null,c=[];d(a).each(function(){var a=d(this),k=a.offset().top-h(a.css("margin-top")),l=0<c.length?c[c.length-1]:null;null===l?c.push(a):1>=Math.floor(Math.abs(b-k))?c[c.length-1]=l.add(a):c.push(a);b=k});return c},h=function(a){return parseFloat(a)||0},b=d.fn.matchHeight=function(a){if("remove"===a){var f=this;this.css("height","");d.each(b._groups,function(a,b){b.elements=b.elements.not(f)});return this}if(1>=this.length)return this;a="undefined"!==
typeof a?a:!0;b._groups.push({elements:this,byRow:a});b._apply(this,a);return this};b._groups=[];b._throttle=80;b._maintainScroll=!1;b._beforeUpdate=null;b._afterUpdate=null;b._apply=function(a,f){var c=d(a),e=[c],k=d(window).scrollTop(),l=d("html").outerHeight(!0),g=c.parents().filter(":hidden");g.css("display","block");f&&(c.each(function(){var a=d(this),b="inline-block"===a.css("display")?"inline-block":"block";a.data("style-cache",a.attr("style"));a.css({display:b,"padding-top":"0","padding-bottom":"0",
"margin-top":"0","margin-bottom":"0","border-top-width":"0","border-bottom-width":"0",height:"100px"})}),e=n(c),c.each(function(){var a=d(this);a.attr("style",a.data("style-cache")||"").css("height","")}));d.each(e,function(a,b){var c=d(b),e=0;f&&1>=c.length||(c.each(function(){var a=d(this),b="inline-block"===a.css("display")?"inline-block":"block";a.css({display:b,height:""});a.outerHeight(!1)>e&&(e=a.outerHeight(!1));a.css("display","")}),c.each(function(){var a=d(this),b=0;"border-box"!==a.css("box-sizing")&&
(b+=h(a.css("border-top-width"))+h(a.css("border-bottom-width")),b+=h(a.css("padding-top"))+h(a.css("padding-bottom")));a.css("height",e-b)}))});g.css("display","");b._maintainScroll&&d(window).scrollTop(k/l*d("html").outerHeight(!0));return this};b._applyDataApi=function(){var a={};d("[data-match-height], [data-mh]").each(function(){var b=d(this),c=b.attr("data-match-height")||b.attr("data-mh");a[c]=c in a?a[c].add(b):b});d.each(a,function(){this.matchHeight(!0)})};var m=function(a){b._beforeUpdate&&
b._beforeUpdate(a,b._groups);d.each(b._groups,function(){b._apply(this.elements,this.byRow)});b._afterUpdate&&b._afterUpdate(a,b._groups)};b._update=function(a,f){if(f&&"resize"===f.type){var c=d(window).width();if(c===g)return;g=c}a?-1===e&&(e=setTimeout(function(){m(f);e=-1},b._throttle)):m(f)};d(b._applyDataApi);d(window).bind("load",function(a){b._update(!1,a)});d(window).bind("resize orientationchange",function(a){b._update(!0,a)})})(jQuery);

/* __________________ SUPPORTS TOUCH OR NOT  __________________*/
/*! Detects touch support and adds appropriate classes to html and returns a JS object  |  Copyright (c) 2013 Izilla Partners Pty Ltd  | http://www.izilla.com.au / Licensed under the MIT license  |  https://coderwall.com/p/egbgdw */
var supports=(function(){var d=document.documentElement,c="ontouchstart" in window||navigator.msMaxTouchPoints;if(c){d.className+=" touch";return{touch:true}}else{d.className+=" no-touch";return{touch:false}}})();

/* __________________ FIT TEXT used on .banner h1 spans __________________*/
/*! * FitText.js 1.2  |  Copyright 2011, Dave Rupert http://daverupert.com | Released under the WTFPL license  |  http://sam.zoy.org/wtfpl/  |  Date: Thu May 05 14:23:00 2011 -0600  */
(function(a){a.fn.fitText=function(d,b){var e=d||1,c=a.extend({minFontSize:Number.NEGATIVE_INFINITY,maxFontSize:Number.POSITIVE_INFINITY},b);return this.each(function(){var f=a(this);var g=function(){f.css("font-size",Math.max(Math.min(f.width()/(e*10),parseFloat(c.maxFontSize)),parseFloat(c.minFontSize)))};g();a(window).on("resize.fittext orientationchange.fittext",g)})}})(jQuery);

/* __________________ Cookie __________________*/
/*!jQuery Cookie Plugin v1.3.1 / https://github.com/carhartl/jquery-cookie  |  Copyright 2013 Klaus Hartl / Released under the MIT license */
(function(a){if(typeof define==="function"&&define.amd){define(["jquery"],a)}else{a(jQuery)}}(function(c){var a=/\+/g;function d(f){if(b.raw){return f}try{return decodeURIComponent(f.replace(a," "))}catch(g){}}function e(f){if(f.indexOf('"')===0){f=f.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\")}f=d(f);try{return b.json?JSON.parse(f):f}catch(g){}}var b=c.cookie=function(n,m,r){if(m!==undefined){r=c.extend({},b.defaults,r);if(typeof r.expires==="number"){var o=r.expires,q=r.expires=new Date();q.setDate(q.getDate()+o)}m=b.json?JSON.stringify(m):String(m);return(document.cookie=[b.raw?n:encodeURIComponent(n),"=",b.raw?m:encodeURIComponent(m),r.expires?"; expires="+r.expires.toUTCString():"",r.path?"; path="+r.path:"",r.domain?"; domain="+r.domain:"",r.secure?"; secure":""].join(""))}var s=n?undefined:{};var p=document.cookie?document.cookie.split("; "):[];for(var k=0,h=p.length;k<h;k++){var j=p[k].split("=");var f=d(j.shift());var g=j.join("=");if(n&&n===f){s=e(g);break}if(!n&&(g=e(g))!==undefined){s[f]=g}}return s};b.defaults={};c.removeCookie=function(g,f){if(c.cookie(g)!==undefined){c.cookie(g,"",c.extend({},f,{expires:-1}));return true}return false}}));

/* __________________ MAIN MENU (uses cookie) __________________*/
/*! DC jQuery Vertical Accordion Menu - jQuery vertical accordion menu plugin  |  Copyright (c) 2011 Design Chemical
    Dual licensed under the MIT and GPL licenses: http://www.opensource.org/licenses/mit-license.php  | http://www.gnu.org/licenses/gpl.html */
(function(a){a.fn.dcAccordion=function(c){var e={classParent:"dcjq-parent",classActive:"active",classArrow:"dcjq-icon",classCount:"dcjq-count",classExpand:"dcjq-current-parent",eventType:"click",hoverDelay:300,menuClose:true,autoClose:true,autoExpand:false,speed:"slow",saveState:true,disableLink:true,showCount:false,cookie:"dcjq-accordion"};var c=a.extend(e,c);this.each(function(p){var h=this;l();if(e.saveState==true){d(e.cookie,h)}if(e.autoExpand==true){a("li."+e.classExpand+" > a").addClass(e.classActive)}j();if(e.eventType=="hover"){var g={sensitivity:2,interval:e.hoverDelay,over:o,timeout:e.hoverDelay,out:n};a("li a",h).hoverIntent(g);var f={sensitivity:2,interval:1000,over:m,timeout:1000,out:i};a(h).hoverIntent(f);if(e.disableLink==true){a("li a",h).click(function(q){if(a(this).siblings("ul").length>0){q.preventDefault()}})}}else{a("li a",h).click(function(q){$activeLi=a(this).parent("li");$parentsLi=$activeLi.parents("li");$parentsUl=$activeLi.parents("ul");if(e.disableLink==true){if(a(this).siblings("ul").length>0){q.preventDefault()}}if(e.autoClose==true){k($parentsLi,$parentsUl)}if(a("> ul",$activeLi).is(":visible")){a("ul",$activeLi).slideUp(e.speed);a("a",$activeLi).removeClass(e.classActive)}else{a(this).siblings("ul").slideToggle(e.speed);a("> a",$activeLi).addClass(e.classActive)}if(e.saveState==true){b(e.cookie,h)}})}function l(){$arrow='<span class="'+e.classArrow+'"></span>';var q=e.classParent+"-li";a("> ul",h).show();a("li",h).each(function(){if(a("> ul",this).length>0){a(this).addClass(q);a("> a",this).addClass(e.classParent).append($arrow)}});a("> ul",h).hide();if(e.showCount==true){a("li."+q,h).each(function(){if(e.disableLink==true){var r=parseInt(a("ul a:not(."+e.classParent+")",this).length)}else{var r=parseInt(a("ul a",this).length)}a("> a",this).append(' <span class="'+e.classCount+'">('+r+")</span>")})}}function o(){$activeLi=a(this).parent("li");$parentsLi=$activeLi.parents("li");$parentsUl=$activeLi.parents("ul");if(e.autoClose==true){k($parentsLi,$parentsUl)}if(a("> ul",$activeLi).is(":visible")){a("ul",$activeLi).slideUp(e.speed);a("a",$activeLi).removeClass(e.classActive)}else{a(this).siblings("ul").slideToggle(e.speed);a("> a",$activeLi).addClass(e.classActive)}if(e.saveState==true){b(e.cookie,h)}}function n(){}function m(){}function i(){if(e.menuClose==true){a("ul",h).slideUp(e.speed);a("a",h).removeClass(e.classActive);b(e.cookie,h)}}function k(q,r){a("ul",h).not(r).slideUp(e.speed);a("a",h).removeClass(e.classActive);a("> a",q).addClass(e.classActive)}function j(){a("ul",h).hide();$allActiveLi=a("a."+e.classActive,h);$allActiveLi.siblings("ul").show()}});function d(g,i){var f=a.cookie(g);if(f!=null){var h=f.split(",");a.each(h,function(k,m){var j=a("li:eq("+m+")",i);a("> a",j).addClass(e.classActive);var l=j.parents("li");a("> a",l).addClass(e.classActive)})}}function b(g,h){var f=[];a("li a."+e.classActive,h).each(function(j){var l=a(this).parent("li");var k=a("li",h).index(l);f.push(k)});a.cookie(g,f,{path:"/"})}}})(jQuery);

