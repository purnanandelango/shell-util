#!/bin/bash

# Generated using ChatGPT

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi

input_file=$1
output_file="$2"
output_file="${output_file%.*}.pdf"  # Ensure output_file has a .pdf extension

# Convert Markdown to HTML
pandoc "$input_file" \
  --standalone \
  --metadata=title-from=1 \
  --css=https://purnaelango.com/typeset-util/preview.css \
  --variable=geometry:"top=0pt, bottom=0pt, left=0pt, right=0pt" \
  -o temp.html

# Convert HTML to PDF with wkhtmltopdf
wkhtmltopdf --margin-top 0in --margin-right 0in --margin-bottom 0in --margin-left 0in temp.html "$output_file"

# Remove temporary HTML file
rm temp.html