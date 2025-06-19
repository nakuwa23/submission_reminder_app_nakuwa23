check_submissions() {
    file=$1
    echo "Reminder: Students who have not submitted $ASSIGNMENT:"
    awk -F',' -v assignment="$ASSIGNMENT" '$2==assignment && $3=="not submitted" {print $1}' "$file"
}
