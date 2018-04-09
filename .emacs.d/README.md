#+TITLE: DotMac ReadMe
#+AUTHOR: PathologicalHandwaving



* dotmacs

*This is Not a starter kit*

This is my /attempted/ literate emacs config, and I've only used emacs about a week. Don't use this config, be nice to yourself, the references below are very nice places to start.


** Objectives of Config

  - latex-live-preview
  - ipython
  - jupyter
  - auctex
  - orgmode
  - bibtex
  - reference management
  - notes management
  - task log
  - self surveillance
  - pdf annotation and storage
  - epub annotation and storage

As much as possible in emacs that I normally do in a million other programs

** Reasons

   When I first started using vim it took me probably about a month to stop trying to make /"starter kits"/ work for me.

   I'm not going to argue for or against starter kits. I think starter kits have their place, as a great way to test out a peice of software and decide if it maybe interesting enough or worth your time to consider delving into it deeper.

   That being said most kits are overloaded with packages you will never use, mostly due to the fact there are so many packages in the kit you don't even (despite the nicely formatted TOCs and pretty readme files) know where to start. Cognitive overload quickly sets in and the try-out phase of the (at least to you) shiny new toy is spent fumbling around with well-intentioned tutorials and breaking things.

   Breaking things is great, I do it all the time, on purpose and on accident, it's shit loads of fun. 
   
   But I don't want to break my text editor every day, which is what I did for six days before attempting this config. I have more than enough fun configuring and tweaking my setup, but I've had it trying to tweak and configure someone else's bloated, bug ridden starter kit.


*** System I am Using

  - One much loved 2008 macbook
  - El Capitan
  - A more than healthy load of dotfiles, homebrew packages, npm, ruby, python, go etc packages.
  - A shit fuck ton of single purpose bash scripts

This setup may or may not be one of many reasons the following starter kits were just not my cup of tea (even when I really wanted them to be):

  - Spacemacs :: Constantly deleted anything I did to customize it on startup or broke due to its ever expanding back load of open issues. The vim keybinding actually worked most of the time though and the tutorial was good except for the choice of example sentences which bored me into numbness.
  - Purcell :: Very nice config but too much to start off with for me.
  - Scimax :: Overly opinionated with package bloat. Definitely written by academics and/or grad students.
  - Ohai-emacs :: Actually worked but had issues with orgmode creating keybindings. The otter never loaded and I got an error about dired on startup everytime but otherwise worked well.
  - Doom: I really, really wanted you to work but my system just wouldn't have it. I did finally get most of this package working except orgmode.
  - 
  

*** Starter Kits

    The example I based my config on[fn: See Literate Emacs Starter Kit in references] is a great example of what a (I think) a good starter kit should be.

**** List of Characteristics of a "Good" Starter Kit

    - Minimal :: Does not load more than 2-3 non-essential packages.

    - Transparent :: What things do and where they are should not /soley/ be the job of your very nicely formatted documentation. Even though it might make your skin crawl, comment the shit out of the code, and use /plenty of white space/.
    Let me clarify:
    *PUT THE DOCUMENTATION AND THE CODE IN THE SAME FILE.*
    Yes, this might not be what you want to see when you open a package; and yes it might make your brain scream /No!!!/
    Remember a starter kit is /Not for You/.
    A starter kit is for a new user, don't scare them off.

    - Short :: Short, concise, obvious, do I need to find more adjectives to emphasize this? I don't think so. If you are looking at your documentation asking /"is this short?"/, ask someone who does not use the package or work on your project to read it.

   - Bells and Whistles :: Point the user in the direction of where the addons are, list some well known and maintained favorites along with what they do. Do not load them preemptively for the user. Emacs does cool things, vim does cool things, don't  scare people away by adding shit you liked but they probably don't need to start off with.

   - Customizations :: Clearly Document (repeatedly if necessary) where each type of customization should go and exactly why it goes there, with examples. Do not write, "put your stuff here or you might break things"; especially with no white space indicating you meant here. "You might break things" is an effect, it is not particularly informative. It does not indicate anything about how or what might break and where that broken thing is located.

  - Avoid Undocumented Path Loops :: You thought the users shouldn't mess with x directory and so you didn't document where anything gets called, and by what. Bad developer, no cookie. Don't assume you know what the user wants, this means you damn well better document everything, especially the fragile backend.
  
  - Robustify :: Who uses starter kits, new users. Who is going to break things in fantastic ways, newbies. Is that ok? Absolutely! What does that mean for you? Write shit that breaks gracefully, with clear logs indicating what broke and where (with a fucking line number). The log should not output only the last link in the chain that broke. The user will have try to fix that, and it won't be fixed. Then they will proceed debugging by thrown errors, which is not a desired characteristic of any shiny new toy/tool. Don't make fragile backends.
  
  - Don't patronize :: (see customization messages above) the users, as you would not poke bears at the zoo, or tap on the glass at the aquarium. You are not stupid, you should get this. You tried something new once too, don't make your experience the bar new users must overcome to "deserve" using your package. Acting in this way doesn't make you superior, it just makes you a douche bag who can't be bothered to plan for inevitable breakage. Yes, "Read the documentation" should have happened. If the questioned asked is specific don't assume they didn't read your docs, and especially don't assume your docs were enough to deal with any and all possible issues that might come up. They can't be, support your fucking package issues, don't pretend to support your package issues.
  
  
  
  
** Installing emacs (Mac)

*** Homebrew

    #+BEGIN_SRC sh
    brew tap d12frosted/emacs-plus
    brew install emacs-plus --HEAD
    brew linkapps
    #+END_SRC

** Usage

*** Install

    #+BEGIN_SRC sh
    git clone git@github.com:pathologicalhandwaving/dotmac.git ~/.emacs.d
    #+END_SRC

*** Run

    #+BEGIN_SRC sh
    emacs
    #+END_SRC

*** Make Options

**** Delete compiled files: =clean=

     #+BEGIN_SRC sh
     make clean
     #+END_SRC

**** Byte Compile

     #+BEGIN_SRC sh
     make compile
     #+END_SRC


** References

  Inspired by [[Thank you very much to the following devs whose repos and][Introduction to Literate Programming (Howardism)]]

  Model based on:

  - [[https://github.com/gilbertw1/emacs-literate-starter][Emacs Literate Starter Kit]]
  - [[https://github.com/spruceb/.emacs.d][Spruce Literate Emacs Config]]

