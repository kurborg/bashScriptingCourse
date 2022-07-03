
## Carriage Returns Line Feed Windows-Unix
Windows uses extra carriage returns on each line CRLF
Unix uses just the Line Feed character LF
Use dos2unix script.sh to remove the extra carriage returns in a windows to unix script
Also use file script.sh to display whether there are extra carriage returns present
Carriage returns are displayed as ^M
Will get error #!/bin/bash^M bad interpreter when this error occurs