# Build Resume
Generates a PDF from markdown file for resume tweaks.

* Uses `pandoc` to convert md to pdf.
* Uses `wkhtmltopdf` for the actual PDF conversion
* Uses a modified version of https://github.com/sindresorhus/github-markdown-css/ because `wkhtmltopdf` is old

## Dependencies
* pandoc
* wkhtmltopdf

## Installation
1. `wget 'https://github.com/jgm/pandoc/releases/download/3.6.4/pandoc-3.6.4-1-amd64.deb'`
2. `apt install ./pandoc-3.6.4-1-amd64.deb`
3. `wget 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'`
4. `sudo apt install ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb`

## TODO
* Containerize it if I have to build the environment from scratch.