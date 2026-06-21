#!/bin/bash
mkdir -p output_notebooks
for nb in notebooks/*.ipynb; do
  base=$(basename "$nb")
  echo "Running $base ..."
  papermill "$nb" "output_notebooks/$base"
done
echo "Selesai menjalankan semua notebook."
