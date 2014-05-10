## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
Tells git to start tracking a file, which means the file will get included in the next 'snapshot', or commit, you make.

#### branch
Lets you create a new branch, or timeline of commits, of your own changes and file commits. Add the name of the branch after the keyword 'branch' to name it. For instance, 'git branch spencer' will create a new branch called 'spencer'.

#### checkout
Moves to, or 'checks out', a branch that you are not currently in.

#### clone
Clones a repository into a newly created directory.

#### commit
Takes a 'snapshot' of your current repository. You can type -m "message" after typing 'commit' to add a message describing the commit you're making.

#### fetch
Brings our local representation of the remote repository into synchronization with what the actual remote repository looks like right now. This will NOT update your master branch or change anything about your local state. Think of fetch as a 'download' step.

#### log
Shows the history of commits made with their authors, dates, and descriptions.

#### merge
Merges all the changes you made in a branch to the master branch.

#### pull
Pulls the most up-to-date version of your repository from GitHub to your local computer. In simple terms, this performs a 'git fetch' followed by a 'git merge'.

#### push
Push your changes from your local repository to your GitHub site.

#### reset
Take the current branch (and possibly the index and work tree) and reset it to point somewhere else.

#### rm
Remove a file from the index, or from the working tree and the index (you will still see the file if you look back at previous commits).

#### status
Shows you which files are in your current repository, which changes need to be committed, and which branch you're currently working on.

## Release 4: Git Workflow

#### Push files to a remote repository
1. Ensure you've committed locally (see steps below)
2. git push origin master

#### Fetch changes
1. Check to see if you've already linked a remote repo to this local repo by typing git remote -v
2. If there's already a linked remote repo, move on to step 3. Otherwise, type git remote add upstream https://github.com/spencerolson/repo_name.git
3. To fetch changes, type git fetch (note: this will NOT merge changes. Rather, it will store the upstream's 'master' branch in your local 'upstream/master' branch)
4. To make sure we're on our local master branch, type git checkout master
5. git merge upstream/master. This merges the upstream/master branch with the newly 'downloaded' info into your 'master' branch.
6.Commit your local repo with your remote fork. Type git commit -m "Add Devbootamp changes"
7. Push changes to the remote fork. Type git push origin master


#### Commit locally
1. git add 'file_name'
2. git status (to check which changes are going to be committed)
3. git commit -m "Commit message" 

## Release 5: Reflection

I had a very basic understanding of git before doing this exercise, and I was previously trying to force myself to use the terminal wherenever possible, as opposed to using the GitHub app. However, doing this exercise definitely helped solidify some of the knowledge I had before, and I also learned some new key commands. I think the biggest takeaway from this exercise for me was learning the difference between 'pull' and 'fetch' -- this had really confused me before. I learned that, essentially, a 'pull' command is basically a 'fetch' followed by a 'merge'. I read a few articles stating that it is better convention to manually do a 'fetch' followed by a 'merge', rather than using 'pull', because you should be able to truly understand and differentiate between a 'fetch' and 'merge', and if you run into issues it's much easier to 'debug' when using 'fetch' + 'merge' as opposed to 'pull'. For now, I'll try to use the 'fetch' + 'merge' technique, but when I feel I truly understand them, I may switch to the more convenient 'pull'.