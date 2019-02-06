set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_showstashstate true
set __fish_git_prompt_show_informative_status true
set __fish_git_prompt_showcolorhints true

set __fish_git_prompt_char_stateseparator ''
set __fish_git_prompt_char_upstream_ahead ' ↑'
set __fish_git_prompt_char_upstream_behind ' ↓'
set __fish_git_prompt_char_dirtystate ' ✚'
set __fish_git_prompt_char_invalidstate ' ✖'
set __fish_git_prompt_char_stagedstate ' ●'
set __fish_git_prompt_char_untrackedfiles ' …'
set __fish_git_prompt_char_cleanstate ' ✔'

function fish_prompt
  set last_status $status

  # Print the date
  set_color normal
  printf "%s " (date "+%H:%M")

  # Print working dir
  set_color $fish_color_cwd
  printf (prompt_pwd)

  # Print git status & arrow
  set_color normal
  printf "%s → " (__fish_git_prompt)
  set_color normal
end
