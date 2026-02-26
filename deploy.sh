#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# 1. Build the site
hugo --minify

# 2. Add changes to Git
git add .

# 3. Commit changes (using current date/time as message)
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# 4. Push to GitHub
git push origin main