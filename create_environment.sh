#!/bin/bash

# Prompt the user to enter their name
read -p "Enter your name: " userName

# Create the main directory with their name
baseDir="submission_reminder_${userName}"
mkdir -p "$baseDir"/{app,modules,assets,config}

# Create config.env file
cat > "$baseDir/config/config.env" <<EOL
# Configuration
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING="2"

EOL

# Create submissions.txt inwith 10 entries inside it
cat > "$baseDir/assets/submissions.txt" <<EOL
student,assignment,submission status
Chinemerem,Shell Navigation,not submitted
Chiagoziem,Git,submitted
Divine,Shell Navigation,not submitted
Anissa,Shell Basics,submitted
Wesley,Git,submitted
Sylvia,Shell Navigation,not submitted
Preston,Shell Basics,submitted
Miguel,Git,not submitted
Leslie,Shell Navigation,not submitted
Christopher,Shell Basics,not submitted
EOL

# Create functions.sh file inside the modules directory
cat > "$baseDir/modules/functions.sh" <<'EOL'
check_submissions() {
    file=$1
    echo "Students who have not submitted $ASSIGNMENT:"
    awk -F',' -v assignment="$ASSIGNMENT" '$2==assignment && $3=="not submitted" {print $1}' "$file"
}
EOL

# Create reminder.sh file inside the app directory
cat > "$baseDir/app/reminder.sh" <<'EOL'
#!/bin/bash
source ../config/config.env
source ../modules/functions.sh
check_submissions "../assets/submissions.txt"
EOL

# Create the startup.sh directory
cat > "$baseDir/startup.sh" <<'EOL'
#!/bin/bash
cd "$(dirname "$0")/app"
echo "-------------------------------"
echo "Starting Reminder App....."
echo "-------------------------------"
echo "Due Date: 2 days remaining"
echo "-------------------------------"
chmod +x ../modules/functions.sh reminder.sh
./reminder.sh
EOL

# Create a placeholder image
touch "$baseDir/image.png"

# Make all .sh files executable
find "$baseDir" -type f -name "*.sh" -exec chmod +x {} \;

echo "Environment setup completed successfully at $baseDir"
