c() {clear}

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

git_status() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo " git:$(git_branch)"
    fi
}

setopt PROMPT_SUBST
PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f%F{yellow}$(git_status)%f$ '
