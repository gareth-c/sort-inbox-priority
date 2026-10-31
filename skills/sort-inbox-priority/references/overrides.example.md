# Personal overrides (example)

Copy this file somewhere outside the repo and edit it. Never commit your copy.

- **Claude Code:** save it as `~/.claude/sort-inbox-priority/overrides.md`.
- **Claude app:** add it to your skill zip as `references/overrides.md` before uploading.

## Label names (optional)

If you already use different labels, map them here.

- High: Action/High Priority
- Medium: Action/Medium Priority
- Low: Action/Low Priority

## Settings (optional)

```
reviewed_label: Action/Reviewed
clear_mode: ask        # ask | read | archive | off
mark_low_read: true    # true | false
```

- `reviewed_label`: the label for threads that need no action.
- `clear_mode`: what happens to Reviewed (and Low) threads after tagging. `ask` asks once
  with counts. `read` marks them read without asking. `archive` marks them read and
  archives them without asking. `off` leaves them alone. Scheduled runs only clear with
  `read` or `archive`.
- `mark_low_read`: set to `false` to keep Low threads unread alongside High and Medium.

## VIP senders: always at least Medium, High if they ask something

- partner@example.com
- boss@example.com
- @school.example.com

## Extra noise senders: never label

- news@some-newsletter.com
- @marketing.example.com

## Services I run (vulnerability or outage notices count as High)

- Example Hosting
- Example Cloud

## Custom rules

- Anything from the kids' school about payments is Medium, even if a confirmation already
  arrived.
- Ignore all property-site alerts.
