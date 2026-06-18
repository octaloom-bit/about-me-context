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

`CLAUDE.md` הוא המוח של קלוד: קובץ שהוא קורא בכל פעם שהוא נפתח. יש שני סוגים, ושניהם נטענים יחד:

- **הגלובלי, `~/.claude/CLAUDE.md`:** חי בתיקיית הבית שלכם, מחוץ לכל פרויקט. קלוד קורא אותו בכל סשן ובכל תיקייה במחשב. **כאן יושב המוח שלכם** (שורות ה-`@` מושכות את 4 הקבצים פנימה אוטומטית), ולכן הוא מלווה אתכם לכל מקום.
- **הרגיל, `CLAUDE.md` של תיקייה:** חי בתוך פרויקט מסוים ונטען רק כשעובדים בו. הוא מחזיק עובדות על אותו פרויקט, **ואין בו את המוח שלכם**. ולא צריך, כי הגלובלי כבר מכסה אתכם בכל מקום.

לכן הקבצים יושבים פעם אחת ב-`~/.claude/about-me/` ומכסים את כל התיקיות. הסקיל יוצר את הגלובלי אם אין לכם, או מוסיף אליו בלוק קטן אם כבר קיים.

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

**הדרך הקלה (בלי טרמינל):** פותחים קלוד קוד ומדביקים:

```
התקן לי את הסקיל מ-https://github.com/octaloom-bit/about-me-context
```

קלוד מוריד ומתקין לבד. זהו.

**אופציה א' (טרמינל):**

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

## שאלות נפוצות

**הקלדתי `/about-me` ולא קרה כלום.** סגרו ופתחו מחדש את קלוד קוד אחרי ההתקנה, כדי שיטען את הסקיל. ודאו שהוא יושב ב-`~/.claude/skills/about-me-context/`. עדיין לא? כתבו לקלוד ״תריץ את הסקיל about-me-context״.

**אין לי git או טרמינל.** פותחים קלוד קוד ומדביקים: ״התקן לי את הסקיל מ-https://github.com/octaloom-bit/about-me-context״. קלוד מוריד ומתקין לבד.

**כבר יש לי `CLAUDE.md`. ההתקנה תדרוס אותו?** לא. הסקיל מוסיף בלוק קטן בתחתית הקובץ, בין שני סימונים, ולא נוגע בשאר. אם אין קובץ, הוא ייצר אחד.

**איך אני יודע שזה עבד?** פתחו סשן חדש בכל תיקייה ושאלו ״מה אתה יודע עליי?״. אפשר גם לבדוק שנוצרו קבצים ב-`~/.claude/about-me/`.

**אפשר לערוך או להתחיל מחדש?** כן. הקבצים הם טקסט פשוט ב-`~/.claude/about-me/`: עורכים ושומרים, או מריצים שוב `/about-me`.

**צריך מנוי בתשלום?** הסקיל רץ בתוך קלוד קוד, שדורש מנוי Claude. הפרומפטים עצמם חינמיים ועובדים בכל כלי AI.

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

`CLAUDE.md` is Claude's brain: a file it reads every time it opens. There are two kinds, and both load together:

- **The global one, `~/.claude/CLAUDE.md`:** lives in your home folder, outside any project. Claude reads it in every session, in every folder on your machine. **This is where your brain lives** (the `@` lines pull the 4 files in automatically), so it follows you everywhere.
- **The regular one, a folder's `CLAUDE.md`:** lives inside a specific project and only loads when you work in it. It holds facts about that project, **and it does not contain your brain**. It doesn't need to, because the global one already covers you everywhere.

So the files sit once in `~/.claude/about-me/` and cover every folder. The skill creates the global file if you don't have one, or adds a small block to it if you do.

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

### Easiest (no terminal): just ask Claude

Open Claude Code and paste:

```
install the skill for me from https://github.com/octaloom-bit/about-me-context
```

Claude downloads and installs it itself. That's it.

### Option A: terminal installer

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

## FAQ

**I typed `/about-me` and nothing happened.** Close and reopen Claude Code after installing, so it loads the skill. Make sure it sits in `~/.claude/skills/about-me-context/`. Still nothing? Tell Claude "run the about-me-context skill".

**I don't have git or a terminal.** Open Claude Code and paste: "install the skill for me from https://github.com/octaloom-bit/about-me-context". Claude downloads and installs it itself.

**I already have a `CLAUDE.md`. Will this overwrite it?** No. The skill adds a small block at the bottom of the file, between two markers, and never touches the rest. If there's no file, it creates one.

**How do I know it worked?** Open a new session in any folder and ask "what do you know about me?". You can also check that files were created in `~/.claude/about-me/`.

**Can I edit it or start over?** Yes. The files are plain text in `~/.claude/about-me/`: edit and save, or run `/about-me` again.

**Do I need a paid plan?** The skill runs inside Claude Code, which needs a Claude subscription. The prompts themselves are free and work in any AI tool.

## Maintenance

- Re-run the goals prompt every quarter. Goals move fast.
- Re-run the work prompt whenever your role, product, or stack changes.
- Re-run the identity prompt once a year, or sooner if Claude starts missing your voice.

## Credit

Built by [Hanita Yudovski](https://octaloom.com), OctaLoom. The manual version of this process is the free guide at [octagoodies.com/about-me-context](https://www.octagoodies.com/about-me-context/).

## License

MIT. See [LICENSE](LICENSE).
