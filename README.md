# sort-inbox-priority

A Claude skill that sorts your Gmail inbox by priority. It pulls out the mail that looks
like it needs you, reads it, and gives every thread one of five labels:

| Label | Meaning | Examples |
|---|---|---|
| **Priority/P1** | Act today | Check-in open, payment failed, a person waiting on your reply |
| **Priority/P2** | This week | Renewal in 5 days, appointment to confirm, a form to send back |
| **Priority/P3** | Worth reading, no deadline | Personal news, club updates, terms changes |
| **Priority/P4** | Records | Paid receipts, statements, confirmations |
| **Priority/P5** | Noise | Newsletters, alerts, marketing |

Then you work through each label in your own time, starting with P1.

It **never** marks mail read, archives, deletes or replies. The only changes it makes are
creating its five labels and adding one to each thread.

## Features

- **Reads what matters:** mail with priority words in the subject (payment, renewal,
  appointment, check-in, sign-in and so on), your VIP senders, the Primary tab, mail Gmail
  marks important and anything from a real person is opened and read before it gets a
  level, so dates and content decide, not just the subject.
- **Bottom check:** before reporting, it looks back over P4 and P5 and moves up anything
  that needs action.
- **Unread mode (default):** sorts only unread inbox mail, so it suits a daily routine.
  Say "all" or "full inbox" to sort everything in the inbox.
- **Covers everything:** the main inbox, Promotions, Social and known noise senders.
- **Dry run:** say "dry run" to see what it would do without changing anything.
- **Creates the labels for you** if any are missing, coloured red, orange, yellow, blue
  and grey.
- **Safe to re-run or resume:** threads that already have a priority label are skipped,
  so a run that stops early carries on where it left off.
- **Customisable:** add VIP senders, priority words, noise senders and your own rules in a
  personal overrides file that lives outside the repo.

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
- "Sort my whole inbox by priority"
- "Dry run sort-inbox-priority"
- `/sort-inbox-priority` (Claude Code)

You get a short report that accounts for every thread, for example:

> Inbox unread: 656. Sorted: P1 4 / P2 11 / P3 38 / P4 142 / P5 461. All still unread.

Then your P1, P2 and P3 items, each with one line on what to do, and a line each
summarising P4 and P5.

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
Each thread gets the highest level it qualifies for:

- **P1:** would waiting until tomorrow cost money or access, or leave someone waiting?
  Security alerts, failed payments, travel in the next 72 hours, money due within 3 days,
  a person asking you something.
- **P2:** does it need you to act within about 14 days? Renewals, bills to review,
  appointments, forms, booking requests.
- **P3:** would you want to read it, even though nothing is due? Personal news, club
  updates, later deadlines.
- **P4:** would you only ever look it up later? Receipts, statements, confirmations.
- **P5:** could you delete it unread? Newsletters, alerts, marketing.

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
