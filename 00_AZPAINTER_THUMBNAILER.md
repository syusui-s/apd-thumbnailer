# AzPainer APD Thumbnailer
These snippets allow pcmanfm to show thumbnails of APD format.

* `apdtool-apd.thumbnailer`
    * Location
        * `/usr/share/thumbnailers/apdtool-apd.thumbnailer`
        * or `~/.local/share/thumbnailers/apdtool-apd.thumbnailer`
    * Ref
        * [File manager functionality - ArchWiki](https://wiki.archlinux.org/index.php/File_manager_functionality#Use_PCManFM_to_get_thumbnails_for_other_file_types)
* `apdthumbnailer`
    * Location
        * `/usr/local/bin/apdthumbnailer`
        * or directory in PATH environment variable
    * Requirements
        * apdtool
        * imagemagick

## Issues
* Slow
    * because apdtool takes 0.3-1.0 sec to generate BMP image.