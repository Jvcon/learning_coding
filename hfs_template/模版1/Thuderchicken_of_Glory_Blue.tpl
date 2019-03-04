<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<meta name="description" content="北风论坛  北风 让你自由无极限,您的需要就是我们努力的方向！ - 北风论坛!">
        <title>HFS %folder% -- 北风论坛Garphy汉化</title>
	<style>%style%</style>

<script type="text/javascript">
// Extended Tooltip Javascript
// copyright 9th August 2002, 3rd July 2005
// by Stephen Chapman, Felgall Pty Ltd
// permission is granted to use this javascript provided that the below code is not altered (so we didn't alter it...)
var DH = 0;var an = 0;var al = 0;var ai = 0;if (document.getElementById) {ai = 1; DH = 1;}else {if (document.all) {al = 1; DH = 1;} else { browserVersion = parseInt(navigator.appVersion); if ((navigator.appName.indexOf('Netscape') != -1) && (browserVersion == 4)) {an = 1; DH = 1;}}} function fd(oi, wS) {if (ai) return wS ? document.getElementById(oi).style:document.getElementById(oi); if (al) return wS ? document.all[oi].style: document.all[oi]; if (an) return document.layers[oi];}
function pw() {return window.innerWidth != null? window.innerWidth: document.body.clientWidth != null? document.body.clientWidth:null;}
function mouseX(evt) {if (evt.pageX) return evt.pageX; else if (evt.clientX)return evt.clientX + (document.documentElement.scrollLeft ?  document.documentElement.scrollLeft : document.body.scrollLeft); else return null;}
function mouseY(evt) {if (evt.pageY) return evt.pageY; else if (evt.clientY)return evt.clientY + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop); else return null;}
function popUp(evt,oi) {if (DH) {var wp = pw(); ds = fd(oi,1); dm = fd(oi,0); st = ds.visibility; if (dm.offsetWidth) ew = dm.offsetWidth; else if (dm.clip.width) ew = dm.clip.width; if (st == "visible" || st == "show") { ds.visibility = "hidden"; } else {tv = mouseY(evt) + 20; lv = mouseX(evt) - (ew/4); if (lv < 2) lv = 2; else if (lv + ew > wp) lv -= ew/2; if (!an) {lv += 'px';tv += 'px';} ds.left = lv; ds.top = tv; ds.visibility = "visible";}}}
</script>

</head>
<body>
<!-- Tip Div's -->
<div>
	<div id=t1 class=tip align=center>要加入会员,请联系我</div>
	<div id=t2 class=tip align=center>模版修改by:<br>Garphy</div>
	<div id=t3 class=tip align=center>出入站连接显示, 粉红表示连出,黄色表示连入</div>
	<div id=t4 class=tip align=center>如果你是以游客登陆的,请联系我以成为会员</div>
	<div id=t5 class=tip align=center>北风论坛  北风 让你自由无极限,您的需要就是我们努力的方向！ - 北风论坛!<br><br><b>http://bbs.78820.com</b></div>
	<div id=t6 class=tip align=center>天地无忧论坛,BBS论坛,天地无忧,BT软件,软件使用,软件下载,BT下载,BT软件,电驴下载,音乐交流,动漫,美图共赏,图片,翻唱,桌面主题,交流论坛<br><br><b>http://bbs.51soft.com</b></div>
	<div id=t7 class=tip align=center>Veen is another mate from university, his HFS is hardly on, but when it is on it has alot of cool stuff.<br><br><b>http://veen.homeftp.net:8000/</b></div>	
	<div id=t8 class=tip align=center>Malkarie is family, his HFS is hardly on, but when it is on it has alot of cool stuff.<br><br><b>http://malkar.mine.nu:666/</b></div>
	<div id=t9 class=tip align=center>Ledufe is a friend and heavy supporter of Rejetto HFS, his HFS is the testing ground for many templates and ideas for HFS, this server has an entire database of different templates for the HFS program.<br><br><b>http://ledufe.no-ip.info:2222/</b></div>
	<div id=t10 class=tip align=center>若要在新窗口里完整显示,请点击图象.</div>
<div>
<!-- End Tip Div's -->
<div class=main>
<div class=topgrph>
	<a onmouseout="popUp(event,'t3')" onmouseover="popUp(event,'t3')" href="/~progress" target=_blank><img src="/~img_graph300x80" alt="Graph" style="border:1px solid #004480;"></a>
