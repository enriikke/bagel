# Basic Configuration Options

setopt AUTO_CD              # auto cd into a directory if it exists and it's not a command
setopt INTERACTIVE_COMMENTS # allow comments in interactive shells
setopt APPEND_HISTORY       # allow multiple terminal sessions to append to the same history
setopt INC_APPEND_HISTORY   # add commands as they are typed
setopt HIST_IGNORE_DUPS     # write commands to history only if they are not duplicates of the previous one
setopt HIST_FIND_NO_DUPS    # when searching history don't display results already cycled through twice
setopt HIST_REDUCE_BLANKS   # remove extra blanks from each command line being added to history
setopt EXTENDED_HISTORY     # Include more information about when the command was executed, etc
setopt COMPLETE_IN_WORD     # allow completion from within a word/phrase
setopt ALWAYS_TO_END        # move cursor to end of a word when completing
setopt PROMPT_SUBST         # enable parameter expansion in prompt
unsetopt MENU_COMPLETE      # diable menu complete
setopt AUTO_MENU            # enable auto menu


# History Config

HISTSIZE=3000                  # keep history size at 3K
SAVEHIST=3000                  # maintaint up to 3K commands in history
HISTFILE=~/.config/zsh/history # save history here
