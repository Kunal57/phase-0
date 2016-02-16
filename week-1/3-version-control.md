# 1.3 Introduction to Version Control

## Write an explanation of and compare Git and GitHub to one another.
Git is the software that enables folder with version control. GitHub is a cloud-based repository management service.

Git allows a developer to convert any folder into a repository through the git init command. It is used to view the history of the revisions and also to help merge revisions contributed by additional developers. 

GitHub on the other hand is an addition to git to help keep code safe. Although you may be using git within your project to track changes and have the safety of the rollback feature of version control, your project is still not safe. What I'm saying is that life is unpredictable and that your project can disappear if your computer is stolen, damaged, or malfunctions. GitHub allows your repositories to live in the cloud. It allows the cloud to have a copy of your repository so that you and other developers can remotely access that copy at anytime. 

Git provides version control and safety locally to your code, and GitHub just adds onto that safety with advanced features and the ability to store your code in more than one location. 

## Explain what version control is and how GitHub helps with it.
Version control allows developers to view the history of revisions on a project and to merge revisions by different developers. When a developer first creates a repository enabling version control, a timeline is created for the file. The file can then be sent out to others for modification, and then the developer can merge these modified files back into the original file. 

GitHub helps with this process by smoothing the syncing process of the file via the cloud so that all the members of the project can access the most updated code. If multiple developers are working on the same project, it would be hard to send everyone the modifications and for everyone to send you their modifications. Soon, you wouldn't know which files have what information integrated into them. GitHub allows all members working on the project to simply push their modifications up to the repository on GitHub and for others to pull those modifications down to their computers to update their local repository with the new additions.

## Why do developers use version control (Git)?
Git is essential for developers because it acts as a safety net and also helps organize modifications to a file/project. When a developer adds, and commits modified files, it creates a checkout in the projects timeline. This means that at any point in the future, the developer can rollback to this checkout and retrieve the work at that specific point. For example, if a bug/error is found in a project and the solution can't be found, the developer can choose to rollback to a previous checkout and rebuild the code from there. Git also helps the develop organize the modifications. The commits and merges allow the developer to view the author, message, and timestamp of a particular commit. This helps the developer understand who created the modification, the content of the modification through the message, and also when the modification/merge took place. All of these features help the developer write code better, safer, and faster.  

## What is a commit?
A commit is a save point on git. Git doesn't automatically save changes to a file. Instead, you have to tell git through the command line to create a save point. You need to commit in a project over and over again to create checkpoints within the project. You can check the status of the files you modified with git status, add the files for commit with git add <FILE>, and commit the changes with a message using git commit -m "MESSAGE".