#/bin/bash
pandoc --pdf-engine=wkhtmltopdf -s -c github-markdown.css -f gfm resume2025.md -o resume2025.pdf \
    -V margin-top=10 \
    -V margin-left=10 \
    -V margin-right=10 \
    -V margin-bottom=10