---
title: Installing ZURB Foundation 5 Sass on Mac OS X Mavericks
date: 2014/03/10
time: 7:51 PM CET
tags: ZURB Foundation, Responsive Web Design, Web Design, Mobile
featured_image: "/blog/featured-images/install-guide-mavericks.jpg"
signup_zurb: "true"
---

Recently William Hernebrink ( [@WH_IxD](http://www.twitter.com/WH_IxD) ), a student from Sweeden, posted a comment on one of my youtube videos asking how to install ZURB Foundation 5. I made an offer to walk him through it if we could document the process for everyone else. What follows is a refinement of that conversation and what I consider to be best practice of setting up a proper development environment on Mac OS X Mavericks for running the lastest ZURB Foundation 5.2.

SPLIT\_SUMMARY\_BEFORE\_THIS

<div class="flex-video widescreen"><iframe width="960" height="720" src="//www.youtube.com/embed/KdFZnvLPnz4?rel=0" frameborder="0" allowfullscreen></iframe></div>

In this screencast I will walk you the following step-by-step:

<ul class="no-bullet">
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>XCode</strong></li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Homebrew</strong> to install rbenv and node/npm</li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Rbenv</strong></li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Ruby 2.1.0</strong></li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>The Foundation Gem</strong></li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Node/NPM</strong></li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Bower</strong> using npm</li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Bower</strong> using ruby gem</li>
  <li><i class="fi-checkbox" style="font-size:24px;"></i> <strong>Setting up your first Foundation Project</strong> using the Foundation CLI</li>
</ul>

I have included the full text of our Skype conversation below, where we approcahed each aspect of the install and it could be good background information if you are having some of the same issues. The process differs slightly from my instructions, mostly because he had already installed Node from the Node mac binary installer.

If you have any questions or comments I would love to hear from you in the comments. I am working on a similar installation guides for Windows and Ubuntu so stay tuned.



<dl class="accordion" data-accordion>
  <dd>
    <a href="#panel1">Skype Conversation</a>
    <div id="panel1" class="content">

<pre>JS: if I remember right you needed some help installing foundation5 right?
JS: ruby/node?
WH: yeah
JS: so
WH: I think i have node.js installed
JS: oh
JS: well that is good
JS: do you have npm?
WH: and i read that all new macs already comes with ruby?
JS: yes
JS: ruby 1.9
JS: but there is a better way to install it
JS: and you will probally want to install ruby 2, for speed
JS: + gem, bundler, etc.
JS: also git
WH: most definitely
WH: I want: "The set ut of a pro"
JS: nice
JS: do you have xcode installed?
WH: Yes, actually taking a course on developing iOS applications this semester too ^^
JS: i assume you are on a mac? which version? lion?
WH: maverick
JS: you can install xcode through the app store
JS: then in xcode you need to install the command line tools
JS: i think it is under help
JS: if you take screen shots, we can use them to put up a video later
JS: command shift 3
WH: yeah sure, i will try
WH: can't find it under help tho
JS: i might be away from the computer from time to time but I will talk you though it
JS: so you have xcode installed?
WH: yes
JS: okay
JS: maverics is different you will need terminal
JS: http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/
WH: oh ok
JS: did you install node with homebrew?
WH: that i'm not sure of, don't even know what 'homebrew' is?
WH: I will follow that guide now?
JS: can you open another terminal window
JS: type in
JS: node --version
WH: v0.10.23
JS: can you type
JS: which node
WH: i only get: v0.10.23
JS: oh
JS: no type exactly
JS: which node
WH: /usr/local/bin/node
JS: which is a unix program that will tell you where it is installed
JS: brew --version
WH: command not found
JS: port --version
WH: command not found
JS: do you think it is likely that you installed it from the mac installer?
JS: http://nodejs.org/download/
JS: maybe download the installer and try and remove it
JS: uninstall it
WH: yeah, that could have been the case
WH: i will try
JS: then, if that works
JS: run through that tutorial
JS: to install the command line tools
JS: then homebrew
JS: http://brew.sh/
JS: install it with the ruby command
JS: then
JS: brew update
JS: brew install node
WH: Ok, will do my best. Could take a few min
JS: here is a guide
JS: http://thechangelog.com/install-node-js-with-homebrew-on-os-x/
JS: maybe run that
JS: brew doctor
JS: before the install
JS: then after
JS: brew update
JS: brew install git
JS: then rbenv
JS: http://octopress.org/docs/setup/rbenv/
JS: Alternate Installation Using Homebrew

If you use Homebrew on Mac OS X you may prefer to install rbenv like this:

brew update
brew install rbenv
brew install ruby-build
Install Ruby 1.9.3

Next install Ruby 1.9.3 and you'll be all set.

rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
JS: so, ping me back with questions
JS: or if you get stuck
WH: Sure will!
WH: Thanks
JS: we can always use screenhero or join.me to screenshare and I will walk you through it
JS: np
WH: Awesome
JS: if you get a weird error or something ping me back too
JS: i am using an older machine on lion, but a lot of it should be the same
JS: with the exception of the command line tools in xcode
JS: that is needed for the libsass that foundation needs
WH: I couldn't remove node wit the installer (couldn't find an uninstaller)
WH: looking into this now
WH: http://stackoverflow.com/questions/11177954/how-do-i-completely-uninstall-node-js-and-reinstall-from-beginning-mac-os-x
WH: do you know how i can get to a folder i'm viewing in the terminal?
WH: like if i have navigated to a folder in the terminal, and i wanted to open in in finder?
WH: with a short command?
JS: maybe skip the node bit
JS: so
JS: still install homebrew
JS: skip node uninstall / install but install the command line tools
JS: we will still use it for ruby
WH: ok!
JS: we don't want to hose your node installation
JS: lets make sure that is working and look for a better answer
WH: So i should not follow this then http://thechangelog.com/install-node-js-with-homebrew-on-os-x/
JS: yes
WH: oh, but in there was instructions for installing brew, soi i'll do that
JS: skip that an my instructions to install with homebrew
JS: but install homebrew
WH: great
JS: and we will use it to install rbenv and ruby
JS: we will see if everything works
JS: then
JS: maybe later at some point we can remove that node installation
JS: because, if you make a mistake doing things like rm -f you can delete huge sections of your drive or apps
JS: this seems to be a better answer but I would hold off
JS: http://stackoverflow.com/questions/9044788/how-do-i-uninstall-nodejs-installed-from-pkg-mac-os-x
JS: the only disadvantage is that with brew
JS: you can just run brew update node
JS: and get the lastest version available in homebrew
JS: not an issue now, but could be later as things require later versions
JS: i don't use node extensively except for meteor so I can't tell you if using nvm is worth the time to install
JS: rbenv and rvm manage different versions of ruby on the same machine
JS: so I assume nvm does the same for node
JS: ruby version manager
JS: ruby environment
JS: rbenv is the better one to use
JS: rvm hosed my entire dev machine one time, so I stick to rbenv
WH: well that gotta have sucked!
WH: "Downloading and installing Homebrew..."
JS: oh yeah
JS: like 1 -2 days lost
WH: got some Warnings using brew doctor:

Warning: Broken symlinks were found. Remove them with `brew prune`:
  /usr/local/bin/twfind
  /usr/local/bin/twdiff
  /usr/local/bin/mate
  /usr/local/bin/edit
  /usr/local/share/man/man1/twfind.1
  /usr/local/share/man/man1/twdiff.1
  /usr/local/share/man/man1/edit.1

Warning: You have leftover files from an older version of Xcode.
You should delete them using:
  /Developer/Library/uninstall-developer-folder

Warning: /usr/bin occurs before /usr/local/bin
This means that system-provided programs will be used instead of those
provided by Homebrew. The following tools exist at both paths:

    2to3

Consider setting your PATH so that /usr/local/bin
occurs before /usr/bin. Here is a one-liner:
    echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile
WH: should i look into this first?
JS: you can run brew prune if you want
JS: i wouldn't worry about the rest
JS: we will come to that if it is an issue
WH: should i add the Homebrew location to my $PATH?
JS: no
WH: ok
WH: btw, what is my $PATH?
JS: it is just complaining
JS: in unix shells
JS: you are using a bash shell
JS: there is an environment variable
JS: all sorts of stuff
JS: $PATH is a special one
JS: it defines where it looks for everything
JS: type
WH: oh ok
JS: echo $PATH
WH: /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
JS: mine is like this
JS: /usr/local/heroku/bin:/Users/james/.rbenv/shims:...
JS: so
WH: weird path in my eyes :)
JS: when you type brew
JS: or whatever
JS: it looks all of those places in order
WH: i see
JS: so
WH: git installed now
WH: too
JS: /usr/bin
JS: then ...
JS: good
JS: go for that ruby rbenv guide with homebrew
WH: will do!
JS: brew update
brew install rbenv
brew install ruby-build
JS: then
JS: rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
JS: then same thing but replace 1.93-p0
JS: with
JS: 2.0.0-p247
JS: also
WH: rbenv install 1.9.3-p0
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1

