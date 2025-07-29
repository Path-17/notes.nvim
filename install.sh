cat << "EOF"
                _                              _              __        _    __  
               | |                            (_)            / /       | |   \ \ 
  _ __    ___  | |_  ___  ___     _ __ __   __ _  _ __ ___  | |    ___ | |__  | |
 | '_ \  / _ \ | __|/ _ \/ __|   | '_ \\ \ / /| || '_ ` _ \ | |   / __|| '_ \ | |
 | | | || (_) || |_|  __/\__ \ _ | | | |\ V / | || | | | | || | _ \__ \| | | || |
 |_| |_| \___/  \__|\___||___/(_)|_| |_| \_/  |_||_| |_| |_|| |(_)|___/|_| |_|| |
                                                             \_\             /_/ 
EOF

rm -rf .git.
chmod +x notes.nvim.sh
read -p "Enter the path to your .bashrc (or equivalent) file [default: ~/.bashrc]: " bashrc 
bashrc_path=${bashrc:-~/.bashrc}
read -p "Enter the note directory you want to use: [default: ./]: " notes
notes_dir=${notes:-$(pwd)}
read -p "Enter the path to the daily template: [default: ./notes.nvim/template.md]: " template
template_path=${template:-$(pwd)/notes.nvim/template.md}

# disgusting trick to save your settings inside your bashrc but it works :)
echo "alias nvimn='$(pwd)/notes.nvim/notes.nvim.sh template_path=${template_path} notes_dir=${notes_dir}'" >> "$bashrc_path"
source $bashrc_path
echo -e "\e[32m################\e[0m"
echo -e "\e[32m# Install done #\e[0m Run \"source <bash_rc_path>\" to use it immediately. Run \"nvimn\" to use the \"plugin\". If it didn't work then fix it."
echo -e "\e[32m################\e[0m"
