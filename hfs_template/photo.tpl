<html>
<head>
<title>HFS %folder%</title>
<style>\n%style%\n</style>
<link rel="shortcut icon" href="favicon.ico">
</head>
<body>
<!-- Search Google -->
<FORM id="search" method=GET action="http://www.google.cn/search">
<TABLE><tr><td>
<A HREF="http://www.google.cn/"></A>
<INPUT TYPE=text name=q size=18 maxlength=255 value="请输入关键字">
<INPUT TYPE=hidden name=hl value="en">
<INPUT type=submit name=btnG VALUE=" Google 搜索 ">
</td></tr></TABLE>
</FORM>
<!-- Search Google -->
%login-link%
%loggedin%
%upload-link%
<div class=little>当前所在目录</div>
<div class=big>%folder%</div>
<div class=body>
%folder-comment%
%up%
%files%
</div>
<div class=little>
<a href="http://qun.qq.com/air/#13050043">免费相册版本： %version%</a>
<br>服务器时间: %timestamp%
<br>在线时间: %uptime%
<br>执行时间: %build-time%
</div>
</body>
</html>

[style]
body, .button, .row, .big, .little, th, comment { font-family:tahoma, verdana, arial, helvetica, sans; font-weight:normal; font-size:9pt; }
body { margin:0; background-color:#DDDDFF; padding:10px; }
p { margin:0 }
.big { font-size:14pt; font-weight:bold;  }
.little { font-size: 8pt; }
div.body {
  border-bottom: 4px solid #BBBBFF;
     border-top: 4px solid #BBBBFF;
    border-left: 1px dotted #BBBBFF;
   border-right: 1px dotted #BBBBFF;
  background:#F3F3FF;
  padding:15px;
  margin:15px;
}
A { text-decoration:none;  background-color:Transparent; color:#0055FF; }
A:visited { color:#5555FF; }
A:hover { background-color:#EEEEFF; }
img { border-style:none }
.right { text-align:right }
.row { font-size:10pt; background:#FFFFFF; border:1px solid #BBBBFF }
.comment { font-size:7pt; color:#888888; background:#EEEEEE; padding:3px; border:1px solid #DDDDDD; margin-top:2px; }
.column { color:#555555; font-size:13pt; font-weight:bold; padding-bottom:0; }
.button { padding:5px; padding-top:7px; border:2px solid black; background:white; font-size:8pt; font-weight:bold; }
.flag { font-weight:bold; font-size:8pt; background:white; color:red; text-align:center; border:1px solid red; }

[login-link]
<div style="float:right; padding:15px;"><a href="%encoded-folder%~login" class=button><img border=0 align=absbottom src="/~img27"> 登录</a></div>

[loggedin]
<div style="float:right; padding:15px;"><span class=button><img border=0 align=absbottom src="/~img27"> user: %user%</span></div>

[upload-link]
<div style="float:right; padding:15px;"><a href="%encoded-folder%~upload" class=button><img border=0 align=absbottom src="/~img32"> 上传</a></div>

[up]
<a class=big href="%parent-folder%"><img src="/~img14"> 上一目录</a>

[nofiles]
<div class=big>没有文件</div>

[files]
<div class=little>共有%number-folders% 文件夹,  大小：%total-size%</div>
<table cellpadding=5>
<th><a href="%encoded-folder%?sort=n"><span class=column>文件名</span></a>
<th><a href="%encoded-folder%?sort=s"><span class=column>大小</span></a>
<th><a href="%encoded-folder%?sort=t"><span class=column>修改</span></a>
<th class=column>点击 
%list%
</table>
<p class=right>
<a class=little href='%encoded-folder%~files.lst'>文件清单</a>

[file]
<tr><td class=row>%new% <a href="%item-url%"> 
<script language="javascript">
var c='%item-name%'; 
switch (  c.substr(  c.lastIndexOf('.')  ) .toLowerCase()  ) 
   { 
   case '.jpg' :case '.jpeg': case '.gif' : case '.png' :case '.ico':case '.bmp': document.write('<a href="%item-url%" target="_blank"><img class="border_b" src="%item-url%" width="100" height="87" border="0" onMouseOver=show_200("%item-url%","71895",200,150) onMouseOut=hide_div() onerror=gag(this,100)></a> ');break; 
   default : document.write('<img align=top src="/~img_file"> '); 
   } 
</script> 
%item-name%</a>%comment%<td class="row right">%item-size%<td class="row right">%item-modified%<td class="row right">%item-dl-count%
</tr>

[folder]
<tr><td class=row>%new% <a href="%item-url%"><img align=top src="/~img_folder"> <b>%item-name%</b></a>%comment%<td align=center class=row><i> 文件夹 </i><td class="row right">%item-modified%<td class="row right">%item-dl-count%

[link]
<tr><td class=row>%new% <a href="%item-url%"><img align=top src="/~img_link"> <b>%item-name%</b></a>%comment%<td colspan=3 align=center class=row><i>link</i>

[comment]
<div class=comment>%item-comment%</div>

[folder-comment]
<div style='font-size:10pt; color:#888888; background:#EEEEEE; padding:3px; border:1px solid #DDDDDD; border-bottom:3px solid #DDDDDD; margin-top:2px;'>
%item-comment%</div>

[error-page]
<html><head><style>\n%style%\n</style></head><body>
%content%
<hr>
<div style="font-family:tahoma, verdana, arial, helvetica, sans; font-size:8pt;">
<a href="http://qun.qq.com/air/#13050043">免费相册版本： %version%</a>
<br>%timestamp%
</div>
</body>
</html>

[not found]
<h1>404 -  Not found</h1>
<a href="/">go to root</a>

[overload]
<h1>Server busy</h1>
Please, retry later.

[max contemp downloads]
<h1>Download limit</h1>
On this server there is a limit on the number of <b>contemporaneous</b> downloads.
<br>This limit has been reached. Retry later.

[unauthorized]
<h1>未经授权</h1>
这是一个受保护的资源。
<br>您的用户名/密码不匹配。

[deny]
<h1>Unallowed</h1>
This resource is not accessible.

[ban]
<h1>You are banned.</h1>
%reason%

[upload]
<html>
<head>
<title>HFS %folder%</title>
<style>\n%style%\n</style>
</head>
<body>
%login-link%
%loggedin%
<div style="float:right; padding:15px;">
<script language="javascript">
var s1, s2;
if (window.parent.progress) s1 = '" target=_parent', s2 = '关闭';
else s1 = '+progress"', s2= '打开';
document.write('<a href="%encoded-folder%~upload'+s1+' class=button onClick="if (frm.upbtn.disabled) return false;"><img border=0 align=absbottom src="/~img10"> '+s2+' 显示上传进度</a>');
</script>
</div>
<div style="float:right; padding:15px;"><a href="%encoded-folder%" target=_parent class=button><img border=0 align=absbottom src="/~img21"> 取消上传</a></div>
<div style="margin-top:60px" class=little>当前所在目录</div>
<div class=big>%folder%</div>
<div class=body>
<form name=frm action="%encoded-folder%" target=_parent method=post enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true; return true;">
%upload-files%
<input name=upbtn type=submit value="上传文件">
</form>
<br>提示：<a target=_blank href="/~progress">点击这里打开上传进度</a>.
</div>
<div class=little>
<a href="http://qun.qq.com/air/#13050043">免费相册版本： %version%</a>
<br>服务器时间: %timestamp%
<br>在线时间: %uptime%
<br>可用空间: %diskfree%
</div>
</body>
</html>

[upload-file]
<input name=fileupload%idx% size=70 type=file><br>

[upload-results]
<html>
<head>
<title>HFS %folder%</title>
<style>\n%style%\n</style>
</head>
<body>
%loggedin%
<div style="margin-top:60px" class=little>当前所在目录</div>
<div class=big>%folder%</div>
<div class=body>
%uploaded-files%
<br><br>
<a href="%encoded-folder%" target=_parent class=big><img border=0 align=absbottom src="/~img14"> Back to the folder</a>
</div>
<div class=little>
<a href="http://qun.qq.com/air/#13050043">免费相册版本： %version%</a>
<br>服务器时间: %timestamp%
<br>在线时间: %uptime%
<br>可用空间: %diskfree%
</div>
</body>
</html>

[upload-success]
<li>%item-name%: <b>OK</b> --- %item-size%  (Speed %speed% KB/s)

[upload-failed]
<li>%item-name%: <b>FAILED</b> ---  %reason%

[upload+progress]
<html>
<head>
<frameset cols=200,*>
  <frame name=progress src="/~progress" scrolling=auto marginwidth=0>
  <frame src="%encoded-folder%~upload-no-progress" scrolling=auto>
</frameset>
</head>
<body>
</body>
</html>

[progress]
<html>
<head>
<meta http-equiv="Refresh" content="3;URL=/~progress">
<title>HFS - Progress status</title>
<style>
%style%
.filename { font-weight:bold; font-size:8pt; }
.bytes { font-size:7pt; }
.perc { font-size:14px; vertical-align:middle; }
.out_bar { width:100px; font-size:15px; background:black; border:black 1px solid; margin-right:5px; float:left; }
.in_bar { height:16px; background:white; color:white;  }
div.body { margin-left:0; margin-right:0; }
body { padding:2px; }
</style>
</head>
<body>
<div class=big>文件上传进度</div>
自动刷新时间: 3 秒
<br><br><img src="/~img_graph190x40" style="border:white outset 2px;">
<div class=body>
%progress-files%
</div>
<div class=little>在线时间: %uptime%</div>
</body>
</html>

[progress-nofiles]
<div class=big>目前没有任何文件上传操作</div>

[progress-upload-file]
<span class=flag>&nbsp;up&nbsp;</span>
<span class=filename>%filename%</span>
<div class=bytes>
%done-bytes% / %total-bytes% bytes
<br>Speed: %speed-kb% KB/s
</div>
<div style="margin-top:5px; margin-bottom:20px;">
  <div class=out_bar><div class=in_bar style="width:%perc%px"></div></div> <span class=perc>%perc%%</span>
</div>

[progress-download-file]
<span class=flag>&nbsp;down&nbsp;</span>
<span class=filename>%filename%</span>
<div class=bytes>
%done-bytes% / %total-bytes% bytes
<br>Speed: %speed-kb% KB/s
</div>
<div style="margin-top:5px; margin-bottom:20px;">
  <div class=out_bar><div class=in_bar style="width:%perc%px"></div></div> <span class=perc>%perc%%</span>
</div>

[newfile]
<span class=flag>&nbsp;NEW&nbsp;</span>