</div>

<div class=header>
	%host%<br>%timestamp%
	<div class=dir>
		当前路径: %folder%
	</div>
</div>

<div class=navbar>
	<div style="float:right;">
		&nbsp;&#8226;&nbsp;
		<a href="/"><b>首页</b></a>
		&nbsp;&#8226;&nbsp;
		<a href="mailto: **** YOUR EMAIL ****" onmouseout="popUp(event,'t4')" onmouseover="popUp(event,'t4')"><b>会员申请</b></a>					
		&nbsp;&#8226;&nbsp;
		<a href="%encoded-folder%~files.lst" target=_blank>文件清单</a>
		&nbsp;&#8226;&nbsp;
		<a href="/~progress"  target=_blank>传输活动</a>
		&nbsp;&#8226;&nbsp;
		%login-link%%loggedin%
		&nbsp;&#8226;&nbsp;
		%upload-link%
	</div>
%up%
</div>

<table cellspacing=0 cellpadding=0 border=0 width="100%">
	<tr>
	<td valign=top>
		<div class=content>
			%folder-comment%
			%files%
		</div>
	</td>
	<td width=150 align=right valign=top class=scol>
		<div class=content style="width:150px;">
			<table cellspacing=0 cellpadding=0 border=0 width="100%">
				<tr>
					<th class=infohder align=center>服务器状态</th>
				</tr>
				<tr>
					<td class=infobox align=left>在线时长:<br>%uptime%<br><br>连接数: %connections%<br>连入: %speed-in% KB/s<br>连出: %speed-out% KB/s<br><br>您的IP:<br>%ip%</td>
				</tr>
			</table>
		</div>
		<div class=content style="width:150px;">
			<table cellspacing=0 cellpadding=0 border=0 width="100%">
				<tr>
					<th class=infohder align=center>友情连接</th>
				</tr>
				<tr>
					<td class=infobox align=left>
						&#8226;&nbsp;<a href="http://bbs.78820.com" target=_blank onmouseout="popUp(event,'t5')" onmouseover="popUp(event,'t5')">北风论坛</a><br>						
  						&#8226;&nbsp;<a href="http://bbs.51soft.com" target=_blank onmouseout="popUp(event,'t6')" onmouseover="popUp(event,'t6')">天地无忧论坛</a><br>
						&#8226;&nbsp;<a href="http://veen.homeftp.net:8000/" target=_blank onmouseout="popUp(event,'t7')" onmouseover="popUp(event,'t7')">Veen</a><br>
						&#8226;&nbsp;<a href="http://malkar.mine.nu:666/" target=_blank onmouseout="popUp(event,'t8')" onmouseover="popUp(event,'t8')">Malkarie</a><br>
						&#8226;&nbsp;<a href="http://ledufe.no-ip.info:2222/" target=_blank onmouseout="popUp(event,'t9')" onmouseover="popUp(event,'t9')">Ledufe</a>
					</td>
				</tr>
			</table>
		</div>
	</td>
	</tr>
</table>
</div>

<div align=center>
	生成页面耗时: %build-time% 秒&nbsp;&#8226;&nbsp;原始模版:<a href="http://www.rejetto.com/forum/index.php?topic=3896.0" align=center>Thunderchicken of Glory</a>,Garphy汉化修改版,HFS官方论坛:<a href="http://www.rejetto.com/hfs/" target=_blank>HFS %version%</a>;&nbsp;&#8226;&nbsp;<a href="#">定位到页面顶端</a>&nbsp;&#8226;
</div>

[login-link]
<a href="%encoded-folder%~login" id=altlink1>点击登陆</a>

[loggedin]
<b>欢迎: %user%</b>

[style]
/*
The Blue Version
Author: That Stevens Guy

Some CSS is on the template itself these usually overide something in here, all colour is found here though.
To change the colours of the layout, simply change the HEX codes, these are the numbers after #.
*/
body {
	margin: 0px 0px 15px 0px;
	padding:0px;
	font-size:12px;
	font-family:Tahoma;
	background-color:#F5FBFF;
	height:100%;
	color:#154BA0;
	overflow-x:hidden;
}

