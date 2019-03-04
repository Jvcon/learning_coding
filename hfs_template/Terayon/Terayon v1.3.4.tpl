[special:strings]
Permanent Setting - DO NOT TOUCH!!!
build=1.3.4

[special:import]
{.add folder|real|template.}
{.set item|/template|hide=1|no log=1|not as download=*.}
{.dialog|
Thank you for choosing the Terayon!

Remember to check for updates and visit us at:
http://www.RAWR-Designs.com
.}

[copyright]
<!--
 Terayon v{.!build.}

 (c) 2007-2010, RAWR-Designs, Some Rights Reserved -
	Christopher "That Stevens Guy" Stevens
	Richard "Giant Eagle" Tuininga
 (cc) http://creativecommons.org/licenses/by-nc-sa/3.0

 Any queries? -
	Email: contact[at]rawr-designs.com
	Forum: http://www.rawr-designs.com/forum/
 	Homepage: http://www.rawr-designs.com
-->

[]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{.$copyright.}
<head>
	<title id="title">信息中心 :: {.if|{.$search-data.}|搜索结果|%folder-name%.}</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
	<script type="text/javascript">
		var serverFolder="%folder%";
		var serverHost="%host%";
	</script>
	<script type="text/javascript" src="/template/code/terayon_main.js"></script>
	<script type="text/javascript" src="/template/code/terayon_previewbox.js"></script>
</head>
<body>
<!--{.comment|--><h1>警告: 此模板运行到 HFS 2.3 及以上版本，请启用宏。</h1><!--.} -->
<table width="85%" style="margin:auto" class="bodyline" cellpadding="10" cellspacing="0">
<tr>
	<td>
{.$header.}
{.$controls.}
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td valign="top" width="100%" style="padding-top:10px">
			%files%
		</td>
		<td valign="top" nowrap="nowrap" id="ModuleTable" align="right" style="padding-left:10px">
{.$updates.}
{.$FolderOptions.}
{.$ServerTraffic.}
{.$ServerStatistics.}
{.$ShoutBox.}
		</td>
	</tr>
	</table>
{.$credits.}
	</td>
