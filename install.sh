echo "
               _                               _               __         __      __   
              / |_                            (_)            .' _|       [  |    |_ `. 
 _ .--.  .--.`| |-.---. .--.    _ .--. _   __ __  _ .--..--. | |    .--.  | |--.   | | 
[ `.-. / .'`\ | |/ /__\( (`\]  [ `.-. [ \ [  [  |[ `.-. .-. || |   ( (`\] | .-. |  | | 
 | | | | \__. | || \__.,`'.'. _ | | | |\ \/ / | | | | | | | || |_ _ `'.'. | | | | _| | 
[___||__'.__.'\__/'.__.[\__) (_[___||__]\__/ [___[___||__||__`.__(_[\__) [___]|__|__,' 
                                                                                       "
rm -rf .git.
cd ..
git init
git add .
git commit -m 'Initial notes commit'
read -p "Enter new remote URL for backup: " url && git remote add origin "$url"
read -p "Enter the path to your .bashrc (or equivalent) file [default: ~/.bashrc]: " path
path=${path:-~/.bashrc}
echo "alias nvimn='$(pwd)/notes.nvim.sh'" >> "$path"

echo -e "\e[32m# Install done #\e[0m Run \"nvimn\" to use the \"plugin\". If it didn't work then fix it"
