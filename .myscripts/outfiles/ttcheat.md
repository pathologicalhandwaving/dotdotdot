### Utility Aliases

***

#### RainbowStream

##### Interactive Mode

**Explore Commands**

* `trend` will show global trending topics

* `home` will show your timeline. `home 10` will print exactly 10 tweets
* `me` will show your latest tweets. `me 2` will show your last 2 tweets
* `notification` will show your notification from the time you started RainbowStream
* `mentions` will show mentions timeline. `mentions 7` will show 7 mention tweets
* `whois @dtvd88` will show profile of @dtvd88
* `view @mdo` will show @mdo ’s timeline. `view @dmo 9` will print exactly 9 tweets
* `s noah` will search the word *‘noah’*. Result will come back with highlight. Search can be performed with or without hashtag

##### Tweet Commands

* `t the rainbow is god's promise to noah` will tweet exactly *‘the rainbow is god’s promise to noah’*.
* `rt 12` will retweet the tweet with *[id=12]*. You can see id of each tweet beside the time.
* `quote 12` will quote the tweet with *[id=12]*. If no extra text is added, the quote will be cancelled.
* allrt 12 20 will list 20 newest retweets of the tweet with *[id=12]*. If the number of retweets is not specified, 5 newest retweets will be listed instead.
* `conversation 12` will show the chain of replies prior to the tweet with *[id=12]*.
* `rep 12` Really will reply *‘Really’* to the owner of the tweet with *[id=12]*.
* `repall 12` Really will reply *‘Really’* to all people in the tweet with *[id=12]*.
* `fav 12` will favorite the tweet with *[id=12]*.
* `ufav 12` will unfavorite tweet with *[id=12]*.
* `share 12` will copy link to tweet with *[id=12]* to your clipboard if you are on a Mac, or display it directly if you are on Linux.
* `del 12` will delete tweet with *[id=12]*.
* `show image 12` will show the image in tweet with *[id=12]* in your OS’s image viewer.
* `open 12` will open url in tweet with *[id=12]* in your OS’s default browser
* `pt 12` will add tweet with *[id=12]* in your Pocket list

##### **Direct Messages Commands**

* `inbox` will show inbox messages. inbox 7 will show newest 7 messages.
* `thread 2` will show full thread with [id=2].
* `mes @dtvd88` hi will send a hi message to @dtvd88.
* `trash 5` will remove message with *[message_id=5]*



##### Friends and followers Commands

* `ls fl` will list all your followers (people who are following you).
* `ls fr` will list all your friends (people who you are following).
* `fl @dtvd88` will follow @dtvd88.
* `ufl @dtvd88` will unfollow @dtvd88.
* `mute @dtvd88` will mute @dtvd88.
* `unmute @dtvd88` will unmute @dtvd88.
* `muting` will list muting users.
* `block @dtvd88` will block @dtvd88.
* `unblock @dtvd88` will unblock @dtvd88.
* `report @dtvd88` will report @dtvd88 as a spam account.

**Twitter list**

* list will show all lists you are belong to.
* list home will show timeline of list. You will be asked for list’s name.
* list all_mem will show list’s all members.
* list all_sub will show list’s all subscribers.
* list add will add specific person to a list owned by you.
* list rm will remove specific person from a list owned by you.
* list sub will subscribe you to a specific list.
* list unsub will unsubscribe you from a specific list.
* list own will show all list owned by you.
* list new will create a new list.
* list update will update a list owned by you.
* list del will delete a list owned by you.

**Switching Stream Commands**

* switch public #AKB48 will switch current stream to public stream and track keyword AKB48
* `switch public #AKB48 -f1`s will do exactly as above but will ask you to provide 2 list:
  Only nicks decide what nicks will be include only.
  Ignore nicksdecide what nicks will be exclude.
* `switch mine` will switch current stream to personal stream. -f will work as well.
* `switch list` will switch to a Twitter list’s stream. You will be asked for list name.

##### Smart shell

* `142857*2` or `101**3` like a calculator.
* Even cal will show the calendar for current month.
* Put `order_rainbow('anything')` or `random_rainbow('wahahaha')` will make more fun :)

##### Config Management

* `theme` will list available themes.


* `theme monokai` will apply *monokai* theme immediately. Changed theme will be remember as the next time’s default theme.


* `config` will list all config key.


* `config ASCII_ART` will output current value of *ASCII_ART* config key.
* `config TREND_MAX` default will output default value of *TREND_MAX* config key.
* `config CUSTOM_CONFIG` drop will drop *CUSTOM_CONFIG* config key.
* `config IMAGE_ON_TERM = true` will set value of *IMAGE_ON_TERM* config key to *True*.

**Screening Commands**

* `h` will show the help.
* `p` will pause the stream.
* `r` will unpause the stream.
* `c` will clear the screen.
* `v` will show version info.
* `q` will quit.

***

#### Bashmarks

Saves the current directory as "bookmark_name"
`s <bookmark_name>`
Goes (cd) to the directory associated with "bookmark_name"
`g <bookmark_name>`
Prints the directory associated with "bookmark_name"
`p <bookmark_name>`
Deletes the bookmark
`d <bookmark_name>`
Lists all available bookmarks
`l`

***

#### Map

**pass ips as a parameters**
`iponmap ip1 ip2 ip3`
**through stdin (one ip per line)**
`cat iplist.txt | iponmap`
`iponmap < iplist.txt`
**draws new point on new line**
`tail -f iplist.log.txt | iponmap`

##### Arguments
**count uniq points**
`-c,--count`
**trace points**
`-t, --trace`
**print help message**
`-h, --help`
**print version**
`-v, --version`

##### Examples
**show my ip on map**
`curl http://ipinfo.io/ip | iponmap`
`host google.com | iponmap -c`
`traceroute -n google.com | iponmap -t`

***

#### InterWebz
`youtube-dl --extract-audio --audio-format mp3` Download mp3 from YouTube (Works on playlists too)

***

#### Travel

##### Track Flight
`flight-tracker <startDate> <endDate> <start> <end> [options]`
`flight-tracker '2017-01-22 18:05' '2017-01-25 21:15' 'JAX' 'SFO' -i 50 -d 20`

***

#### BibTeX

##### Bib2Yaml
`touch somefile.yml`
`pandoc-citeproc --bib2yaml somefile.bib | pbcopy | pbpaste > somefile.yml`

##### Parse BibTeX

##### RFC to bib
`rfc-to-bib 2616 > rfc2616.bib`

***

#### YAML

##### Merge YAML
`merge-yaml -i example.yaml includes/*.yml -o merged.yml`

***

#### Timers
`stopwatch`
`times`
`timestamp`

***

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

***

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
