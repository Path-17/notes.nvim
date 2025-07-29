#!/usr/bin/bash

# Welcome to notes.nvim enjoy your stay

# set what directory to use for notes
# set what file to use as template
for arg in "$@"; do
  eval "$arg"
done
echo "Notes directory is: ${notes_dir}"
echo "Template in use is: ${template_path}"

# create the date dir string
full_date=$(date +%F)
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_dir_str="${notes_dir}/${year}/${month}/${day}"

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
    cp $template_path $daily_path_str
    # here is the template :)
    echo \# $full_date >> $daily_path_str
fi

# now open nvim on that file
nvim $daily_path_str
