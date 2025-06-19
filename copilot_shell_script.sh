#!/bin/bash

# Prompt the user for the name of the new assignment
read -p "Enter the new assignment name: " newAssignment

# Update the ASSIGNMENT line with quotes to support multi-word names
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$newAssignment\"/" submission_reminder_*/config/config.env

# Notify and run the app once again
echo "Assignment updated to $newAssignment."
echo "Launching reminder app once again....."
bash submission_reminder_*/startup.sh
