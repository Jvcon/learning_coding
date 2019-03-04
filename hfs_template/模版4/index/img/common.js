function upload_window(){
myleft=(screen.width)?(screen.width-600)/2:100;mytop=(screen.height)?(screen.height-500)/2:100;
settings='top=' + mytop + ',left=' + myleft + ',width=600,height=500,location=no,directories=no,menubar=no,toolbar=no,status=yes,scrollbars=no,resizable=no,fullscreen=no'
uploadwindow=window.open('%encoded-folder%~upload','uploadwindow', settings);
uploadwindow.focus();}

function aboutpopup(){
myleft=(screen.width)?(screen.width-400)/2:100;mytop=(screen.height)?(screen.height-200)/2:100;
settings='top=' + mytop + ',left=' + myleft + ',width=400,height=380,location=no,directories=no,menubar=no,toolbar=no,status=no,scrollbars=no,resizable=no,fullscreen=no'
aboutwindow=window.open('/index/img/about.htm','aboutwindow', settings);
aboutwindow.focus();}

function statuswin(){
myleft=(screen.width)?(screen.width-450)/2:100;mytop=(screen.height)?(screen.height-200)/2:100;
settings='top=' + mytop + ',left=' + myleft + ',width=450,height=200,location=no,directories=no,menubar=no,toolbar=no,status=no,scrollbars=yes,resizable=no,fullscreen=no'
statuswindow=window.open('/~progress','statuswindow', settings);
statuswindow.focus();}

function transferlayer() {
document.getElementById("transfer").style.visibility = "visible";}

function getico(){
switch (  c.substr(  c.lastIndexOf('.')  ) .toLowerCase()  )
 {
case '.ico' : case '.cur': case '.ani': document.write('<img align="center" src="/~img_file" border="0" alt="" width="32" height="32">');break;
case '.rm' : case '.rmvb' : case '.ram' :case '.ra' : case '.rv' : case '.qt' :case '.mpv' : case '.mp4': case '.mpg': case '.mp2':document.write('<img align="center" src="/index/img/ico_avfile.gif" border="0" alt="" width="32" height="32">');break;
case '.bat' : case '.cmd' : document.write('<img align="center" src="/index/img/ico_bat2.gif" border="0" alt="" width="32" height="32">');break;
case '.ini' : case '.sys' : case '.dll': document.write('<img align="center" src="/index/img/ico_bat.gif" border="0" alt="" width="32" height="32">');break;
case '.cd' : case '.bwt' :case '.cdi' : case '.b5t' : case '.mds' : case '.pdi' : document.write('<img align="center" src="/index/img/ico_cd.jpg" border="0" alt="" width="32" height="32">');break;
case '.cda' :document.write('<img align="center" src="/index/img/ico_cda.gif" border="0" alt="" width="32" height="32">');break;
case '.cue' :document.write('<img align="center" src="/index/img/ico_cue.jpg" border="0" alt="" width="32" height="32">');break;
case '.xls' : document.write('<img align="center" src="/index/img/ico_excel.gif" border="0" alt="" width="32" height="32">');break;
case '.exe' : case '.msi' :document.write('<img align="center" src="/index/img/ico_exe.gif" border="0" alt="" width="32" height="32">');break;
case '.fla' : case '.swf' : case '.flv' : document.write('<img align="center" src="/index/img/ico_swf.gif" border="0" alt="" width="32" height="32">');break;
case '.ttf' : case '.ttc' : document.write('<img align="center" src="/index/img/ico_font1.gif" border="0" alt="" width="32" height="32">');break;
case '.fon' : document.write('<img align="center" src="/index/img/ico_font2.gif" border="0" alt="" width="32" height="32">');break;
case '.html' : case '.htm' : case '.mht' :document.write('<img align="center" src="/index/img/ico_html.gif" border="0" alt="" width="32" height="32">');break;
case '.iso' :document.write('<img align="center" src="/index/img/ico_iso.jpg" border="0" alt="" width="32" height="32">');break;
case '.midi' : case '.mid' :case '.dls' :document.write('<img align="center" src="/index/img/ico_midi.gif" border="0" alt="" width="32" height="32">');break;
case '.wma' : case '.wav' : case '.mp1' : case '.mp2' : case '.avi': case '.wmv': case '.asf' : case '.dv':  document.write('<img align="center" src="/index/img/ico_wmp.jpg" border="0" alt="" width="32" height="32">');break;
case '.ogg' : case '.mpa' :case '.ac3' :document.write('<img align="center" src="/index/img/ico_music2.gif" border="0" alt="" width="32" height="32">');break;
case '.nri' : case '.nr3' :case '.nr4' : case '.nrw' : case '.nra' : case '.nrm' : case '.nre' :case '.nrv' : case '.nsd' : case '.nrd' : case '.nri' : case '.nmd' :case '.nhv' : case '.nrb' : case '.nrh' :document.write('<img align="center" src="/index/img/ico_nero.gif" border="0" alt="" width="32" height="32">');break;
case '.nrg' : document.write('<img align="center" src="/index/img/ico_nrg.gif" border="0" alt="" width="32" height="32">');break;
case '.pdf' : document.write('<img align="center" src="/index/img/ico_pdf.gif" border="0" alt="" width="32" height="32">');break;
case '.psd' : document.write('<img align="center" src="/index/img/ico_psd.gif" border="0" alt="" width="32" height="32">');break;
case '.wpl' : case '.asx' : case '.m3u' : document.write('<img align="center" src="/index/img/ico_playlist1.gif" border="0" alt="" width="32" height="32">');break;
case '.ppt' :document.write('<img align="center" src="/index/img/ico_ppt.gif" border="0" alt="" width="32" height="32">');break;
case '.rar' : case '.ace' : case '.7zip' : document.write('<img align="center" src="/index/img/ico_rar.gif" border="0" alt="" width="32" height="32">');break;
case '.zip' : document.write('<img align="center" src="/index/img/ico_zip.gif" border="0" alt="" width="32" height="32">');break;
case '.reg' :document.write('<img align="center" src="/index/img/ico_reg.gif" border="0" alt="" width="32" height="32">');break;
case '.txt' :case '.sub': case '.srt': document.write('<img align="center" src="/index/img/ico_txt.gif" border="0" alt="" width="32" height="32">');break;
case '.vob' : document.write('<img align="center" src="/index/img/ico_vob.gif" border="0" alt="" width="32" height="32">');break;
case '.doc' :document.write('<img align="center" src="/index/img/ico_doc.gif" border="0" alt="" width="32" height="32">');break;
case '.3ds' : case '.max' : document.write('<img align="center" src="/index/img/ico_max.gif" border="0" alt="" width="32" height="32">');break;
case '.mb' : case '.mel' : case '.mayaBinaryfile': document.write('<img align="center" src="/index/img/ico_maya.gif" border="0" alt="" width="32" height="32">');break;
case '.tga' : case '.tif' : case '.tiff': case '.targa': document.write('<img align="center" src="/index/img/ico_pict3.gif" border="0" alt="" width="32" height="32">');break;
default     : document.write('<img align="center" src="/index/img/ico_blank.gif" border="0" alt="" width="32" height="32"></a>');
 }
}