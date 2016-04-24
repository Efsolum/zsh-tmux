package_dir=$(dirname $_)

zfunctions=$package_dir/zfunctions/index
[[ -f $zfunctions ]] && \
		source $zfunctions
unset zfunctions

# Start tmux session using default layout
sessionup=$(tmux list-sessions | grep General:)
if [[ -z $TMUX ]] && [[ -z $sessionup ]]; then
		tmux_default_layout
fi
