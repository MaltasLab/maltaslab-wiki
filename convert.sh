#!/usr/bin/env bash
# convert.sh — Convert a PDF in raw/papers/ to Markdown using marker-pdf.
#
# Usage: ./convert.sh raw/papers/AuthorYear_ShortTitle.pdf
#
# Output: raw/papers/AuthorYear_ShortTitle.md
# Never modifies the source PDF.

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: ./convert.sh raw/papers/AuthorYear_ShortTitle.pdf" >&2
  exit 1
fi

PDF="$1"

if [[ ! -f "$PDF" ]]; then
  echo "Error: file not found: $PDF" >&2
  exit 1
fi

if [[ "${PDF##*.}" != "pdf" ]]; then
  echo "Error: input must be a .pdf file" >&2
  exit 1
fi

OUTDIR="$(dirname "$PDF")"
BASENAME="$(basename "$PDF" .pdf)"
OUTFILE="${OUTDIR}/${BASENAME}.md"

echo "Converting: $PDF"
echo "Output:     $OUTFILE"

# marker_single writes to a subdirectory named after the file; we flatten it.
TMPDIR="$(mktemp -d)"
conda run -n marker marker_single "$PDF" --output_dir "$TMPDIR" --output_format markdown

# marker creates: $TMPDIR/<basename>/<basename>.md
MARKER_OUT="$TMPDIR/${BASENAME}/${BASENAME}.md"

if [[ ! -f "$MARKER_OUT" ]]; then
  echo "Error: marker did not produce expected output at $MARKER_OUT" >&2
  echo "Contents of $TMPDIR:" >&2
  find "$TMPDIR" -type f >&2
  rm -rf "$TMPDIR"
  exit 1
fi

cp "$MARKER_OUT" "$OUTFILE"
rm -rf "$TMPDIR"

echo "Done. Markdown saved to: $OUTFILE"
