## My configs

PARENT=$(ps | grep $(ps -p $$ -o ppid=) | sed 's/  */ /g' | sed 's/^ *//g' | cut -d " " -f 4 | sed 's/vim/vi/')
if [[ "vi" = $PARENT ]]; then 
  PS1="\[\e[32m\]vim:\[\e[0m\] $PS1"
fi
