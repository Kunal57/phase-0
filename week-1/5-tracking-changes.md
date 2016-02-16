# 1.5 Tracking Changes

## How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes a developers life easier in multiple ways. To begin, tracking a change allows you travel with the project along its timeline. In an earlier lesson we were introduced to the concept of a "timeline" being created when a folder becomes initialized and becomes a repository. From then on, the commits/checkpoints that the developer adds can be viewed to see how the project has changed over time. The ability for the developer to view this timeline allows them to see the development of a project, such as the features that were added, who added the features, and when these changes took place. This allows the developer to contact the correct individuals responsible for the changes, as well as rollback to any previous points in case of a flaw in the code. 

The process of adding changes also is a big help to developers. As developers begin work on a new branch, they can create new files and modify code. As they do this, they can see the status of their changes and add the code to the staging phase but have yet to commit the changes. This allows the developer to save modifications one by one as he works with the ability to take those files off the staging phase if he detects a flaw/bug. Afterwards, he can commit all his additions to the project to form a save point and give it a general message as to what he was working on. Afterwards, he can push those changes to GitHub to sync with the remote repository on the cloud. This this way, tracking and adding changes provides the developer with an added security and an "eraser" to keep him from corrupting the code.

## What is a commit?

A commit is a save point or a checkout in the developers project. git doesn't give you the ability to automatically save your code. Instead you have to use the command line to tell git to form a save point. Commits add the modified files and new files from the staging phase to the committed phase with a message. If the changes have not been moved to the staging phase with the git add command, the commit will not save those changes. This is to prevent the developer from commit any changes that he's not ready to implement into the code. He may still be working on the project and needs to only commit certain files.

## What are the best practices for commit messages?

Commits can be made using either the git commit -m "Message" command or the git commit -v command which brings up a text file for you to write a larger comment in. The best practices for a commit message is that the message should be specific not a general message. When another developer looks at the git log and sees the commit, he should be able to tell what that commit did to the code. The second best practice is that the message should be a command in the present tense. No using "added" or "adding", but instead a command like "add".

## What does the HEAD^ argument mean?

The HEAD^ command is used to change file that have already been committed. It means the last commit, since HEAD means the commit you are currently on. If you commit changes and decided that you forgot something, then using the HEAD^ argument will reset the last commit that took place. This shows that commits aren't set in stone and that developers have the ability to change commits even after they are executed.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of a git change are "changes not staged for commit", "untracked files", and "changes to be committed." Changes not staged for commit is for files you modify and they haven't been added to the staged phase. Untracked files are for new files that you have created that haven't been added to the staged phase. To move these files from their present stage to the changes to be committed stage, you must use the command git add <FILE> or if all of the files need to be added to the staged phase, you can use the git command . to add all the files. After these files have been added to the changes to be committed phase, you can see on the display whether the file is new or modified. To successfully commit these changes, you must use the command git commit -m followed by a message of specifically what you did as a command. You can also move the file from the changes to be committed stage back to its previous stage with the with git checkout -- <FILE> command.

## Write a handy cheatsheet of the commands you need to commit your changes.

git status - displays new files and modifications that you have made to the repository.
git add <FILE> - adds  the untracked files and the modified files to the stage phase.
git commit -m "MESSAGE" - commits these files from the stage phase with a specific message as to what the commit did for the feature.
git reset --soft HEAD^ - Resets the last commit you conducted if you needed to make additional changes.
git reset HEAD <FILE> - Resets the commit you are currently on. 
git checkout -- <FILE> - undo the changes to a modified file.

## What is a pull request and how do you create and merge one?

A pull request is a feature that helps a developer avoid problems within their code by giving individuals the ability to review the code before merging the changes into the master branch. It allows the review to see the changes and modifications to the code so they can effectively review it before merging the changes. A request can be created on GitHub after new code has been pushed up. The modifications that developers made to the code are displayed on GitHub and a button marked "Pull Request" can be seen next to each new addition. You can then review the code and add any information that may be necessary and finish it off by clicking the "create pull request" button. To merge the pull request after reviewing, you can hit the "Merge Pull Request" button and confirm the merge. After the branch is merged, the branch is useless and can be deleted. The changes are already in the master branch and it will keep your repository clean. 

## Why are pull requests preferred when working with teams?

Pull requests are preferred when working with teams because it allows for a second set of eyes to review the code before it is merged with the master branch. When coding, we often overlook our own mistakes or don't have the ability to spot our own code mishaps. Due to this and the importance of merging code that is functional to the main branch, we need to review it beforehand. The pull requests are an excellent way to approach the action of reviewing a code. After you push your code onto the remote GitHub repository, a pull request can be made and another developer will have the opportunity to review and critique your code. They made find small syntax problems or acknowledge a smoother way to solve the problem. Providing this review before merging into the master branch is essential as it gives the developer time to go back down and fix his mistakes and improve his code before merging with the master branch. It seems like a obvious choice for working in teams as many people can work on the same code and review the code of their teammates to reassure that everyone is working towards the same goals and everyone has the same visions of how the project needs to evolve.