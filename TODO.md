- [ ] fix SWALLOW_PATCH
- [ ] add systray with wifi/bluetooth/volume/brightness
unix.stackexchange.com/questions/292195/install-network-manager-applet-tray-icon-on-arch-linux-gnome-3-20

https://www.reddit.com/r/suckless/comments/i7sxj0/dwm_no_sound_forced_mute_on_first_startup/

#define XF86XK_AudioLowerVolume 0x1008FF11   /* Volume control down        */
#define XF86XK_AudioMute        0x1008FF12   /* Mute sound from the system */
#define XF86XK_AudioRaiseVolume 0x1008FF13   /* Volume control up          */
#define XF86XK_MonBrightnessUp   0x1008FF02  /* Monitor/panel brightness */
#define XF86XK_MonBrightnessDown 0x1008FF03  /* Monitor/panel brightness */

static const char *togglemutecmd[] = { "amixer", "-D", "pulse", "sset", "Master", "toggle", NULL };
static const char *volumeup[] = { "amixer", "-D", "pulse", "sset", "Master", "5%+", NULL };
static const char *volumedown[] = { "amixer", "-D", "pulse", "sset", "Master", "5%-", NULL };
static const char *brightnessup[] = { "xbacklight", "-inc", "5"};
static const char *brightnessdown[] = { "xbacklight", "-dec", "5"};

static Key keys[] = {
        /* modifier                     key        function        argument */
        { MODKEY|ShiftMask, XK_l, spawn, {.v = dmenupower } },
        { 0,                            XF86XK_AudioMute, spawn,      {.v = togglemutecmd } },
        { 0,                            XF86XK_AudioRaiseVolume, spawn, {.v = volumeup } },
        { 0,                            XF86XK_AudioLowerVolume, spawn, {.v = volumedown } },
        { 0,                            XF86XK_MonBrightnessUp, spawn, {.v = brightnessup} },
        { 0,                            XF86XK_MonBrightnessDown, spawn, {.v = brightnessdown} },
};
