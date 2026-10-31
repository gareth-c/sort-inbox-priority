# Installing

This repo is a community plugin marketplace with one plugin in it, `sort-inbox-priority`.
Pick the route that matches how you use Claude.

| Route | Best for | Personal overrides |
|---|---|---|
| [Claude app plugin](#claude-app-plugin) | Most people, on claude.ai or the desktop app | Not yet; uses the default rules |
| [Claude Code plugin](#claude-code-plugin) | Claude Code users | `~/.claude/sort-inbox-priority/overrides.md` |
| [Custom skill zip](#custom-skill-zip-claude-app) | Claude app users who want their own overrides | Built into the zip |

Whichever route you use, Claude needs a Gmail connection that can **search, read, label and
unlabel threads, and create labels**.

## Claude app plugin

1. In Claude (claude.ai or the desktop app), open **Customize** in the sidebar, then
   **Plugins**.
2. Select **Add marketplace** and enter `gareth-c/sort-inbox-priority`.
3. Open the marketplace, select **Sort Inbox Priority** and click **Install**.
4. Connect the Gmail connector in Claude if it isn't already connected.
5. Ask Claude: "Sort my inbox".

**Updates:** on the Plugins page, select **Check for updates** on the marketplace, or turn
on **Sync automatically**.

**Remove:** **Customize > Plugins**, open the plugin, select **Remove**.

Plugins you add are saved to your Claude account, so they follow you between the web,
desktop and Claude Code.

## Claude Code plugin

```
/plugin marketplace add gareth-c/sort-inbox-priority
/plugin install sort-inbox-priority@sort-inbox-priority
```

Restart Claude Code or reload plugins, then run `/sort-inbox-priority` or ask "sort my
inbox". You also need a Gmail MCP server that offers search, read, label, unlabel and
create-label tools.

**Updates:** `/plugin marketplace update sort-inbox-priority`.

**Your overrides:** see [CUSTOMISING.md](CUSTOMISING.md). They live in
`~/.claude/sort-inbox-priority/overrides.md`, outside the plugin, so updates never touch
them.

## Custom skill zip (Claude app)

Use this if you want your own VIP senders, noise senders or rules in the Claude app. If you
also installed the plugin, remove it first so you don't have two copies.

1. Clone the repo: `git clone https://github.com/gareth-c/sort-inbox-priority.git`
2. Write your overrides file outside the repo (see [CUSTOMISING.md](CUSTOMISING.md)).
3. Build the zip: `./scripts/build-zip.sh ~/path/to/my-overrides.md`
   (on Windows, copy `skills/sort-inbox-priority`, add your file as
   `references/overrides.md`, and zip the folder).
4. In Claude's skills settings, upload `dist/sort-inbox-priority.zip` as a custom skill.

To change your overrides later, edit your file, rebuild the zip and upload it again.

## Manual (Claude Code, no plugin)

Copy `skills/sort-inbox-priority` into `~/.claude/skills/` for all projects, or into
`.claude/skills/` for one project.