img {border:0px;}
.table {border:1px solid #fff;}
#th {color: #154BA0;}
.graph {border:2px inset #fff;}
tr.off {background-color:#F5FBFF;}
tr.on {background-color:#D9EEF9;} 
.scol {background-color:#F5FBFF;}

a:link, a:visited {
	text-decoration:none;
	color:#154BA0;
	font-weight:bold;
}

a:hover, a:active {
	color:red;
	text-decoration:none;
	font-weight:bold;
}

.tip {
	border:1px solid #7AC4EA; 
	width:250px;
	padding:2px;                   
	position:absolute; 
	z-index:100;
	visibility:hidden;	
	top:15px;
	left:90px; 
	background-color:#D9EEF9;            
	line-height:13px;
}

.main {
	border:1px solid #7AC4EA;
	background-color:#fff;
	min-height:393px;
	color:#154BA0;
	margin:15px;
}

* html div.main {height:1px;}
/*above is the css hack that allows ie to work*/

.header {
	background-color:#85C7EB;
	color:#fff;
	height:100px;
	font-size:20px; 
	font-weight:bold;
	line-height:40px; 
	padding-left:40px;
}

.navbar {
	border-top:1px solid #7AC4EA;
	border-bottom:1px solid #7AC4EA;
	background-color:#ABD0E2;
	height:20px;
	color:#154BA0;
	line-height:20px;
}

.content {
	background-color: #F5FBFF;
	border: 1px solid #7AC4EA;
	margin: 10px;
}

.infobox {
	border:1px solid #fff;
	padding:5px;
}

.topgrph {
	position:absolute;
	top:25px;
	right:25px;	
}

.infohder {
	border-top:1px solid #fff;
	border-left:1px solid #fff;
	border-right:1px solid #fff;
}

.rw {
	border-top:1px solid #fff;
	border-left:1px solid #fff;
	height:30px;
}

th {
	background-color:#ABD0E2;
	color:#154BA0;
	height:30px;
	border-left:1px solid #fff;
}

.comment {
	font:12px normal;
	color:#666666;
	border-top:1px solid #fff;
}

.error {
	padding:10px;
	margin:15px;
	border:1px solid #7AC4EA;
	background-color:#ABD0E2;
}

.dir {
	font-size:11px;
	line-height:10px;
	font-weight:normal;
}

.new {
	color:red;
	border:1px solid #7AC4EA;
	font-size:11px;
	background-color:#fff;
	font-weight:normal;
}

[upload-link]
<a href="%encoded-folder%~upload">上传文件</a>&nbsp;&#8226;&nbsp;

[up]
<a href="%parent-folder%">&nbsp;&nbsp;<b>返回上层目录</b></a>

[nofiles]
<h3><i>? 此为空文件夹 ?</i></h3>

[folder]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="border-left:0px;"><a href="%item-url%">&nbsp;<img align=top src="/~img_folder" alt=""><b> %item-name%</b></a>%new% %comment%</td>
	<td class=rw align=center><i><font size=2>目录</font></i></td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[files]
<table class=table width="100%" cellspacing=0 cellpadding=0>
	<tr>
		<th style="border:0px;"><a href="%encoded-folder%?sort=n" id=th>文件名</a></th>
		<th><a href="%encoded-folder%?sort=s"  id=th>文件大小</a></th>
		<th><a href="%encoded-folder%?sort=t"  id=th>修改时间</a></th>
		<th>点击数</th>
	</tr>
	%list%
</table>

[file]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="border-left:0px;"><a href="%item-url%">&nbsp;<img align=top src="/~img_file" alt=""> %item-name%</a>%new% %comment%</td>
	<td class=rw align=center>%item-size%</td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[file.jpg]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="padding:0px;border-left:0px;">	
		<a href="%item-url%" target=_blank><div style="position:absolute;z-index:20;" onmouseout="popUp(event,'t10')" onmouseover="popUp(event,'t10')"><img src="/index/thumb/%item-name%" alt=""></div></a>
		<div style="z-index:10;"><img src="/index/thumb/nt.gif" alt="" align=absmiddle>&nbsp;<img src="/~img_file"><a href="%item-url%" target=_blank>&nbsp;%item-name%</a>%new%%comment%</div>	
		</td>
	<td class=rw align=center>%item-size%</td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[file.gif]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="padding:0px;border-left:0px;">	
		<a href="%item-url%" target=_blank><div style="position:absolute;z-index:20;" onmouseout="popUp(event,'t10')" onmouseover="popUp(event,'t10')"><img src="/index/thumb/%item-name%" alt=""></div></a>
		<div style="z-index:10;"><img src="/index/thumb/nt.gif" alt="" align=absmiddle>&nbsp;<img src="/~img_file"><a href="%item-url%" target=_blank>&nbsp;%item-name%</a>%new%%comment%</div>	
		</td>
	<td class=rw align=center>%item-size%</td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[file.bmp]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="padding:0px;border-left:0px;">	
		<a href="%item-url%" target=_blank><div style="position:absolute;z-index:20;" onmouseout="popUp(event,'t10')" onmouseover="popUp(event,'t10')"><img src="/index/thumb/%item-name%" alt=""></div></a>
		<div style="z-index:10;"><img src="/index/thumb/nt.gif" alt="" align=absmiddle>&nbsp;<img src="/~img_file"><a href="%item-url%" target=_blank>&nbsp;%item-name%</a>%new%%comment%</div>	
		</td>
	<td class=rw align=center>%item-size%</td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[file.mp3]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="border-left:0px;"><a href="%item-url%">&nbsp;<img align=top src="/~img_file" alt=""> %item-name%</a>%new% %comment%<td class=rw align=center>%item-size%</td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center width=100>&nbsp;%item-dl-count%<br>
		<object>
  			<param value="/index/mp3player.swf" />
				<param name="flashvars"/><embed src="/index/mp3player.swf" width="100" height="19" name="mp3player" flashvars="file=%item-url%" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
			</param>
		</object>
	</td>
</tr>

[link]
<tr class=off onmouseover="this.className='on'" onmouseout="this.className='off'">
	<td class=rw style="border-left:0px;"><a href="%item-url%">&nbsp;<img align=top src="/~img_link"> %item-name%</a> %new%%comment%</td>
	<td colspan=3 class=rw><i>&nbsp;超链接</i></td>
</tr>

[comment]
<div class=comment>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%item-comment%</div>

[folder-comment]
<div class=comment>%item-comment%</div>

[error-page]
<html>
<head>
	<style>%style%</style>
</head>
<body>
	%content%
</body>
</html>

[not found]
<div class=error>
	<h1>HTTP 404 -  Not Found</h1><a href="/">&nbsp;&nbsp;<b>返回根目录</b></a>
</div>

[overload]
<div class=error>
	<h1>服务期忙,请稍后再试</h1>
</div>

[max contemporary downloads]
<div class=error>
	<h1>下载限制</h1><br>服务器存在<b>并发</b>下载数限制.
<br />目前已达到限制,请稍后再试.
</div>

[unauthorized]
<div class=error>
	<h1>未授权</h1>该资源为私密资源.<br />你输入的账户和密码不对.<br><br>
	<a href="/">&nbsp;&nbsp;<b>返回根目录</b></a>
</div>

[deny]
<div class=error>
	<h1>无法访问</h1>该资源您无法访问.
</div>

[ban]
<div class=error>
<h1>你被列入黑名单!</h1>由于以下原因你被列入黑名单:<br> %reason%
</div>

[upload]
<html>
<head>
	<title>上传到: %folder%</title>	
	<style>%style%</style>

<script type="text/javascript">
// Extended Tooltip Javascript
// copyright 9th August 2002, 3rd July 2005
// by Stephen Chapman, Felgall Pty Ltd
// permission is granted to use this javascript provided that the below code is not altered (so we didn't alter it...)
var DH = 0;var an = 0;var al = 0;var ai = 0;if (document.getElementById) {ai = 1; DH = 1;}else {if (document.all) {al = 1; DH = 1;} else { browserVersion = parseInt(navigator.appVersion); if ((navigator.appName.indexOf('Netscape') != -1) && (browserVersion == 4)) {an = 1; DH = 1;}}} function fd(oi, wS) {if (ai) return wS ? document.getElementById(oi).style:document.getElementById(oi); if (al) return wS ? document.all[oi].style: document.all[oi]; if (an) return document.layers[oi];}
function pw() {return window.innerWidth != null? window.innerWidth: document.body.clientWidth != null? document.body.clientWidth:null;}
function mouseX(evt) {if (evt.pageX) return evt.pageX; else if (evt.clientX)return evt.clientX + (document.documentElement.scrollLeft ?  document.documentElement.scrollLeft : document.body.scrollLeft); else return null;}
function mouseY(evt) {if (evt.pageY) return evt.pageY; else if (evt.clientY)return evt.clientY + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop); else return null;}
function popUp(evt,oi) {if (DH) {var wp = pw(); ds = fd(oi,1); dm = fd(oi,0); st = ds.visibility; if (dm.offsetWidth) ew = dm.offsetWidth; else if (dm.clip.width) ew = dm.clip.width; if (st == "visible" || st == "show") { ds.visibility = "hidden"; } else {tv = mouseY(evt) + 20; lv = mouseX(evt) - (ew/4); if (lv < 2) lv = 2; else if (lv + ew > wp) lv -= ew/2; if (!an) {lv += 'px';tv += 'px';} ds.left = lv; ds.top = tv; ds.visibility = "visible";}}}
</script>

</head>
<body>

<div id="tProg" class="tip" align=center>点击打开左侧状态栏, 它将显示上传情况.</div>

<div class=main>
	<div class=header>
		%host%<br>%timestamp% 
		<div class=dir>
		上传到: %folder%
		</div>
	</div>
	<div class=navbar>
		<div style="float:right;">
			&nbsp;&#8226;&nbsp;
			<a target=_top href="%encoded-folder%~upload+progress" onmouseout="popUp(event,'tProg')" onmouseover="popUp(event,'tProg')">打开进度条</a>
			&nbsp;&#8226;&nbsp;
			<a target=_top href="%encoded-folder%~upload">关闭进度条</a>
			&nbsp;&#8226;&nbsp;
			<b>已登陆为: %user%</b>
			&nbsp;&#8226;&nbsp;
		</div>
	<a href="%encoded-folder%" target=_parent>&nbsp;&nbsp;返回</a>
	</div>
	<center>	
		<div class=content>
			<br><b>有效服务器空间: %diskfree%</b><br><br>
			<form action="%encoded-folder%" target=_parent method=post enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true; return true;">%upload-files%<br><input name=upbtn type=submit value="上传指定文件"></form>
			<div>
				<img src="/~img9" alt="">
				上传过程中<b>请勿</b>打开传输活动页面,否则将影响上传!<br><br>
			</div>
		</div>	
	</center>
	</div>
</body>
</html>

[upload-file]
<center>	<input name="fileupload%idx%" size=50 type=file></center>

[upload-results]
<html>
<head>
	<title>上传结果: %folder%</title>
	<style>%style%</style>
</head>
<body>
<div class=error>
	%uploaded-files%<br><br><a href="%encoded-folder%" target=_parent>&nbsp;&nbsp;返回</a>
</div>
</body>
</html>

[upload-success]
<li><b>上传成功!</b> 上传文件: %item-name% --- %item-size% (上传速度: %speed% KB/s)

[upload-failed]
<li><b>上传失败!</b> 上传错误: %item-name%: --- %reason%

[upload+progress]
<html>
<head>
	<title>上传到: %folder%</title>
	<frameset cols=250,*>
	<frame name=progress src="/~progress">
	<frame src="%encoded-folder%~upload-no-progress">
	</frameset>
</head>
</html>

[progress]
<html>
<head>
	<meta http-equiv="Refresh" content="3;URL=/~progress">
	<title>传输活动</title>
	<style>%style%</style>
</head>
<body>
<div class=main>
	<center>
		<h1>传输活动</h1>
		刷新率: 3秒<br><img src="/~img_graph180x50" alt="Graph" class=graph><br><br>
		<div class=content>%progress-files%</div>
	</center>
</div>
</body>
</html>

[progress-nofiles]
<h2>无传输活动</h2>

[progress-upload-file]
<div>
	<b><u>上传</u><br>%filename%</b><br>
	%done-bytes% / %total-bytes% bytes<br>
	当前上传速度:<br>%speed-kb% KB/s<br>
	完成率: %perc%%	
</div>

[progress-download-file]
<div>
	<b><u>下载</u><br>%filename%</b><br>
	%done-bytes% / %total-bytes% bytes<br>
	当前下载速度:<br>%speed-kb% KB/s<br>
	完成率: %perc%%	
</div>

[newfile]
&nbsp;<span class=new>&nbsp;New&nbsp;</span>