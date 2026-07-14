ROC Command Mobile Edition v1.8.3 — Navigation Grid Fix

This update fixes the overlapping bottom navigation shown on iPhone.

Changes:
- Forces a 3-column by 3-row navigation grid
- Keeps every tab visible at the same time
- Prevents navigation labels from overlapping
- Adds extra bottom spacing so page content stays above the navigation bar
- Uses stronger CSS overrides so older navigation rules cannot take over

Install:
1. Replace `index.html`, `netlify.toml`, and `README.md` in GitHub.
2. Commit the changes.
3. Wait for Netlify to publish.
4. Fully close ROC Command.
5. Reopen it. If the old layout remains, refresh once to clear the cached page.
