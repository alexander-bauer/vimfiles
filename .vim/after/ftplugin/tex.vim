" Undo stupid latex-suite macros
call IMAP('()', '()', 'tex')
call IMAP('{}', '{}', 'tex')
call IMAP('[]', '[]', 'tex')
call IMAP('::', '::', 'tex')
call IMAP('{{', '{{', 'tex')
call IMAP('((', '((', 'tex')
call IMAP('[[', '[[', 'tex')
call IMAP('$$', '$$', 'tex')

:setlocal spell spelllang=en_us
