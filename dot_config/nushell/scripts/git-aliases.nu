
alias gaa = git add --all
alias gst = git status
alias gcmsg = git commit -m
alias gf = git fetch
alias gp = git push
alias grbi = git rebase -i
alias grbm = git rebase (git_main_branch)

# Get the main branch of a git repo
def git_main_branch [] {
    basename (git symbolic-ref refs/remotes/origin/HEAD)
}
