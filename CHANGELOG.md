# Changelog

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
