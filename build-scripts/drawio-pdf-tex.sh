#!/bin/bash


# Finds all drawio files and exports them to pdf
find ../img/diagrams/drawio -name *.drawio -exec drawio --crop -x -o {}.pdf {} \;

# Move all pdf files to the pdf folder
mv ../img/diagrams/drawio/*.drawio.pdf ../img/diagrams/pdf/

# Finds all drawio.pdf files and creates a .tex file for them if it doesn't already exist
find ../img/diagrams/pdf -name *.drawio.pdf -exec bash -c './create_new_file.sh {}' \;

# Move all tex files to the fig folder
mv -n ../img/diagrams/pdf/*.tex ../tex/contents/fig/

# Remove all un-moved files from the pdf folder
rm -rf ../img/diagrams/pdf/*.tex