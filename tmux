Startup
-n      name
-c      start dir

Windows
n/p     switch to next/previous window
arrow   move to other window or pane
,       rename window
&       kill window
[       scroll	
w       list windows

Panes 
%       split window horizontal
"		split window vertical
;       last active pane
o		other pane in current window
z       toggle hide other panes (?)
x       kill pane
q       show pane #'s
{}			swap pane                           
M+arrow resize (rapid for multiple times)

startup
    -p      split percent

join-pane -s # -t #		Two windows into 2 panes

Sessions
$   rename
s   choose from list

startup
    list sessions       ls
    new-session         -s  create session with <name>
    attach to target    a  -t


Redraw on bigger screen
	tmux attach -d