</tr>
</table>
<script type="text/javascript">pageLoad();</script>
<!-- Page generated in %build-time% seconds. -->
</body>
</html>
[updates]
{.if|{.match|127.*;10.*;192.168.*|%ip%.}|
			<div class="Module" id="ModuleBox" align="left">
				<div class="ModuleRow1"><span class="ModuleTitle">检查更新</span></div>
					<div class="ModuleRow2">
						<div class="ModuleText">
{.if|{.?updates.}|
		{:
			{.set|new_build|{.load|http://www.rawr-designs.com/updater.php?project=terayon&ext=.txt.}.}	
			<div class="Arrow"><span class="Response" style="float:right">[{.!build.}]</span>当前版本:</div>
			<div class="Arrow"><span class="Response" style="float:right">[{.^new_build.}]</span>最新版本:</div>
			<br/><hr size=1>
			<div class="Arrow">
			<a href="http://www.rawr-designs.com/projects/terayon/" target="_blank">
			{.if|{.{.^new_build.}={.!build.}.}|首页|下载 {.^new_build.}.}
			</a>
			</div>
		:}
|<div class="Arrow"><a href="http://%host%%encoded-folder%?updates=1">立即检查!</a></div>.}
					</div>
				</div>
				<div class="ModuleRow3">&nbsp;</div>
			</div>
.}
[header]
			<div class="header">
				<div style="padding:10px 8px">
					<img src="/template/images/headerL.gif" alt="top" align="left"/>
					<img src="/template/images/headerR.gif" alt="top1" style="float:right"/><br/>
					<div class="MessageHeader" align="center">http://%host%/</div>
				</div>
			</div>
[controls]
			<div class="controls" align="center">
				<span class="nav_top">
					<a href="/">首页</a>
					<a href="javascript:void(0);" onclick="window.open('/~progress','Transfers','width=360,height=500,left=100,top=100,scrollbars=1,resizable=1');">传输状态</a>
					<a href="">当前用户: [{.if|%user%|%user%|游客.}]</a> <a href="~login">登录</a>
					{.if|{.get|can upload.}|<a href="~upload" title="Upload files">上传文件</a>.}
				</span>
			</div>
[FolderOptions]
				<div class="Module" id="ModuleBox" align="left">
				<div class="ModuleRow1">
					<span class="ModuleTitle">文件夹选项</span>
					<a href="javascript:pinModule('FolderOptions');" class="ModuleLink" id="FolderOptions_Link"><div class="hid">&nbsp;</div></a>
				</div>
				<div class="nav1"></div>
				<div class="ModuleRow2" id="FolderOptions">
					<span id="specialBox"></span>
					<div class="ModuleText">
						这个文件夹下包含:<br/>
						<div class="Arrow"><span class="Response">[%number-folders%]</span> 个子文件夹, <span class="Response">[%number-files%]</span> 个文件</div>
						<div class="Arrow">总大小: <span class="Response">[%total-size%]</span></div>
						<br/><hr size=1>
						<div style="margin-top:9px">排序依据:</div>
						<div class="Arrow float" style="width:70px"><a href="{.get|url|sort=n|rev={.and|{.?sort=n.}|{.not|{.?rev.}.}.}.}" class="Response">文件名</a></div>
						<div class="Arrow float"><a href="{.get|url|sort=s|rev={.and|{.?sort=s.}|{.not|{.?rev.}.}.}.}" class="Response">大小</a></div><br/>
						<div class="Arrow float" style="width:70px"><a href="{.get|url|sort=d|rev={.and|{.?sort=d.}|{.not|{.?rev.}.}.}.}" class="Response">点击量</a></div>
						<div class="Arrow float"><a href="{.get|url|sort=t|rev={.and|{.?sort=t.}|{.not|{.?rev.}.}.}.}" class="Response">修改日期</a></div><br/>
						<div class="Arrow float"><a href="{.get|url|sort=e|rev={.and|{.?sort=e.}|{.not|{.?rev.}.}.}.}" class="Response">类型</a></div></br/><br/>
						<br/><hr size=1>
						<div style="margin-top:9px">扩展功能:</div>
						<div class="Arrow"><a href="?tpl=list&amp;folders-filter=%5C{.if|{.get|can recur.}|&amp;recursive.}" class="Response">以文件列表显示此页面</a></div>
						{.if|{.get|can upload.}|<div class="Arrow"><a href="~upload" class="Response" title="Upload files">上传文件</a></div>.}
						{.if|{.get|can archive.}|<div class="Arrow"><a href="%folder%~folder.tar{.if|{.get|can recur.}|?recursive.}" class="Response">打包下载此文件夹</a></div>.}
						<br/><hr size=1>
						<form action="/" method="get" style="padding:5px 0px 0px;margin:0px" name="simpleSearch"><input type="text" name="search" value="{.$search-data.}" onclick="this.value=''" style="width:100px"/> <input type="submit" value="搜索"/></form>
						<div class="Arrow" style="margin-top:3px"><a href="javascript:initBox('specialBox','search');" class="Response">高级搜索</a></div>
					</div>
				</div>
				<div class="ModuleRow3">&nbsp;</div>
			</div>
[ServerTraffic]
			<span id="ProgressBox"></span>
			<div class="Module" id="ModuleBox" align="left">
				<div class="ModuleRow1">
					<span class="ModuleTitle">服务器通讯状态</span>
					<a href="javascript:pinModule('ServerTraffic');" class="ModuleLink" id="ServerTraffic_Link"><div class="hid">&nbsp;</div></a>
				</div>
				<div class="ModuleRow2" id="ServerTraffic">
					<div class="ModuleText">
						入站:<br/>
						<div class="Arrow"><span class="Response">[%total-uploads%]</span> 个文件已上传</div>
						<div class="Arrow">总大小: <span class="Response">[%total-in%]</span></div>
						<div class="Arrow">上行速率: <span class="Response">[%speed-in% KB/s]</span></div>
						<div class="Arrow">连接数: <span class="Response">[%connections%]</span></div>
						<br/><hr size=1>
						<div style="margin-top:9px">出站:</div>
						<div class="Arrow"><span class="Response">[%total-downloads%]</span> 个文件已下载</div>
						<div class="Arrow">总大小: <span class="Response">[%total-out%]</span></div>
						<div class="Arrow">下行速率: <span class="Response">[%speed-out% KB/s]</span></div>
						<div class="Arrow">总点击量: <span class="Response">[%total-hits%]</span></div>
					</div>
				</div>
				<div class="ModuleRow3">&nbsp;</div>
			</div>
[ServerStatistics]
				<div class="Module" id="ModuleBox" align="left">
				<div class="ModuleRow1">
					<span class="ModuleTitle">服务器统计</span>
					<a href="javascript:pinModule('ServerStatistics');" class="ModuleLink" id="ServerStatistics_Link"><div class="hid">&nbsp;</div></a>
				</div>
				<div class="ModuleRow2" id="ServerStatistics">
					<div class="ModuleText">
					服务器时间:<br/>
					<div class="Arrow">日期: <span class="Response">[%date%]</span></div>
					<div class="Arrow">时间: <span class="Response">[%time%]</span></div><br/>
					服务器已运行时间:<br/>
					<div class="Arrow"><span class="Response">[%uptime%]</span></div><br/>
					您的IP:<br/>
					<div class="Arrow"><span class="Response">[%ip%]</span></div>
					</div>
				</div>
				<div class="ModuleRow3">&nbsp;</div>
			</div>
[ShoutBox]
			<div class="Module" id="ModuleBox" align="left">
				<div class="ModuleRow1">
					<span class="ModuleTitle">留言板</span>
					<a href="javascript:pinModule('ShoutBox');" class="ModuleLink" id="ShoutBox_Link"><div class="hid">&nbsp;</div></a>
					</div>
					<div class="ModuleRow2" id="ShoutBox">
					<iframe src="/template/shoutbox/display_posts/?sort=t&rev=1" height="240" width="196" frameborder="0"></iframe>
				</div>
				<div class="ModuleRow3">&nbsp;</div>
			</div>
[credits]
			<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline" align="center" style="margin-top:10px">
			<tr>
				<td align="right" class="copyright" height="28">
					<a href="http://www.rawr-designs.com/?page=terayon" target="_blank">Terayon v{.!build.}</a>, &copy; 2007-2010 <a href="http://www.rawr-designs.com" target="_blank">RAWR-Designs</a>&nbsp;&nbsp;<a href="http://www.iziu.net" target="_blank">随波汉化</a><br/>
					<a href="http://www.rejetto.com/hfs" target="_blank">HTTP File Server - v%version% (Build #%build%)</a>, &copy; 2002-2010 <a href="http://www.rejetto.com/me" target="_blank">rejetto</a><br/>
				</td>
			</tr>
			</table>
[stats.html|no log]
<div class="ModuleText">
	入站:<br/>
	<div class="Arrow"><span class="Response">[%total-uploads%]</span> 个文件已上传</div>
	<div class="Arrow">总大小: <span class="Response">[%total-in%]</span></div>
	<div class="Arrow">上行速率: <span class="Response">[%speed-in% KB/s]</span></div>
	<div class="Arrow">连接数: <span class="Response">[%connections%]</span></div>
	<br/><hr size=1>
	<div style="margin-top:9px">出站:</div>
	<div class="Arrow"><span class="Response">[%total-downloads%]</span> 个文件已下载</div>
	<div class="Arrow">总大小: <span class="Response">[%total-out%]</span></div>
	<div class="Arrow">下行速率: <span class="Response">[%speed-out% KB/s]</span></div>
	<div class="Arrow">总点击量: <span class="Response">[%total-hits%]</span></div>
</div>
[nofiles]
	<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline" id="FileListTable">
		<tr>
			<td class="catLeft" height="28" width="100%" style="border-right:0px" colspan="3">
				<span class="ModuleTitle cattitle">
					目录 :: {.breadcrumbs|{:<a href="%bread-url%"> {.or|%bread-name%|首页.}<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>:}.}
					{.if|{.$search-data.}|<a href="">搜索结果<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>.}
				</span>
				<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
			</td>
		</tr>
		<tr><td class="nav1" colspan="3">&nbsp;</td>%folder-comment%</tr>
		<tr>
			<td class="row1" align="center" valign="middle" width="64"><img src="/template/icons/nofile.gif" class="noIcon" alt=""/></td>
			<td width="100%"><div class="forumlink fileLink">
				<i id="message">{.if|{.$search-data.}|未找到&nbsp;<i>{.$search-data.}</i>&nbsp;!|当前文件夹无文件...}</i></div>
				<span class="genmed" style="width:85%">
					<div class="commentStyle1"><div></div></div>
					<div class="commentStyle2" id="message2">{.if|{.$search-data.}|请更换其他关键词重新查找。|如果您有上传权限，请上传文件到此文件夹!.}</div>
				</span>
				<div class="minHeight"></div>
				{.if|{.$search-data.}||<div class="gensmall fileStats"><span style="width:125px;float:left"><b>文件类型:</b> <i>无</i></span></div>.}
			</td>
			<td nowrap="nowrap" class="qrow">
				<div class="quicklinks">
					<div class=q1><div class="emp">&nbsp;</div></div>
					<div class=q2><div class="emp">&nbsp;</div></div>
				</div>
			</td>
		</tr>
		<tr><td class="v2" height="18" colspan="3"></td></tr>
</table>
[search-data]
{.?search.}{.cut|2|-1|{.?filter.}{.if not|{.?files-filter=\ .}|{.?files-filter.}.}{.if not|{.?folders-filter=\ .}|{.?folders-filter.}.}.}
[files]
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline" id="FileListTable">
<tr>
	<td class="catLeft" height="28" width="100%" style="border-right:0px" colspan="3">
		<span class="ModuleTitle cattitle">
			目录 :: {.breadcrumbs|{:<a href="%bread-url%"> {.or|%bread-name%|首页.}<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>:}.}
			{.if|{.$search-data.}|<a href="">搜索结果<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>.}
		</span>
		<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
	</td>
</tr>
<tr><td class="nav1" colspan="3">&nbsp;</td></tr>
%folder-comment%
%list%
<tr><td class="v2" height="18" colspan="3"></td></tr>
</table>
[file.aiff = file.bat = file.css = file.doc = file.exe = file.file = file.gif = file.gzip = file.ini = file.m3u = file.mov = file.mpeg = file.mpg = file.ogg = file.pdf = file.ppt = file.rar = file.sit = file.sitx = file.tar = file.tgz = file.wav = file.xls = file.zip]
<tr>
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%item-url%" class="messageimagelink"><img src="/template/icons/{.if|{.%item-ext%=mpg.}|mpeg|{.if|{.%item-ext%=divx.}|avi|%item-ext%|%item-ext%.}.}.gif" class="noIcon" alt=""/></a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight">
		</div>
		<div class="gensmall fileStats">
			<span style="width:125px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:65px;float:left"><b>点击量:</b> %item-dl-count%</span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="下载此文件"><div class="{.if not|{.get|can access.}|dow|dow-a.}">&nbsp;</div></a></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[file.txt = file.html = file.htm]
<tr> 
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%item-url%" class="messageimagelink"><img src="/template/icons/{.if|{.%item-ext%=htm.}|html|%item-ext%.}.gif" class="noIcon" alt=""/></a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:125px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:65px;float:left"><b>点击量:</b> %item-dl-count%</span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="打开此文件"><div class="{.if not|{.get|can access.}|bro|bro-a.}">&nbsp;</div></a></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[file.mp4 = file.m4a = file.aac = file.mov = file.3gp = file.mp3 = file.flv = file.swf = file.avi = file.divx = file.wma = file.wmv = file.mkv]
<tr>
	{.if|{.filesize|/template/icons/%item-ext%.gif.}
	|	
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%encoded-folder%%item-url%" class="messageimagelink"><img src="/template/icons/%item-ext%.gif" class="noIcon" alt=""/></a>
	</td>
	|		
	<td class="background" height="64">
		<a href="%item-url%" class="messageimagelink">
			<div class="noIcon">
				<div style="background:url('/~img_file') no-repeat center bottom;width:64px;height:50px">
					<div style="color:#dedede;font:bold 9px verdana;padding-top:5px;padding-left:15px">%item-ext%</div>
				</div>
			</div>
		</a>
	</td>
	.}
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%folder%%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:125px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:65px;float:left"><b>点击量:</b> %item-dl-count%</span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="下载此文件."><div class="{.if not|{.get|can access.}|dow|dow-a.}">&nbsp;</div></a></div>
			<div class=q2 {.switch|%item-ext%|,|mp3,flv,mp3,flv,mp4,m4a,mov,3gp,aac|name="mediaFile"|.}><a href="javascript:void(0);" onClick="initBox('Box-'+(%sequential%+1),this.name);" name="%item-full-url%" title="在预览窗口打开此文件"><div class="fla">&nbsp;</div></a><span id="Box-%sequential%"></span></div>
		</div>
	</td>
</tr>
[file.bmp = file.jpg = file.png]
<tr>
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%item-url%" class="messageimagelink"><img {.if|{.filesize|%folder-resource%\previews_and_thumbnails\thumb-%item-name%.jpg.}|src="previews_and_thumbnails/thumb-%item-name%.jpg"|src="/template/icons/%item-ext%.gif".} class="noIcon" alt=""/></a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:125px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:65px;float:left"><b>点击量:</b> %item-dl-count%</span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="在新窗口预览图片" target="_blank"><div class="{.if not|{.get|can access.}|dow|dow-a.}">&nbsp;</div></a></div>
			{.if|{.filesize|%folder-resource%\previews_and_thumbnails\prev-%item-name%.jpg.}|
			<div class=q2><a href="javascript:void(0);" onClick="initBox('Box-'+(%sequential% + 1),this.name);" name="%item-name%" title="预览此图片"><div class="mag">&nbsp;</div></a></div>
			|<div class=q2><div class="mag" style="filter:alpha(opacity=25);opacity:0.25">&nbsp;</div></div>.}<span id="Box-%sequential%"></span></div>
		</div>
	</td>
</tr>
[file]
<tr>
	<td class="background" height="64">
		<a href="%item-url%" class="messageimagelink">
			<div class="noIcon">
				<div style="background:url('/~img_file') no-repeat center bottom;width:64px;height:50px">
					<div style="color:#dedede;font:bold 9px verdana;padding-top:5px;padding-left:15px">%item-ext%</div>
				</div>
			</div>
		</a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:125px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:65px;float:left"><b>点击量:</b> %item-dl-count%</span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="下载此文件"><div class="{.if not|{.get|can access.}|dow|dow-a.}">&nbsp;</div></a></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[folder]
<tr>
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%item-url%" class="messageimagelink"><img src="/template/icons/folder.gif" class="noIcon" alt=""/></a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:190px;float:left"><b>类型:</b> <i>目录</i></span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
	<div class="quicklinks">
		<div class=q1 title="浏览此文件夹">
			<a href="%item-url%"><div class="{.if not|{.get|can access.}|bro|bro-a.}"></div></a>
		</div>
		<div class=q2>			
			{.if|{.get|can archive.}|
			<div class="dow-a" title="打包下载此文件夹">
			<a href="%item-url%~folder.tar{.if|{.get|can recur.}|?recursive.}">
				<div style="width:28px;height:28px">&nbsp;</div>
			</a>
			</div>
			|
			<div class="dow" title="此文件夹不允许打开下载">
				<div style="width:28px;height:28px">&nbsp;</div>
			</div>
			.}
		</div>
	</div>
</td>
</tr>
[link]
<tr>
	<td class="row1" align="center" valign="middle" width="64">
		<a href="%item-url%" class="messageimagelink"><img src="/template/icons/html.gif" class="noIcon" alt=""/></a>
	</td>
	<td width="100%" class="{.if not|{.get|can access.}|P.} {.inc|rows|1.}{.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="forumlink fileLink">
			<a href="%item-url%">%item-name%</a>{.if|{.get|is new.}|<span style="font-size:7pt;font-weight:normal"> - <span class="Response"><b>最新</b></span></span>.}
		</div>
		<span class="genmed" style="width:85%">%comment%</span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:190px;float:left"><b>类型:</b> <i>超链接</i></span>
			<span style="width:200px;float:left"><b>修改日期:</b> %item-modified%</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow {.if|{.mod|{.^rows.}|2.}|altRow1|altRow2.}">
		<div class="quicklinks">
			<div class=q1><a href="%item-url%" title="Open this link"><div class="{.if not|{.get|can access.}|dbro|bro-a.}">&nbsp;</div></a></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[comment]
<div class="commentStyle1"><div></div></div><div class="commentStyle2">%item-comment%</div>
[folder-comment]
<tr id="FolderComment">
	<td width="100%" colspan="3" style="padding:10px 10px 13px 0px"><div class="gensmall fileStats"><i>文件夹注释:</i></div>
	<div style="margin-left:50px" class="MessageText">%item-comment%</div>
</tr>
[error-page]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{.$copyright.}
<head>
	<title id="title">错误!</title>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
	<script type="text/javascript" src="/template/code/terayon_main.js"></script>
	<script type="text/javascript" src="/template/code/terayon_previewbox.js"></script>
</head>
<body>
<table width="85%" class="bodyline" style="margin:auto" cellpadding="10" cellspacing="0">
<tr>
	<td>
{.$header.}
{.$controls.}
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td valign="top" width="100%" style="padding-top:10px">
%content%
		</td>
		<td valign="top" nowrap="nowrap" id="ModuleTable" align="right" style="padding-left:10px">
{.$ServerTraffic.}
{.$ServerStatistics.}
		</td>
	</tr>
	</table>
{.$credits.}
	</td>
</tr>
</table>
<script type="text/javascript">pageLoad();</script>
</body>
</html>
[not found]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/>未找到! <img alt="" src="/template/images/arrow.gif"/></span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
				<td class="nav1">
					<span class="nav_top">&nbsp;</span>
				</td>
			</tr>
			<tr>
				<td class="row4" height="208" valign="top">
					<div class="ErrorHeader">
						<div class="q1"><div class="not">&nbsp;</div></div><div class="q3"> <i>未找到!</i></div></div><span class="ErrorCode">错误码: [404]</span><br/><br/>
						<div class="ErrorText" style="line-height: normal">请求的页面未找到或不可用。
						<br/><br/>
						请重新检查地址或稍后再试。
						<br/><br/><br/>
						<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[overload]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/> 服务器繁忙! <img alt="" src="/template/images/arrow.gif"/></span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
			<td class="nav1">
					<span class="nav_top">&nbsp;</span>
			</td>
			</tr>
			<tr>
				<td class="row4" height="208" valign="top">
					<div class="ErrorHeader">
						<div class="q1"><div class="den">&nbsp;</div></div><div class="q3"> <i>服务器繁忙!</i></div></div><span class="ErrorCode">错误码: [503]</span><br/><br/>
						<div class="ErrorText" style="line-height: normal">服务器当前处理的请求数过多。
						<br/><br/>
						请稍后重试。
						<br/><br/><br/>
						<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[max contemp downloads]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/> 服务器繁忙! <img alt="" src="/template/images/arrow.gif"/></span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
				<td class="nav1">
					<span class="nav_top">&nbsp;</span>
				</td>
			</tr>
			<tr>
				<td class="row4" height="208" valign="top">
					<div class="ErrorHeader">
						<div class="q1"><div class="den">&nbsp;</div></div><div class="q3"> <i>服务器繁忙!</i></div></div><span class="ErrorCode">错误码: [503]</span><br/><br/>
						<div class="ErrorText" style="line-height: normal">服务器设置了下载数量限制，当前已达到限制数量。
						<br/><br/>
						请稍后重试。
						<br/><br/><br/>
						<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[unauthorized]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/> 未授权! <img alt="" src="/template/images/arrow.gif"/></span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
				<td class="nav1">
					<span class="nav_top">&nbsp;</span>
				</td>
			</tr>
			<tr>
				<td class="row4" height="208" valign="top">
					<div class="ErrorHeader">
						<div class="q1"><div class="una">&nbsp;</div></div><div class="q3"> <i>Unauthorized!</i></div></div><span class="ErrorCode">错误码: [401]</span><br/><br/>
						<div class="ErrorText" style="line-height: normal">你没有访问所请求页面的权限。
						<br/><br/>
						 请登录后再试。
						<br/><br/><br/>
						<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[deny]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/> 拒绝访问! <img alt="" src="/template/images/arrow.gif"/></span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
				<td class="nav1">
					<span class="nav_top">&nbsp;</span>
				</td>
			</tr>
			<tr>
				<td class="row4" height="208" valign="top">
					<div class="ErrorHeader">
						<div class="q1"><div class="den">&nbsp;</div></div><div class="q3"> <i>Access denied!</i></div></div><span class="ErrorCode">错误码: [403]</span><br/><br/>
						<div class="ErrorText" style="line-height: normal">你没有权限访问请求的页面或文件。
						<br/><br/><br/>
						<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[ban]
			<table class="forumline" width="100%" cellspacing="1" cellpadding="4" border="0">
			<tr>
				<td class="catLeft" height="28">
					<span class="ModuleTitle cattitle">错误 :: <a href="../">首页</a> <img alt="" src="/template/images/arrow.gif"/> 禁止访问!</span>
					<a href="javascript:pinModule('ModuleTable');" class="ModuleLink" id="ModuleTable_Link" style="margin-right:2px" title="隐藏模块面板"><div class="hid">&nbsp;</div></a>
				</td>
			</tr>
			<tr>
				<td class="nav1">
					<span class="nav_top">&nbsp;</span>
				</td>
			</tr>
			<tr>
			<td class="row4" height="208" valign="top">
				<div class="ErrorHeader">
					<div class="q1"><div class="una">&nbsp;</div></div><div class="q3"> <i>您被列入黑名单!!!!! lolz</i></div></div><span class="ErrorCode">错误码: [403]</span><br/><br/>
					<div class="ErrorText" style="line-height: normal">您的地址或IP被列入黑名单，无法访问当前页面或文件。
					<br/><br/>
					%reason%
					<br/><br/><br/>
					<img src="/~img14" height="15" alt=""/><a href="../" class="MessageText"> 返回上一页..</a>
				</div>
			</td>
			</tr>
			<tr>
				<td class="v2" height="18"></td>
			</tr>
			</table>
[upload]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{.$copyright.}
<head>
	<title id="title">上传文件</title>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
	<script type="text/javascript" src="/template/code/terayon_main.js"></script>
	<script type="text/javascript" src="/template/code/terayon_previewbox.js"></script>
</head>
<body>
<table width="85%" class="bodyline" style="margin:auto" cellpadding="10" cellspacing="0">
<tr>
	<td>
{.$header.}
{.$controls.}
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td valign="top" width="100%" style="padding-top:10px">
			<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline" id="FileListTable">
			<tr>
				<td class="catLeft" height="28" width="100%" style="border-right:0px">
					<span class="cattitle">目录 :: {.breadcrumbs|{:<a href="%bread-url%"> {.or|%bread-name%|首页.}<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>:}.}</span>
				</td>
			</tr>
			<tr>
				<td class="nav1">&nbsp;</td>
			</tr>
			<tr height="200">
				<td width="100%" style="padding:15px 50px">
					<span class="MessageHeader"><i>上传文件</i></span><br/><br/>
					<span class="MessageText">请点击“浏览”按钮选择您要上传的文件，然后点击“提交”按钮。<br/><br/>如果您想同时上传更多文件，请点击“更多”按钮。</span><br/><br/>
					<form name=frm action="." target=_parent method=post enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true;frm.cancelbtn.disabled=false;return true">
						<div style="height:25px"><input name=fileupload1 size=75 type=file></div>
						<div style="height:25px"><input name=fileupload2 size=75 type=file></div>
						<div style="height:25px"><input name=fileupload3 size=75 type=file></div><span id="more"></span><br/>
						<div style="margin-left:10px;float:left"><input name=upbtn type=submit value="提交" onclick="boxOpenCache=boxOpen;boxOpen=null;initBox('ProgressBox', 'Progress', boxOpenCache);"></div><div style="margin-left:10px;float:left"><input name=morebtn onclick="if(k <= 20) gEBI('more').innerHTML+='<div style=\'height:25px\'><input name=fileupload'+ k +' size=75 type=file></div>',k==20?this.disabled=true:k++" type=button value="更多"></div><div style="margin-left:10px;float:left"><input name=cancelbtn type=button onclick=window.location="." enabled=false value="取消上传"></div>
					</form>
				</td>
			</tr>
			<tr><td class="v2"><span class="cattitle" align="right">&nbsp;</span></td></tr>
			</table>
		</td>
		<td valign="top" nowrap="nowrap" id="ModuleTable" style="padding-left:10px">
{.$ServerTraffic.}
{.$ServerStatistics.}
		</td>
	</tr>
	</table>
{.$credits.}
	</td>
</tr>
</table>
<script type="text/javascript">var k=4; document.frm.cancelbtn.disabled=true; pageLoad();</script>
</body>
</html>
[upload-results]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{.$copyright.}
<head>
	<title id="title">上传结果</title>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
	<script type="text/javascript" src="/template/code/terayon_main.js"></script>
	<script type="text/javascript" src="/template/code/terayon_previewbox.js"></script>
</head>
<body>
<table width="85%" class="bodyline" style="margin:auto" cellpadding="10" cellspacing="0">
<tr>
	<td>
{.$header.}
{.$controls.}
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top" width="100%" style="padding-top:10px">
				<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline" id="FileListTable">
				<tr>
					<td class="catLeft" height="28" width="100%" style="border-right: 0px" colspan="3">
						<span class="cattitle">目录 :: {.breadcrumbs|{:<a href="%bread-url%"> {.or|%bread-name%|首页.}<img src="/template/images/arrow.gif" alt="/" style="border:0"></a>:}.}</span>
					</td>
				</tr>
				<tr><td class="nav1" colspan="3">&nbsp;</td></tr>
				%uploaded-files%
				<tr><td class="v2" colspan="3"><span class="cattitle" align="right">&nbsp;</span></td></tr>
				</table>
			</td>
			<td valign="top" nowrap="nowrap" id="ModuleTable" style="padding-left:10px">
{.$ServerTraffic.}
{.$ServerStatistics.}
			</td>
		</tr>
	</table>
{.$credits.}
	</td>
</tr>
</table>
<script type="text/javascript">pageLoad();</script>
</body>
</html>
[upload-success]
<tr>
	<td class="row1" align="center" valign="middle" width="64"><img src="/template/icons/file.gif" class="noIcon" alt=""/></td>
	<td width="100%">
		<div class="forumlink fileLink">%item-name%</div>
		<span class="genmed" style="width:85%"><div class="commentStyle1"><div></div></div><div class="commentStyle2">文件上传完成</div></span>
		<div class="minHeight"></div>
			<div class="gensmall fileStats">
			<span style="width:175px;float:left"><b>上传状态:</b> <i style="color:#77FF77">完成</i></span>
			<span style="width:150px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:175px;float:left"><b>平均速率:</b> %speed% KB/s</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow">
		<div class="quicklinks">
			<div class=q1><div class="emp">&nbsp;</div></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[upload-failed]
<tr>
	<td class="row1" align="center" valign="middle" width="64"><img src="/template/icons/file.gif" class="noIcon" alt=""/></td>
	<td width="100%">
		<div class="forumlink fileLink">%item-name%</div>
		<span class="genmed" style="width:85%"><div class="commentStyle1"><div></div></div><div class="commentStyle2">文件上传失败<br/>原因: %reason%</div></span>
		<div class="minHeight"></div>
		<div class="gensmall fileStats">
			<span style="width:175px;float:left"><b>上传状态:</b> <i style="color:#FF7777">失败</i></span>
			<span style="width:150px;float:left"><b>文件大小:</b> %item-size%</span>
			<span style="width:175px;float:left"><b>平均速率:</b> %speed% KB/s</span>
		</div>
	</td>
	<td nowrap="nowrap" class="qrow">
		<div class="quicklinks">
			<div class=q1><div class="emp">&nbsp;</div></div>
			<div class=q2><div class="emp">&nbsp;</div></div>
		</div>
	</td>
</tr>
[progress]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{.$copyright.}
<head>
	<title id="title">传输状态</title>
	<link rel="shortcut icon" href="/favicon.ico"/>
	<meta http-equiv="Refresh" content="3; URL=/~progress">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
</head>
<body>
<table width="85%" class="bodyline" style="margin:auto" cellpadding="10" cellspacing="0">
<tr>
	<td>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top" width="100%">
				<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline" id="FileListTable">
				<tr>
					<td class="catLeft" height="28" width="100%" style="border-right:0px">
						<span class="cattitle"><center style="font-size:14px;font-weight:bold;">传输状态</center></span>
					</td>
				</tr>
				<tr><td class="nav1"><center style="color:#FFF;font-size:10px;">自动刷新间隔: 3 秒</center></td></tr>
				<tr><td><center style="background:url('/~img_graph500x50xxA5A9AFx004480') left top no-repeat;height:50px;">&nbsp;</center></td></tr>
				<tr><td class="nav1">&nbsp;</td></tr>
				<tr height="200">
					<td width="100%" style="padding:15px 50px;font-size:12px;">
						<center>%progress-files%</center>
					</td>
				</tr>
				<tr><td class="v2"><span class="cattitle" align="right">&nbsp;</span></td></tr>
				</table>
			</td>
		</tr>
	</table>
	</td>
</tr>
</table>
</body>
</html>
[progress-nofiles]
<b>无文件传输</b>
[progress-upload-file]
<div class="p"><b><u>上传数据流:</u><br/>%filename%</b><br/>%done-bytes% / %total-bytes% B<br/>当前上传速率:<br/>%speed-kb% KB/s<br/>完成百分比: %perc%%<br/><div class="pOut"><div class="pIn" style="width:%perc%%"></div></div></div>
[progress-download-file]
<div class="p"><b><u>下载数据流:</u><br/>%filename%</b><br/>%done-bytes% / %total-bytes% B<br/>当前下载速率:<br/>%speed-kb% KB/s<br/>完成百分比: %perc%%<br/><div class="pOut"><div class="pIn" style="width:%perc%%"></div></div></div>