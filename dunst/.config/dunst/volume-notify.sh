MUTED=$(pactl get-sink-mute @DEFAULT_SINK@|awk '{print $2}')

TAG=string:x-dunst-stack-tag:volume
FLAGS=""
[ "$MUTED" = "yes" ] && TAG=string:x-dunst-stack-tag:volume_muted

FLAGS="-h int:value:$(pactl get-sink-volume @DEFAULT_SINK@|awk '{print $5}')"

dunstify -r 676 '' -h $TAG $FLAGS

