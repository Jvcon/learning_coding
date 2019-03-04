<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
</head>
<body onload="window.scrollTo(0,99999)" id="msgBody">
{.$files.}
<form name="shout" action="/template/shoutbox/process_posts/" method="post" id="msgForm">
<center>
	<input type="text" name="user" size="17" maxlength="30" value="{.if|%user%|%user%|游客.}" class="formInput"  onclick="if(this.value=='Guest')this.value=''"/><br/>
	<input type="text" name="msg" size="17" maxlength="150" value="留言信息" class="formInput" id="msgInput" title="Smileys: :) :D ;D ;) :S :$ :P :o :'( :( (h)" onclick="if(this.value=='游客')this.value=''"/><br/>
	<input type="submit" value="提交" id="msgSubmit"/>
</center>
</form>
</body>
</html>

[files]
{.if not|%number%|<center id="msgFail">无留言信息.</center>|%list%.}

[file.txt]
<div class="msgOuter">
{.load|/template/shoutbox/display_posts/%item-name%.}
</div>

[file]

[folder]

[link]