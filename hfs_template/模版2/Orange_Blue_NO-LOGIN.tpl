<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<meta name="description" content="������̳  ���� ���������޼���,������Ҫ��������Ŭ���ķ��� - ������̳!">
        <title>HFS %folder% -- ������̳Garphy����</title>
	<style type="text/css">%style%</style>	
</head>

<body>
	%upload-link%
	%login-link%%loggedin%
	<div class=btn><a href="/~progress" class=inbtn><img align=top src="/~img26" alt=""> ����</a></div>
	<div class=btn><a href="%encoded-folder%~files.lst" class=inbtn><img align=top src="/~img4" alt=""> �ļ��嵥</a></div>
	<div class=btn><a href="/" class=inbtn><img align=top src="/~img26" alt=""> ��ҳ</a></div>	
	<div class=lil><b>��ǰ·��:</b></div>
	<div class=big>%folder%</div>
	<div class=body>%folder-comment%%up%%files%</div>
	<div class=body style="padding:0">
		<center>
			<br><b>������״̬<br><img src="/~img_graph700x30" class=inpt alt="Graph"><br>
			<img src="/~img4" align=top alt=""> ����: %speed-out%KB/s 
			<img src="/~img4" align=top alt=""> ����: %speed-in%KB/s 
			<img src="/~img5" align=top alt=""> ������: %connections% 
			<img src="/~img7" align=top alt=""> ����ʱ��: %uptime%<br></b>
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
						<input type=submit name=btnG value="����">
					</td>			  	
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://bbs.78820.com/" target=_blank><img src="http://bbs.78820.com/images/beifeng.gif" alt="������̳"></a>
					</td>
				</tr>
			</table>
			</form><br>
		</center>
	<div style="margin-bottom:10px;" align=center>
		����ҳ���ʱ: %build-time% ��&nbsp;&#8226;&nbsp;ԭ����:<b>That Stevens Guy</b>,Garphy�����޸İ�,HFS�ٷ���̳: <a href="http://www.rejetto.com/hfs/" target=_blank>HFS %version%</a>&nbsp;&#8226;&nbsp;<a href="#">��λ��ҳ�涥��</a>&nbsp;&#8226;
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
<div class=btn><a href="%encoded-folder%~login" class=inbtn><img align=top src="/~img27"> ��½</a></div>

[loggedin]
<div class=btn><span class=inbtn><img align=top src="/~img27" alt=""> ��½Ϊ: %user%</span></div>

[upload-link]
<div class=btn><a href="%encoded-folder%~upload" class=inbtn><img align=top src="/~img32" alt=""> �ϴ��ļ�</a></div>

[up]
<a class=big href="%parent-folder%"><img src="/~img14"> �����ϲ�Ŀ¼</a>

[nofiles]
<div class=big><i>? ��Ŀ¼Ϊ�� ?</i></div>

[files]
<table class=lil width=100%>
	<tr>
		<td><b>%number-folders% Ŀ¼, %number-files% �ļ� - �ܴ�С: %total-size%</td>
		<td align=right><b>%timestamp%</b></td>
	</tr>
</table>
<table width="100%">
	<tr>
		<th class=col><a href="%encoded-folder%?sort=n" style="color:#039;">�ļ���</a></th>
		<th class=col><a href="%encoded-folder%?sort=s" style="color:#039;">�ļ���С</a></th>
		<th class=col><a href="%encoded-folder%?sort=t" style="color:#039;">�޸�ʱ��</a></th>
		<th class=col>�����</th>
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
	<td colspan=3 class=rw><i><font size=2>&nbsp;������</font></i></td>
</tr>

[folder]
<tr>
	<td class=rw><a href="%item-url%">&nbsp;<img align=top src="/~img_folder" alt=""><b> %item-name%</b> %new%</a>%comment%</td>
	<td  class=rw align=center><i><font size=2>�ļ���</font></i></td>
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
	<h1>HTTP 404 -  Not Found</h1><a href="/">&nbsp;&nbsp;<b>���ظ�Ŀ¼</b></a>
</div>

[overload]
<div class=error>
	<h1>������æ,���Ժ�����</h1>
</div>

[max contemporary downloads]
<div class=error>
	<h1>��������</h1><br>����������<b>����</b>����������.
