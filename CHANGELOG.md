# Changelog

## 2026-10-31

Summary: First release (1.0.0) of the Gmail triage skill and plugin.

### Added
- Gmail triage skill that tags threads as Action/High, Medium or Low Priority and leaves the rest untagged.
- Unread mode (default) and full inbox mode for inbox zero, with archiving offered only after a clear yes.
- Shows as "Sort Inbox Priority" in plugin lists.
- Creates the three priority labels, colour-coded, if they are missing.
- Default triage rules and a short list of common noise senders.
- Personal overrides file, kept outside the repo, for label names, VIP senders, noise senders and custom rules.
- Searches walk back through date windows so large inboxes are fully covered, and already-tagged threads are skipped.
- Clear messages when Gmail isn't connected or a search, label creation or labelling call fails, and labels are never reported as applied unless they were.
- README, customising, scheduling and contributing guides.
- Install guide for the Claude app and Claude Code plugin marketplace, plus a publishing guide for maintainers.
- Script that builds the skill zip for uploading to the Claude app, optionally including your overrides.
