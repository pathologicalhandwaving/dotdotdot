---
title: General Cheat Sheet
date: 2017-01-20
category: Reference
tags: reference, docs, cheatsheet
---


# CheatSheet
***

</br>

## TimeWarrior

| Action | Command | Example | Example |
|:---|:---|:---|:---|
| Daily Summary | `timew summary` | `timew summary :yesterday` | `timew summary :ids` |
| Backdating | `timew start 3pm` | `timew start 90mins ago` | `timew stop 5pm` |
| Tracking | `timew track 9am - 11am 'Meeting'` | `timew track :yesterday 'Meeting'` |
| Correction | run `timew summary :ids` | then run `timew lengthen @1 20mins` | `timew shorten @1 PT5M30S` |
| Reports | `timew day` | `timew week` | `timew month` |
| Gaps | Find gaps of unrecorded time | `timew gaps` | |
| Date Syntax | `YYYY-MM-DD` | Time Syntax | `hh:mm:ss` |

</br>

***

</br>

## TaskWarrior

| Action | Command | Example | 
|:---|:---|:---|
| Add | add | `tw add something here` |
| Annotate | annotate | `tw <id> annotate Something here added` |
| Append to Description | append | `tw <id> append Some more description` |

</br>

***

</br>

## Idea


| Action | Command |
|:---:|:---|
| Create | `idea create "an idea"`|
| List | `idea list` |

</br>

***

</br>


## Study Aliases

</br>

| Action | Command |
|:---|:---|
| Question| `que` |

</br>

## Go To Directory

</br>

| Action | Command |
|:---|:---|
| MIT | `mit` |
| Louvain | `lou` |
| Crypto | `cry` |

</br>

## Glossaries and Terms

</br>

## MIT

</br>

| Action | Command |
|:---|:---|
| new glossary item | `mgg` |
| new term | `mtt` |

</br>

## Louvain

</br>

| Action | Command |
|:---|:---|
| new term | `ltt` |
| new glossay item | `lgg` |

</br>

