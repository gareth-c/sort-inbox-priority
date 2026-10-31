# Running it every morning

## Claude (scheduled task)

Ask Claude:

> Create a scheduled task that runs every weekday at 7:40am: "Run the sort-inbox-priority
> skill on my unread Gmail and send me the High and Medium summary."

Scheduled runs happen with nobody watching, so the skill only labels. It never archives
in a scheduled run, even in inbox zero mode, because archiving needs your yes.

## Claude Code (cron, headless)

With the plugin installed and a Gmail MCP server configured:

```
# crontab -e
40 7 * * 1-5  cd ~ && claude -p "/sort-inbox-priority" >> ~/.sort-inbox-priority.log 2>&1
```

Make sure the Gmail MCP tools are allowed in your Claude Code permission settings,
otherwise a headless run stops at the first permission prompt.

## Weekly inbox zero

Do this by hand, not on a schedule, so you can approve the archive step:

> Run sort-inbox-priority on the full inbox, I want inbox zero.
