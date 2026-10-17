# claude-config

My Claude Code instructions, shared between local machines and cloud sessions.

- `CLAUDE.md`: personal instructions, installed under `~/.claude/claude-config/` and imported from `~/.claude/CLAUDE.md`
- `tropes.md`: AI writing patterns to avoid, from [tropes.fyi](https://tropes.fyi) by [ossama.is](https://ossama.is)

## Cloud sessions

Put this in the environment's Setup script:

```sh
curl -fsSL https://raw.githubusercontent.com/kms1212/claude-config/main/setup-cloud.sh | sh
```

Each new session then starts with the latest files. An existing `~/.claude/CLAUDE.md` is kept; the script only appends an import line.

## Local machines

```sh
git clone https://github.com/kms1212/claude-config ~/src/claude-config
~/src/claude-config/install-local.sh
```

`git pull` in the clone picks up changes that sessions have pushed.
