#!/bin/bash

# sed = stream editor
# A stream is a process that travels from:
# - one process to another through a pipe
# - one file to another as a redirect
# - one device to another
# Standard Input = Standard Input Stream, etc
# Streams are typically text data
# sed performs text transformations on streams
# sed is typically used as a find and replace command

# Command: sed 's/manipulate/change/' sed.txt
# sed is case sensitive, exact match
# sed 's/search-pattern/replacement-string/flags'
# Command: sed 's/change/MANIPULATE/i'
# >> appends text to a file instead of > is truncating
# sed is verbose, will manipulate all lines of file
# sed by default only replaces first occurence in a line
# use g flag to use global replace
# sed 's/change/manipulate/g'
# sed doesn't change the original file.. must redirect output using backup
# sed -i.bak 's/change/manipulate/g' sed.txt OR
# sed 's/change/manipulate/iw new.txt' sed.txt

# any delimiter can be used for sed ie. sed 's:originalText:newText:anyFlags' txt.txt
# To delete text use sed '/linePattern/d' text.txt
# can pipe commands doing this
# deletes, empty lines, lines starting with # and replaces apache with httpd
# sed '/^$/d ; /^#/d ; s/apache/httpd/' text.txt

# can create a .sed file that contains an edit pattern on each line then use sed -f script.sed text.txt to execute
# use before edit pattern to specify line numbers to be edited or matching pattern
# ie. sed '/matchingLinePattern/ s/original/newText/' filename.txt #replaces on lines that match pattern
# ie. sed '1,3 s/original/next/' filename.txt # replaces lines 1,3 with new from original