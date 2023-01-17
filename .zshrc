## Set oh-my-posh and themes
# To set your custom theme, please edit the following line and replace the default path with your custom path
PATH_OF_THE_THEME="/usr/share/oh-my-posh/themes/half-life.omp.json"

## Import easy-zsh-config
if [[ -r /usr/share/zsh/easy-zsh-config ]]; then
  source /usr/share/zsh/easy-zsh-config "${PATH_OF_THE_THEME}"
fi

export PATH=$PATH:/home/beni/.cargo/bin

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
