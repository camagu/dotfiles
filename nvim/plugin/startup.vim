" Add node modules executables to the session run path
"
" This avoids having to explicitly set the executable for linters, formatters
" and similar tools. It also allows these tools to guess which utilities should
" be used for the project.
"
" Should be done at startup and not at `VimEnter` since the executables won't be
" available when opening a file directly for the command line (e.g. `vi
" file.ext`) {{{
let $PATH = $PWD . "/node_modules/.bin:" . $PATH
" }}}
