# Interview Prompts (English)

Run one question at a time. Wait for answer. Push for specifics. Skip when user says "pass" or "private". Apply anti-tells.md to every word you generate.

---

## File 1 — `01-me.md` (identity, voice, what to avoid)

Open with: "We are building the file Claude reads first. Identity, how you write, what you cannot stand. Ten to twelve minutes. Ready?"

### A. Quick identity
1. Name and what you go by in different settings (work / family / online).
2. Where you live and where you are from. Does it matter for advice?
3. One sentence: who you are professionally, in plain language a 10-year-old would get.

### B. How you write
4. Paste a 200-word sample of your own writing (any context: email, post, doc, message).
5. Paste an AI answer you recently fixed or hated, and say in one line what was wrong with it.
6. Words or phrases you would never use. Why.
7. Words or phrases you secretly love. Why.
8. Formality default: formal, casual, slang, code-switch?

### C. How to work with you
9. When something is unclear to Claude, what do you prefer: it asks a focused question, proposes a direction then checks, or guesses and lets you correct?
10. Tone you cannot stand from an assistant (sycophancy, hedging, over-explaining, lectures). Be specific.

### D. Constraints Claude must respect
11. Topics you do not want Claude to bring up unprompted.
12. Anything about your gender, pronouns, identity that affects how text addresses you.
13. Languages you work in. Default language. When to switch.
14. Anything else Claude should know about you that does not fit a category above.

When done: synthesize into `01-me.md` template. Append the anti-tells communication-preferences block at the bottom.

---

## File 2 — `02-work.md` (career or business)

Open with: "Now your work. Branch one: employee or executive in an org. Branch two: founder, freelancer, business owner. Which?"

### Branch A — Employee / executive
1. Title and what you actually do day to day (not what HR says).
2. Who you report to. Who reports to you.
3. The main decision you are responsible for in your role.
4. A successful week: what is in it.
5. A bad week: what is in it.
6. What you are unusually good at. What you avoid.
7. The hardest part of your job right now.
8. Where you want to be in two years.
9. The skill you keep telling yourself you should learn.

### Branch B — Founder / freelancer / business owner
1. What your business does, in one sentence a stranger gets.
2. Who pays you and what they pay for.
3. Revenue stage and how long you have been running it.
4. Stack and tools you actually use (relevant for Claude Code).
5. The bottleneck right now.
6. The thing you keep avoiding that you know you should do.
7. Top three wins last 12 months.
8. Top three failures last 12 months.
9. Where the business is in 12 months if it goes well.
10. The honest reason you are building this.

### Tech stack add-on (run for both branches if user codes at all)
11. Languages and frameworks you use most.
12. Where you store code (folders on disk, GitHub, monorepo).
13. Style preferences Claude must follow (formatter, naming, comment style, test framework).
14. Things you have caught Claude doing wrong before that you want stopped.

---

## File 3 — `03-life.md` (life context that affects AI advice)

Open with: "Skip anything that feels too personal. We only need what helps Claude give better advice."

1. Who lives with you. Ages if relevant.
2. A weekday morning, a weekday evening, a weekend in three sentences.
3. Health or energy reality Claude should factor in (chronic, ND, sleep, anything affecting capacity).
4. The two or three people whose opinion you weigh heaviest.
5. What gives you energy. What drains you.
6. Hard constraint on time (school pickup, prayer, work hours, caregiving).
7. Hard constraint on money (runway, big payments, savings goal).
8. When in your day or week you are sharpest for hard work, and when energy drops.
9. What "a good month" actually looks like for you.

---

## File 4 — `04-goals-2026.md` (current year)

Open with: "Last one. Goals for 2026. Real ones."

1. The theme word or sentence for your year.
2. The one outcome that, if it happens, the year was worth it.
3. The outcome that, if it does not happen, the year failed.
4. Top three professional goals. Specific. Measurable.
5. Top one personal goal you actually care about.
6. The goal on your list that you do not really care about. Mark it.
7. The goal you are most likely to self-sabotage. Why.
8. What you will say no to this year.
9. The quarterly check-in question Claude should ask you.

---

## Quick mode (single 15-min interview, all four files)

If user picked quick mode, run this compressed script and split answers into the four files at the end.

1. Name, location, one-line who you are.
2. Paste 100-word writing sample.
3. Three things you hate in AI-generated text.
4. Default language and gender for Hebrew.
5. What you do for work in one sentence. Stack/tools if relevant.
6. The biggest thing on your plate this quarter.
7. One hard constraint on your time.
8. One hard constraint on your money.
9. The 2026 outcome that matters most.
10. The 2026 goal you are most likely to abandon.
11. Anything Claude should never bring up.
12. Anything you want Claude to bring up more often.
