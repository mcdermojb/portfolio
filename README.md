# Portfolio Website (Hugo)

This repository contains the source code for my portfolio site, hosted on GitHub Pages.

## Prerequisites
- **Hugo (Extended version)**: v0.155.3 or later.
- **Git**: Installed and configured.

---

## Workflow: How to Update the Site

Follow these steps to add new content and push changes for public viewing.

### 1. Preview Changes (Local)
Before publishing, run the local server to validate changes.

\`\`\`bash
hugo server -D
\`\`\`

* **Validate at:** http://localhost:1313
* **Note:** The -D flag shows files marked as draft: true.

### 2. Prepare for Production
When the changes are ready for publication, ensure all posts have draft: false in their front matter, then run the build command:

\`\`\`bash
hugo --minify
\`\`\`

* **Tip:** This generates the final static files inside the /public folder.

### 3. Check-in to Git
Send the updates to GitHub to trigger the automatic deployment:

\`\`\`bash
# 1. Stage all changes.
git add .

# 2. Record the changes with a descriptive message.
git commit -m "A summary of changes"

### 4. Build the site. 
Send the updates to GitHub to trigger the automatic deployment:
git push origin main
