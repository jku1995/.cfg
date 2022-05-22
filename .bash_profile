#
# ~/.bash_profile
#

sudo tee /sys/class/leds/clevo_xsm\:\:airplane/device/kb_state <<<0

[[ -f ~/.bashrc ]] && . ~/.bashrc
