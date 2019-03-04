<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<meta name="description" content="北风论坛  北风 让你自由无极限,您的需要就是我们努力的方向！ - 北风论坛!">
        <title>HFS %folder% -- 北风论坛Garphy汉化</title>
	<style type="text/css">%style%</style>	
</head>

<body>
	%upload-link%
	%login-link%%loggedin%
	<div class=btn><a href="/~progress" class=inbtn><img align=top src="/~img26" alt=""> 传输活动</a></div>
	<div class=btn><a href="%encoded-folder%~files.lst" class=inbtn><img align=top src="/~img4" alt=""> 文件清单</a></div>
	<div class=btn><a href="/" class=inbtn><img align=top src="/~img26" alt=""> 首页</a></div>	
	<div class=lil><b>当前路径:</b></div>
	<div class=big>%folder%</div>
	<div class=body>%folder-comment%%up%%files%</div>
	<div class=body style="padding:0">
		<center>
			<br><b>服务器状态<br><img src="/~img_graph700x30" class=inpt alt="Graph"><br>
			<img src="/~img4" align=top alt=""> 连出: %speed-out%KB/s 
			<img src="/~img4" align=top alt=""> 连入: %speed-in%KB/s 
			<img src="/~img5" align=top alt=""> 连接数: %connections% 
			<img src="/~img7" align=top alt=""> 在线时长: %uptime%<br></b>
			<form method=GET action="http://www.google.cn/search">
			<input type=hidden name=ie value=gbk>
			<input type=hidden name=oe value=gbk>
			<table>
				<tr>
					<td>
						<a href="http://www.google.cn/"><img src="http://www.google.cn/logos/holiday06_5res.gif" alt="Google"></a>
					</td>
					<td>
						<input class=inpt type=text name=q size=30 maxlength=255 value="">&nbsp;
						<input type=submit name=btnG value="搜索">
					</td>			  	
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://bbs.78820.com/" target=_blank><img src="http://bbs.78820.com/images/beifeng.gif" alt="北方论坛"></a>
					</td>
				</tr>
			</table>
			</form><br>
		</center>
	<div style="margin-bottom:10px;" align=center>
		生成页面耗时: %build-time% 秒&nbsp;&#8226;&nbsp;原作者:<b>That Stevens Guy</b>,Garphy汉化修改版,HFS官方论坛: <a href="http://www.rejetto.com/hfs/" target=_blank>HFS %version%</a>&nbsp;&#8226;&nbsp;<a href="#">定位到页面顶端</a>&nbsp;&#8226;
	</div>			
	</div>
</body>
</html>

