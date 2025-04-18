#!/bin/bash
OUTPUT="resume-$(date -I)"

if [ ! -d "/app/artifacts" ]; then
	mkdir ./artifacts
fi

if [ -f "/app/artifacts/$OUTPUT.pdf" ]; then
	i=1
	while [[ -f "/app/artifacts/${OUTPUT}_${i}.pdf" ]]; do
		let i++
	done
	OUTPUT="resume-$(date -I)_$i"
fi

pandoc --pdf-engine=wkhtmltopdf -s -c github-markdown-light.css -f gfm resume.md -o /app/artifacts/$OUTPUT.pdf \
    -V margin-top=10 \
    -V margin-left=10 \
    -V margin-right=10 \
    -V margin-bottom=10

echo "Generated $OUTPUT.pdf"
