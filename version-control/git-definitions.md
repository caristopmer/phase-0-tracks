# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  - Version control is a way to save the progress of a project and to track changes that have been made at certain times. It also allows a project to be reverted back to older versions at any time. This is useful in case new features are added that may end up causing bugs or other problems, as the project is able to be rolled back to a working, clean past version whenever necessary.
* What is a branch and why would you use one?
  - A branch is basically a copy of a code base or project in a repository that allows changes or additions to be built or worked on without affecting the functionality of the master branch, or main working version of the project. Branches could be used to add a new feature to a program or project and thoroughly test it to make sure it works properly. Once a the branch is deemed correct and working, it can be merged with the master branch. This adds the new tested and working feature to the project without ever losing functionality of the master branch. Additional branches are also very useful when there are multiple people working on the same project.
* What is a commit? What makes a good commit message?
  - A commit is a save point in git. As files are created or modified in git, they need to be manually committed to the repository in order to track and save the changes. A good commit message is one that is descriptive to the specific thing that was added or modified to a file for that commit. Commits should happen often enough that these messages are short and straightforward.
* What is a merge conflict?
  - A merge conflict can arise when multiple branches are attempted to be merged, but the master branch is no longer the same as it was when the other branch was created. This can happen if the master has received an update or new feature between the time a branch was created and when it is attempted to be merged back into the master. GitHub or the local repository won't know how to merge the differing code bases correctly, and so manual correction may be required.

## This one is for you, Glenna!