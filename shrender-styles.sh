#!/bin/bash
##
## ## RENDER STYLES
##
declare -Agx EXT_TO_RENDER_FUNC

## ### cat
##
## * Echo the lines. Just like INCLUDE
##
## File Extensions:
##
## * `*.md`
## * `*.markdown`
## * `*.ronn`
## * `*.txt`
##
EXT_TO_RENDER_PREFIX[md]="cat"
EXT_TO_RENDER_PREFIX[markdown]="cat"
EXT_TO_RENDER_PREFIX[ronn]="cat"
EXT_TO_RENDER_PREFIX[txt]="cat"

## ### doublepound
##
##   * Prefix comments to render with `##`
##   * Replace `__CURLINE__` with current line
##   * Replace `__CURLINE__` with current line
##
## File Extensions:
##
##   * `*.sh`
##   * `*.bash`
##
EXT_TO_RENDER_PREFIX[sh]="##"
EXT_TO_RENDER_PREFIX[zsh]="##"
EXT_TO_RENDER_PREFIX[bash]="##"

## ### jade
##
## Render style:
##
##   * Run through `jade` template engine
##
## Extensions:
##
##   * `*.jade`
##   * `*.pug`
##
EXT_TO_RENDER_FUNC[jade]="jade"
EXT_TO_RENDER_FUNC[pug]="jade"
# vim: ft=sh
