# dotfiles
For 
- bash(.bash_profile,bashrc)
- vim(.vimrc,.vim)
- tmux(.tmux.conf)

## Usage
1.`$ cd`  
2.`$ git clone git@github.com:Yukiprog/dotfiles.git`  
3.`$ make`

Or they can be executed one at a time  
`$ make bash`  
`$ make vim`  
`$ make tmux`  

To delete a group of dotfiles, perform the following  
`$ make clean`  

## Bonus
Outputs a list of what has been installed by brew  
`$ make list`  
