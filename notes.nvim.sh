#!/usr/bin/bash

# Welcome to notes.nvim enjoy your stay

# set what directory to use for notes
notedir=/home/georgy/Documents/notes.nvim.sh
# set what file to use as template
template=/home/georgy/Documents/notes.nvim/template.md

# create the date dir string
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_dir_str="${notedir}/${year}/${month}/${day}"
echo $date_dir_str

# create the directory if it doesn't exist
mkdir -p $date_dir_str

# path of daily
daily_path_str="${date_dir_str}/daily.md"

# don't want to overwrite the daily if it already exists
if [ -f "$daily_path_str" ]; then
    echo "Daily file exists."
else
    echo "Daily file does not exist."
    # create the file using a template
    cp $template $daily_path_str
    # here is the template :)
    echo $(date %F) >> $daily_path_str
fi

# now open nvim on that file
nvim $daily_path_str

