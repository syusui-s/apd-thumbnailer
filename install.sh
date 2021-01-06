set -x

git clone https://gist.github.com/4059250e5b502071011c7cdcdcf46ef7.git azpainter_thumbnailer
cd azpainter_thumbnailer/

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"
chmod +x apdthumbnailer
cp apdthumbnailer "$BIN_DIR"

THUMBNAILER_DIR="$HOME/.local/share/thumbnailers"
mkdir -p "$THUMBNAILER_DIR"
sed 's;apdthumbnailer;'"$BIN_DIR"'/apdthumbnailer;' apdtool-apd.thumbnailer > "$THUMBNAILER_DIR"/apdtool-apd.thumbnailer

cd ..
rm -rf azpainter_thumbnailer/
