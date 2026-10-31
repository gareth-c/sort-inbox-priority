# sort-inbox-priority

A Claude skill that triages your Gmail inbox to **zero unread**. It reads your mail, works
out what actually needs you, and gives every thread one of four labels:

| Label | Meaning | After the run |
|---|---|---|
| **Action/High Priority** | Act today. Ignoring it has a real cost. | Stays unread |
| **Action/Medium Priority** | Deal with it this week. | Stays unread |
| **Action/Low Priority** | Glance and file. | Marked read |
| **Action/Reviewed** | Checked, doesn't need reading: newsletters, alerts, marketing. | Marked read |

When it's done, your unread mail is your to-do list: only High and Medium threads. Nothing
is left unread just because nobody looked at it.

It **never** deletes or replies. It marks mail read or archives it only after you say yes,
or if you've turned that on in your settings.

## Features

- **Unread mode (default):** triages only unread inbox mail, so it suits a daily routine.
- **Inbox zero mode:** say "all" or "inbox zero" to triage the whole inbox. It can also
  archive the Reviewed and Low threads (only with your yes).
- **Covers everything:** the main inbox, Promotions, Social and known noise senders.
- **Clear step:** after tagging, it asks once ("Mark 612 threads as read?") and then
  clears Reviewed and Low, so only High and Medium stay unread. A final check confirms it.
- **Dry run:** say "dry run" to see what it would do without changing anything.
- **Creates the labels for you** if any of the four are missing, colour-coded red, orange,
  blue and grey.
- **Safe to re-run or resume:** threads that already have an Action label are skipped, so a
  run that stops early carries on where it left off.
- **Customisable:** add VIP senders, noise senders and your own rules in a personal
  overrides file that lives outside the repo.

## Requirements

- Claude (claude.ai, the desktop app or Claude Code).
- A Gmail integration Claude can use to **search, read, label and unlabel threads, and
  create labels**. In Claude this is the Gmail connector. In Claude Code, use a Gmail MCP server
  that offers those operations.

## Install

**Claude app (claude.ai or desktop):** open **Customize > Plugins**, select
**Add marketplace**, enter `gareth-c/sort-inbox-priority`, then install
**Sort Inbox Priority**.

**Claude Code:**

```
/plugin marketplace add gareth-c/sort-inbox-priority
/plugin install sort-inbox-priority@sort-inbox-priority
```

Updates, the custom skill zip (for personal overrides in the Claude app) and manual
installs are covered in [docs/INSTALL.md](docs/INSTALL.md).

## Usage

Ask Claude in plain language:

- "Sort my inbox"
- "Triage my unread email"
- "Run sort-inbox-priority on the full inbox, I want inbox zero"
- "Dry run sort-inbox-priority"
- `/sort-inbox-priority` (Claude Code)

You get a short report that accounts for every thread, for example:

> Inbox unread at start: 700. Labelled: High 0 / Medium 2 / Low 26. Reviewed: 640 (306
> Promotions, 62 noise senders). Marked read: 666. Unread now: 2 (both Medium).

Then your High and Medium items, each with one line on what to do.

## Run it every morning

See [docs/SCHEDULING.md](docs/SCHEDULING.md).

## Customise

See [docs/CUSTOMISING.md](docs/CUSTOMISING.md). In short: copy
`skills/sort-inbox-priority/references/overrides.example.md` to
`~/.claude/sort-inbox-priority/overrides.md` (Claude Code) or into your skill zip
(Claude app), and edit it.

## How it decides

The full default rules are in
[skills/sort-inbox-priority/references/rules.md](skills/sort-inbox-priority/references/rules.md).
In summary:

- **High:** security alerts, service failures (payment failed, account suspended), money with a
  near deadline, real people asking you something, travel in the next 72 hours.
- **Medium:** bills to check, school or club admin, deadlines further out, admin that
  needs you to act.
- **Low:** receipts, paid statements, renewals with no change, FYIs.
- **Reviewed:** newsletters, alerts, marketing, delivery updates, review requests and
  reminders for things already past.

## Privacy

Your mail is processed by Claude through your own Gmail connection. This repo has no
server and collects nothing. Your overrides file lives outside the repo, so personal
sender lists never reach GitHub.

## Contributing

Issues and pull requests are welcome, especially new noise senders that are widely
useful and sharper rules. See [CONTRIBUTING.md](CONTRIBUTING.md). Maintainers: see
[docs/PUBLISHING.md](docs/PUBLISHING.md) for releases and the plugin directory.

## Licence

MIT. See [LICENSE](LICENSE).
