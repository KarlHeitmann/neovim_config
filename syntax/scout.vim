" Vim syntax file
" Language: Scout Lang
" Maintainer: Karl Heitmann
" Latest Revision: 09 July 2024
" Tip: :help syntax
"
" Tip: https://vim.fandom.com/wiki/Creating_your_own_syntax_files#Install_the_syntax_file

"if exists("b:current_syntax")
"  finish
"endif

" syn keyword basicLanguageKeywords PRINT OPEN IF
" syn keyword scoutBasicLanguageKeywords print goto for in do end
" add textContent
syn keyword scoutBasicLanguageKeywords print goto

syn keyword scoutRepeat for in do end

" hi def link scoutTodo Todo
syn keyword scoutTodo contained TODO FIXME XXX NOTE
syn keyword scoutCommentTodo      TODO FIXME XXX TBD contained
" syn match scoutComment "//.*$" contains=scoutTodo
syn match scoutComment "\/\/.*" contains=scoutTodo

syn match   scoutOperator '|>'
" syn match   scoutOperator '\|>'

" syn match scoutLineComment      "\/\/.*" contains=@Spell,scoutCommentTodo
" syn match scoutLineComment      "\/\/.*" contains=@Spell,scoutCommentTodo

"let b:current_syntax = "scout"

"syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+	contains=javaScriptSpecial,@htmlPreproc
"syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+	contains=javaScriptSpecial,@htmlPreproc
"syn region  javaScriptStringT	       start=+`+  skip=+\\\\\|\\`+  end=+`+	contains=javaScriptSpecial,javaScriptEmbed,@htmlPreproc
syn match   javaScriptSpecial	       "\\\d\d\d\|\\."
syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+	contains=javaScriptSpecial,@htmlPreproc
syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+	contains=javaScriptSpecial,@htmlPreproc
syn region  javaScriptStringT	       start=+`+  skip=+\\\\\|\\`+  end=+`+	contains=javaScriptSpecial,javaScriptEmbed,@htmlPreproc
syn region  javaScriptEmbed	       start=+${+  end=+}+	contains=@javaScriptEmbededExpr

syn cluster  javaScriptEmbededExpr	contains=javaScriptBoolean,javaScriptNull,javaScriptIdentifier,javaScriptStringD,javaScriptStringS,javaScriptStringT


syn cluster  javaScriptEmbededExpr	contains=javaScriptBoolean,javaScriptNull,javaScriptIdentifier,javaScriptStringD,javaScriptStringS,javaScriptStringT

syn keyword javaScriptConditional	if else switch
hi def link javaScriptConditional		Conditional

hi def link scoutComment Comment
hi def link scoutBasicLanguageKeywords Constant

hi def link scoutOperator                   Operator


hi def link javaScriptEmbed		Special


hi def link scoutRepeat		Repeat




hi def link javaScriptSpecial		Special
hi def link javaScriptStringS		String
hi def link javaScriptStringD		String
hi def link javaScriptStringT		String
