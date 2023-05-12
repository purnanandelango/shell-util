#!/bin/bash

# Generated using ChatGPT

# Check that two arguments were provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <input-file> <output-file>"
    exit 1
fi

# Set the input and output file names
input_file="$1"
output_file="$2"
output_file="${output_file%.*}.pdf"  # Ensure output_file has a .pdf extension

# Run Pandoc to convert the Markdown file to PDF
pandoc "$input_file" \
  --pdf-engine=pdflatex \
  --toc \
  -V mainfont="Palatino" \
  -V sansfont="Helvetica" \
  -V monofont="Courier" \
  -V mathfont="mathpazo" \
  -V colorlinks=true \
  -V urlcolor=blue \
  -V version=2.0 \
  -V fontsize=12pt \
  -V geometry:margin=0.75in \
  -o "$output_file"
