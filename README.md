# choicescript
Flurrywinde's version of ChoiceScript (https://github.com/dfabulich/choicescript).

## <a name="myadditions"></a>My Additions

* **Game Menu:** Run makeindex.sh (if you're on Linux (or Mac?). No Windows version yet.) to automatically generate a games list from the web/ folder. (This assumes you place your games in folders just like mygame/ .) This will create an index.md that will display when you go to your choicescript project's github webpage. You can also make an index.md by hand in markdown, and it will work the same way.

* **Vim syntax and special functions:** If you use Vim (the greatest text editor ever made), get my [choicescript vim syntax, etc. files](https://github.com/Flurrywinde/vim-choicescript). It will make vim do syntax highlighting, auto-indent, enable text parts to fold up, let you auto-generate all of a \*choice's option blocks with a single key command, and much more.

* That's it so far. More coming soon!

## How to use github for choicescripting

First off, git and github have a learning curve. Learning how to them might be hard for non-programmers at first. I had to study tons of tutorials, and it was still hard. Now that I got it, though, it's so worth it!

### Why use github for choicescripting?

* **Version control:** Have you ever wanted to put back your game to how it was before? Maybe you have a crazy idea for how the story might go but aren't sure you want to keep it? Just make a new branch and write, and if you want to go back to how it was before, you can. You could even go back and forth writing two versions.

* **Easy backups:** Always keep a regular backup (I use Dropbox AND a local hard drive), but it's nice that your story will also be saved here on github.

* **Stay up-to-date with the latest Choice of Games codebase:** Just type "git pull" and get the latest version of choicescript.

* **Your own website for your games:** You will get your own website with a menu to all your games that's very easy to keep up-to-date. Before this, I had to FTP by hand all the time, and that gets old fast.

* **Custom choicescript codebase:** I haven't tried this yet, but I plan to have different branches for each feature I add to the choicescript code. You could pick which feature(s) you want and merge it on in, not having to mess with modifying the code yourself.

* And maybe other reasons why github is the coolest thing ever, but isn't this already enough?

### How to setup git

- **Install git:** Find instructions online. (For example, this one looks good: https://gist.github.com/derhuerst/1b15ff4652a867391f03)

- **Fork choicescript:** 
  - Sign up on github.com
  - Go to [my fork of choicescript](https://github.com/Flurrywinde/choicescript)
  - Make a fork of my fork: Just hit the "Fork" button in the upper right.

- **Clone your choicescript fork:** 
  - Go to your OS's command line interface.
  - Go to the folder you want to clone into, like, say, My Documents, or your Dropbox folder.
  - Type: `git clone https://github.com/[INSERT YOUR GITHUB USERNAME HERE]/choicescript.git` and hit Enter. This will create a new folder called choicescript containing all the code.

- Copy your game(s) into the web folder.

- **Start tracking your games' code:**
  - Go into each game's folder (Not the scenes/ folder. The one above it.) and type `git init`.
  - Add all your files: `git add -A`
  - Commit these changes: `git commit -m "Initial commit"`
  - Go to github.com and make a new repo. Name it the same as your game's folder name.
  - Do what it says to "push an existing repository from the command line"
  - Now, each time you make a change in your game, add and commit those changes, and then push them (`git push`) to github. Now you have version control and an online backup!

### Get your github website
- On github, go into Settings for your "choicescript" project and scroll down to "GitHub Pages". Set this to the Master branch.
- Make your games into submodules of the "choicescript" project:
  - On github, go to your game's project. Hit the green "Clone or download" button. Copy that link.
  - On the command line, go to your "choicescript" folder.
  - Type `git submodule add [YOUR GITHUB PROJECT'S LINK] web/[FOLDERNAME OF YOUR GAME]` (Make sure not to leave out the "web/" part.)
  - Type `git commit -am "Add [GAME NAME] submodule"`
  - Type `git push`
  - Run `./makeindex.sh` or edit index.md by hand.
  - Go to your github website (link is in your "choicescript" project Settings page under the same "GitHub Pages" section you went to in the first step above). 
  - Enjoy your instantly updated online version of your games running in the latest choicescript code!
  
### How to keep your website always updated
Okay, so say you're going along, writing your story. If you've added a few new parts to a scene, now's a good time to commit and push your changes. Here's what you do:
- Go to the command line.
- Go to the game's folder.
- Optional: Type `git status`. This will show you what files you modified.
- Type `git add -A` to add both new and modified files to what's called the git "staging area." That just means what you're about to commit.
- Type `git commit -m "[Brief description of what your changes were.]"`
