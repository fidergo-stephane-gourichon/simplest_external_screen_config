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


## Installation instructions for non-developers

You sill have to know a minimum GNU/Linux usage.

* Download the content from this link (save as...): https://github.com/fidergo-stephane-gourichon/simplest_external_screen_config/raw/master/simplest_external_screen_config.sh
* Save in a convenient place, for example a `bin` directory in your account.
* Allow execution (either using your file manager or `chmod a+x simplest_external_screen_config.sh`).

Alternatively, as root copy it to `/usr/local/bin` for all local users to benefit.
