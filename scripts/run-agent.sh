#!/usr/bin/env bash

agent_spec=$(find . -type f -not -path "./.git/*" | fzf --prompt="Spec: ")
input_file=$(find . -type f -not -path "./.git/*" | fzf --prompt="Input: ")

cat <<EOF | pbcopy
Run the following agent spec on the following input.

--- AGENT SPEC: $agent_spec ---
$(cat "$agent_spec")

--- INPUT: $input_file ---
$(cat "$input_file")

EOF
echo "Copied combined content to clipboard"
