---
name: about-me-context
description: Interview the user and build their personal "About Me Context" — 4 markdown files at ~/.claude/about-me/ that make Claude (and any other LLM) understand who the user is, how they write, what to avoid, their work, and their goals. Auto-wires the files into ~/.claude/CLAUDE.md so every Claude Code session inherits the context. Hebrew or English. Triggers on "/about-me", "build my about me", "create about me context", "make Claude understand me", "interview me", "תראיין אותי", "תכין לי about me", "פרופיל אישי לקלוד", "אני רוצה שקלוד יכיר אותי".
version: 1.0.0
---

# About Me Context

Build the user's personal context layer for Claude Code, Codex, and any other LLM. Four short MD files instead of seven long ones. Native Hebrew or English. Anti-AI-tells baked in.

## The mistake this skill fixes

Most people open a fresh Claude Code session in a new folder and start coding (or writing, planning, brainstorming). Claude has no idea who they are, how they write, what they hate, what they're building toward. So Claude defaults to generic, hedged, AI-flavored output. Em-dashes everywhere. "Not just X but Y." Translated Hebrew that sounds like a robot. The user fights the same fight every session.

The fix is one-time: build a small About Me Context, store it at `~/.claude/about-me/`, and reference it from `~/.claude/CLAUDE.md`. Every future session, every folder, inherits it.

**At the start of every run, explain this to the user in plain language and confirm they want to proceed.** Non-coders especially miss this — they think Claude Code is just for coding. It is not. It is the assistant that runs everywhere on their machine, and context makes it 10x better.

## When to invoke

User says any of:
- `/about-me` or "build my about me"
- "create about me context", "תכין לי about me", "פרופיל אישי לקלוד"
- "make Claude understand me", "interview me", "תראיין אותי"
- "אני רוצה שקלוד יכיר אותי"
- "I keep getting generic answers from Claude"

## Required skills

Before generating any Hebrew content, invoke:
- **hebrew-writer** — every Hebrew sentence flows through this. No translation from English thinking.
- **humanizer** — final pass on all generated text, EN or HE, to strip AI tells.

For English content, invoke **humanizer** at the end.

## Workflow

### Phase 0: Orient the user (always run first)

Tell the user, in their language:

1. What this skill does (one sentence: build 4 MD files Claude will read every session).
2. The mistake it fixes (no context = generic answers).
3. The choice: full mode (~45 min, 4 interviews, deepest context) or quick mode (~15 min, one merged interview, lighter context).
4. The language: English or Hebrew.
5. The wiring: skill will add a block to `~/.claude/CLAUDE.md` that imports the 4 files. Confirm OK or skip.

Wait for answers before proceeding.

### Phase 1: Anti-tells contract

Read [references/anti-tells.md](references/anti-tells.md) and apply it to every word you generate from this point on, both during the interview and in the final files. The anti-tells block is also injected into the user's `01-me.md` so future sessions inherit it.

### Phase 2: Interviews

Run the interview prompts from:
- English: [references/interview-prompts-en.md](references/interview-prompts-en.md)
- Hebrew: [references/interview-prompts-he.md](references/interview-prompts-he.md)

Four files, in order:
1. `01-me.md` — identity, writing voice, communication preferences, what to avoid
2. `02-work.md` — career or business (branch based on user role), tech stack if relevant
3. `03-life.md` — daily life, people, energy, constraints (only what affects AI advice)
4. `04-goals-2026.md` — current year focus, real priorities, what would derail

Quick mode collapses all four into one ~15-min interview producing the same four files in shorter form.

Interview rules:
- One question at a time. Wait for the answer.
- Push back on vague answers. "Be specific" is a tool.
- Skip questions the user marks "pass" or "private".
- For Hebrew interviews: speak Hebrew throughout. Use hebrew-writer for every prompt. No English filler.

### Phase 3: Write the files

After each interview section, synthesize the answers into the matching template:
- [templates/01-me.template.md](templates/01-me.template.md)
- [templates/02-work.template.md](templates/02-work.template.md)
- [templates/03-life.template.md](templates/03-life.template.md)
- [templates/04-goals.template.md](templates/04-goals.template.md)

Write to `~/.claude/about-me/`. Filenames numbered as above.

In `01-me.md`, always include the anti-tells block at the bottom under a `## Communication preferences for AI` heading. This is what propagates the rules into future sessions.

### Phase 4: Wire into CLAUDE.md

If the user agreed in Phase 0:

1. Read `~/.claude/CLAUDE.md` (create if missing).
2. Check if an `<!-- about-me-context -->` block already exists. If yes, replace it. If no, append.
3. Inject the block from [templates/CLAUDE.md.injection](templates/CLAUDE.md.injection).

### Phase 5: Verify

Show the user:
- Paths of the 4 files written.
- The CLAUDE.md block (or note that it was skipped).
- One-line "next step": open a new Claude Code session in any folder and notice the difference.

## What NOT to do

- Do not copy Allie K. Miller's vault structure or phrasing. Different doc count, different prompts, different voice.
- Do not use em-dashes anywhere in interview questions or generated files. Use periods, commas, or parentheses.
- Do not use "not X but Y" or "זה לא X אלא Y" patterns.
- Do not open answers with negation ("This is not just...", "זה לא רק...").
- Do not translate from English to Hebrew. Hebrew interviews must be conceived in Hebrew via hebrew-writer.
- Do not pad the interview with pleasantries. Each question earns its place.
- Do not write seven files. Four. Always four.

## Output paths

```
~/.claude/about-me/
  01-me.md
  02-work.md
  03-life.md
  04-goals-2026.md
~/.claude/CLAUDE.md  (block appended/updated)
```

## Files in this skill

- `references/anti-tells.md` — the banned-pattern list, also injected into user files
- `references/interview-prompts-en.md` — English interview scripts, full + quick mode
- `references/interview-prompts-he.md` — Hebrew interview scripts, full + quick mode (run via hebrew-writer)
- `templates/01-me.template.md` through `04-goals.template.md` — output skeletons
- `templates/CLAUDE.md.injection` — the block added to ~/.claude/CLAUDE.md
