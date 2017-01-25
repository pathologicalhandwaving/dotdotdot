### Utility Aliases
#### InterWebz
`youtube-dl --extract-audio --audio-format mp3` Download mp3 from YouTube (Works on playlists too)

#### Travel
##### Track Flight
`flight-tracker <startDate> <endDate> <start> <end> [options]`
`flight-tracker '2017-01-22 18:05' '2017-01-25 21:15' 'JAX' 'SFO' -i 50 -d 20`

#### BibTeX
##### Bib2Yaml
`touch somefile.yml`
`pandoc-citeproc --bib2yaml somefile.bib | pbcopy | pbpaste > somefile.yml`
##### Parse BibTeX
##### RFC to bib
`rfc-to-bib 2616 > rfc2616.bib`

##### Merge YAML 
`merge-yaml -i example.yaml includes/*.yml -o merged.yml`



#### Timers
`stopwatch`
`times`
`timestamp`
### Study Aliases
#### Add to Lists
`gloss` Add a glossary item
`idea` Add an idea
`term` Add a term to look up later
`note` Make a short note
`trick` Add a trick you found
#### GoTo Directories
`mit` MIT6001x
`lou` Louvain
`cry` Stanford Crypto

### TimeWarrior
#### Summary Report
`timew summary`
`timew summary :yesterday`
`timew summary :ids`
#### Backdate
`timew start 3pm`
`timew start 90mins ago`
`timew stop 5pm`
#### Tracking
`timew track 9am - 11am 'Meeting'`
`timew track :yesterday 'Meeting'`
#### Correct Entry
1. run: `timew summary :ids`
2. then: `timew lengthen @1 20mins`  or `timew shorten @1 PT5M30S`
#### Reports
`timew day`
`timew week`
`timew month`
#### Find Gaps of Unrecorded Time
`timew gaps`
#### Date Syntax
`YYYY-MM-DD`
#### Time Syntax
`hh:mm:ss`
##### Item Report Date Syntax
`YYYYMMDDTHHMMSS` hours, minutes and seconds are in 24 hour time

### TaskWarrior
**add** `tw add something here`
**annotate** `tw <id> annotate Something here added`
#### Append to Description
`tw <id> append Some more description`
