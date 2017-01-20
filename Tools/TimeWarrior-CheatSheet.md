Timewarrior Basic Cheatsheet
=======================
http://taskwarrior.org/docs/timewarrior/tutorial.html

Last update: 2016-11-15

### Timewarrior Installation on Arch Linux
`$ sudo pacman -S timew`

### Taskwarrior Hook Installation
http://taskwarrior.org/docs/timewarrior/taskwarrior.html

Whenever you start a task in Taskwarrior, the hook script will start time tracking in Timewarrior. When the task is stopped, or completed, the hook script will stop time tracking in Timewarrior. 

`$ cp /usr/share/doc/timew/ext/on-modify.timewarrior ~/.task/hooks/ && chmod +x ~/.task/hooks/on-modify.timewarrior`

#### Timewarrior Hook Bug
If you have python3.5 and the timewarrior hook is failing: https://bug.tasktools.org/browse/TI-48


## Start / Stop / Continue

- $ timew start
- $ timew stop
- $ timew continue

  The continue command re-starts the previous tracking, and is useful if you stopped the clock during lunch, or overnight.

## Tags
- $ timew start tag1 tag2 tag3 ..

## Tracking time in the past
Note that the track command expects a closed interval (start and end time), when
recording. If a closed interval is not provided, the 'track' command behaves the
same as the 'start' command.

- $ timew help track
- $ timew track :yesterday 'Training Course'
- $ timew track 9am - 11am 'Staff Meeting'

## Summary 
- $ timew summary [tag]

## Corrections
- $ timew summary :ids
- $ timew join @1 @2
- $ timew untag @1 @2 projectB
- $ timew tag @1 projectA
- $ timew delete @1
 
## Help
- $ timew help
- $ timew help continue
- $ timew help date

