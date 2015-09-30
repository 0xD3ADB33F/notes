
Command Line Editing (Meta = Alt, ^ = Ctrl+ \e = Escape) {{{1

bindkey
	noarg	print existing bindings
	-d		delete all keymaps, reset to default
	-m		if binding ESC also bind Alt
	-l/L	list short/long form
	
Move one word forward/back
	Mf/Mb
Delete char left/right
	^h/^d	(^d also lists in menu completion)
Delete word to 
	left:
		^w or \e+backspace
	right:
		Md or \ed
delete to end of line
	^k

fc:
	fc <pat>    edit most recent command starting with <pat>
	fc -l <pat> display, dont edit

vared
    edit environment variables


Parameters {{{1  

set by:
    parameter_name=value - No space before or after '='
    Get value (parameter expansion) with $parameter_name
    $ character introduces parameter/brace expansion
    ${name} - braces are optional

Configuration {{{1
Startup Files {{{2
	zprofile: 
		only run by login shells (called with -l) or su -.  Use for env vars used by
		applications, e.g. MAI
	zshenv: 
		only startup that is always run.  Best place for environment
	variables
	zshrc
	zlogin: 
		runs after zshrc.  Purpose really just equivalent of Bourne-type
		shells /etc/profile and csh login (?).

Options {{{2
setopt EXTENDED_GLOB to use ^, ~, and # as special chars
GLOB_DOTS - * matches leading '.' 
NOCLOBBER - dont overwrite files

History {{{2
History file: Set these variables in zshrc (not options - dont use setopt)
HISTFILE    if unset, history is not saved
HISTSIZE, SAVEHIST    default, difference ? 
HIST_VERIFY - after a history substituion, require Enter before exec.
APPEND_HISTORY
	append, dont overwrite existing history (default)
INC_APPEND_HISTORY - add to history after each command
SHARE_HISTORY - every shell accesses the same history

Dynamic Prompt {{{1

autoload -U promptinit
promptinit
prompt bart

The print builtin works like echo, but gives us access to the % prompt escapes.
print -Pn ...   print, performing Prompt expansion & dont print newline

precmd ()   a function which is executed just before each prompt
chpwd ()    a function which is executed whenever the directory is changed
	Using chpwd() instead of precmd(). See zshmisc man page
preexec ()  
	executed just after command read and about to be executed.
	Arguments to preexec ($*, $1,$2,$3) are forms of cmd.

set xterm title to "username@hostname: directory":
	case $TERM in
		xterm*)
			precmd () {print -Pn "\e]0n@%m: %~\a"}
			;
	esac

Good one: From http://www.princeton.edu/~kmccarty/zsh.html 
	case $TERM in (xterm*|rxvt)
		precmd () { print -Pn "\e]0;%n@%m: %~\a" }
		preexec () { print -Pn "\e]0;%n@%m: $1\a" }
		;;
	esac


History {{{1

shortcuts
	M-.			last argument - repeat to cycle backwards
	
    <cmd> M-p / M-n	
		search hist for cmds starting with <cmd>

event selection:
	!           start history expansion
	!!			last command 
                may omit ! if followed by :<word selection> e.g. !:0

	!str        last command starting with str
	!?str[?]    last command containing str

word selection: 
	number	- 0 is cmd
	* - all args
	$ - last arg
	x-  Arguments from #x to $ (last arg)
		ex. !!0-  Command + all args except last 
modifiers:
	syntax :+letter 
	globbing modfiers and parameter substitution are same
	usage: 
		history events - word:modifier (same as bash)
		parameter substitution - ${param:<mod>}
		globbing - *(:t)  
			may combine with qualifier (U:t)
			e.g. cd to directory of last path argument
				cd !$:h 
	flags:
		h  head (dirname)
		t  tail (basename - filename w/o path)
		r  rest (extension removed) 
		e  extension
		in a parameter expansion
			if '(' directly follows the opening '{', then ${(is_flag)...}
		L/U - convert letters to lower/upper case

Globbing: {{{1

set all subdirs group writable & setgid
	chmod g+ws **/*(/)
	 zargs **/*(/) -- chmod -R 750 (avoids too long argument error, requires autoload zargs)

read: http://zsh.sunsite.dk/Guide/zshguide05.html#l137

*    matches string of zero or more characters
?    any one character
**/<pat> - recursive globbing
	matches <pat> anywhere in path including in top directory
operators
	alternatives
		(alt1|alt2)
			no dir / allowed in pat
			(alt1|) alt1 or nothing
	negation
		^<pat>  - matches anything but pat
			negated part extends to end of string or ) but not past /
			**/^pat/tmp	- echo dir names having a tmp subdir
		x~y - match x unless also matches y
			grep thing *~*html(.)
	repeated matches
		# & ## - like regex * & +
			<pat># Zero or more instances of pat
			<pat>## One or more instances of pat 
				(alt1|alt2)##
			(^CVS/)#*(.)
				all files except those with a CVS in the directory name 
				This is the more general form of ** --- the pattern in the parentheses is
				used (here anything but the string CVS) instead of a * to match
				directory names.  More precisely,
					:  **/
					:  (*/)#
				are equivalent.  Thats why you dont need another / after the parentheses.
Glob Qualifiers 
	select files & directories by time, size, type, ownership, permissions
	syntax: <pat>(qualifier)
	file types
		.	files
		/	dirs
		*	exec
		%	slinks
	permissions:
		by ownership (u:<owner>)
			*(u0) - owned by root
			*(u:andmalc:) - owned by me
			*(^u:andmalc:) - no owned by me
		by file spec: (f:<spec>:)
			print **/*(f:o+r:) - print files that are other readable - 
			print *(f:gu+w,o-rx:) - files are writeable by owner ('user') and neither readable nor executable by other.
			print *(f700)
		permission shortforms
			f# or f=#	files with access rights = #
			(r), (w) and (x) readable, writeable and executable by the owner
			(R), (W) and (X) as above, for world permissions
			(A), (I) and (E) as above,  for group permissions
			s	setuid files (04000)
			S	setgid files (02000)
			t   files with the sticky bit (01000)
	timestamp 
		type
			a		access
			m		change/modified
		time
			s	second
			h	hour
			day 	(default - no modifier needed)
			week	w
			month	M
		examples
			**/*(.*m-1)  files and scripts with mod times of one day or less
			mw-1 modified within last week
			mw1 Modified more than one week but less than 2 weeks
			mw+1 modified more than one week ago
			echo *(amh-5) - accessed within the last 5 hours
			cm-5 - changed in last five minutes
			subdir/*/**(mM+36) modified more than 3 years ago

	size
		L i.e. length qualifier
			(L[km][+-]<size>)
			*(Lk+10) - larger than 10k
	combining qualifiers
		files are owned by me and less than 5k or not world writable
			*(ULk-5,^W) 

flags:
	(#i) - case insensitive matching within pattern
		in effect until end of pattern or as delimited by ()
		WoRDs = Wo((#i)rd)s

Arrays  {{{1
	Multiple 'word' parameters.  
	spaces separate words
	arrayname=(wordone wordtwo)
		$#array   get array size
		$array[n] get index
		$array[5,8] get slice
	Make list from directory listing:
		list=(/usr/bin/*)
		list=(/usr/bin/*:
	Multiple word 'words': when expanded, e.g
		a=('first word' 'second word')
		cmd $a[0]
		cmd wllget single argument 'first word' - not true in other shells.
	Array Bound (Tied) variables - for making PATH type variables: 
		typeset -TU	<SCALER> <array-name>
		upper case form is for exporting to environment, lower case form is
		easier to manipulate in shell.
		U option ensures unique - not adding if already set
			typeset -TU PYTHONPATH pythonpath
			pythonpath=(/lib/python/site-packages lib/python2.2/site-packages)
	eg
		${array:gs/foo/bar} substitute foo for bar throughout array
		${list:#pat} list excluding pat
		$var:t  tail of path

Processes {{{1
	Process substitution
		( )		makes file
		<( )	makes fifo

Programming {{{1 

Loops {{{2

for file in `ls -lh` ; do
    echo $file
done

for file in **/*(.); do mv $file{,.sh}; done


