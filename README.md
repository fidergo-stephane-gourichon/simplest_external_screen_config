# simplest_external_screen_config

Very simple external display management for the window system that
is called "X" or "X11".

It does *not* handle the general case.

Intended use case: plug a screen, to your machine's output.  Call
this script, optionally with a word telling the intended use:

* mirror to have both display cover (roughly) the same area of visualizable video memory
* left, right, above or below, to cover a relatively positioned area outside of main display

For example:

    simplest_external_screen_config
    simplest_external_screen_config mirror
    simplest_external_screen_config left
    simplest_external_screen_config right
    simplest_external_screen_config above
    simplest_external_screen_config below