ERROR: This package must be compiled with GCC, but ruby-build couldn't
find a suitable `gcc` executable on your system. Please install GCC
and try again.

DETAILS: Apple no longer includes the official GCC compiler with Xcode
as of version 4.2. Instead, the `gcc` executable is a symlink to
`llvm-gcc`, a modified version of GCC which outputs LLVM bytecode.

For most programs the `llvm-gcc` compiler works fine. However,
versions of Ruby older than 1.9.3-p125 are incompatible with
`llvm-gcc`. To build older versions of Ruby you must have the official
GCC compiler installed on your system.

TO FIX THE PROBLEM: Install Homebrew's apple-gcc42 package with this
command: brew tap homebrew/dupes ; brew install apple-gcc42

You will need to install the official GCC compiler to build older
versions of Ruby even if you have installed Apple's Command Line Tools
for Xcode package. The Command Line Tools for Xcode package only
includes `llvm-gcc`.

BUILD FAILED
JS: brew install rbenv-gem-rehash
JS: brew tap homebrew/dupes ; brew install apple-gcc42
JS: go for that one -> brew tap homebrew/dupes ; brew install apple-gcc42
WH: exactly like this: v
WH: brew tap homebrew/dupes ; brew install apple-gcc42
WH: "both"? at the same time
JS: the ; just runs one after the other
WH: Good to know
JS: i would just run it as it is written
JS: you can also do
JS: one command && two command && three command
JS: they will run in sequence
WH: oh okey
JS: but if you get an error they will all stop
JS: if you do
JS: command &
JS: it runs in the background
JS: so don't do that
JS: then you have to run ps
WH: thanks
JS: then get the pid
JS: then run kill with the correct id
JS: no fun
JS: once you get this set up
JS: you will mostly just navigate around to differrent folders
JS: and run commands like
JS: foundation new project
JS: so, this is the hard part
WH: wouldn't have done it without your guidance (Y)
WH: thanks a lot
WH: for doing this for me
JS: you can see how this was a little beyond a youtube comment ;)
JS: np
JS: happy to help
WH: hehe, yeah i get that
JS: after those installs
JS: run
JS: gem update --system
JS: gem install bundler foreman pg rails thin --no-rdoc --no-ri
JS: http://robots.thoughtbot.com/using-rbenv-to-manage-rubies-and-gems
JS: so
JS: if no more errors
JS: type
JS: rbenv rehash
JS: then
JS: gem install foundation
JS: then
JS: rbenv rehash
JS: everytime you install or change a gem
JS: you have to type rbenv rehash
JS: so, you will want to remember it
WH: i'm not very familiar with what a `gem` is..
JS: that should be it
JS: a gem is a package
JS: so
JS: a package manager is like home brew
JS: apt-get
JS: npm
JS: they will install say foundation
JS: but see that it has dependancies
JS: such as sass
JS: and compass
JS: and it will go through everything and make sure every thing needed for it to run is installed
JS: so when you run gem install foundation
JS: it might install 50 things
JS: so when you see npm install meteor
JS: same thing
JS: just node
JS: brew
JS: same thing, ported apps for macosx
JS: and all of them can update everything
JS: gem update foundation
JS: gem update
JS: updates everything
JS: you can install a specific version if you want
JS: etc.
JS: otherwise
JS: back in the day you would compile the source for everything in order
JS: it was a real paid
JS: pain
JS: brb
WH: ok!
WH: It will be all fun when i master all of this :)
JS: back
JS: so how did it go?
JS: still installing?
WH: It's looking good. Am at this one: gem install bundler foreman pg rails thin --no-rdoc --no-ri
JS: cool
WH: had to use sudo before that
JS: oh yeah
JS: same with the other gem install commands
JS: after the foundation install and the rehash
JS: go to your home directory
JS: cd ~
JS: ~ means home
JS: create a new directory
JS: mkdir temp
JS: cd temp
JS: then create a project
JS: foundation new first_project
JS: ping me back once you get there or if you have any issues
WH: Sure!
WH: got this now tho: rake's executable "rake" conflicts with /usr/bin/rake
Overwrite the executable? [yN]
WH: yes or no?
WH: Fetching: rake-10.1.1.gem (100%)
rake's executable "rake" conflicts with /usr/bin/rake
Overwrite the executable? [yN]
JS: oh yeah
JS: Y
JS: overwrite that
JS: capital Y to say yes to everything
JS: see
JS: it is installing rails and rake because it is a dependency of the foundation gem
JS: even if you don't use it
JS: if you want after this we can install meteor
JS: so who are some of your favorite interaction designers or people in your field?
WH: Williams-iMac:temp_1 hernebrink$ foundation new first_project
Can't find bower. You can install it by running: sudo npm install -g bower
JS: yep
JS: do that
JS: bower is a package manager for front end tech
JS: built with node
WH: cool
JS: so, javascript and css libraries
JS: then you can just run bower update
JS: so the foundation cli (command line app) abstracts most of that
JS: but it uses bower to maintain and update the js libs and scss
JS: and grunt to integrate with libsass if you go that route for faster compiles
JS: so after you install bower
JS: just hit the up arrow
JS: it will cycle through your previous commands
JS: run the foundation command again and look for errors
WH: Williams-iMac:temp_1 hernebrink$ foundation new first_project
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.0.0 directory.
Can't find compass. You can install it by running: gem install compass
JS: yep
JS: do that
JS: then run rbenv rehash
WH: what would happen if i forgot to do that?
JS: maybe sudo gem install compass
JS: it won't work as intended
JS: so scss is like a markup language
JS: compass has additional commands
JS: @import is the most important
WH: so every time i install anything with gem, i should make that rehash?
JS: which foundation uses to keep its sass in different files
JS: yep
JS: exactly
JS: so there is a bunch of cool cli apps you can install with it
JS: image_optim is one
JS: squashes images to small sizes
JS: anything that calls itself a gem
JS: it is because ZURB is a ruby house
WH: all seems very cool i must say
JS: and so they like sass
JS: a ruby tech
JS: less is node js based
JS: and this is why all the stuff
JS: years of being in ruby now using some node stuff
JS: its like double the things to install
JS: also uglifier is good
JS: compresses js files
JS: you can go really deep with this stuff
JS: or just use it like utilities to help you build static and php web sites
JS: jslint
JS: that might be npm
JS: coffeescript
JS: coffeescript is a preprocessor for javascript, makes it much more modern / ruby like
JS: so instead of the
JS: var something = function(e) { }
JS: it is like
JS: something = (e) ->
WH: ah i see
WH: run the foundation command again and look for errors
JS: the (e) is ( e )
WH: you wrote
JS: yeah
WH: which did you mean?
JS: so hit up until you see the foundation new ...
JS: then enter to run the command
JS: up arrow
WH: Williams-iMac:temp_1 hernebrink$ foundation new first_project
Creating ./first_project
       exist  first_project
