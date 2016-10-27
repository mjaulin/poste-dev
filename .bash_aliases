if [ -f ~/.bash_git ]; then
	. ~/.bash_git
fi

alias dcclean='docker stop $(docker ps -aq) || true && docker rm $(docker ps -aq) || true'
alias dcrmi='docker rmi $(docker images -qf dangling=true)'

alias mvn='docker run --rm -ti --name maven -v $HOME/.m2/repository:/home/$USER/repository -v $(pwd):/home/$USER/workspace --add-host artifactory:`/sbin/ip route | awk '"'"'/docker0/ {if ($9!="") print $9}'"'"'` maven-$USER'
