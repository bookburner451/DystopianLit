# choicescript
This is my fork of dfabulich's ChoiceScript project (https://github.com/dfabulich/choicescript).

**My choicescript website:** [https://flurrywinde.github.io/choicescript/](https://flurrywinde.github.io/choicescript/). (Right now it's nothing but a few works-in-progress I've barely started on, unfortunately. Mostly it's just there to show what one looks like, and if you follow the steps below, you can have one too.)

## <a name="myadditions"></a>My Additions

* **Game Menu:** Run makeindex.sh (if you're on Linux (or Mac?). No Windows version yet.) to automatically generate a games list from the web/ folder. (This assumes you place your games in folders just like mygame/ .) This will create an index.md that will display when you go to your choicescript project's github webpage. You can also make an index.md by hand in markdown, and it will work the same way.

* **Vim syntax and special functions:** If you use Vim (the greatest text editor ever made), get my [choicescript vim syntax, etc. files](https://github.com/Flurrywinde/vim-choicescript). It will make vim do syntax highlighting, auto-indent, enable text parts to fold up, let you auto-generate all of a \*choice's option blocks with a single key command, and much more.

* That's it so far. More coming soon!

## How to use github for choicescripting

First off, git and github have a learning curve. Learning how to them might be hard for non-programmers at first. I had to study tons of tutorials, and it was still hard. Now that I got it, though, it's so worth it!

### Why use github for choicescripting?

* **Version control:** Have you ever wanted to put back your game to how it was before? Maybe you have a crazy idea for how the story might go but aren't sure you want to keep it? Just make a new branch and write, and if you want to go back to how it was before, you can. You could even go back and forth writing two versions.

* **Easy backups:** Always keep a regular backup (I use Dropbox AND a local hard drive), but it's nice that your story will also be saved here on github.

* **Stay up-to-date with the latest Choice of Games codebase:** Just load it right in, and all your games will start using it, no muss, no fuss. It will keep your current modifications, if any (like CJW's save system and whatnot), too.

* **Your own website for your games:** You can setup your own website with a menu to all your games that's very easy to keep up-to-date. Before this, I had to FTP by hand all the time, and that gets old fast.

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
  - Type: `git clone https://github.com/[INSERT YOUR GITHUB USERNAME HERE]/choicescript.git` and hit Enter. This will create a new folder called `choicescript` containing all the code.

- Copy your game(s) into the `web/` folder.

- Decide if you want to do things the easy or hard way.

### <a name="easyway"></a> The Easy Way: Just keep choicescript and your games together as one big project.

This is the option I would choose if I were just a writer, not a programmer. The downside is it's harder to mess around with the choicescript code if changes to your stories are mixed in too.

Another benefit to the Hard Way is that each story is also a separate project, so if you're going to do advanced branching and other weird stuff on different stories at the same time, the hard way would be the way to go. But if you're just working on one game at a time and don't need to create experimental versions of games and switch back and forth between different branches of your story, I would choose the Easy Way, cuz the Hard Way is significantly more complicated and might cause a lot of confusion and hair-pulling, especially if you're new to git.

**UPDATE:** I just thought of an even [EASIER way](#easierway). I think this is the preferred way, as it's much easier but not all that inferior to the old Easy Way.

#### Easy Way Steps:
- Well, you've got your game folders in the choicescript/web/ folder, so all that's left is to add them to your project.
- Go to the choicescript folder (or any sub-folder of it), do a `git add -A`. This adds all new and modified files to be "staged." (Staging just means these files are what will be "committed," and "commiting" means packing up all new changes into one unit that has a name and description, but you don't really need to know these details at this point.) Note: If you want to see what your new and modified files actually are, do a `git status`.
- Type `git commit -m "Add game folders"`.
- Type `git push`. 
- Now your games are uploaded to github, serving as an extra backup and laying the groundwork for version control and your website.

#### <a name="workflow"></a> Keeping your github up-to-date
Okay, so say you're going along, writing your story. If you've added a few new parts to a scene, now's a good time to commit and push your changes. Here's what you do:
- Go to the command line.
- Go to the game's folder (or any sub-folder under `choicescript`).
- Optional: Type `git status`. This will show you what files you modified.
- Type `git add -A` to add both new and modified files to the staging area.
- Type `git commit -m "[Brief description of what your changes were.]"`
- Type `git push`. This will upload your commit to github.

A good idea is to get in the habit of writing a discreet chunk and then doing the above steps. You'll be making a nice history of your changes that way instead of each commit being full of a ton of stuff. 

Basically, what you've set up is version control, meaning old versions are still there. Each commit you push is still there just in case you might need it someday, like if you accidentally erase parts of it and want to get them back. In theory, you could pull out stuff from way long time ago and add it to your current version if you're a git master. (I've never done that, but it *could* be done!)

But now for the really fun part...

#### Your FREE website
Yup, github gives you a free website! Here's how to set it up to serve your games:
- Go to the command line.
- Go to the `choicescript/` folder.
- Make `index.md`. This is a Markdown file that will be the frontpage of your website. If you're on linux (or Mac?), you can use my `makeindex.sh` script which automatically makes a link for each game. Or you can make it by hand. If you look at my version, it should be pretty self-explanatory. Your game's name goes in the square brackets, and `web/` followed by your game's foldername goes in the angle brackets. That's it!
- You don't even need `index.md`. You could just type the url directly into your browsers address bar to get to each game.
- Next, on github, go into Settings for your "choicescript" project and scroll down to "GitHub Pages". Set this to the Master branch.
- Hit the Save button.
- A green box should appear that has the url to your website. Click it.
- Enjoy your easily-updated online version of your games!

This ends the Easy Way. Below is the Hard Way...

### The Hard Way

Why use the Hard Way instead of the easy way? Because it keeps the choicescript code and EACH game in a separate project. So if you're modifying the choicescript code and/or working on several games at once and/or making experimental branches to your games that you might not keep or doing other advanced things, this is the way to go... if your git skills are up to snuff or you are simply brave or foolhardy. Me, I was in the latter class, and yeah, it got confusing at times, but hey, I survived. Maybe you can too!

Well, so at this point, you've copied your games into the `choicescript/web/` folder but they are not git-ified yet. We are going to add them as Submodules of the "choicescript" project, which means they are git projects of their own that are inside the "choicescript" project.

#### Make each game its own project
- Go into each game's folder (Not the scenes/ folder. The one above it.) and type `git init`.
- Add all your files: `git add -A`
- Commit these changes: `git commit -m "Initial commit"`. 
- Go to github.com and make a new repo. Name it the same as your game's folder name.
- Do what it says to "push an existing repository from the command line". (Basically, it's issuing two more git commands on the command line.)
- Now, each time you make a change in your game, add and commit those changes, and then push them (`git push`) to github. Now you have version control and an online backup!
- Repeat these steps for each of your games.

#### Make each game a submodule of the "choicescript" project
This is important because normally, sub-folders under the `choicescript/` folder are considered part of that project. We don't want that.

- On github, go to your game's project. Hit the green "Clone or download" button. Copy that link.
- On the command line, go to your "choicescript" folder. (NOT the game folder.)
- Type `git submodule add [YOUR GITHUB PROJECT'S LINK] web/[FOLDERNAME OF YOUR GAME]` (Make sure NOT to leave out the "web/" part.)
- Type `git commit -am "Add [GAME NAME] submodule"`
- Type `git push`
- Repeat these steps for each of your games.

You can now make edits in your games and/or the choicescript code, each in their own project with their own commit history, enabling you to branch, restore (or just look at) old versions, and all the other powerful features git has. 

#### Keeping your github up-to-date
Okay, so say you're going along, writing your story. If you've added a few new parts to a scene, now's a good time to commit and push your changes. Here's what you do:
- Go to the command line.
- Go to the game's folder.
- Optional: Type `git status`. This will show you what files you modified.
- Type `git add -A` to add both new and modified files to what's called the git "staging area." That just means what you're about to commit.
- Type `git commit -m "[Brief description of what your changes were.]"`
- Type `git push`. This will upload your commit to github.
- At this point, the game is saved to github, but you should also update the "choicescript" project too. (If you don't, the game in your website (see below) won't be updated.) Here's how to update the "choicescript" project:
  - Go to the "choicescript" folder (i.e. the one with "web/" in it). 
  - Do the same as you just did: add, commit, and then push. Since you probably haven't added new files, the add and commit can be combined into one command: `git commit -a -m "[Brief description of what your changes were.]"` or, even shorter: `git commit -am "[Brief description of what your changes were.]"`. Then the push is still just `git push`.

A good idea is to get in the habit of writing a discreet chunk and then doing the above steps. You'll be making a nice history of your changes that way instead of each commit being full of a ton of stuff. 

Basically, what you've set up is version control, meaning old versions are still there. Each commit you push is still there just in case you might need it someday, like if you accidentally erase parts of it and want to get them back. In theory, you could pull out stuff from way long time ago and add it to your current version if you're a git master. (I've never done that, but it *could* be done!)

You could stop at this point, but what if you want a free website that hosts all your games that can be kept up-to-date with only a few command line commands? If that's what you want, you can have it! 

#### Get your github website
- Make sure you're still in the `choicescript/` folder.
- Make or modify the `index.md` file that's there. This is a Markdown file that will be the frontpage of your website. If you're on Linux (or Mac?), you can use my `makeindex.sh` script which automatically makes a link for each game. Or you can make it by hand. If you look at my version, it should be pretty self-explanatory. Your game's name goes in the square brackets, and `web/` followed by your game's foldername goes in the angle brackets. That's it!
- You don't even need `index.md`. You could just type the url directly into your browsers address bar to get to each game.
- Log in on github.com.
- Go into Settings for your "choicescript" project and scroll down to "GitHub Pages". Set this to the Master branch.
- Hit the Save button.
- A green box should appear that has the url to your website. Click it.
- Enjoy your easily-updated online version of your games running in the latest choicescript code!
  
Well, I hope this has helped you get started using git with choicescript. If you have any questions, you can find me on the Choice of Games forum: https://forum.choiceofgames.com/users/flurrywinde11/

## UPDATE:

### <a name="easierway"></a> The Super Easy Way
Okay, this way is even easier than the Easy Way, but you lose some of the benefits. You *still* get a free website that easily updates, though, and you also still get the, albeit inferior, version-control of the Easy Way. 

What's missing is easily staying up-to-date with the choicescript code, and of course, all the features of the Hard Way. (But you can still update the choicescript code in much the same way you used to.)

Okay, so you probably already have choicescript on your computer in a folder. You might even already be putting your game folders in the `web/` folder. If not, for the Super Easy Way to work, I suggest you do that. (Back everything up first, of course. Make a new copy for this. You don't have to, but just do it to be safe.)

Done that? Good. Now do the following steps:

- Register on github.com.
- **Make your user webpage:**
  - Go to: https://pages.github.com
  - Do steps 1 and 2. (Above Step 1, there's a button that says "Project site". Do NOT press it. Keep it on "User or organization site", because that is what we will be using.)
  - Instead of step 3, copy the contents of your choicescript folder (which should now include your games folders) to the folder you made in step 2. 
  - Then continue on with the rest of the steps.
  - That's it! You now have a website for your games. (Did you get a 404 error? That's normal. Just add `web/[YOUR GAME'S FOLDERNAME]` at the end of the url to get to the games.)

**Optional:** Replace the 404 error with a nice-looking menu by adding an index.md to the choicescript folder. See [The Easy Way](#easyway) for how. (It's the third step in the "Your FREE Website" section. Here's a link to [mine](https://raw.githubusercontent.com/Flurrywinde/choicescript/gh-pages/index.md). Basically just edit that and put it in your choicescript folder.)

This will make the frontpage of your website be a menu to your games instead of the 404 error it was probably giving you.

Next, go to the [Keeping your github up-to-date](#workflow) section above. You will need to do this to keep your website up-to-date.

Once again, you can find me on the [Choice of Games forum](https://forum.choiceofgames.com/users/flurrywinde11/). 

Happy choicescripting!
