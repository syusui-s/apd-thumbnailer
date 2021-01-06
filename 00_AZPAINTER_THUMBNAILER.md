# AzPainer APD Thumbnailer
These snippets allow pcmanfm to show thumbnails of APD format.

## How to Install

* Prerequisites
    * Install apdtool (APD -> BMP)
    * Install imagemagick (BMP -> PNG Thumbnail)
    * Install azpainter (for texture)

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
