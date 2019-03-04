<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head> 
<title>免费网络硬盘</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312"> 
<style type="text/css" media="screen">\n %style% \n</style>
<script language="Javascript" type="text/javascript">
<!--
// ----------------------------------
// Block All JavaScript Errors
function blockError(){return true;}
window.onerror = blockError;
// ----------------------------------

isDOM=document.getElementById //DOM1 browser (MSIE 5+, Netscape 6, Opera 5+)
isMSIE=document.all && document.all.item //Microsoft Internet Explorer 4+
isNetscape4=document.layers //Netscape 4.*
isOpera=window.opera //Opera
isOpera5=isOpera && isDOM //Opera 5+
isMSIE5=isDOM && isMSIE && !isOpera //MSIE 5+
isMozilla=isNetscape6=isDOM && !isMSIE && !isOpera

var obj;

function getLayer(layerName){
//  if(isDOM){ return document.getElementById(layerName); }
//  if(isMSIE){ return document.all[layerName]; }
//  if(isNetscape4){ return eval('document.layers[layerName]'); }
//  return false;
return layerName.parentNode.firstChild;

}

function ts(e,what){
  mousex = e.clientX;
  mousey = e.clientY;
  pagexoff = 0;
  pageyoff = 0;
  if(isMSIE5){
    pagexoff = document.body.scrollLeft;
    pageyoff = document.body.scrollTop;
  }
  else{
    pagexoff = window.pageXOffset;
     pageyoff = window.pageYOffset;
  }
  if(getLayer(what)){
    if(isNetscape4)
      obj = getLayer(what);
    else
      obj = getLayer(what).style;
 	
  	if(obj){
	    leftoff = mousex-pagexoff;
    	obj.left = (mousex+pagexoff);
  
	    topoff = mousey-pageyoff;
    	if(isOpera && topoff <= 30)
    	  obj.top = mousey + 20;
	    else 
		if( mousey <= 30) 
	        obj.top = (mousey+pageyoff) + 20;
		else 
	      if (isOpera) 
    	    obj.top = mousey + 20;
	    else
    	  obj.top = (mousey+pageyoff) + 20;
   		
		
	    if(isNetscape4)
    	  obj.visibility = 'show';
	    else
    	  obj.visibility = 'visible';
	  }
   }
  return true;
}

function tc(){
  if(obj){
    if(isNetscape4)
      obj.visibility = 'hide';
    else
      obj.visibility='hidden';
  }
  return true
}
//-->
</script>

	<script language=JavaScript><!--
	function Hover(isover) {
	  var it = event.srcElement;
	  if(it.parentElement.className == 'mout' && it.tagName == 'TD' 
	  ) {
	    it.style.cursor = isover ? 'hand' : 'default';
	    it.parentElement.style.backgroundColor = isover ? '#1E1E1E' : '';
	    if (event.type == 'click') location.href = it.parentElement.getAttribute('href');
	    }
	  }
	// --></script>

</head>
<body onMouseOver="Hover(true)" onMouseOut="Hover(false)" onClick="Hover(true)"><a name="top"></a>
<div id="content">
<div id="divPageBody">
<div id="divTitle">免费网络硬盘</div>
<p><h3>%loggedin%</h3></p>
<DIV class="divHeadMenu">&nbsp;%folder%&nbsp;</DIV>
<DIV class="UL">
<ul>
<li>文件夹: <b>%number-folders%</b> 个</li>
<li>总大小: <b>%number-files% : %total-size%</b></li>
</ul></div>
<div id="mainTable" style="width:100%">
<table cellspacing="2" cellpadding="4" border="0" width="100%">
%files%
</table>
</div>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; Copyright  2002-2009 Depth audio-visual. All Rights Reserved .</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://qun.qq.com/air/#13050043" target="_blank" class="copyright" >上的所有软件和资料均为软件作者提供和网友推荐收集整理而来，仅供学习和研究使用。如有侵犯你版权的，请联系我们，本站将立即改正, </a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>服务器时间: %timestamp%
<br>在线时长: %uptime%
<br>执行时间: %build-time%
</div></div></div>
<div id="left"></div>
</body>
<!-- MENU -->
<script>
if (!document.layers)
document.write('<div id="divStayTopLeft" style="position:absolute;width:0px;">')
</script>
<layer id="divStayTopLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        %login-link%
        %upload-link%
          <TR><TD><a href="/"><img src="/~img1" border="0" alt="">&nbsp;&nbsp;首页</a></TD></TR>
          %up%
          <TR><TD><a href="#top"><img src="/~img14" border="0" alt="">&nbsp;&nbsp;注册</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</layer>
