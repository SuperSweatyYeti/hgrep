# hgrep

grep with headers!

Leveraging awk.

## Usage

```bash
"Usage: hgrep OPTIONS... [FILE] PATTERN(S)"
"Search for PATTERN(S) in file or STDOUT"
"Can search for multiple PATTERNS"

"The recommended order to use flags is as follows"
"hgrep -H "0-9" -l -i -f myfile (-s or -e) PATTERN(S) "
    
"Options:"
    
"-h, --help           Display this help message"
"-s, --search         Pattern to search for"
"-e, --multi-search   Multiple search entries (hgrep -e foo -e bar)"
"-l, --lines          Toggle line numbers that DO NOT correspond to line in file. Useful to quick
"-v, --invert-match   Print lines that DO NOT include specified pattern(s)"
"-i, --ignore-case    Case-insensitive pattern search"
"-H, --headers        Number of Header lines, Default is 1"
"Example syntax: hgrep -li -f /path/to/myfile -s "pattern" "                    
"Example syntax: hgrep -H 2 -li -f /etc/hosts -e "example.com" -e "acme.com" "
    
"More Examples: "
"lsblk | hgrep sda "
"lsblk | hgrep -H 1 -lis nvme0n1"
"hgrep -f /etc/hosts -H 5 -li -e "example.com" -e "acme.com" "
    
"Do not use header AND include first line in search results"
"hgrep -f /etc/hosts -H 0 -s Loopback"
"Specific Special character searches that need to be preceded by triple backslashes or single bac
"[\\][|]"
"Search for literal \\ by using quadruple backslashes"
"Other special character searches need to be preceded by single \\"
```


