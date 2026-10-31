# Customising

The goal of the skill is zero unread: after a run, only High and Medium threads are unread.
Everything below changes how it gets there.

## Your personal overrides file

Your overrides hold personal details (VIP senders, services you run), so they live
outside this repo and are never committed. Start from
`skills/sort-inbox-priority/references/overrides.example.md`.

### Claude Code

```
mkdir -p ~/.claude/sort-inbox-priority
cp skills/sort-inbox-priority/references/overrides.example.md ~/.claude/sort-inbox-priority/overrides.md
```

Edit `~/.claude/sort-inbox-priority/overrides.md`. It survives plugin upgrades.

### Claude app

The Claude app plugin uses the default rules. For your own overrides, use the custom
skill zip instead ([INSTALL.md](INSTALL.md)). The build script adds your file to the zip as
`references/overrides.md`:

```
./scripts/build-zip.sh ~/path/to/my-overrides.md
```

Upload the zip that the script writes to `dist/`. Keep your overrides file outside the repo.

## What you can set

- **Label names:** map to labels you already use, including `reviewed_label` for the
  no-action label (default `Action/Reviewed`).
- **Clearing:** `clear_mode` is `ask` (default; asks once with counts), `read`, `archive`
  or `off`. `mark_low_read: false` keeps Low threads unread alongside High and Medium.
  Scheduled runs only clear with `read` or `archive`.
- **VIP senders:** people or domains that are always at least Medium, and High when they
  ask you something.
- **Extra noise senders:** tagged Reviewed straight away, without being read.
- **Services you run:** vulnerability or outage notices from these count as High.
- **Custom rules:** in plain English, for example "Anything from my accountant is High in
  January."

## Changing the defaults

To change behaviour for everyone (in a fork or a pull request), edit
`references/rules.md`. Keep the noise-sender list to senders that are noise for almost
everyone.

## Label colours

New labels are created red, orange, blue and grey (Reviewed, shown in the label list only
when it has unread mail). To change colours, edit step 3 of `SKILL.md`,
or just recolour the labels in Gmail. The skill matches labels by name, not colour.
