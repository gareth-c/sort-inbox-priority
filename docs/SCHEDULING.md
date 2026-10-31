# Running it every morning

## Claude (scheduled task)

Ask Claude:

> Create a scheduled task that runs every weekday at 7:40am: "Run the sort-inbox-priority
> skill on my unread Gmail and send me the P1 and P2 summary."

Scheduled runs happen with nobody watching, so the skill never asks questions. It only
adds labels: nothing is marked read, archived or deleted.

## Claude Code (cron, headless)

With the plugin installed and a Gmail MCP server configured:

```
# crontab -e
40 7 * * 1-5  cd ~ && claude -p "/sort-inbox-priority" >> ~/.sort-inbox-priority.log 2>&1
```

Make sure the Gmail MCP tools are allowed in your Claude Code permission settings,
otherwise a headless run stops at the first permission prompt.

## Whole inbox

To sort mail you've already read too, run it by hand on the full inbox:

> Sort my whole inbox by priority.