[style]
body{padding:10px;font-weight:normal;font-family:"geneva",arial,"helvetica",sans-serif;background:url('/index/images/Back.jpg') no-repeat fixed center;margin:0}
.rw,.body,.inpt,.flg,.cmnt,th,comment,.flg,.inbtn,.col{background:#fff}
.col,body,.rw,.body,#hm{color:#039}
body,.inbtn,.big,.lil,th,comment{font-size:9pt}
.inpt,.flg,.a,body,.inbtn,th,comment,.flg,.lil{color:#f63}
.cmnt{color:#154BA0}
.big{font-size:14pt}
.flg,.inbtn,.col,.rw,a,.big{font-weight:bold}
.flg,.lil{font-size:8pt}
.inbtn,.body{border:3px outset #039}
.btn,.body{padding:15px}
.body{margin:15px}a{text-decoration:none}
a:visited{color:#f83201}
a:hover{color:#fe8a6d}
img{border:0}
.rw{font-size:10pt;border:2px solid #039}
.cmnt{font-size:9pt;padding:3px;margin-top:2px}
.inpt,.cmnt{border:3px inset #039}
.col{font-size:13pt}
.inbtn{padding:5px}
.btn{float:right}
.flg{text-align:center;border:1px solid;}

[login-link]
<div class=btn><a href="%encoded-folder%~login" class=inbtn><img align=top src="/~img27"> 登陆</a></div>

[loggedin]
<div class=btn><span class=inbtn><img align=top src="/~img27" alt=""> 登陆为: %user%</span></div>

[upload-link]
<div class=btn><a href="%encoded-folder%~upload" class=inbtn><img align=top src="/~img32" alt=""> 上传文件</a></div>

[up]
<a class=big href="%parent-folder%"><img src="/~img14"> 返回上层目录</a>

[nofiles]
<div class=big><i>? 此目录为空 ?</i></div>

[files]
<table class=lil width=100%>
	<tr>
		<td><b>%number-folders% 目录, %number-files% 文件 - 总大小: %total-size%</td>
		<td align=right><b>%timestamp%</b></td>
	</tr>
</table>
<table width="100%">
	<tr>
		<th class=col><a href="%encoded-folder%?sort=n" style="color:#039;">文件名</a></th>
		<th class=col><a href="%encoded-folder%?sort=s" style="color:#039;">文件大小</a></th>
		<th class=col><a href="%encoded-folder%?sort=t" style="color:#039;">修改时间</a></th>
		<th class=col>点击数</th>
	</tr>
	%list%
</table>

[file]
<tr>
	<td class=rw><a href="%item-url%">&nbsp;<img align=top src="/~img_file" alt=""> %item-name% %new%</a>%comment%</td>
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
<tr>
	<td class=rw>%new% <a href="%item-url%">&nbsp;<img align=top src="/~img_file" alt=""> %item-name%</a>%comment%<td class=rw align=center>%item-size%</td>
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
<tr>
	<td class=rw><a href="%item-url%">&nbsp;<img align=top src="/~img_link"> %item-name% %new%</a>%comment%</td>
	<td colspan=3 class=rw><i><font size=2>&nbsp;超链接</font></i></td>
</tr>

[folder]
<tr>
	<td class=rw><a href="%item-url%">&nbsp;<img align=top src="/~img_folder" alt=""><b> %item-name%</b> %new%</a>%comment%</td>
	<td  class=rw align=center><i><font size=2>文件夹</font></i></td>
	<td class=rw align=center>%item-modified%</td>
	<td class=rw align=center>%item-dl-count%</td>
</tr>

[comment]
<div class=cmnt>%item-comment%</div>

[folder-comment]
<div class=cmnt>%item-comment%</div>

[error-page]
<html>
<head>
	<style>%style%</style>
</head>
<body>
	%content%
	<hr>
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
	<style type="text/css">%style%</style>
</head>
<body>
	<div class=btn><span class=inbtn><img align=top src="/~img27" alt=""> 登陆为: %user%</span></div>
	<div class=btn><a target=_top href="%encoded-folder%~upload" class=inbtn><img align=top src="/~img21" alt=""> 关闭进度条</a></div>
	<div class=btn><a target=_top href="%encoded-folder%~upload+progress" class=inbtn><img align=top src="/~img10" alt=""> 打开进度条</a></div>
	<div class=btn><a href="%encoded-folder%" target=_parent class=inbtn><img align=top src="/~img21" alt=""> 取消上传</a></div>
	<div class=lil><b>上传到:</b></div>
	<div class=big>%folder%</div>
	<div class=body>
		<center>
			<b>有效服务器空间: %diskfree%</b><br><br>
			<form action="%encoded-folder%" target=_parent method=post enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true; return true;">%upload-files%<br><input name=upbtn type=submit value="上传指定文件"></form>
			<div><img src="/~img9" alt="">上传过程中<b>请勿</b>打开传输活动页面,否则将影响上传!</div>
		</center>
	</div>
</body>
</html>

[upload-file]
<center><input name="fileupload%idx%" size=70 class=inpt  type=file></center>

[upload-results]
<html>
<head>
	<title>Upload results for: %folder%</title>
	<style type="text/css">%style%</style>
</head>
<body>
	%loggedin%
	<div class=lil>上传结果:</div>
	<div class=big>%folder%</div><div class=body>%uploaded-files%<br><br><a href="%encoded-folder%" target=_parent class=big><img align=bottom src="/~img14" alt=""> 返回</a></div>
</body>
</html>

[upload-success]
<li><b>上传成功!</b> 已上传: %item-name% --- %item-size% (速度: %speed% KB/s)

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
	<style type="text/css">%style%</style>
</head>
<body style="background: #fff;">
	<center><h1>传输活动</h1>自动刷新率: 3 秒<br><img src="/~img_graph222x66" alt="Graph" class=inpt><br><br><div class=inbtn>%progress-files%</div></center>
</body>
</html>

[progress-nofiles]
<h2>当前无活动传输</h2>
<a href="/">&nbsp;&nbsp;<b>返回根目录</b></a>

[progress-upload-file]
<div>
	<span class=flg>&nbsp;上传&nbsp;</span>
	<div><span class=filename>%filename%</span></div>
	<div class=bytes>%done-bytes% / %total-bytes% bytes<br>当前上传速度: %speed-kb% KB/s</div>
	<div style="margin-top: 5px; margin-bottom: 20px;"><span class=out_bar><span class=in_bar style="width:%perc%px"></span></span>
		<div><span class="perc">%perc%%</span></div>
	</div>
</div>

[progress-download-file]
<div>
<span class="flg">&nbsp;下载&nbsp;</span>
	<div><span class="filename">%filename%</span></div>
	<div class=bytes>%done-bytes% / %total-bytes% bytes<br>当前下载速度: %speed-kb% KB/s</div>
	<div style="margin-top: 5px; margin-bottom: 20px;"><span class=out_bar><span class=in_bar style="width:%perc%px"></span></span>
		<div><span class=perc> %perc%%</span></div>
	</div>
</div>

[newfile]
&nbsp;<span class=flg>&nbsp;New&nbsp;</span>