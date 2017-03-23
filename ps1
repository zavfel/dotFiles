
//inputs
\d – Current date
\t – Current time
\h – Host name
\# – Command number
\u – User name
\W – Current working directory (ie: Desktop/)
\w – Current working directory with full path (ie: /Users/Admin/Desktop/)

//to get name of git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

//colors
\[\033[32m\]  \[\033[00m\] - green

//example
export PS1="\u@\h\w$ "
