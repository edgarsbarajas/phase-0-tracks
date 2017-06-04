# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
*Version control is the ability to go back to previous versions of a project that you or your team are working on. It's very useful because it allows for pinpointing to versions that may have bugs or issues, without having to read through your entire project line by line, which would get very confusing and may lead to some serious errors.
* What is a branch and why would you use one?
* A branch is a new version of the master repo that allows you and your team to create new code within an existing project simultaniously but on your own. I.e. it's your copy of a project that will later be merged back into the master repo along with the changes created by your team.
* What is a commit? What makes a good commit message?
* A commit is simular to saving your changes into your branch. Each time you commit it creates a new version of your project and would allow, if nessessary, for you to revert back to a previous commit. A good commit message is descriptive and should include only one change. If you put miltiple changes in one commit, it could make it harder to find bugs or know whether a commit is actually affecting your users.
* What is a merge conflict?
* A merge conflict is when two team members alter the same line of code in a conflicting what. Such conflicts might include a team member deleting the line while you altered it instead, or perhaps you both added a file with the same name. At its most basic this is a situation where Git can not figure out which version line is correct and there for can not merge the branch into the master.