#/bin/bash
OUTPUT="resume-$(date -I)"

if [ ! -d "./artifacts" ]; then
	mkdir ./artifacts
fi

if [ -f "./artifacts/$OUTPUT.pdf" ]; then
	i=1
	while [[ -f "./artifacts/${OUTPUT}_${i}.pdf" ]]; do
		let i++
	done
	OUTPUT="resume-$(date -I)_$i"
fi

pandoc --pdf-engine=wkhtmltopdf -s -c github-markdown.css -f gfm resume.md -o ./artifacts/$OUTPUT.pdf \
    -V margin-top=10 \
    -V margin-left=10 \
    -V margin-right=10 \
    -V margin-bottom=10

echo "Generated $OUTPUT.pdf"
