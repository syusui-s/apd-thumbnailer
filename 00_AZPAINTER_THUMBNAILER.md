# AzPainer APD Thumbnailer

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher"
     href="https://gist.github.com/syusui-s/4059250e5b502071011c7cdcdcf46ef7">
    <span property="dct:title">Syusui Moyatani</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">AzPainer APD Thumbnailer</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166" content="JP" about="https://gist.github.com/syusui-s/4059250e5b502071011c7cdcdcf46ef7">Japan</span>.
</p>

---

Create APD format thumbnails on file manager.

* Supported
    * PCManFM (LXDE)
* Maybe works
    * Gnome Files, Nautilus (GNOME)
        * You should restart Nautilus after installation: `nautilus -q`
    * Thunar (Xfce)
        * [Tumbler](https://docs.xfce.org/xfce/thunar/4.14/tumbler) supports Thumbnailer Entry.
    * Pantheon File Manager (Pantheon)
        * It seems that Pantheon depends on Thumbler.
* Not Supported
    * Dolphin (KDE)
        * KDE supports custom thumbnailer but I didn't implement that.
        * The implementation of [ThumbCreator virtual class](https://api.kde.org/frameworks/kio/html/classThumbCreator.html) is needed.

## How to Install

* Prerequisites
    * Install `apdtool` (APD -> BMP)
    * Install `imagemagick` (BMP -> PNG Thumbnail)
    * Install `azpainter` (for texture)

```sh
curl -sSL "https://gist.githubusercontent.com/syusui-s/4059250e5b502071011c7cdcdcf46ef7/raw/install.sh" | bash -
```

## Files

* `apdtool-apd.thumbnailer`
    * This file tells pcmanfm how to create thumbnails.
    * Location
        * `/usr/share/thumbnailers/apdtool-apd.thumbnailer`
        * or `~/.local/share/thumbnailers/apdtool-apd.thumbnailer`
    * Ref
        * [File manager functionality - ArchWiki](https://wiki.archlinux.org/index.php/File_manager_functionality#Use_PCManFM_to_get_thumbnails_for_other_file_types)
* `apdthumbnailer`
    * This script creates a thumbnail of APD file.
    * Location
        * `/usr/local/bin/apdthumbnailer`
        * or directory in PATH environment variable
        * or copy apdthumbnailer to location that you like and rewrite 'apdthumbnailer' in this file to its absolute path
    * Requirements
        * apdtool
        * imagemagick
        * azpainter (for texture)

## Issues
* Slow
    * because apdtool takes 0.3-1.0 sec to generate BMP image.