<br />Ŀǰ�Ѵﵽ����,���Ժ�����.
</div>

[unauthorized]
<div class=error>
	<h1>δ��Ȩ</h1>����ԴΪ˽����Դ.<br />��������˻������벻��.<br><br>
	<a href="/">&nbsp;&nbsp;<b>���ظ�Ŀ¼</b></a>
</div>

[deny]
<div class=error>
	<h1>�޷�����</h1>����Դ���޷�����.
</div>

[ban]
<div class=error>
<h1>�㱻���������!</h1>��������ԭ���㱻���������:<br> %reason%
</div>

[upload]
<html>
<head>
	<title>�ϴ���: %folder%</title>
	<style type="text/css">%style%</style>
</head>
<body>
	<div class=btn><span class=inbtn><img align=top src="/~img27" alt=""> ��½Ϊ: %user%</span></div>
	<div class=btn><a target=_top href="%encoded-folder%~upload" class=inbtn><img align=top src="/~img21" alt=""> �رս�����</a></div>
	<div class=btn><a target=_top href="%encoded-folder%~upload+progress" class=inbtn><img align=top src="/~img10" alt=""> �򿪽�����</a></div>
	<div class=btn><a href="%encoded-folder%" target=_parent class=inbtn><img align=top src="/~img21" alt=""> ȡ���ϴ�</a></div>
	<div class=lil><b>�ϴ���:</b></div>
	<div class=big>%folder%</div>
	<div class=body>
		<center>
			<b>��Ч�������ռ�: %diskfree%</b><br><br>
			<form action="%encoded-folder%" target=_parent method=post enctype="multipart/form-data" onSubmit="frm.upbtn.disabled=true; return true;">%upload-files%<br><input name=upbtn type=submit value="�ϴ�ָ���ļ�"></form>
			<div><img src="/~img9" alt="">�ϴ�������<b>����</b>�򿪴���ҳ��,����Ӱ���ϴ�!</div>
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
	<div class=lil>�ϴ����:</div>
	<div class=big>%folder%</div><div class=body>%uploaded-files%<br><br><a href="%encoded-folder%" target=_parent class=big><img align=bottom src="/~img14" alt=""> ����</a></div>
</body>
</html>

[upload-success]
<li><b>�ϴ��ɹ�!</b> ���ϴ�: %item-name% --- %item-size% (�ٶ�: %speed% KB/s)

[upload-failed]
<li><b>�ϴ�ʧ��!</b> �ϴ�����: %item-name%: --- %reason%

[upload+progress]
<html>
<head>
	<title>�ϴ���: %folder%</title>
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
	<title>����</title>
	<style type="text/css">%style%</style>
</head>
<body style="background: #fff;">
	<center><h1>����</h1>�Զ�ˢ����: 3 ��<br><img src="/~img_graph222x66" alt="Graph" class=inpt><br><br><div class=inbtn>%progress-files%</div></center>
</body>
</html>

[progress-nofiles]
<h2>��ǰ�޻����</h2>
<a href="/">&nbsp;&nbsp;<b>���ظ�Ŀ¼</b></a>

[progress-upload-file]
<div>
	<span class=flg>&nbsp;�ϴ�&nbsp;</span>
	<div><span class=filename>%filename%</span></div>
	<div class=bytes>%done-bytes% / %total-bytes% bytes<br>��ǰ�ϴ��ٶ�: %speed-kb% KB/s</div>
	<div style="margin-top: 5px; margin-bottom: 20px;"><span class=out_bar><span class=in_bar style="width:%perc%px"></span></span>
		<div><span class="perc">%perc%%</span></div>
	</div>
</div>

[progress-download-file]
<div>
<span class="flg">&nbsp;����&nbsp;</span>
	<div><span class="filename">%filename%</span></div>
	<div class=bytes>%done-bytes% / %total-bytes% bytes<br>��ǰ�����ٶ�: %speed-kb% KB/s</div>
	<div style="margin-top: 5px; margin-bottom: 20px;"><span class=out_bar><span class=in_bar style="width:%perc%px"></span></span>
		<div><span class=perc> %perc%%</span></div>
	</div>
</div>

[newfile]
&nbsp;<span class=flg>&nbsp;New&nbsp;</span>