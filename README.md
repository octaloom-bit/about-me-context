# about-me-context

**עברית** · [English below ↓](#english)

סקיל ל-Claude Code שמריץ ראיון אחד, בונה 4 קבצי markdown קצרים ב-`~/.claude/about-me/`, ומחבר אותם ל-`~/.claude/CLAUDE.md`. מהרגע הזה, כל סשן קלוד קוד בכל תיקייה יורש מי אתם, איך אתם כותבים, על מה אתם עובדים, וממה להימנע.

בונים פעם אחת. קלוד מפסיק לתת תשובות גנריות ומתחיל להישמע כמו המוח השני שלכם.

עובד בעברית או באנגלית. כללי האנטי-טון מובנים בפנים, כך שהפלט לא נשמע כמו צ'אטבוט.

## מה זה בונה

```
~/.claude/about-me/
  01-me.md            מי אתם, איך אתם כותבים, וממה להימנע
  02-work.md          העבודה שלכם, הסטאק, ההחלטות
  03-life.md          המגבלות שקלוד צריך לדעת
  04-goals-2026.md    מה אתם באמת בונים השנה
~/.claude/CLAUDE.md   בלוק חיווט אחד שטוען את 4 הקבצים אוטומטית
```

## איך זה עובד

- **`~/.claude/CLAUDE.md` (גלובלי):** קלוד קוד קורא אותו בתחילת כל סשן, בכל תיקייה במחשב. ה-`@` בשורות החיווט הוא import: הוא מושך את התוכן המלא של 4 הקבצים לתוך ההקשר, אוטומטית.
- **`CLAUDE.md` של תיקייה (פרויקט):** נטען בנוסף לגלובלי, לא במקומו. הגלובלי = מי אתם, בכל מקום. של הפרויקט = עובדות על אותו פרויקט ספציפי. השניים מצטברים בכל סשן.
- לכן הקבצים יושבים פעם אחת ב-`~/.claude/about-me/` ומכסים את כל התיקיות. לא צריך להעתיק אותם לכל פרויקט.

בלוק החיווט שנכנס ל-`CLAUDE.md`:

```
<!-- about-me-context:start -->
# About Me Context (auto-loaded)

@~/.claude/about-me/01-me.md
@~/.claude/about-me/02-work.md
@~/.claude/about-me/03-life.md
@~/.claude/about-me/04-goals-2026.md
<!-- about-me-context:end -->
```

## התקנה

**אופציה א' (מומלצת):**

```bash
git clone https://github.com/octaloom-bit/about-me-context.git
cd about-me-context
bash install.sh
```

ה-installer מעתיק את הסקיל ל-`~/.claude/skills/about-me-context/`. הוא לא דורס את הקבצים שלכם ב-`~/.claude/about-me/` ולא את ה-`CLAUDE.md`. הסקיל עצמו מטפל בהם, באישור שלכם, כשמריצים אותו.

**אופציה ב' (ידני):**

```bash
mkdir -p ~/.claude/skills
cp -R about-me-context ~/.claude/skills/
```

## הפעלה

פותחים קלוד קוד בכל תיקייה ומקלידים:

```
/about-me
```

או ״תראיין אותי״, ״תכין לי about me״, ״build my about me״.

הסקיל מסביר לכם קודם מה הולך לקרות, שואל שאלה אחת בכל פעם, ואז כותב את 4 הקבצים ומציע לחווט אותם ל-`CLAUDE.md`.

## מודלים אחרים

4 הקבצים הם markdown רגיל. אפשר להדביק את `01-me.md` ל-system prompt או ל-custom instructions של ChatGPT, Gemini או Codex, ולהביא את השאר לפי הצורך.

## תחזוקה

- מריצים מחדש את פרומפט היעדים כל רבעון. יעדים זזים מהר.
- מריצים מחדש את פרומפט העבודה כשהתפקיד, המוצר או הסטאק משתנים.
- מריצים מחדש את פרומפט הזהות פעם בשנה, או מוקדם יותר אם קלוד מתחיל לפספס את הקול שלכם.

## קרדיט

נבנה על ידי [חניתה יודובסקי](https://octaloom.com), OctaLoom. הגרסה הידנית של התהליך היא המדריך החינמי ב-[octagoodies.com/about-me-context](https://www.octagoodies.com/about-me-context/).

## רישיון

MIT. ראו [LICENSE](LICENSE).

---

<a name="english"></a>

# about-me-context (English)

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

## How it works

- **`~/.claude/CLAUDE.md` (global):** Claude Code reads it at the start of every session, in every folder on your machine. The `@` in the wiring lines is an import: it pulls the full content of the 4 files into context, automatically.
- **A folder's `CLAUDE.md` (project):** loads in addition to the global one, not instead of it. Global = who you are, everywhere. Project = facts about that specific project. The two stack in every session.
- So the files sit once in `~/.claude/about-me/` and cover every folder. No need to copy them into each project.

The wiring block that goes into `CLAUDE.md`:

```
<!-- about-me-context:start -->
# About Me Context (auto-loaded)

@~/.claude/about-me/01-me.md
@~/.claude/about-me/02-work.md
@~/.claude/about-me/03-life.md
@~/.claude/about-me/04-goals-2026.md
<!-- about-me-context:end -->
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
