/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 0;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=10" };
static const char dmenufont[]       = "monospace:size=10";
static const char col_gray1[]       = "#000000";
static const char col_gray2[]       = "#0D0D0D";
static const char col_gray3[]       = "#333333";
static const char col_gray4[]       = "#5D5D5D";
static const char col_cyan[]        = "#005577";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_gray4  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	{ "", tile },    /* first entry is default */
};

/* key definitions */
#define MODKEY Mod1Mask

/* commands */
static char dmenumon[2] = "0";
static const char *dmenucmd[] = { NULL };
static const char *termcmd[]  = { "st", "-e", "/usr/bin/fish" };

static const Key keys[] = {
	/* modifier            key           function        argument */
	{ 0,                   XK_KP_Enter,  spawn,          {.v = termcmd } },

	{ 0,                   XK_KP_Begin,  focusstack,     {.i = +1 } },
	{ 0,                   XK_KP_Right,  focusstack,     {.i = -1 } },

	{ 0,                   XK_KP_Left,   zoom,           {0} },

	{ 0,                   XK_KP_Delete, view,           {0} },

	{ 0,                   XK_Menu,      killclient,     {0} },

	{ Mod4Mask,            XK_KP_End,    view,           {.ui = 1 << 0 } },
	{ Mod4Mask,            XK_KP_Down,   view,           {.ui = 1 << 1 } },
	{ Mod4Mask,            XK_KP_Next,   view,           {.ui = 1 << 2 } },
	{ Mod4Mask,            XK_KP_Left,   view,           {.ui = 1 << 3 } },
	{ Mod4Mask,            XK_KP_Begin,  view,           {.ui = 1 << 4 } },
	{ Mod4Mask,            XK_KP_Right,  view,           {.ui = 1 << 5 } },
	{ Mod4Mask,            XK_KP_Home,   view,           {.ui = 1 << 6 } },
	{ Mod4Mask,            XK_KP_Up,     view,           {.ui = 1 << 7 } },
	{ Mod4Mask,            XK_KP_Prior,  view,           {.ui = 1 << 8 } },

	{ Mod4Mask|ShiftMask,  XK_KP_End,    tag,            {.ui = 1 << 0 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Down,   tag,            {.ui = 1 << 1 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Next,   tag,            {.ui = 1 << 2 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Left,   tag,            {.ui = 1 << 3 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Begin,  tag,            {.ui = 1 << 4 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Right,  tag,            {.ui = 1 << 5 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Home,   tag,            {.ui = 1 << 6 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Up,     tag,            {.ui = 1 << 7 } },
	{ Mod4Mask|ShiftMask,  XK_KP_Prior,  tag,            {.ui = 1 << 8 } },
};

static const Button buttons[] = {
	{ 0, 0, 0, 0, {0} },
};