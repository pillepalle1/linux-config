# Managing Directories
alias md='mkdir -v';
alias rm='rm -frv';
alias cp='cp -irv';
alias mv='mv -iv';

# Listing Files
alias ls='ls -ish1 --color=auto --group-directories-first';
alias ll='ls -l';
alias l.='ll -d .*';
alias la='ll -a';

# Generating/ Clearing Console Output
alias echo.='echo ""';
alias cls='clear';


# Fetching Device Information
alias battery='cat /sys/class/power_supply/BAT0/uevent'
