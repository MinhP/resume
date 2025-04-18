# Build Resume
Generates a PDF from markdown file for resume tweaks.

* Uses `pandoc` to convert md to pdf.
* Uses `wkhtmltopdf` for the actual PDF conversion
* Uses a modified version of https://github.com/sindresorhus/github-markdown-css/ because `wkhtmltopdf` is old

## TODO
* Containerize it so I can build anywhere.
