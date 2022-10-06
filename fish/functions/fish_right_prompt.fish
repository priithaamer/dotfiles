function fish_right_prompt -d "Write out the right prompt"
  set -g __fish_git_prompt_showupstream auto
  set -g __fish_git_prompt_color "green"
  printf '%s' (fish_git_prompt)
end
