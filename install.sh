echo "                          .                                                   o8o                      .o              oooo        o.   
                        .o8                                                   `"'                     .8'              `888        `8.  
ooo. .oo.    .ooooo.  .o888oo  .ooooo.   .oooo.o     ooo. .oo.   oooo    ooo oooo  ooo. .oo.  .oo.   .8'       .oooo.o  888 .oo.    `8. 
`888P"Y88b  d88' `88b   888   d88' `88b d88(  "8     `888P"Y88b   `88.  .8'  `888  `888P"Y88bP"Y88b  88       d88(  "8  888P"Y88b    88 
 888   888  888   888   888   888ooo888 `"Y88b.       888   888    `88..8'    888   888   888   888  88       `"Y88b.   888   888    88 
 888   888  888   888   888 . 888    .o o.  )88b .o.  888   888     `888'     888   888   888   888  `8.  .o. o.  )88b  888   888   .8' 
o888o o888o `Y8bod8P'   "888" `Y8bod8P' 8""888P' Y8P o888o o888o     `8'     o888o o888o o888o o888o  `8. Y8P 8""888P' o888o o888o .8'  
                                                                                                       `"                          "'   
                                                                                                                                        "
mv .git ..
cd ..
read -p "Enter new remote URL for backup: " url && git remote set-url origin "$url"
read -p "Enter the path to your .bashrc (or equivalent) file [default: ~/.bashrc]: " path
path=${path:-~/.bashrc}
echo "alias nvimn='$(pwd)/notes.nvim.sh'" >> "$path"
