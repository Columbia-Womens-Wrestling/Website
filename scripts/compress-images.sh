#!/bin/bash
# Resize + compress photos for the site. Converts to JPEG (photos, not
# graphics with transparency) and caps the longest edge, since nothing
# on the site displays an image anywhere near full camera resolution.
#
# Usage: scripts/compress-images.sh <input-dir> <output-dir> [max-px] [quality]
#   max-px   longest edge in pixels, default 1600
#   quality  JPEG quality 0-100, default 75
#
# Never overwrites the input — always writes to output-dir so you can
# eyeball results before dropping them into img/.

set -e

INPUT_DIR="${1:?Usage: compress-images.sh <input-dir> <output-dir> [max-px] [quality]}"
OUTPUT_DIR="${2:?Usage: compress-images.sh <input-dir> <output-dir> [max-px] [quality]}"
MAX_PX="${3:-1600}"
QUALITY="${4:-75}"

mkdir -p "$OUTPUT_DIR"

shopt -s nullglob nocaseglob
files=("$INPUT_DIR"/*.jpg "$INPUT_DIR"/*.jpeg "$INPUT_DIR"/*.png "$INPUT_DIR"/*.heic)
shopt -u nocaseglob

if [ ${#files[@]} -eq 0 ]; then
  echo "No .jpg/.jpeg/.png/.heic files found in $INPUT_DIR"
  exit 1
fi

printf "%-35s %10s   %10s   %s\n" "FILE" "BEFORE" "AFTER" "SAVINGS"
printf '%.0s-' {1..70}; echo

for f in "${files[@]}"; do
  name=$(basename "$f")
  base="${name%.*}"
  out="$OUTPUT_DIR/${base}.jpg"

  sips -Z "$MAX_PX" -s format jpeg -s formatOptions "$QUALITY" "$f" --out "$out" >/dev/null 2>&1

  before=$(stat -f%z "$f")
  after=$(stat -f%z "$out")
  saved=$(( 100 - (after * 100 / before) ))
  printf "%-35s %8d KB   %8d KB   %+d%%\n" "$name" $((before/1024)) $((after/1024)) "$saved"
done
