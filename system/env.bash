export EDITOR=vim
export ANDROID_SDK_ROOT=/usr/local/android-sdk

export STARSHIP_CONFIG=~/.starship

if [ -x "$(command -v colima)" ]; then
  export DOCKER_HOST=unix://${HOME}/.colima/default/docker.sock
fi

