tmux new -s "bootnode" -d &&
tmux send-keys -t "bootnode" "sh run_bootnode.sh" C-m &&
tmux detach -s "bootnode"

tmux new -s "node1" -d &&
tmux send-keys -t "node1" "sh run1.sh" C-m &&
tmux detach -s "node1"

tmux new -s "node2" -d &&
tmux send-keys -t "node2" "sh run2.sh" C-m &&
tmux detach -s "node2"

tmux new -s "node3" -d &&
tmux send-keys -t "node3" "sh run3.sh" C-m &&
tmux detach -s "node3"


