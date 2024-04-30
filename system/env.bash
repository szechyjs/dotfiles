export EDITOR=nvim
export ANDROID_SDK_ROOT=/opt/android-sdk

export STARSHIP_CONFIG=~/.starship

if [ -x "$(command -v colima)" ]; then
  export DOCKER_HOST=unix://${HOME}/.colima/default/docker.sock
fi

