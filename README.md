# about-me-context

A Claude Code skill that runs one interview, builds four short markdown files at `~/.claude/about-me/`, and wires them into `~/.claude/CLAUDE.md`. From then on, every Claude Code session in every folder inherits who you are, how you write, what you are working on, and what to avoid.

Build it once. Claude stops giving generic answers and starts sounding like your second brain.

Works in Hebrew or English. The anti-AI-tells rules are baked in, so the output does not read like a chatbot.

## What it builds

```
~/.claude/about-me/
  01-me.md            who you are, how you write, what to avoid
  02-work.md          your work, your stack, your decisions
  03-life.md          the constraints Claude should know
  04-goals-2026.md    what you are really building this year
~/.claude/CLAUDE.md   one wiring block that auto-loads the four files
```

## Install

### Option A: installer (recommended)

```bash
git clone https://github.com/octaloom-bit/about-me-context.git
cd about-me-context
bash install.sh
```

The installer copies the skill into `~/.claude/skills/about-me-context/`. It never overwrites your `~/.claude/about-me/` files or your `CLAUDE.md`. The skill itself handles those, with your confirmation, when you run it.

### Option B: manual

```bash
mkdir -p ~/.claude/skills
cp -R about-me-context ~/.claude/skills/
```

## Use

Open Claude Code in any folder and say:

```
/about-me
```

or "build my about me", "interview me", "תראיין אותי", "תכין לי about me".

The skill orients you first, asks one question at a time, then writes the four files and offers to wire them into `CLAUDE.md`.

## Other LLMs

The four files are plain markdown. Paste `01-me.md` into the system prompt or custom instructions of ChatGPT, Gemini, or Codex, and bring the others in as needed.

## Maintenance

- Re-run the goals prompt every quarter. Goals move fast.
- Re-run the work prompt whenever your role, product, or stack changes.
- Re-run the identity prompt once a year, or sooner if Claude starts missing your voice.

## Credit

Built by [Hanita Yudovski](https://octaloom.com), OctaLoom. The manual version of this process is the free guide at [octagoodies.com/about-me-context](https://www.octagoodies.com/about-me-context/).

## License

MIT. See [LICENSE](LICENSE).
