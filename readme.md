**.zfunc**
 - contains functions for z-shell
 - each function has to be put in its own file

 **formatting**
 - files that update the formatting for different file types (e.g. js, c++)
 - original files are saved here: ~/.config/formatting
 - copies (via symlink) are saved here: ~/.vim/after/ftplugin

**skeletons**
 - basic skeleton code that is inserted when a new file is created is created
 - original files are saved here: ~/.vim/templates/skeletons/
 - copies (via symlink) are saved here: ~/.vim/after/ftplugin

misc
 - to format .ejs files as css files but with html syntax highlighting do the following:
  1) go to /Applications/MacVim.app/contents/Resources/vim/runtime/html.vim
  change "indentexpr" to "indentexpr=GetCSSIndent"
  2) inside .vimrc set the following:  au BufNewFile,BufRead *.ejs set syntax=html 
