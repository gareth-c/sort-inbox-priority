# Publishing (maintainers)

## As a community marketplace

Anyone can install from this repo as soon as it is public on GitHub, because
`.claude-plugin/marketplace.json` makes the repo a marketplace and the repo root is the
plugin (`"source": "./"`). Nothing else is needed.

Before each release:

1. Bump `version` in `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`.
2. Add a dated entry to `CHANGELOG.md`.
3. Run `claude plugin validate .` and fix anything it reports.
4. Merge to `main`. Installed copies pick up the change on their next update check.

Never rename the plugin: `name` is its permanent identity.

## In Anthropic's plugin directory (optional)

Listing in the directory lets people find it under **Discover** in Claude.

1. Go to the developer portal at claude.ai/directory/manage (Pro, Max, Ultra, Team or
   Enterprise account, with GitHub connected).
2. Select **Submit new**, then **Plugin bundle**.
3. **Source:** `gareth-c/sort-inbox-priority`, plugin path left empty (the repo root),
   branch `main`. Select **Validate**.
4. Fill in **Listing details**, **Data handling** and **Compliance**. For data handling:
   the plugin reads and labels the user's Gmail through their own connector, stores
   nothing and sends data nowhere else.
5. **Review and submit**, then **Submit for review**.

Every version gets an automated check and security scan, and a person reviews a new
listing before it goes live. The repo must be public, with a licence and a README, and no
secrets committed.
