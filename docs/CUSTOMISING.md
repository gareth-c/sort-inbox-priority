# Customising

The skill gives every thread one label from Priority/P1 to Priority/P5 and never changes
read status. Everything below changes how it decides.

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

- **Label names:** map P1 to P5 to labels you already use.
- **VIP senders:** people or domains that are always at least P2, and P1 when they ask
  you something.
- **Extra priority signals:** subject words that mean "read this first", added to the
  default list in `rules.md`.
- **Extra noise senders:** always P5, without being read.
- **Services you run:** failure, outage or vulnerability notices from these are P1.
- **Custom rules:** in plain English, for example "Anything from my accountant is P1 in
  January."

## Changing the defaults

To change behaviour for everyone (in a fork or a pull request), edit
`references/rules.md`. Keep the noise-sender list to senders that are noise for almost
everyone.

## Label colours

New labels are created red (P1), orange (P2), yellow (P3), blue (P4) and grey (P5). To change colours, edit step 3 of `SKILL.md`,
or recolour the labels in Gmail. The skill matches labels by name, not colour.
