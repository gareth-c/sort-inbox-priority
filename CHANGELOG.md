# Changelog

## 2026-10-31 (2.0.0)

Summary: Mail is now sorted into five priority labels, P1 to P5, the mail that needs action is read before it's sorted, and read status is never changed.

### Added
- Five labels, Priority/P1 (act today) to Priority/P5 (noise), each with a plain test question, so every thread gets a real priority instead of most landing in one "no action" pile.
- Find-priorities step: likely action mail (priority subject words, VIP senders, the Primary tab, mail Gmail marks important, real people and conversations) is pulled out first and opened before it gets a level, using its date and content rather than the subject alone.
- Bottom check: before reporting, the skill looks over everything it put in P4 and P5 and moves up anything that needs action.
- Priority signal words in the default rules, and extra signal words in the overrides file.

### Changed
- The report gives a count for each of the five labels, lists P1, P2 and P3, and summarises P4 and P5 in a line each.
- VIP senders are at least P2, and P1 when they ask something; a real person is never P4 or P5.
- README, install, customising, scheduling and contributing guides describe the five labels and say that read status is never changed.

### Removed
- The clear step and its settings: the skill no longer marks mail read or archives it. Everything stays unread for you to work through.
- The four Action labels. Threads that still carry them are sorted again into P1 to P5; the old labels are left for you to delete.

## 2026-10-31 (1.2.0)

Summary: The skill now says which version is running and what it's about to do before it starts.

### Added
- Start message: before changing anything, the skill says its name and version, the mode, roughly how many threads it will look at, and what it will do with them, including whether it will ask before marking mail read.
- Version number shown in the skill, with a check script that makes sure it matches the plugin manifests and runs during the zip build.

## 2026-10-31 (1.1.0)

Summary: Runs now end at zero unread, apart from the High and Medium to-do list.

### Added
- Fourth label, Action/Reviewed, for threads that were checked and need no action, so re-runs only see new mail.
- Clear step that marks Reviewed and Low threads as read (and, in full inbox mode, can archive them), after asking once with counts.
- Settings for the Reviewed label name, how clearing works (ask, read, archive or off) and whether Low threads are cleared.
- Final check that only High and Medium threads are left unread, with the reason given if not.
- Dry-run mode that reports what would change without changing anything.
- Eval scenario: a 600-thread sample inbox with Promotions, noise senders and trap emails, graded on full accounting, priorities and safety.
- README, customising, scheduling and install guides describe the four labels, the clear step and the zero-unread goal.

### Changed
- Promotions, Social and noise-sender mail is now covered too, so every thread in the inbox gets a label.
- The report accounts for every thread: unread at start, each label, how many were marked read and how many are still unread.
- Label and mark-read calls run in parallel batches, and partial progress is reported honestly if a run stops early.

## 2026-10-31 (1.0.0)

Summary: First release (1.0.0) of the Gmail triage skill and plugin.

### Added
- Gmail triage skill that tags threads as Action/High, Medium or Low Priority and leaves the rest untagged.
- Unread mode (default) and full inbox mode for inbox zero, with archiving offered only after a clear yes.
- Shows as "Sort Inbox Priority" in plugin lists, with its own icon.
- Creates the three priority labels, colour-coded, if they are missing.
- Default triage rules and a short list of common noise senders.
- Personal overrides file, kept outside the repo, for label names, VIP senders, noise senders and custom rules.
- Searches walk back through date windows so large inboxes are fully covered, and already-tagged threads are skipped.
- Clear messages when Gmail isn't connected or a search, label creation or labelling call fails, and labels are never reported as applied unless they were.
- README, customising, scheduling and contributing guides.
- Install guide for the Claude app and Claude Code plugin marketplace, plus a publishing guide for maintainers.
- Script that builds the skill zip for uploading to the Claude app, optionally including your overrides.