fatal: destination path 'first_project' already exists and is not an empty directory.
Installing dependencies with bower...
error: Could not remove config section 'remote.origin'
./first_project was created
JS: oh snap
JS: just change the name to second_project
JS: this cli foundation app really should be marked beta
WH: Williams-iMac:temp_1 hernebrink$ foundation new second_project
Creating ./second_project
      create  second_project
remote: Reusing existing pack: 72, done.
remote: Total 72 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (72/72), done.
Installing dependencies with bower...
./second_project was created
JS: bam
JS: you are done
JS: so
JS: cd second_project
WH: Thank you 'lord', or should i just call ju James? ^^
JS: lol
JS: then
JS: open .
JS: that will open the directory in the finder
JS: you can edit any of the files in your editor of choice
WH: (which was that command i was wondering about before)
JS: or drag the directory onto sublime text if you have it
JS: so you can do
JS: open index.html
JS: it will open in a browser
JS: it is opening something in the finder
JS: . is the current directory
JS: ../ is one directory down
JS: ~ is home
JS: you can do
JS: open ~ and it will open your home diretory
WH: sweet
JS: then
WH: looking at the index.html
JS: last step
WH: without css
JS: we are using compass
JS: so
JS: just run compass watch
JS: that will then create a app.css file
JS: and watch all of the scss files for changes
JS: and compile the css if there is one
JS: if you want to follow what I was doing
JS: just download a copy of sublime text
JS: it will just nag you
WH: got sublime up and running
JS: to register but it is fully featured
WH: love it
JS: this is my personal philosophy
WH: seems not to have compiled
WH: Williams-iMac:second_project hernebrink$ compass watch
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
JS: oh snap
JS: type
JS: ls
JS: and paste it in skype
WH: Williams-iMac:second_project hernebrink$ ls
README.md   bower_components  humans.txt    js      scss
bower.json    config.rb   index.html    robots.txt
JS: try
JS: sudo gem update
JS: then
JS: rbenv rehash
JS: the run compass watch again
JS: like
JS: compass watch
JS: i knew it wouldn't be that easy ;)
WH: i will have to do this all over, on my macbook pro too, lol
JS: yep
WH: some other day, that is
JS: hope you took notes ;)
JS: i will take all of this and do a blog post
WH: I will take this chat conversation to my grave!
JS: and ask for people to send updates
JS: i think it is pretty important, because some people just don't know how to get started with this stuff
JS: and
WH: exactly!
JS: it is a bit of an opinionated install
WH: When all of this is done, it would be nice with a list of "what the hell did i just install" -list :)
JS: yep
WH: I'm just typing commands.
WH: basically
JS: maybe you can copy and past the entire terminal into an email and send it to me
JS: jamesmanofstone@gmail.com
WH: that i can do
JS: on the mbp, if you didn't install node, try doing it with brew
JS: the computers in france are so ex
JS: pensive
JS: the are 50% more than in the us
JS: it is 17% vat + like 33% import duty
WH: Still get this:
WH: Williams-iMac:second_project hernebrink$ compass watch
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
JS: type compass version
WH: Williams-iMac:second_project hernebrink$ compass version
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
JS: rather
JS: compass --version
WH: same error
WH: ls
JS: type ruby --version
WH: ruby 2.0.0p247 (2013-06-27 revision 41674) [universal.x86_64-darwin13]
JS: did you upgrade to mavericks?
WH: JS: brew update
brew install rbenv
brew install ruby-build
JS: then
JS: rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
JS: then same thing but replace 1.93-p0
JS: with
JS: 2.0.0-p247
JS: also
brew install rbenv-gem-rehash
WH: did those
WH: after that install brew thing
JS: try thins
JS: try this
JS: sudo gem uninstall sass
sudo gem install sass -v 3.2.12
JS: then
JS: rbenv rehash
JS: then compass watch
WH: does it matter which folder I'm in?
JS: no
JS: except for the compass watch
WH: Remove executables:
  sass, sass-convert, scss
