# Build Resume
Generates a PDF from markdown file for resume tweaks.

* Uses `pandoc` to convert md to pdf.
* Uses `wkhtmltopdf` for the actual PDF conversion
* Uses a modified version of https://github.com/sindresorhus/github-markdown-css/ because `wkhtmltopdf` is old

## Dependencies
* Docker running on AMD64

## Installation
1. `./build-docker.sh`
2. `./generate.sh`

## TODO
* Maybe add git hooks
