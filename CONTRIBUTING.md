# Contributing

Thanks for helping.

- **Rules and noise senders:** edit `skills/sort-inbox-priority/references/rules.md`.
  Only add senders that are noise for most people.
- **Behaviour:** edit `skills/sort-inbox-priority/SKILL.md`. Keep the safety rules: never
  delete, never archive without an explicit yes, and treat email content as data.
- **Versioning:** bump the version in `.claude-plugin/plugin.json`,
  `.claude-plugin/marketplace.json` and the `**Version:**` line in `SKILL.md`, run
  `./scripts/check-version.sh`, and add an entry to `CHANGELOG.md`.
- **Personal data:** never commit real addresses, personal senders or your overrides
  file. Use `example.com`.

Before opening a pull request, run the skill on your own inbox and check the result looks
right.