<script type="text/javascript">
//Enter "frombottom" or "fromtop"
var verticalpos="fromtop"
if (!document.layers)
document.write('</div>')
function JSFX_FloatTopDiv()
{
	var startX = 0,
	startY = 0;
	var ns = (navigator.appName.indexOf("Netscape") != -1);
	var d = document;
	function ml(id)
	{
		var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
		if(d.layers)el.style=el;
		el.sP=function(x,y){this.style.left=x;this.style.top=y;};
		el.x = startX;
		if (verticalpos=="fromtop")
		el.y = startY;
		else{
		el.y = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		el.y -= startY;
		}
		return el;
	}
	window.stayTopLeft=function()
	{
		if (verticalpos=="fromtop"){
		var pY = ns ? pageYOffset : document.body.scrollTop;
		ftlObj.y += (pY + startY - ftlObj.y)/8;
		}
		else{
		var pY = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		ftlObj.y += (pY - startY - ftlObj.y)/8;
		}
		ftlObj.sP(ftlObj.x, ftlObj.y);
		setTimeout("stayTopLeft()", 10);
	}
	ftlObj = ml("divStayTopLeft");
	stayTopLeft();
}
JSFX_FloatTopDiv();
</script>
<!-- END MENU -->
</html>

[style]
html{height:100%}
body{height:100%;padding:0px;margin:0px 0px 0px 150px;color:silver;background-color:#101010;COLOR:#a0a0a0;TEXT-ALIGN:left;FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif} 
#content{min-height:100%;padding:10px;height:expression('100%');background-color:black;border-left:2px dotted #383838}
#left{padding:10px;position:absolute;top:0;left:0;width:140px}
#menuLeft{padding-left:10px;padding-top:20px}
HTML{SCROLLBAR-FACE-COLOR:#383838;SCROLLBAR-HIGHLIGHT-COLOR:#686868;SCROLLBAR-SHADOW-COLOR:#505050;SCROLLBAR-3DLIGHT-COLOR:#505050;SCROLLBAR-ARROW-COLOR:#909090;SCROLLBAR-TRACK-COLOR:#303030;SCROLLBAR-DARKSHADOW-COLOR:#000000}
BODY{SCROLLBAR-FACE-COLOR:#383838;SCROLLBAR-HIGHLIGHT-COLOR:#686868;SCROLLBAR-SHADOW-COLOR:#505050;SCROLLBAR-3DLIGHT-COLOR:#505050;SCROLLBAR-ARROW-COLOR:#909090;SCROLLBAR-TRACK-COLOR:#303030;SCROLLBAR-DARKSHADOW-COLOR:#000000}
TEXTAREA{SCROLLBAR-FACE-COLOR:#383838;SCROLLBAR-HIGHLIGHT-COLOR:#686868;SCROLLBAR-SHADOW-COLOR:#505050;SCROLLBAR-3DLIGHT-COLOR:#505050;SCROLLBAR-ARROW-COLOR:#909090;SCROLLBAR-TRACK-COLOR:#303030;SCROLLBAR-DARKSHADOW-COLOR:#000000}
TD{COLOR:#a0a0a0;FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;TEXT-ALIGN:justify}
TH{BACKGROUND-COLOR:#181818;FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;FONT-WEIGHT:bold;TEXT-ALIGN:left;COLOR:#909090}
P{COLOR:#a0a0a0;FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;TEXT-ALIGN:justify;TEXT-INDENT:1em}
INPUT{FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;BORDER-RIGHT:#808080 1px solid;BORDER-TOP:#808080 1px solid;BORDER-LEFT:#808080 1px solid;COLOR:#b0b0b0;BORDER-BOTTOM:#808080 1px solid;BACKGROUND-COLOR:#404040}
SELECT{FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;BORDER-RIGHT:#808080 1px solid;BORDER-TOP:#808080 1px solid;BORDER-LEFT:#808080 1px solid;COLOR:#b0b0b0;BORDER-BOTTOM:#808080 1px solid;BACKGROUND-COLOR:#404040}
TEXTAREA{FONT-SIZE:9pt;FONT-FAMILY:Tahoma,Arial,"MS Sans Serif",sans-serif;BORDER-RIGHT:#808080 1px solid;BORDER-TOP:#808080 1px solid;BORDER-LEFT:#808080 1px solid;COLOR:#b0b0b0;BORDER-BOTTOM:#808080 1px solid;BACKGROUND-COLOR:#404040}
A{FONT-WEIGHT:bold;COLOR:#b0b0b0;TEXT-DECORATION:none}
A:link{COLOR:#b0b0b0}
A:visited{COLOR:#b0b0b0}
A:hover{COLOR:#e0e0e0}
A:active{COLOR:#e0e0e0}
H1{FONT-WEIGHT:bold;TEXT-ALIGN:left;LINE-HEIGHT:2em;FONT-STYLE:italic;FONT-SIZE:16pt;COLOR:#606060}
H2{FONT-WEIGHT:bold;TEXT-ALIGN:left;LINE-HEIGHT:2em;FONT-STYLE:italic;FONT-SIZE:13pt;COLOR:#a0a0a0}
H3{FONT-WEIGHT:bold;TEXT-ALIGN:left;FONT-SIZE:10pt;LINE-HEIGHT:1em;COLOR:#a8a8a8}
UL{LIST-STYLE:square}
hr{border:1px solid #383838;color:#080808;background-color:#080808;height:7px;width:400px}
.right{text-align:right}
.row{font-size:10pt;background:#FFFFFF;border:1px solid #BBBBFF}
.column{font-size:10pt;font-weight:bold;padding-bottom:0}
#tableMenu{POSITION:absolute;LEFT:10px;TOP:20px;BACKGROUND-COLOR:#484848}
#tableMenuInner A{PADDING-RIGHT:6px;DISPLAY:block;PADDING-LEFT:6px;FONT-SIZE:11px;PADDING-BOTTOM:5px;PADDING-TOP:5px}
#tableMenuInner A:hover{ BACKGROUND-COLOR:#383838;COLOR:#b0b0b0}
#tableMenuInner TD{BACKGROUND-COLOR:#080808;TEXT-ALIGN:left}
#divFooter{TEXT-ALIGN:center}
#divFooter TD{TEXT-ALIGN:center}
.copyright{FONT-SIZE:8pt}
.divHeadMenu A{FONT-WEIGHT:normal;FONT-SIZE:8pt;COLOR:#909090}
.divHeadMenu A:hover{COLOR:#e0e0e0}
.divHeadMenu{BORDER-RIGHT:#404040 1px solid;PADDING-RIGHT:4px;BORDER-TOP:#404040 1px solid;PADDING-LEFT:4px;FONT-SIZE:10pt;PADDING-BOTTOM:2px;BORDER-LEFT:#404040 1px solid;COLOR:#909090;PADDING-TOP:2px;BORDER-BOTTOM:#404040 1px solid;BACKGROUND-COLOR:#383838}
#divPageBody{BORDER-RIGHT:#404040 1px solid;PADDING-RIGHT:10pt;BORDER-TOP:#404040 1px solid;PADDING-LEFT:10pt;PADDING-BOTTOM:10pt;BORDER-LEFT:#404040 1px solid;PADDING-TOP:2px;BORDER-BOTTOM:#404040 1px solid;BACKGROUND-COLOR:#080808}
#divProgress{MARGIN-RIGHT:17px;BORDER-RIGHT:#404040 1px solid;PADDING-RIGHT:10px;BORDER-TOP:#404040 1px solid;PADDING-LEFT:10px;PADDING-BOTTOM:7px;BORDER-LEFT:#404040 1px solid;PADDING-TOP:7px;BORDER-BOTTOM:#404040 1px solid;BACKGROUND-COLOR:#080808}
#divTitle{PADDING-RIGHT:15px;PADDING-LEFT:0px;FONT-WEIGHT:bold;FONT-SIZE:14pt;PADDING-BOTTOM:2px;MARGIN:0px -10pt;COLOR:#606060;LINE-HEIGHT:2em;PADDING-TOP:2px;FONT-STYLE:italic;BACKGROUND-COLOR:#101010;TEXT-ALIGN:right}
.mout{BACKGROUND:#282828}
.mover{BACKGROUND:#1E1E1E;CURSOR:pointer}
.big{font-size:12pt;font-weight:bold;color:#FFF}
.flag{font-weight:bold;font-size:8pt; background:#383838; color:#CCC; text-align:center; border:1px solid #CCC}
.file{font-weight:bold;font-size:9pt}
.pgtext{font-weight:bold;font-size:7pt}
.perc{font-size:14px;vertical-align:middle}
.out_bar{width:100px;font-size:15px;background:grey;border:silver 1px solid;margin-right:5px}
.in_bar{height:16px;background:white;color:white}
#bb{border:1px solid #000}
.tip{font-size:11px;font-family:verdana,sans-serif;border:1px solid green;text-align:left;padding:3px;position:absolute;z-index:999;visibility:hidden;color:#CCC;top:20px;left:90px;background-color:#101010;width:250px}
.tip2{text-align:left;color:#FFF;font-family:verdana,sans-serif;font-size:11px}
.tipline{padding:5px;display:block;border-bottom:#BFBFBF 2px solid;background-color:#383838}

[login-link]
<TR>
<TD>
<a href="%encoded-folder%~login"><img src="/~img27" border="0" alt="">&nbsp;&nbsp;登录</a>
</TD>
</TR>

[loggedin]
<img border="0" align="absbottom" src="/~img27" alt="">&nbsp;登录成功:&nbsp;%user%

[upload-link]
<TR>
<TD>
<a href="%encoded-folder%~upload"><img src="/~img32" border="0" alt="">&nbsp;&nbsp;上传</a>
</TD>
</TR>

[up]
<TR>
<TD>
<a href="%parent-folder%"><img src="/~img26" border="0" alt="">&nbsp;&nbsp;上页</a>
</TD>
</TR>

[nofiles]
<h1>没有档案</h1>

[files]
<tr>
<th style="text-align:center"><span class="column">I</span>
<th><a href="%folder%?sort=n"><span class="column">文件名.扩展名</span></a>
<th><a href="%folder%?sort=s"><span class="column">大小</span></a>
<th><a href="%folder%?sort=t"><span class="column">修改时间</span></a>
<th style="text-align:center"><span class="column">点击量</span>
</tr>
%list%

[file]
<tr class="mout" href="%item-url%">
    <td width="16px">%comment%</td>
    <td><a href="%item-url%"> %new% <img align="top" src="/~img_file" border="0" alt="">&nbsp;&nbsp;<b>%item-name%</b></a></td>
    <td>%item-size%</td>
    <td>%item-modified%</td>
    <td>%item-dl-count%</td>
</tr>

[folder]
<tr class="mout" href="%item-url%">
<td width="16px">%comment%</td>
<td><a href="%item-url%"> %new% <img align="top" src="/~img_folder" border="0" alt="">&nbsp;&nbsp;<b>%item-name%</b></a></td>
<td colspan="3"><b><i>目录</i></b></td>
</tr>

[link]
<tr class="mout" href="%item-url%">
<td width="16px">%comment%</td>
<td><a href="%item-url%"> %new% <img align="top" src="/~img_link" border="0" alt="">&nbsp;&nbsp;<b>%item-name%</b></a></td>
<td colspan="3"><b><i>This is a link</i></b></td>

[comment]
<div id="com_ment" class=tip style='left: 515px; top: 298px;'>
<table width="100%"><tr><td><span class="tipline" id="bb"><i>= Comment =</i></span></td></tr>
<tr><td class="tip2"> %item-comment% </td></tr>
</table>
</div>
<img onmousemove="ts(event,this)" onmouseout="tc()" src="/~img10" alt="" border="0">

[not found]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>HttpFileSystem ( %version% ) ::: ERROR - 404</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<div id="content">
<div id="divPageBody">
<div id="divTitle">ERROR</div>
<h1>404 -  NOT FOUND...</h1>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; 2005 Roman V. Brooks.<BR>All Rights Reserved.</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://www.rejetto.com/hfs" target="_blank" class="copyright" >Powered by HFS %version%</a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>Servertime: %timestamp%
<br>Uptime: %uptime%
</div></div></div>
<div id="left">
<!-- MENU -->
<div id="menuLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
          <TD><a href="/"><img src="/~img1" border="0" alt="">&nbsp;&nbsp;GO TO ROOT</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</div>
<!-- END MENU -->
</div>
</body>
</html>

[overload]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>Server is Busy</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<div id="content">
<div id="divPageBody">
<div id="divTitle">Server is Busy</div>
<h1>Please, try visit later.</h1>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; 2005 Roman V. Brooks.<BR>All Rights Reserved.</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://www.rejetto.com/hfs" target="_blank" class="copyright" >Powered by HFS %version%</a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>Servertime: %timestamp%
<br>Uptime: %uptime%
</div></div></div>
<div id="left">
<!-- MENU -->
<div id="menuLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
          <TD><a href="/"><img src="/~img1" border="0">&nbsp;&nbsp;GO TO ROOT</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</div>
<!-- END MENU -->
</div>
</body>
</html>

[unauthorized]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>Not Logged In</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<h1>未授权</h1>该资源为私密资源.<br />你输入的账户和密码不对.<br><br>

<div id="content">
<div id="divPageBody">
<div id="divTitle">Autorization</div>
<h1>Authorization required!</h1>
<b>Your login or password is not correct.
<br>Please, try again!</b>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; 2005 Roman V. Brooks.<BR>All Rights Reserved.</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://www.rejetto.com/hfs" target="_blank" class="copyright" >Powered by HFS %version%</a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>Servertime: %timestamp%
<br>Uptime: %uptime%
</div></div></div>
<div id="left">
<!-- MENU -->
<div id="menuLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
          <TD><a href="/"><img src="/~img1" border="0">&nbsp;&nbsp;GO TO ROOT</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</div>
<!-- END MENU -->
</div>
</body>
</html>

[deny]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>Deny</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<div id="content">
<div id="divPageBody">
<div id="divTitle">Deny</div>
<h1>You cannot view content of this directory!</h1>
<b>Plese, contact server administrator.</b>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; 2005 Roman V. Brooks.<BR>All Rights Reserved.</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://www.rejetto.com/hfs" target="_blank" class="copyright" >Powered by HFS %version%</a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>Servertime: %timestamp%
<br>Uptime: %uptime%
</div></div></div>
<div id="left">
<!-- MENU -->
<div id="menuLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
          <TD><a href="/"><img src="/~img1" border="0">&nbsp;&nbsp;GO TO ROOT</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</div>
<!-- END MENU -->
</div>
</body>
</html>

[ban]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>Oh, fuck...</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<div id="content">
<div id="divPageBody">
<div id="divTitle">Bann!</div>
<h1>Great! You're permanently BANNED!</h1>
<b>%reason%</b>
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy; 2005 Roman V. Brooks.<BR>All Rights Reserved.</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://www.rejetto.com/hfs" target="_blank" class="copyright" >Powered by HFS %version%</a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>Servertime: %timestamp%
<br>Uptime: %uptime%
</div></div></div>
<div id="left">
<!-- MENU -->
<div id="menuLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
          <TD><a href="/"><img src="/~img1" border="0">&nbsp;&nbsp;GO TO ROOT</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</div>
<!-- END MENU -->
</div>
</body>
</html>

[upload]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<title>Http File Server ( %version% ) ::: Files Upload</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body>
<div id="content">
<div id="divPageBody">
<div id="divTitle">上传文件</div>
<p><h3>%loggedin%</h3></p>
<DIV class="divHeadMenu">&nbsp;%folder%&nbsp;</DIV>
<br>
<div style="float:right; padding:15px;">
<script language="javascript">
if (!window.parent.progress) document.write('<a href="%encoded-folder%~upload+progress" class="button"><img border="0" align="absbottom" src="/~img1"> 显示上传文件进度</a>');
else document.write('<a href="%encoded-folder%~upload" target="_parent" class="button"><img border="0" align="absbottom" src="/~img2"> 关闭显示上传文件进度</a>');
</script>
</div>
<br>
<form name="frm" action="%encoded-folder%" target="_parent" method="post" enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true; return true;">
%upload-files%
<br>
<input name="upbtn" type="submit" value="上传文件">
</form>
<br><img src="/~img9"> 警告：上传过程中请勿打开[显示上传文件进度]页面,否则将会影响上传速度!
<br><img src="/~img9"> 警告：上传的文件如果和上传目录有重复相同的文件名,默认将会自动覆盖服务器上现有的文件。
    <!-- FOOTER -->
<DIV id="divFooter">
<TABLE cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
  <TBODY>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
  <TR>
    <TD><HR></TD></TR>
  <TR>
<TD class="copyright"><br>&copy;  Copyright 2002-2009 Depth audio-visual. All Rights Reserved .</TD>
</TR><tr><td align="center">&nbsp;<br /><a href="http://qun.qq.com/air/#13050043" target="_blank" class="copyright" >上的所有软件和资料均为软件作者提供和网友推荐收集整理而来，仅供学习和研究使用。如有侵犯你版权的，请联系我们，本站将立即改正, </a></td></tr>
  <TR>
    <TD height="20" width="100%">&nbsp;</TD></TR>
</TR>
</TBODY></TABLE></div>
   <!-- END FOOTER -->
<DIV class="copyright">
<br>服务器时间: %timestamp%
<br>在线时长: %uptime%
<br>执行时间: %diskfree%
</div></div></div>
<div id="left"></div>
</body>
<!-- MENU -->
<script>
if (!document.layers)
document.write('<div id="divStayTopLeft" style="position:absolute;width:0px;z-index:100;">')
</script>
<layer id="divStayTopLeft">
<!--EDIT BELOW CODE TO YOUR OWN MENU-->
<TABLE id="tableMenu" cellSpacing="1" width="130" cellPadding="0" border="0">
  <TR>
   <TD>
    <TABLE id="tableMenuInner" cellSpacing="1" width="100%" cellPadding="0" border="0">
        <TR>
		  %login-link%
          <TD><a href="/" target="_parent"><img src="/~img1" border="0" alt="">&nbsp;&nbsp;首页</a></TD></TR>
         <TR><TD><a href="%encoded-folder%" target="_parent"><img src="/~img21" border="0" alt="">&nbsp;&nbsp;取消</a></TD></TR>
     </TABLE>
    </TD>
   </TR>
 </TABLE>
<!--END OF EDIT-->
</layer>
<script type="text/javascript">
//Enter "frombottom" or "fromtop"
var verticalpos="fromtop"
if (!document.layers)
document.write('</div>')
function JSFX_FloatTopDiv()
{
	var startX = 0,
	startY = 0;
	var ns = (navigator.appName.indexOf("Netscape") != -1);
	var d = document;
	function ml(id)
	{
		var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
		if(d.layers)el.style=el;
		el.sP=function(x,y){this.style.left=x;this.style.top=y;};
		el.x = startX;
		if (verticalpos=="fromtop")
		el.y = startY;
		else{
		el.y = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		el.y -= startY;
		}
		return el;
	}
	window.stayTopLeft=function()
	{
		if (verticalpos=="fromtop"){
		var pY = ns ? pageYOffset : document.body.scrollTop;
		ftlObj.y += (pY + startY - ftlObj.y)/8;
		}
		else{
		var pY = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		ftlObj.y += (pY - startY - ftlObj.y)/8;
		}
		ftlObj.sP(ftlObj.x, ftlObj.y);
		setTimeout("stayTopLeft()", 10);
	}
	ftlObj = ml("divStayTopLeft");
	stayTopLeft();
}
JSFX_FloatTopDiv();
</script>
<!-- END MENU -->
</html>

[upload-file]
<input name="fileupload%idx%" class="btn" size="70" type="file"><br>

[progress]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<noscript>
<meta http-equiv="refresh" content="3">
</noscript>
<script language="JavaScript">
<!--
var sURL = unescape(window.location.pathname);
function doLoad()
{ setTimeout( "refresh()", 3*1000 ); }
function refresh()
{ window.location.href = sURL; }
//-->
</script>
<script language="JavaScript1.1">
<!--
function refresh()
{ window.location.replace( sURL ); }
//-->
</script>
<script language="JavaScript1.2">
<!--
function refresh()
{ window.location.reload( false ); }
//-->
</script>
<style type="text/css" media="screen">\n%style%\n</style>
</head>
<body onload="doLoad()">
<div id="content">
<div id="divProgress">
<div id="tprogress" style="width:100%">
  <table width="100%"  border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td align="left" valign="top" class="big">上传进度</td>
      <td rowspan="2" align="right" valign="top"><img src="/~img_graph600x30" style="border:inset 1px" alt=""></td>
    </tr>
    <tr>
      <td align="left" valign="top">%progress-files%</td>
    </tr>
  </table>
</div></div></div>
</body>
</html>

[upload+progress]
<html>
<head>
<frameset rows=160,* border="0">
  <frame name="progress" src="/~progress" scrolling="no" marginwidth="0">
  <frame src="%encoded-folder%~upload" scrolling="auto">
</frameset>
</head>
<body>
</body>
</html>

[upload-results]
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Upload Results for: %folder%</title>
<style type="text/css">\n%style%\n</style>
</head>
<body>
%loggedin%
<div class=little>  上传结果 :</div>
<div class=big>%folder%</div>
<div class=body>
%uploaded-files%
<br><br>
<a href="%encoded-folder%" target=_parent class=big><img border=0 align=bottom src="/~img14" alt="Back"> 首页 </a>
</div>
</body>
</html>

[upload-success]
<li><b>成功上传</b> : %item-name% --- %item-size% (速度: %speed% KB/s)

[upload-failed]
<li><b>FAILED!</b> Error while uploading: %item-name%: ---  %reason%

[progress-nofiles]
<b>当前：无传送操作</b>

[progress-upload-file]
<tr><td align="left" valign="top"><span class="flag">&nbsp;UPLOAD&nbsp;</span>&nbsp;&nbsp;<span class="file">%filename%</span></td></tr>
<tr><td align="left" valign="top" class="pgtext">%done-bytes%&nbsp;/&nbsp;%total-bytes% bytes</td></tr>
<tr><td align="left" valign="top" class="pgtext">Speed:&nbsp;%speed-kb%&nbsp;KB/s</td></tr>
<tr><td align="left" valign="top"><div style="margin-top:5px; margin-bottom:20px;"><span class="out_bar"><span class="in_bar" style="width:%perc%px"></span></span><span class="perc">&nbsp;%perc%%</span></div></td></tr>

[progress-download-file]
<tr><td align="left" valign="top"><span class="flag">&nbsp;DOWNLOAD&nbsp;</span>&nbsp;&nbsp;<span class="file">%filename%</span></td></tr>
<tr><td align="left" valign="top" class="pgtext">%bytes%&nbsp;/&nbsp;%total% bytes</td></tr>
<tr><td align="left" valign="top"><div style="margin-top:5px; margin-bottom:20px;"><span class="out_bar"><span class="in_bar" style="width:%perc%px"></span></span><span class="perc">&nbsp;%perc%%</span></div></td></tr>

[newfile]
<span class="flag">&nbsp;最新&nbsp;</span>