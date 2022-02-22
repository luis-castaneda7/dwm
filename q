[1mdiff --git a/config.h b/config.h[m
[1mindex efe03b6..6a5253f 100644[m
[1m--- a/config.h[m
[1m+++ b/config.h[m
[36m@@ -28,10 +28,10 @@[m [mstatic const char *tags[] = { "初", "二", "三", "四", "五"};[m
 static const char *const autostart[] = {[m
 	"dropbox", "start", NULL,[m
 	"slstatus", NULL,[m
[31m-	"picom", NULL,[m
[32m+[m	[32m"picom", "-b", NULL,[m
 	"caffeine", NULL,[m
 	"unclutter", "-idle", "2", NULL,[m
[31m-	//"redshift", "-l", "41.8:-87.62", "-t", "5700:3600", "-g", "0.8", "-m", "randr", "-v", NULL,[m
[32m+[m	[32m"redshift", "-l", "41.8:-87.62", "-t", "5700:3600", "-g", "0.8", "-m", "randr", "-v", NULL,[m
 	"nitrogen", "--restore", NULL[m
 [m
 };[m
[36m@@ -47,7 +47,7 @@[m [mstatic const Rule rules[] = {[m
 	{ "feh",      			NULL,       NULL,       		~0,           1,          1, 			-1, 			0},[m
 	{ "SpeedCrunch",		NULL,       NULL,       		~0,           1,          1, 			-1, 			0},[m
 	{ "zoom",     			NULL,       NULL,       		1 << 4,       0,          0, 			-1, 			0},[m
[31m-	{ "zoom",     			"zoom",     "Zoom Meeting",		1 << 4,       0,          0, 			-1, 			0},[m
[32m+[m	[32m{ "Anki",     			NULL,       NULL,       		0,		      1,          0, 			-1, 			0},[m
 	{  NULL,      			"slack",    NULL,				1 << 2,       0,          0, 			-1, 			0},[m
 	{ "discord",  			NULL,       NULL,				1 << 2,       0,          0, 			-1, 			0},[m
 	{ "jetbrains-idea-ce",  NULL,       NULL,				0,			  0,          0, 			-1, 			1},[m
[36m@@ -84,39 +84,41 @@[m [mstatic char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn()[m
 static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, NULL };[m
 static const char *termcmd[]  = { "st", NULL };[m
 static const char scratchpadname[] = "scratchpad";[m
[31m-static const char *scratchpadcmd[] = { "st", "-t", scratchpadname, "-g", "124x15", "-e", "tmux",NULL };[m
[32m+[m[32mstatic const char *scratchpadcmd[] = { "st", "-t", scratchpadname, "-g", "151x15", "-e", "tmux",NULL };[m
[32m+[m[32mstatic const char *calculatorcmd[] = { "speedcrunch", NULL };[m
 [m
 static Key keys[] = {[m
 	/* modifier                     key        function        argument */[m
[31m-	{ CTRL,                         XK_space,  spawn,          {.v = dmenucmd } },[m
[31m-	{ CTRL|ALT,                     XK_t,  	   togglescratch,  {.v = scratchpadcmd } },[m
[31m-	{ MODKEY,                       XK_b,      togglebar,      {0} },[m
[31m-	{ CTRL,                         XK_Tab,    focusstack,     {.i = +1 } },[m
[31m-	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },[m
[31m-	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },[m
[31m-	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },[m
[31m-	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },[m
[31m-	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },[m
[31m-	{ MODKEY,                       XK_Return, zoom,           {0} },[m
[31m-	{ MODKEY,                       XK_Tab,    view,           {0} },[m
[31m-	{ CTRL,							XK_q,      killclient,     {0} },[m
[31m-	{ CTRL|ShiftMask,				XK_x,      killall,        {0} },[m
[31m-	{ MODKEY,                       XK_f,  	   setlayout,      {0} },[m
[31m-	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },[m
[31m-	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },[m
[31m-	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },[m
[31m-	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },[m
[31m-	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },[m
[31m-	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },[m
[31m-	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },[m
[32m+[m	[32m{ CTRL,                         XK_space,  spawn,			{.v = dmenucmd } },[m
[32m+[m	[32m{ CTRL|ALT,                     XK_t,  	   togglescratch,  	{.v = scratchpadcmd } },[m
[32m+[m	[32m{ CTRL|ALT,                     XK_c,  	   spawnspeedcrunch,{.v = calculatorcmd } },[m
[32m+[m	[32m{ MODKEY,                       XK_b,      togglebar,		{0} },[m
[32m+[m	[32m{ CTRL,                         XK_Tab,    focusstack,     	{.i = +1 } },[m
[32m+[m	[32m{ MODKEY,                       XK_k,      focusstack,     	{.i = -1 } },[m
[32m+[m	[32m{ MODKEY,                       XK_i,      incnmaster,     	{.i = +1 } },[m
[32m+[m	[32m{ MODKEY,                       XK_d,      incnmaster,     	{.i = -1 } },[m
[32m+[m	[32m{ MODKEY,                       XK_h,      setmfact,       	{.f = -0.05} },[m
[32m+[m	[32m{ MODKEY,                       XK_l,      setmfact,       	{.f = +0.05} },[m
[32m+[m	[32m{ MODKEY,                       XK_Return, zoom,           	{0} },[m
[32m+[m	[32m{ MODKEY,                       XK_Tab,    view,           	{0} },[m
[32m+[m	[32m{ CTRL,							XK_q,      killclient,     	{0} },[m
[32m+[m	[32m{ CTRL|ShiftMask,				XK_x,      killall,        	{0} },[m
[32m+[m	[32m{ MODKEY,                       XK_f,  	   setlayout,      	{0} },[m
[32m+[m	[32m{ MODKEY|ShiftMask,             XK_space,  togglefloating, 	{0} },[m
[32m+[m	[32m{ MODKEY,                       XK_0,      view,           	{.ui = ~0 } },[m
[32m+[m	[32m{ MODKEY|ShiftMask,             XK_0,      tag,            	{.ui = ~0 } },[m
[32m+[m	[32m{ MODKEY,                       XK_comma,  focusmon,       	{.i = -1 } },[m
[32m+[m	[32m{ MODKEY,                       XK_period, focusmon,       	{.i = +1 } },[m
[32m+[m	[32m{ MODKEY|ShiftMask,             XK_comma,  tagmon,         	{.i = -1 } },[m
[32m+[m	[32m{ MODKEY|ShiftMask,             XK_period, tagmon,         	{.i = +1 } },[m
 	{ CTRL|ShiftMask,               XK_4,      spawn,          		  SHCMD("screenshot") },[m
 	{ CTRL|ShiftMask,               XK_3,      spawn,          		  SHCMD("screenshot-copy") },[m
 	{ CTRL|ShiftMask,               XK_2,      spawn,          		  SHCMD("screenshot-save") },[m
[31m-	{ 0,               		XF86XK_MonBrightnessUp,   spawn,          SHCMD("light -A 3") },[m
[31m-	{ 0,               		XF86XK_MonBrightnessDown, spawn,          SHCMD("light -U 3") },[m
[31m-	{ 0,               		XF86XK_AudioMute,         spawn,          SHCMD("amixer set Master toggle") },[m
[31m-	{ 0,               		XF86XK_AudioRaiseVolume,  spawn,          SHCMD("amixer set Master 3%+") },[m
[31m-	{ 0,               		XF86XK_AudioLowerVolume,  spawn,          SHCMD("amixer set Master 3%-") },[m
[32m+[m	[32m{ 0,               		XF86XK_MonBrightnessUp,   spawn,          SHCMD("brightnessControl up") },[m
[32m+[m	[32m{ 0,               		XF86XK_MonBrightnessDown, spawn,          SHCMD("brightnessControl down") },[m
[32m+[m	[32m{ 0,               		XF86XK_AudioMute,         spawn,          SHCMD("volumeControl mute") },[m
[32m+[m	[32m{ 0,               		XF86XK_AudioRaiseVolume,  spawn,          SHCMD("volumeControl up") },[m
[32m+[m	[32m{ 0,               		XF86XK_AudioLowerVolume,  spawn,          SHCMD("volumeControl down") },[m
 	{ 0,               		XF86XK_Display,			  spawn,          SHCMD("tv") },[m
 	{ 0,               		XF86XK_Tools,			  spawn,          SHCMD("pomo") },[m
 	{ CTRL,               	XF86XK_Tools,			  spawn,          SHCMD("spomo") },[m
[1mdiff --git a/dwm b/dwm[m
[1mindex 6e30ad3..39c3523 100755[m
Binary files a/dwm and b/dwm differ
[1mdiff --git a/dwm.c b/dwm.c[m
[1mindex bbc892f..027dc03 100644[m
[1m--- a/dwm.c[m
[1m+++ b/dwm.c[m
[36m@@ -220,6 +220,7 @@[m [mstatic void tile(Monitor *);[m
 static void togglebar(const Arg *arg);[m
 static void togglefloating(const Arg *arg);[m
 static void togglescratch(const Arg *arg);[m
[32m+[m[32mstatic void spawnspeedcrunch(const Arg *arg);[m
 static void toggletag(const Arg *arg);[m
 static void toggleview(const Arg *arg);[m
 static void unfocus(Client *c, int setfocus);[m
[36m@@ -1990,6 +1991,28 @@[m [mtogglefloating(const Arg *arg)[m
 	arrange(selmon);[m
 }[m
 [m
[32m+[m[32mvoid[m
[32m+[m[32mspawnspeedcrunch(const Arg *arg)[m
[32m+[m[32m{[m
[32m+[m
[32m+[m	[32mClient *c;[m
[32m+[m	[32munsigned int found = 0;[m
[32m+[m	[32mfor (c = selmon->clients; c; c = c->next) {[m
[32m+[m		[32mif (strcmp(c->name, "SpeedCrunch") == 0) {[m
[32m+[m			[32mfound = 1;[m
[32m+[m			[32mbreak;[m
[32m+[m		[32m}[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mif (found && ISVISIBLE(c)) {[m
[32m+[m		[32mfocus(c);[m
[32m+[m		[32mrestack(selmon);[m
[32m+[m	[32m} else {[m
[32m+[m		[32mspawn(arg);[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m[32m}[m
[32m+[m
 void[m
 togglescratch(const Arg *arg)[m
 {[m
[1mdiff --git a/dwm.o b/dwm.o[m
[1mindex 0315e86..12c8fab 100644[m
Binary files a/dwm.o and b/dwm.o differ
