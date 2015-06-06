Redraw on bigger screen
	tmux attach -d

Windows
n/p     switch to next/previous window
arrow   move to other window or pane
,       rename window
x       kill window
[       scroll	
w       list windows

Panes 
"			Split window horizontal
%			Split window vetical
;       move to last active pane
o		select last pane in current window
q       show pane #'s
{}			swap pane                           

Sessions
$   rename

    startup
        new-session -s  create session with <name>
        -t      target - use with attach, switch

Pane commands 
join-pane -s # -t #		Two windows into 2 panes


Startup
-n      name
-c      start dir
-p      split percent

