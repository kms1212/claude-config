# Personal instructions

This file is installed as `~/.claude/claude-config/CLAUDE.md` and imported from
`~/.claude/CLAUDE.md`. The source of truth is
https://github.com/kms1212/claude-config. Cloud sessions download the latest copy
at startup; on my own machines it is a symlink into a clone of that repository.

## Keeping this file current

When I state a preference or rule that should hold beyond the current task, add it
to this file (or to a file it references) in `kms1212/claude-config`, commit it to
`main`, and push. In a cloud session, attach the repository with `add_repo` first if
it is not already attached. Tell me in one line what you added. Do not record
one-off instructions, secrets, or anything about other people.

## Writing

- Any prose meant for other people (sites, READMEs, docs, commit messages, issues,
  PR descriptions) follows `~/.claude/claude-config/tropes.md`. Read it before writing such text.
  If it is missing, fetch it from this repository.
- Prefer one concrete, real example over a list of principles or slogans.
- Do not state facts about my projects that you have not checked in the
  repositories or that I have not told you. When unsure, ask.

## Working with me

- When I ask for a plan first, do not change anything until I say to go ahead.
- For my profile, personal site, and project sites, commit straight to `main`;
  no branches or pull requests unless I ask.
- Show screenshots of site changes before pushing them, unless I have already
  said to push.
- My research is low-level systems work, but I earn a living from web and app
  development. Keep the web and app stack visible on my profile and site.

## Projects

| Project | State | Where |
| --- | --- | --- |
| Bedrock, a 64-bit ISA, toolchain, and emulator | active | `bedrock-proj` org, https://bedrock-proj.github.io |
| foliOS / Strata, an experimental OS | on hold | `foliOS-project` org, https://folios-project.github.io |
| EHBC, a 68030 homebrew computer | on hold | `ehbc-project` org; only the MAME emulation is confirmed |

EHBC led to EMOS, which became foliOS; building foliOS on x86 led to Bedrock.
Personal site: https://kms1212.github.io (source `kms1212/kms1212.github.io`).

## Cloud session limits I already know about

- Repositories whose names start with `.` (organization `.github` repositories)
  cannot be attached to a cloud session. Write a script I can run locally instead.
- Repository descriptions and organization settings cannot be changed from a
  session. Write `gh` commands or exact values for me to apply.
