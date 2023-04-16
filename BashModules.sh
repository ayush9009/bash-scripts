charToAscii(){
echo "$(printf '%d' "'$1")"
}
asciiToChar() {
ret=$(echo "\0$(printf '%03o' "$1")")
echo "$(printf '%d' "'$1")"
echo "$ret"
}
