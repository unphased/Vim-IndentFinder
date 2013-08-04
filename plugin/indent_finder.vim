augroup IndentFinder
    au! IndentFinder
    " Path-of-least-resistance approach; invokes system python (not embedded
    " python)
    au BufRead * let b:indent_finder_result = system('python ~/.vim/bundle/Vim-IndentFinder/indent_finder.py --vim-output "' . expand('%') . '"' ) | execute b:indent_finder_result | redraw | echom "Indent Finder: " . b:indent_finder_result

    " Uncomment the next line to see which indentation is applied on all your loaded files
augroup End

