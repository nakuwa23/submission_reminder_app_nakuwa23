#submission_reminder_application
So, this is a basic shell script project meant to help you track on when students turn in their work. It's using simple text files, organized folders, and shell commands, displaying students who still need to submit their work, within the appropriate sub-modules.

#What This App Is Meant To Do

a) It asks the user to set up an app folder, named after them.

b) Everything gets neatly organized into a project structure.

c) The assignment name and due date are saved in a config file.

d) It shows a list of students who have not submitted.

e) The user can update the assignment name anytime, using the copilot_shell_script.sh script.

#Folder Structure

After running create_environment.sh, your folder structure will look like this:

submission_reminder_<yourName>/
├── app/ # holds reminder.sh (the main part)
├── modules/ # has functions.sh (which helps)
├── assets/ # includes submissions.txt (student stuff)
├── config/ # stores config.env (for settings)
├── startup.sh # the script to get the reminder going
├── image.png # an image as a placeholder

