if type -q pyenv
  pyenv init - | source
end

if type -q direnv
  direnv hook fish | source
end
