#Submission Reminder App

This is a simple shell scripting project designed to help you track student assignment submissions. It uses plain text files, organized folders, and shell commands to show which students have not submitted their work yet, in the respective sub-modules.


#What This App Does

a) It asks the user to set up an app folder, named after them.

b) Everything gets neatly organized into a project structure.

c) The assignment name and due date are saved in a config file.

d) It shows a list of students who have not submitted.

e) The user can update the assignment name anytime, using the copilot_shell_script.sh script.


#Folder Structure

After running the create_environment.sh script, your folder structure will look like this:

submission_reminder_<yourName>/
├── app/ # contains reminder.sh (main logic)
├── modules/ # contains functions.sh (helper function)
├── assets/ # contains submissions.txt (student data)
├── config/ # contains config.env (assignment settings)
├── startup.sh # script to launch the reminder
├── image.png # placeholder image



#How to Run This App

1. Run the create_environment.sh script 

This will create your custom app folder and place all the files inside it.

Command to execute: bash create_environment.sh

Output: It will ask for your name and create a folder like submission_reminder_yourname/.

2. Run the App

After the environment is set up, navigate into your new created folder and launch the app.

Command to execute: cd submission_reminder_yourname ./startup.sh

Output: This will display a list of students who have not submitted the assignment listed in config/config.env (Shell Navigation, Shell Basics, Git)

3. Change the Assignment Name

Command to execute: bash copilot_shell_script.sh

Output: 

a)	It will prompt you to enter a new assignment name (e.g., "Git or Shell Basics").

b)	It automatically updates the config file.

c)	Then, it re-runs the app to show updated results.


Requirements Met

a)	Creation of the directory structure is automated

b)	Assignment logic works as expected

c)	Uses shell scripts only

d)	Submission status is changeable or rather flexible

e)	Follows Git branching best practices

