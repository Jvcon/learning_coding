<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Refresh" content="1; URL=/template/shoutbox/display_posts/?sort=t&rev=1">
	<link rel="stylesheet" type="text/css" href="/template/code/terayon_main.css"/>
</head>
<body id="msgBody">
<br/><center><i>����...</i></center>
</body>
</html>

[files]

[file]

[folder]

[link]

[special:begin]
{.if not|{.match|{.postvar|msg.}|��Ϣ.}|
{:{.append|/template/shoutbox/display_posts/%ip% {.replace|/|-|:|.|%timestamp%.}.txt|
<div class="msgHeader">
[<span class="msgUser"><b>{.replace|<|&lt;|{.postvar|user.}.}</b></span>]<br/>%timestamp%
</div>
<div class="msgInner">
{.replace
	|<|&lt;
	|:)|<img src="/template/shoutbox/smileys/smiley.gif" alt=""/>
	|:D|<img src="/template/shoutbox/smileys/cheesy.gif" alt=""/>
	|:P|<img src="/template/shoutbox/smileys/tongue.gif" alt=""/>
	|;D|<img src="/template/shoutbox/smileys/grin.gif" alt=""/>
	|:(|<img src="/template/shoutbox/smileys/sad.gif" alt=""/>
	|:$|<img src="/template/shoutbox/smileys/embarrassed.gif" alt=""/>
	|:'(|<img src="/template/shoutbox/smileys/cry.gif" alt=""/>
	|:o|<img src="/template/shoutbox/smileys/shocked.gif" alt=""/>
	|(h)|<img src="/template/shoutbox/smileys/cool.gif" alt=""/>
	|:S|<img src="/template/shoutbox/smileys/undecided.gif" alt=""/>
	|;)|<img src="/template/shoutbox/smileys/wink.gif" alt=""/>
	|{.postvar|msg.}
.}
</div>
.}:}
.}