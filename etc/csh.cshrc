# $FreeBSD: src/etc/csh.cshrc,v 1.3 1999/08/27 23:23:40 peter Exp $
#
# System-wide .cshrc file for csh(1).
set correct = cmd
setenv LC_ALL zh_TW.Big5
setenv LC_CTYPE    en_US.ISO_8859-1
#setenv LANG en_US.ISO_8859-1
setenv LANG zh_TW.Big5
setenv ENABLE_STARTUP_LOCATE   en_US.ISO_8859-1
stty  pass8
stty  -istrip

setenv VIMRUNTIME /usr/local/share/vim/vim71

umask 22
setenv	EDITOR	vi
setenv	BLOCKSIZE	K
setenv  PAGER "col -b | vim -c 'set ft=man nomod nolist' -" 
setenv	PACKAGESITE "cvsup2.tw.freebsd.org"
setenv CCACHE_DIR /usr/ccache

set prompt = '%B%h[%/]-%n->'
set watch = 0

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

limit coredumpsize 0
