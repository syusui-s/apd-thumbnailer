set -x

git clone https://github.com/syusui-s/apd-thumbnailer.git azpainter_thumbnailer
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
