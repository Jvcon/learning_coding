/*
Terayon - JS

 (c) 2007-2010, RAWR-Designs, Some Rights Reserved -
	Christopher "That Stevens Guy" Stevens
	Richard "Giant Eagle" Tuininga
 (cc) http://creativecommons.org/licenses/by-nc-sa/3.0

 Any queries? -
	Email: contact[at]rawr-designs.com
	Forum: http://www.rawr-designs.com/forum/
 	Homepage: http://www.rawr-designs.com
*/
/* Pageload function. */
var autoplay = false;
var playList = new Array();
/* Initiate page load functions */
function pageLoad() {
//Set module state according to cookie.
	if (getCookie("ModuleTable")=="pinned") hideShow("ModuleTable");
	if (getCookie("ShoutBox")!="normal") hideShow("ShoutBox");
	if (getCookie("ServerStatistics")!="normal") hideShow("ServerStatistics");
	if (getCookie("ServerTraffic")=="pinned") hideShow("ServerTraffic");
	if (getCookie("FolderOptions")=="pinned") hideShow("FolderOptions");
//Autoplay a media file.
	if(document.location.href.indexOf("?playMedia=")!=-1) {
		autoplay = true;
		file = document.location.href.split("?playMedia=");
		setTimeout("initBox(\"specialBox\",\""+file[0]+file[1]+"\");",500);
	}
//Create dynamic playlist.
	var ele = document.getElementsByTagName("div");
	for(i=0,j=0;i<ele.length;i++) {
		if(ele[i]) if(ele[i].getAttribute("name")) if(ele[i].getAttribute("name")=="mediaFile") {
			playList[j] = ele[i]
			playList[j].name = ele[i].firstChild.name
			playList[j].boxid = ele[i].childNodes[1].id
			j++;
		}
	}
//Execute updating statistics.
	ahah(1);
}
/* Shortened document.getElementById. */
function gEBI(a,b,c) {
	if(!b&&!c)return document.getElementById(a);
	if(b=="inn")if(c)gEBI(a).innerHTML=c; else return gEBI(a).innerHTML;
	if(b=="add"&&c)gEBI(a).innerHTML+=c;
}
/* Cookie Code. */
var exp = new Date();//New date object.
exp.setTime(exp.getTime()+(1000*60*60*24*7));//Set timeout to 7 days.
function setCookie(name,val,expires) {
	document.cookie=name+"="+escape(val)+"; path=/"+((expires == null)?"":"; expires="+expires.toGMTString());
}
function getCookie(name) {
	cname=name+"="; 
	dc=document.cookie;
	if(dc.length>0) {
		begin=dc.indexOf(cname); 
		if(begin!=-1) { 
			begin+=cname.length; 
			end=dc.indexOf(";",begin);
			if(end==-1)end=dc.length;
			return unescape(dc.substring(begin,end));
		} 
	}
	return null;
}
/* Module pinning. */
function pinModule(mod) {
	cookie = getCookie(mod)?getCookie(mod):"normal";
	if (cookie=="normal") setCookie(mod,"pinned",exp);
	else setCookie(mod,"normal",exp);
	hideShow(mod);
}
/* Module Hide/Show */
function hideShow(mod) {
	try {
		infbx=gEBI(mod);
		hsLnk=gEBI(mod+"_Link");
		if(infbx.style.display=="none") {
			infbx.style.display="block";
			hsLnk.innerHTML="<div class=hid>";
			hsLnk.title="隐藏当前模块";
			if(mod=="ModuleTable")hsLnk.title="隐藏模块面板";
		} else {
			infbx.style.display="none";
			hsLnk.innerHTML="<div class=sho>";
			hsLnk.title="显示当前模块";
			if(mod=="ModuleTable")hsLnk.title="显示模块面板";
		}
	} catch (e) {}
}

/* Update the Server Traffic Module */
function ahah() {
	req=window.XMLHttpRequest?new XMLHttpRequest():window.ActiveXObject?new ActiveXObject("Microsoft.XMLHTTP"):'';
	if(req!=undefined && gEBI("ServerTraffic").style.display != "none") {
		req.onreadystatechange=function(){ahahDone();};
		req.open("GET","/~stats.html?"+Math.random(),true);
		req.send("")
	} else
		window.setTimeout("ahah();", 20000);
}
function ahahDone() {
	if(req.readyState==4 && req.status==200) {
		gEBI("ServerTraffic","inn",req.responseText);
		window.setTimeout("ahah();", 10000);
	}
}
/* RAWR Search Form. */
function searchQuery() {
	frm = document.searchForm;
	if(frm.query.value.length < 3) {
		alert("请输入三个以上字符。");
	} else {
		frm.recursive.checked ?	recursive ="&recursive" : recursive ="";
		for(x=0; x<frm.choice.length; x++) {
			if(frm.choice[x].checked ==1) {
				if(frm.choice[x].value =="file") {
					searchMode ="?files-filter=";
					filter="&folders-filter=%5C";
				} else if(frm.choice[x].value =="folder") {
					searchMode ="?folders-filter=";
					filter="&files-filter=%5C";
				} else {
					searchMode ="?filter=";
					filter="";
				}
			}
		}
		for(c=0; c<frm.root.length; c++) {
			if(frm.root[c].checked ==1) {
				frm.root[c].value =="current" ?	searchFrom ="http://"+serverHost+serverFolder : searchFrom ="http://"+serverHost;
			}
		}
		document.location.href = searchFrom+searchMode+"*"+frm.query.value+"*"+recursive+filter;
	}
}