/*
RAWR-PreviewBox - JS

 (c) 2007-2010, RAWR-Designs, Some Rights Reserved -
	Christopher "That Stevens Guy" Stevens
	Richard "Giant Eagle" Tuininga
 (CC) http://creativecommons.org/licenses/by-nc-sa/3.0

 Any queries? -
	Email: contact[at]rawr-designs.com
	Forum: http://www.rawr-designs.com/forum/
 	Homepage: http://www.rawr-designs.com
*/
var disable	= false;
var boxOpen	= null;
var ext;
// Initialisation
function initBox(target,file) {
	ext = file.substring(file.lastIndexOf("."),file.length);
	ext = ext.toLowerCase();
    if (disable == false) {
        disable = true;
        setTimeout("disable=false;", 350);
		if(target != boxOpen) {
			if(boxOpen!=null) boxFade(boxOpen,"out");
			if(ext.match(".jpg|.jpeg|.png|.bmp|.tif|.tiff")) spawnIMGBox(target,file);
			else if(ext.match(".flv|.mp3|.mp4|.m4a|.mov|.aac|.3gp")) spawnRAWRBox(target,file);
			else if(ext.match(".divx|.avi|.mkv")) spawnDIVXBox(target,file);
			else if(ext.match(".wmv|.wma")) spawnWMBox(target,file);
			else if(ext==".swf") spawnSWFBox(target,file);
			else if(ext=="search") spawnSEARCHBox(target,file);
		} else {
			boxFade(boxOpen,"out");
		}
    }
}
// Spawn Container
function spawnBox(target,width,height) {
	gEBI(target).innerHTML = "<div class=Box style='width:"+(width+10)+"px;filter:alpha(opacity=0);opacity:0' id="+target+"Box><div style='width:"+(width+2)+"px' class=daBox1><span class=ModuleTitle id="+target+"Name><i>载入...</i></span><a href=\"javascript:void(0)\" onClick=\"boxFade('"+target+"','out')\" style='cursor:normal;float:right'><div class=clo></div></a><div id=movIcon class=mov style='cursor:move;float:right;margin-right:5px'></div></div><div class=daBox2><div style='width:"+width+"px;height:"+height+"px;background:url(/template/images/loading.gif) no-repeat center center' id="+target+"Content></div></div><div style='width:"+(width+10)+"px' class=daBox3>&nbsp;</div></div>";
	Box = gEBI(target+"Box");
	Box.style.left = Box.offsetLeft-530+(480-Box.offsetWidth)+"px";
	Box.style.top = Box.offsetTop-(Box.offsetHeight+18)/2+"px";
	boxFade(target,"in");
	document.onmousedown = startDrag;
}
// Insert Search
function spawnSEARCHBox(target,file) {
	spawnBox(target,300,62);
	setTimeout("setSEARCHBox(\""+target+"\",\""+file+"\");",300);
}
function setSEARCHBox(target,file) {
	gEBI(target+"Box").firstChild.style.cursor="default";
	gEBI("movIcon").style.display='none';
	document.onmousedown = null;
	ext="";
	setName("高级搜索.");
	gEBI(target+"Content").innerHTML = "<form name=searchForm method=get action=\"javascript:searchQuery()\" style=\"margin:0;font-size:11px\"><input type=text name=query size=29 maxlength=32 value=\""+document.simpleSearch.search.value+"\" onclick=\"this.value=''\" class=\"formInput\"/> <input type=submit name=searchBtn value=搜索 /><br><input type=radio name=choice value=\"file\"/> 文件<input type=radio name=choice value=\"folder\"/> 文件夹<input type=radio name=choice value=\"both\" checked=1/> 全部<input type=checkbox name=recursive checked=1/> 包含子文件夹<br><input type=radio name=root value=\"root\" checked=1/> 搜索根目录<input type=radio name=root value=\"current\"/> 搜索当前目录</form>";
	gEBI(target+"Content").style.background="transparent";
}
// Insert Image
function spawnIMGBox(target,file) {
	img = new Image();
	img.src = "previews_and_thumbnails/prev-"+file.substring(file.lastIndexOf("/")+1,file.length)+".jpg";
	if(img.complete) {
		spawnBox(target,img.width,img.height);
		setIMGBox(target,file,"setImmediatly");
	} else {
		setTimeout("setIMGBox(\""+target+"\",\""+file+"\",\"none\");",10);
	}
}
function setIMGBox(target,file,status) {
	if(img.width!=0) {
		if(status == "none") {
			spawnBox(target,img.width,img.height);
			status = "boxLoaded";
		}
		if(status == "boxLoaded") {
			setTimeout("setIMGBox(\""+target+"\",\""+file+"\",\"setImage\");",325);
		} else if(status == "setImage") {
			if(img.complete) {
				gEBI(target+"Content").innerHTML = "<img src=\""+img.src+"\" id="+target+"ImageBox style='filter:alpha(opacity=0);opacity:0'/>";
				boxFade(target,"img");
				setName(file);
				img = null;
			} else {
				setTimeout("setIMGBox(\""+target+"\",\""+file+"\",\"setImage\");",200);
			}
		} else if(status == "setImmediatly") {
			gEBI(target+"Content").innerHTML = "<img src=\""+img.src+"\"/>";
			setName(file);
			img = null;
		}
	} else {
		setTimeout("setIMGBox(\""+target+"\",\""+file+"\",\"none\");",50);
	}
}
// Insert RAWR-Player
var volume = 50;
var height, width;
var playmethod = 'single';
var context	= 'on';
function spawnRAWRBox(target,file) {
	height = ext.match('.flv|.mp4|.mov|.3gp')?390:ext=='.m4a'||ext=='.aac'?30:50;
	width = ext.match('.flv|.mp4|.mov|.3gp')?640:400;
	spawnBox(target,width,height);
	setTimeout('setRAWRBox("'+target+'","'+file+'");',300);
}
function setRAWRBox(target,file) {
	setName(file);
	file = file.replace('+','%2B').replace('&','%26');
	volume = getCookie('Volume') ? getCookie('Volume') : volume;
	playmethod = getCookie('Method') ? getCookie('Method')+"&mode=full" : "single&mode=full";
	if(autoplay == true) playmethod = 'single';
	gEBI(target+'Content').innerHTML = '<embed type="application/x-shockwave-flash" width='+width+' height='+height+' allowscriptaccess=always allowfullscreen=true wmode=direct flashvars="theme=terayon&volume='+volume+'&playmethod='+playmethod+'&autoplay=1&context='+context+'&file='+file+'" src="/template/players/rawr_player.swf"/>';
	autoplay = false;
}
// Insert DivX
function spawnDIVXBox(target,file) {
	spawnBox(target,640,380);
	setTimeout('setDIVXBox("'+target+'","'+file+'");',300);
}
function setDIVXBox(target,file) {
	setName(file);
	gEBI(target+'Content').innerHTML = '<object type="video/divx" width=640 height=380><param name=src value="'+file+'" /><param name=autoplay value=true /></object>';
}
// Insert WM
function spawnWMBox(target,file) {
	height = ext!='.wma'?405:45;
	width = ext!='.wma'?640:400;
	spawnBox(target,width,height);
	setTimeout('setWMBox("'+target+'","'+file+'");',300);
}
function setWMBox(target,file) {
	setName(file);
	gEBI(target+"Content").innerHTML = '<object type="application/x-mplayer2" width='+width+' height='+height+'><param name=filename value="'+file+'" /><param name=autostart value=true /></object>';
}
// Insert SWF
function spawnSWFBox(target,file) {
	spawnBox(target,413,300);
	setTimeout("setSWFBox(\""+target+"\",\""+file+"\");",300);
}
function setSWFBox(target,file) {
	setName(file);
	gEBI(target+"Content").innerHTML = "<embed width=413 height=300 type='application/x-shockwave-flash' src=\""+file+"\"/>";
}
// Crop Filename
function setName(file) {
	name = decodeURI(file.substring(file.lastIndexOf('/')+1,file.lastIndexOf('.')));
	gEBI(boxOpen+'Name','inn',name+ext);
	while (gEBI(boxOpen+'Box').offsetWidth-50 < gEBI(boxOpen+'Name').offsetWidth ||gEBI(boxOpen+'Name').offsetHeight > 31) {
		name = name.substring(0,name.length-4)+'.. ';
		gEBI(boxOpen+'Name','inn',name+ext);
	}
}
// Fade
var method;
function boxFade(target,method,alpha){
	method=="img"?id=gEBI(target+"ImageBox"):id=gEBI(target+"Box");
	if(!alpha) {
		if(method=="in"||method=="img") {
			if(method=="in") boxOpen=target;
			for(q=24;q>0;q--) setTimeout("boxFade(\""+target+"\",\""+method+"\",\""+q*4+"\");",q*12);
			setTimeout("gEBI(\""+id.id+"\").style.opacity=0.99;",300);
			setTimeout("gEBI(\""+id.id+"\").style.filter='alpha(opacity=100)';",300);
		} else if(method=="out") {
			if(gEBI(target+"Content").innerHTML.substr(1,3)!="img") gEBI(target+"Content").innerHTML="";
			id.name="fadingOut";
			if(boxOpen==target) boxOpen=null;
			for(p=24;p>0;p--) setTimeout("boxFade(\""+target+"\",\"out\","+(100+p*-4)+");",p*12);
			setTimeout("gEBI(\""+target+"\").innerHTML='';",300);
		}
	} else {
		if((method=="in"||method=="img")&&id.name!="fadingOut"||method=="out") {
			id.style.filter="alpha(opacity="+alpha+")";
			id.style.opacity=alpha/100;
		}
	}
}
// Drag
var sObj = null;
var drgOK = false;
var dX=dY=sX=sY	= 0;
function startDrag(e) {
	if(e==null)e=window.event;
	var t=e.target!=null?e.target:e.srcElement;
	try {
		if(t.parentNode.className=="Box"||t.parentNode.parentNode.className=="Box"||t.parentNode.parentNode.parentNode.className=="Box") {
			sObj = t.parentNode.parentNode.parentNode.className=="Box"?t.parentNode.parentNode.parentNode:t.parentNode.parentNode.className=="Box"?t.parentNode.parentNode:t.parentNode;
			drgOK = true;
			dX = e.clientX-parseInt(sObj.style.left);
			dY = e.clientY-parseInt(sObj.style.top);
			sX = document.documentElement.scrollLeft;
			sY = document.documentElement.scrollTop;
			gEBI(boxOpen).style.cursor = 'move';
			document.onmousemove = drag;
			document.onmouseup = endDrag;
			return false;
		}
	} catch(e) {}
}
function drag(e) {
	if(e==null)e=window.event;
	if(e.button <= 1 && drgOK) {
		sObj.style.left = e.clientX-dX+(document.documentElement.scrollLeft-sX)+'px';
		sObj.style.top = e.clientY-dY+(document.documentElement.scrollTop-sY)+'px';
		return false;
	}
}
function endDrag(e) {
	gEBI(boxOpen).style.cursor = "default";
	document.onmousemove = document.onmouseup = null;
	drgOK = false;
}
// Change Media
function changeMedia(method) {
	if(method=="shuffle") {
		nr =Math.round(Math.random()*playList.length-1);
		while(boxOpen==playList[nr].boxid) nr =Math.round(Math.random()*playList.length-1);
		initBox(playList[nr].boxid,playList[nr].name);
		return false;
	}
	for(i=0;i<playList.length;i++) {
		if(boxOpen == playList[i].boxid) {
			nr = method=="next"?playList[i+1]?i+1:0:i-1>=0?i-1:playList.length-1;
			initBox(playList[nr].boxid,playList[nr].name);
			return false;
		}
	}
}
// RAWR-Player Interface
function playerVolume(volume) {
	setCookie('Volume',volume,exp);
}
function playbackMethod(playmethod) {
	setCookie('Method',playmethod,exp);
}