WH: in addition to the gem? [Yn]
JS: Y
JS: this is why I always try and hang back one os on a dev machine
JS: for apple
JS: they are always buggy on the latest os release
JS: unless you need something for it
JS: like
JS: ios dev
WH: Now it seems to be working! :)
JS: awesome
WH: Williams-iMac:second_project hernebrink$ compass watch
>>> Change detected at 21:56:10 to: app.scss
   create stylesheets/app.css
>>> Compass is watching for changes. Press Ctrl-C to Stop.
JS: that is the fix for compass
JS: so
JS: now
JS: any project you create
JS: just run compass watch
JS: while you edit the scss
JS: or
JS: compass compile
JS: thats it
WH: Thats awesome!
</pre>


    </div>
  </dd>
  <dd>
    <a href="#panel2">Video Transcript</a>
    <div id="panel2" class="content">







    <p>Hey everyone, so I have had a couple requests on how to set up a dev environment for foundation 5. Now you might be thinking, now I have code kit or i have a couple of ideas on how I might set this up but I am going to encourage you to go ahead, go through the process of setting up a dev environment, because maybe you don't want to use other tools at the moment, but there are a lot of tools and there is a trend, foundation included, where they are using command line tools, so it is best for you to just learn how to get started right away.</p>

    <p>So I am going to take you through process. This is going to be using the newest OS which is Mavericks, for Mac OS X and I am going to walk you through the process of how to install it step-by-step, a dev environment so that you can use Foundation 5.</p>

    <p>OK. So the first step is basically we want to start with XCode. You can do that by opening up the App Store, then click on developer tools, then click on XCode, and then click on the install button. That’s going to go ahead and take you though the install process. I am not going to show it here but this is the next step.</p>

    <p>Its called Homebrew and Homebrew is the method that I prefer to install older apps, ruby, this type of thing. And so it is a one kind of copy and paste line that we are going to go ahead and put into terminal. And you will see here, we run this terminal command line and I am just pasting it in. and that’s it. So this is going to install Homebrew.</p>

    <p>Alright, its going to ask you for the password. This is the same password that you use to normally install normal applications for your mac. And we are going to get this XCode Select Command Tools needs to be installed so just hit Agree. Go through the process of letting it find the software that’s installed. I am not going to show the whole process here but you can imagine what is going to happen.</p>

    <p>So the next step in the process is to install rbenv. So I prefer this over rvm and the reason is that I had a problem with rvm where it kindof ruined my entire dev installation. So I have been using rbenv. I really like it. It is very easy to install from Homebrew.</p>

    <p>So the first thing you want to do is run brew doctor. Then we are going to run brew update, this is from the terminal. and now we just do brew install rbenv ruby-build.</p>

    <p>So the next step is that I am going to use rbenv and run init. Now, it says that it automatically adds to the .bash_profile  I found that it was not necessary to do this, in Mavericks. Your mileage may vary but in older Mac OS X operating systems you do have to add this to your .bash_profile.</p>

    <p>And so the next step here is that I am going to use rbenv to install and before we install we want to list. So do rbenv -l and I am just using less, piping it to less so we can see. And I am going to go ahead and install ruby 2.1.0. I am going to copy and paste this so I can get exactly the version that I want.</p>

    <p>This is the same thing, rbenv install, and just the version of ruby that you want to install. So I am just pasting this with command v. So here we go through the installation process.</p>

    <p>So the next step here is I am going to run brew doctor again to just bring everything up to date. Then I will run brew update after running brew doctor. OK, now I am going to use brew to install node. So just brew install node. That is all you need to do and its going to install both node.js and npm which is the node package manager. Both of which are requirements for Foundation 5.</p>

    <p>OK, so now that we are now all setup I am going to do sudo gem install foundation. I am going to type in my password again and this should install the foundation gem. This can get to be a little confusing as we are going back and forth between ruby and node but just follow with me here. So what I do is that I create a new project, foundation new testProject. </p>

    <p>And it is going to give you the steps. The first step is we need to install Bower. So we do sudo npm install –g, which is for global bower. And that is going to go ahead and install Bower. And so what I do is I go through this process and I just hit the up arrow, which takes us to the last command in the terminal or in the command line or in bash or however you want to call that and we are going to keep going though kind of in a loop until we resolve all of the dependencies. </p>

    <p>So here we go, we are done with Bower and so I am going to do the same thing. foundation new testProject. And we will see if we get another error. OK, and so it says that we don't have permissions so we will do sudo gem install compass.</p>

    <p>So I've been thinking if you have installed foundation on earlier versions of Mac OS X it was a little bit different, right? and the difference is that in Foundation 5 is that they removed a lot of dependencies from the gem. So you have to kind of have to go through this process to get everything working. </p>

    <p>There we go. So we created our testProject and I am just going to cd into that project directory. Run compass compile, which will generate the CSS files from our Sass or SCSS files. You have to do that first because it is not done automatically.</p>

    <p>So here we go, we have our foundation project set up. We compiled our Sass into CSS and this is our base install. So for any new project that we want to create from the Sass standalone. foundation new and then the project name.</p>

    <p>And so I hope you find this useful. And I hope that you explore a little bit more into the command line and into bower, node, ruby, ruby gems because there is a lot of really wonderful tools there. Even if you are doing front-end development there is a lot of really great tools that you can learn. And again the tendency the movement is going towards a lot of tools including foundation 5 using more command line interface applications so its going to be really great if you just learn how to do it. And this is a really great introduction on setting up a pretty robust development environment so I hope you found it useful and I will talk to you next time.</p>




    </div>
  </dd>
</dl>

<br>

