#=============================================================================================================================================
#===================================================================
# FZF
#===================================================================
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# [ -f /share/Tools/Editing/fzf-jump/fzf-jump.plugin.bash ] && source /share/Tools/Editing/fzf-jump/fzf-jump.plugin.bash
source /share/Tools/Editing/fzf-jump/fzf-jump.plugin.bash

source /share/Tools/Configs/configs/fzf/fzf-marks/fzf-marks.plugin.bash

#export FZF_DEFAULT_COMMAND='fd --type f'
#export FZF_DEFAULT_COMMAND='find --type f'
export FZF_DEFAULT_OPTS="--reverse --inline-info --border --color=dark -x"

## fe [FUZZY PATTERN] - Open the selected file with the default editor
##   - Bypass fuzzy finder if there's only one match (--select-1)
##   - Exit if there's no match (--exit-0)
#fe() {
#  local files
#  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
#  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
#}
#
## Modified version where you can press
##   - CTRL-O to open with `open` command,
##   - CTRL-E or Enter key to open with the $EDITOR
#fo() {
#  local out file key
#  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
#  key=$(head -1 <<< "$out")
#  file=$(head -2 <<< "$out" | tail -1)
#  if [ -n "$file" ]; then
#    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
#  fi
#}
# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

#=============================================================================================================================================
# GIT
# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}
# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# fbr - checkout git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fbr - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
fbr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fco - checkout git branch/tag
fco() {
  local tags branches target
  tags=$(
    git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
    git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
    (echo "$tags"; echo "$branches") |
    fzf-tmux -l30 -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}


# fco_preview - checkout git branch/tag, with a preview showing the commits between the tag/branch and HEAD
fco_preview() {
  local tags branches target
  tags=$(
git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
git branch --all | grep -v HEAD |
sed "s/.* //" | sed "s#remotes/[^/]*/##" |
sort -u | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
(echo "$tags"; echo "$branches") |
    fzf --no-hscroll --no-multi --delimiter="\t" -n 2 \
        --ansi --preview="git log -200 --pretty=format:%s $(echo {+2..} |  sed 's/$/../' )" ) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

# ftags - search ctags
ftags() {
  local line
  [ -e tags ] &&
  line=$(
    awk 'BEGIN { FS="\t" } !/^!/ {print toupper($4)"\t"$1"\t"$2"\t"$3}' tags |
    cut -c1-80 | fzf --nth=1,2
  ) && ${EDITOR:-vim} $(cut -f3 <<< "$line") -c "set nocst" \
                                      -c "silent tag $(cut -f2 <<< "$line")"
}

#=============================================================================================================================================
# Navigation 2
ffd() {
find . -type d | fzf
}
ff() {
find . -type f | fzf
}
# fd() {
# find . -type d | fzf
# }
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
fd0() {
  local dir
  dir=$(find ${1:-.} -maxdepth 1 -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# Another fd - cd into the selected directory
# This one differs from the above, by only showing the sub directories and not
#  showing the directories within those.
fd1() {
  DIR=`find * -maxdepth 0 -type d -print 2> /dev/null | fzf-tmux` \
    && cd "$DIR"
}
# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}
# fdr - cd to selected parent directory
fdr() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}
# cf - fuzzy cd from anywhere
# ex: cf word1 word2 ... (even part of a file name)
# zsh autoload function
cf() {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]
  then
     if [[ -d $file ]]
     then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}
# fh - repeat history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
# Navigation 2
fdz() {
    # Define variables
    local declare parent_dirs=()
    # Defne helpers
    get_parent_dirs() {
        # if an argument provided to this function is not a directory the function was called from...
        if [[ "${1}" != $PWD ]]
        then
            # ...but is a directory and not a file...
            if [[ -d "${1}" ]]
            then
                # ...store it to the resulting array
                parent_dirs+=("$1")
                # now, if an argument provided to this function is not a root directory...
                if [[ "${1}" != '/' ]]
                then
                    # ...then explore its content one by one
                    # (both normal and "hidden" files)
                    for the_subdir in $(find -L "${1}" -type d -maxdepth 1 -not \( -name .git -prune \))
                    do
                        # and if the content in question is a directory...
                        if [[ -d "${the_subdir}" ]]
                        then
                            # ...and it wasn't already stored...
                            if ! [[ " ${parent_dirs[*]} " =~ "${the_subdir}" ]]
                            then
                                # ...store it to the resulting array, too
                                parent_dirs+=("$the_subdir")
                            fi
                        fi
                    done
                fi
            else
                return # does it happen at all?
            fi
        fi
        # if the argument provied to this function is a root directory already
        if [[ "${1}" == '/' ]]
        then
            # then stop and print out the resulting array
            for the_dir in "${parent_dirs[@]}"
            do
                echo $the_dir
            done
            # otherwise use recursion to dive deeper
            # (dirname <DIR> returns the parent directory)
        else
            get_parent_dirs $(dirname "$1")
        fi
    }
    # Define main
    if [ "$1" == "--all" ]
    # if asked for directories in both diretions...
    then
        # define variables
        local declare all_sub_dirs=()
        # find all nested subdirectories
        while read sub_dir
        do
            abs_sub_dir="${sub_dir/./$PWD}"
            all_sub_dirs+=("$abs_sub_dir")
        done < <(find -L . -type d -not \( -name .git -prune \))
        # request all parent directories
        all_parent_dirs=($(get_parent_dirs $(realpath "$PWD")))
        # join these two arrays
        both_ends=("${all_sub_dirs[@]}" "${all_parent_dirs[@]}")
        # run fzf
        local DIR=$(for i in "${both_ends[@]}"; do echo $i; done | fzf --exact --preview "tree -C {} | head -200")
        cd "$DIR"
    # if asked only for nested directories
    elif [ "$1" == "--down" ]
    then
        # define variables
        local declare all_sub_dirs=()
        # find all nested subdirectories
        while read sub_dir
        do
            abs_sub_dir="${sub_dir/./$PWD}"
            all_sub_dirs+=("$abs_sub_dir")
        done < <(find -L . -type d -not \( -name .git -prune \))
        # join these two arrays
        # run fzf
        local DIR=$(for i in "${all_sub_dirs[@]}"; do echo $i; done | fzf --exact --preview "tree -C {} | head -200")
        cd "$DIR"
    # if asked only for parent directories
    else
        # request all parent directories
        all_parent_dirs=($(get_parent_dirs $(realpath "$PWD")))
        # run fzf
        local DIR=$(for i in "${all_parent_dirs[@]}"; do echo $i; done | fzf --exact --preview "tree -C {} | head -200")
        cd "$DIR"
    fi
}
