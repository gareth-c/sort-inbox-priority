# sort-inbox-priority

A Claude skill that triages your Gmail inbox. It reads your mail, works out what actually
needs you, and tags each of those threads with one of three labels:

| Label | Meaning |
|---|---|
| **Action/High Priority** | Act today. Ignoring it has a real cost. |
| **Action/Medium Priority** | Deal with it this week. |
| **Action/Low Priority** | Glance and file. |
| *(no label)* | Doesn't need reading: newsletters, alerts, marketing. |

On its first run in a real inbox it took about 670 unread threads down to 29 worth opening.

It **never** deletes, archives, marks as read or replies unless you ask it to.

## Features

- **Unread mode (default):** triages only unread inbox mail, so it suits a daily routine.
- **Inbox zero mode:** say "all" or "inbox zero" to triage the whole inbox. Afterwards it
  offers to archive everything left untagged (only with your yes).
- **Creates the labels for you** if `Action/High Priority`, `Action/Medium Priority` or
  `Action/Low Priority` are missing, colour-coded red, orange and blue.
- **Safe to re-run:** threads that already have an Action label are skipped.
- **Customisable:** add VIP senders, noise senders and your own rules in a personal
  overrides file that lives outside the repo.

## Requirements

- Claude (claude.ai, the desktop app or Claude Code).
- A Gmail integration Claude can use to **search, read and label threads, and create
  labels**. In Claude this is the Gmail connector. In Claude Code, use a Gmail MCP server
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
- `/sort-inbox-priority` (Claude Code)

You get a short report: the counts per label, then your High and Medium items, each with
one line on what to do.

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

- **High:** security alerts, service failures (storage full, payment failed), money with a
  near deadline, real people asking you something, travel in the next 72 hours.
- **Medium:** bills to check, school or club admin, deadlines further out, admin that
  needs you to act.
- **Low:** receipts, paid statements, renewals with no change, FYIs.
- **Untagged:** newsletters, alerts, marketing, delivery updates, review requests and
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
