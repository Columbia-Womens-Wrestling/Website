# CLAUDE.md — Columbia Women's Wrestling Club Website

*Last updated: 2026-06-06 (Session 5)*

---

## Project Overview

Static website for the Columbia Women's Wrestling Club (CWWC). Migrating from Square (`columbiawomenswrestling.square.site`) to a self-hosted, version-controlled site deployed on Vercel.

**Repo:** github.com/Columbia-Womens-Wrestling/Website
**Deployment:** Vercel (Hobby, free) — auto-deploys on push to main
**Live URL:** TBD (pending Vercel connection)
**Vercel account:** miacollins518@gmail.com — transfer to club email when available

---

## Tech Stack

- **HTML/CSS/JS** — vanilla, no build step
- **Bootstrap 5** — CDN, layout and components
- **Vercel** — hosting and deployment
- **schedule.json** — flat file CMS for the schedule page

No npm, no bundler, no framework. Keep it simple — any future team member should be able to open a file and edit it.

---

## File Structure

```
/
├── CLAUDE.md
├── index.html             ← Home (built)
├── schedule.html          ← Schedule (not built yet)
├── leadership.html        ← Leadership (not built yet)
├── gallery.html           ← Gallery (not built yet)
├── join.html              ← Join & Support (not built yet)
├── schedule.json          ← (not created yet)
├── css/
│   └── style.css          ← custom styles (built)
├── js/
│   └── schedule.js        ← (not created yet)
└── img/
    ├── crown.svg          ← Columbia crown (Wikipedia CC BY-SA 4.0)
    ├── hero.jpg           ← IMG_3028 from Fall 2025 Media Day (converted from HEIC)
    ├── team.jpg           ← IMG_7939 — 2026 Club Nationals awards, 2nd Place, The Palestra
    ├── bri-csontos.png       ← athlete card photo (landscape 1804×1506 — note CSS uses fixed height)
    ├── maya-letona.png       ← athlete card photo (compete version, portrait 1386×1798)
    ├── maya-letona-leader.png← leadership headshot (use for leadership page)
    ├── arian-carpio.png      ← athlete card photo (portrait 1384×1868)
    ├── emma-randall.png      ← head coach photo (nearly-square 1738×1632), used in combined section
    ├── alt-hero-1.JPG        ← alternate hero candidate (local only — consider for later)
    ├── alt-hero-2.HEIC       ← alternate hero candidate (local only)
    ├── leadership/           ← (empty — headshots needed)
    └── gallery/              ← (empty — photos needed)
```

---

## Pages

| Page | File | Status | Notes |
|---|---|---|---|
| Home | index.html | **Built** | Revision 3 complete (Session 5) |
| Schedule | schedule.html | Not started | Needs fall 2026 schedule from coach |
| Leadership | leadership.html | **Built** | Session 5 — coaches + captains + board |
| Gallery | gallery.html | Not started | Needs photos |
| Join & Support | join.html | Not started | Needs recruit form fields + donate info |
| Roster | — | **BLOCKED** | Pending coach meeting — Google Form + privacy |

---

## Design System

### Official Columbia University Pantone Colors

| Role | Name | Hex | Pantone |
|---|---|---|---|
| Primary | Primary Blue | `#1D4F91` | 7686C |
| Dark bg / nav | Secondary Blue 1 | `#003087` | 287C |
| Buttons / CTA | Secondary Blue 2 | `#0077C8` | 3005C |
| Accents / labels | Secondary Blue 3 | `#6CACE4` | 284C |
| Body text | Neutral 1 | `#222222` | Neutral Black C |
| Secondary text | Neutral 2 | `#53565A` | Cool Gray 11C |
| Borders | Neutral 3 | `#D0D0CE` | Cool Gray 2C |
| Light bg | Neutral 4 | `#F0F0F0` | Anti-flash White |

### Layout Conventions
- **Font:** system-ui / -apple-system / Segoe UI — no Google Fonts
- **Mobile-first** — most visitors are prospective recruits on phones
- **Crown:** `img/crown.svg` used as decorative element (nav, hero watermark, stats watermark, CTA corners)

### Current index.html Section Order
1. Sticky nav (dark `#003087`, Columbia Blue accent bar, crown in brand)
2. Hero — full-vh, alt-hero-2 (Levien Gym team photo, 1600×1000, top 200px cropped), "The Mat. The Ivy.", 2 CTAs; `background-position: center 65%` to pull team (lower portion) into frame. Backup: `hero-media-day.jpg` = IMG_3028 media day photo (singlets, fierce pose) — swap back any time
3. Stats — full section `#1D4F91` bg, crown watermark, 4 stats (2020 / 35+ / 2nd Nationals / 100+)
4. **Combined "Who We Are + Why CWWC"** — white bg, 2 rows separated by `<hr>`:
   - Row 1: mission text (left) + team photo with vignette (right)
   - Row 2: coach intro + emma-randall.png (left) + 4 pillar cards (right)
5. Our Trailblazers — dark `#222222`, header/lead + 3 athlete photo cards (Bri, Maya, Arian) with blue hover glow
6. History Timeline — `#1D4F91` blue bg, 3 milestone badges with connecting line graphic
7. Split CTA — Columbia Blue (recruit) + dark navy (donate)
8. Footer — `#222222`, Columbia Blue top border

### CSS Key Classes Added (Sessions 3–4)
- `.athlete-card-with-photo` — hover glow + lift effect
- `.athlete-photo` — fixed 280px height, `object-position: center 15%` (favors upper/face)
- `.athlete-card-body` — border-top accent, flex-grows
- `.photo-block--vignette` — radial-gradient vignette via `::after` pseudo-element
- `.section-divider` — thin rule between combined section rows
- `.section-subheading` — smaller h2 for sub-section headings
- `.coach-photo-block` — photo block for coach portrait in combined section
- `.history-timeline-section` — full blue section, `var(--blue-primary)` bg
- `.timeline-row`, `.timeline-milestone`, `.timeline-year` — timeline graphic with connecting line (hidden on mobile, becomes left-border list)

---

## Key Content

### Coach
Emma Randall — Head Women's Coach, NYC Regional Training Center + Columbia. Former Beat the Streets NYC program director. USA Wrestling Gold level coaching certification (one of <100 in the US). B.A. + M.S. Sports Psychology, Lock Haven. Competed at national level. Founding board member, Wrestle Like A Girl. Advisory board, Sports Bra Project. Division I Women's Wrestling committee member.

### Captains (2026–2027 — confirm with coach)
- **Kaylie Musard** — Captain. Junior, SEAS, Biomedical Engineering-Biomechanics. 7 years wrestling. Zeta Phi Beta (Upsilon Phi Chapter). Columbia EMS. Sanat Kumar Lab. Intramural Council.
- **Ceci Reitter** — Captain (updated from Resource Hub doc)
- **Kira Pipkins** — 4x NJ State Champion. NWHOF Tricia Saunders Award. (confirm if still captain)

### Leadership Page Also Needs
- Add Maya Letona (CC '24, now assistant coach per Resource Hub)
- Update board members: President Lyric Nelson, VP Anjali Mignone, Secretary Mia Collins, Treasurer Ivy Andersen, Safety Officer Noa Omessi

### Mission Stats (home page)
- Athletes from **46 states**
- **35+** athletes training 4–6 days/week
- **100+** Recruit Me submissions for Class of 2026
- **13+** competitions per season (mirrors D1)
- Founded **2020**

### Notable Athletes (History section)
- **Arian Carpio** (GS '26) — Philippines at World Team + Olympic Qualifiers, Paris 2024
- **Maya Letona** (CC '24) — U.S. Senior National Team, U.S. Olympic Trials
- **Bri Csontos** (CC '23) — U20 National Team, Pan American Gold, Outstanding Wrestler

Columbia was the **only non-varsity program** among 20 collegiate teams at the 2024 U.S. Olympic Trials.

### No Sponsors
No sponsors on any page — confirmed decision.

---

## Photo Assets

### In `img/` (committed)
| File | Source | Description |
|---|---|---|
| `crown.svg` | Wikipedia CC BY-SA 4.0 | Columbia College crown, used as decorative element |
| `hero.jpg` | Fall 2025 Media Day (Drive) | IMG_3028 — converted from HEIC, used as full-vh hero background |
| `team.jpg` | Upload Photos (Drive Form) | IMG_7939 (Mia Selin Collins) — 2026 Club Nationals 2nd Place awards ceremony, The Palestra, North Liberty IA. Photo © Tony Rotundo/WrestlersAreWarriors.com |
| `bri-csontos.png` | Drive (received via form or direct share) | Athlete card photo for Our Trailblazers section |
| `maya-letona.png` | Drive (received via form or direct share) | Athlete card photo; also used on leadership page |

### Google Drive — Photo Sources
| Folder | Drive ID | Status | Notes |
|---|---|---|---|
| Fall 2025 Media Day | `1KaQD4g5xF4ZvaXB2VwcNPM-U7bWZHv5S` | Accessible (shared by Coach Randall) | 41 photos, all pair/small-group media day shots — no full team photo |
| Website Photo Collection (Form responses) | `1EBSB2KsWx_4ymOa8HlbEwj_eJmMyxzaFs8GzQhOqB8VecanTH_tJ2unsQugiMwxp4o0pzyq2` | Empty — no submissions yet | Google Form set up to crowdsource photos from team |
| Upload Photos subfolder | `1HRD0a8Vc02GOB5TT0l-vZFxY-X8H-37hYGR4abwwODIy3cJXVafm_Ull-Q6ynxCDtNyJRCXD` | Empty | Same as above |

### Photos Still Needed
- [ ] Full team group shot (not in media day folder — ask coach)
- [ ] Action shots from competition or practice (several Nationals action shots exist in Upload Photos from Madelyn Rohrer McLaughlin and Mia Selin Collins — worth reviewing for gallery)
- [ ] Individual headshots for leadership page (captains — emma-randall.png already usable for coach)
- [ ] Gallery content (crowdsource via Google Form — share link with team; Upload Photos folder has some Nationals content already)

### Photos Now Available (all in img/)
- `hero-team.jpg` — IMG_3027, Fall 2025 Media Day, team in front of Alma Mater (current hero, 2400px wide, heavy overlay for face obscuring)
- `hero-media-day.jpg` — IMG_3028, media day, 2 athletes in singlets (backup hero — swap back anytime)
- `team.jpg` — 2026 Nationals 2nd Place awards ceremony (Tony Rotundo)
- `bri-csontos.png` — Bri Csontos athlete card (landscape 1804×1506)
- `maya-letona.png` — Maya Letona compete version (portrait 1386×1798)
- `maya-letona-leader.png` — Maya Letona leadership headshot (used on leadership page)
- `arian-carpio.png` — Arian Carpio athlete card (portrait 1384×1868)
- `emma-randall.png` — Coach Emma Randall (1738×1632), used in combined section + leadership page

---

## Pending — Needs Coach Meeting

- [ ] Roster page — Google Form + privacy decisions (weight class public? headshots required?)
- [ ] Roster fields: name, tentative weight class, hometown, home state
- [ ] Fall 2026 competition schedule
- [ ] Hyperlinks to past schedules
- [ ] Confirm 2026–2027 captain lineup (Kaylie + Ceci confirmed in Resource Hub; Kira TBD)
- [x] Maya Letona bio — added to leadership.html (Session 5)
- [x] Updated board members list — added to leadership.html (Session 5)
- [ ] Columbia IT — custom domain (cwwc.columbia.edu?) — **ALSO ASK:** who manages perec.columbia.edu/content/wrestling-womens and can they update the link on launch day?
- [ ] Full team group photo
- [ ] Coach bio updates / new headshot
- [ ] Recruit form fields + donation/payment info
- [ ] Google Form photo crowdsource — share link with team to collect gallery + action shots

---

## Ownership & Handoff

- **GitHub org:** `Columbia-Womens-Wrestling` — add future web leads as org members
- **Vercel:** deploy under miacollins518@gmail.com for now; transfer via Vercel Settings → Advanced → Transfer Project when club email is ready — no downtime, all history transfers
- **Club Gmail:** not yet accessible to Mia

---

## Reference — Square Site Screenshots

Stored locally at repo root (gitignored — local only):
`About.png`, `Leadership.png`, `Gallary.png`, `Schedule.png`, `Donate.png`, `Contact Us.png`

Old site uses: light blue `#EAF3FB` bg throughout, minimal layout, basic nav, sponsor logos at footer.
New site target: D1-caliber athletic program look, Columbia identity, mobile-first, no sponsors.

---

## Session Log

### 2026-06-03 — Session 1: Setup

**Built:**
- Created CLAUDE.md (this file)
- Set up repo structure (css/, js/, img/ directories, .gitignore)
- Retrieved content from Google Doc "CWWC Website Update" via Drive MCP
- Established project memory

**Decisions made:**
- No sponsors on any page (removed entirely)
- Vanilla HTML/CSS/JS, Bootstrap 5 CDN, no build step
- schedule.json flat-file CMS for non-technical secretary updates
- Deploy on Vercel personal account, transfer to club email later

---

### 2026-06-04 — Session 2: index.html Revision 1

**Built:**
- `index.html` — full home page (7 sections)
- `css/style.css` — full custom stylesheet
- Downloaded Columbia crown SVG from Wikipedia (CC BY-SA 4.0)
- Downloaded 2 photos from Fall 2025 Media Day Drive folder

**Design changes in Revision 1:**
- Switched from made-up colors to official Columbia University Pantone palette
- Stats section: upgraded from thin strip → full featured section with crown watermark, large bold numbers, descriptive sub-labels
- Crown integrated into: nav brand, hero watermark (right side), stats section background, both CTA panels
- Split CTA section: Columbia Blue (recruit) / dark navy (donate), side by side
- Hero: full-viewport, dark directional gradient overlay on athlete photo

**Photos added:**
- `img/hero.jpg` = IMG_0006 from Fall 2025 Media Day — 2 athletes in Columbia Wrestling singlets, fierce pose, branded backdrop
- `img/team.jpg` = IMG_0030 — 3-athlete lift shot, same backdrop

**Content from Google Doc incorporated:**
- History section with Arian Carpio, Maya Letona, Bri Csontos
- Full talking points / mission copy
- 2026–2027 board members (from Resource Hub doc)

---

### 2026-06-04 — Session 3: index.html Revision 2

**Changes made:**
- **Hero photo** replaced: `hero.jpg` ← IMG_3028.HEIC from Fall 2025 Media Day (converted to JPEG via `sips`)
- **Team photo** replaced: `team.jpg` ← IMG_7939 (Mia Selin Collins) — 2026 Club Nationals 2nd Place awards ceremony at The Palestra, North Liberty IA. Photo © Tony Rotundo/WrestlersAreWarriors.com. **Note:** if there are copyright concerns on this photo contact Mia Selin Collins or Tony Rotundo.
- **Athlete photos** added to `img/`: `bri-csontos.png` (renamed from "Bri Csontos.png"), `maya-letona.png` (renamed from "Maya Letona - Leadership.png"). Both were already in Drive/img — discovered during Drive search.
- **Hero tagline** changed from "Train Elite. Study Ivy." → "The Mat. The Ivy." (see tagline alternatives below)
- **"On the World Stage" section** renamed and rebuilt → "Our Trailblazers": now includes 3 history milestone blocks (2020 founding, 2021–24 growth, 2024 Olympic Trials moment) + 3 athlete cards with photos above copy. CSS added: `.athlete-card-with-photo`, `.athlete-photo`, `.athlete-photo--placeholder`, `.athlete-card-body`, `.history-milestone`, `.milestone-year`.
- **Maya Letona card** updated to show "CC '24 · Assistant Coach" — reflects her current role
- **Arian Carpio** has no photo in Drive — placeholder rendered; needs photo from coach/athlete

**Articles referenced but not accessible:**
- Columbia Spectator, "Five years on: Women's wrestling's continued fight for varsity status" (Dec 2, 2025)
- FlowWrestling, "Columbia Women's Wrestling: There's No Taking Us Down From Here"
Both are JavaScript-rendered and couldn't be fetched. Content was built from CLAUDE.md facts + Mia's framing. If specific quotes or facts from these articles should be incorporated, paste them in next session.

**Tagline alternatives considered (current: "The Mat. The Ivy."):**
- "The Mat. The Ivy." ← implemented — minimal, duality in four words
- "Built Different. Built Here." — athletic energy + Columbia pride
- "Wrestle Here. Win Anywhere." — aspirational, recruit-facing
- "Five Years. No Limits." — nods to history, forward-looking
- "Where Champions Study." — confident, direct

**Framing note for "Our Trailblazers":**
Per Mia's instruction: this site is being prepared for a varsity announcement. All copy in this section frames the club history as proof of what was built and what is possible — not as a campaign for status. Language about "fighting for" or "wanting" varsity has been excluded. The tone is retrospective and proud, not aspirational-petition.

---

### 2026-06-06/08 — Session 5: index.html Revision 3 + leadership.html

**Changes to index.html:**
- Hero photo: switched to `hero-team.jpg` (IMG_3027 — team in front of Alma Mater; converted from HEIC, resized to 2400px)
- Hero overlay: much heavier and more uniform (0.62–0.93 opacity) to obscure squinting faces while keeping Columbia backdrop visible
- Hero crown watermark: removed
- Hero h1: "The Mat. The Ivy." → "Columbia Women's Wrestling" (two lines)
- Hero tagline: rewritten using Google doc framing — "Our athletes compete at the highest levels — academically and athletically..."
- Both hero CTA buttons: same solid blue (btn-hero-ghost now matches btn-hero-primary)
- Stats: "35+ Athletes on the Mat" removed (dishonest) → "46 States Represented"
- "Built to Compete. Built to Last." → "The Program"
- "Historic Recruiting Momentum" pillar → "Top-Ranked Recruits"

**Built leadership.html:**
- Coaching staff: Emma Randall (full bio + email + photo) + Maya Letona (bio + email + leadership headshot)
- Team captains: Kaylie Musard + Ceci Reitter (names + roles only; Mia reaching out to board directly for more info)
- Executive board: Lyric Nelson, Anjali Mignone, Mia Collins, Ivy Andersen, Noa Omessi
- CSS added: `.page-header`, `.staff-card`, `.staff-photo-wrap`, `.captain-card`, `.board-list`, `.board-item`, `.board-role`, `.board-name`

**Note on hero photo:** `background-position: center 35%` — may need fine-tuning. To swap back to media day photo: change `hero-team.jpg` → `hero-media-day.jpg` in style.css.

**Note on 35+ in timeline:** The timeline section (2021–24 block) still says "Grew to 35+ athletes" as historical context — flag if this also needs updating.

---

## Design Feedback & Iteration Notes

| # | Feedback | Status |
|---|---|---|
| 1 | Stats are understated, could be more creative | Fixed in Rev 1 — now full section with large numbers + crown watermark |
| 2 | Use official Columbia Pantone colors, not made-up blue | Fixed in Rev 1 |
| 3 | Want crown detailing throughout | Fixed in Rev 1 — crown in 5 locations |
| 4 | No sponsors anywhere | Done |
| 5 | Coach thinks design was over-engineered on old approach | Monitor — keep it clean, no gimmicks |
| 6 | "Not in love with the design" — needs more work | **Open** — Mia doing writing pass post-launch |
| 7 | Need better / more photos | Partially addressed — new hero-team.jpg (Alma Mater), athlete cards, leadership headshots |
| 8 | "I hate 'Train Elite. Study Ivy.'" and then "I hate 'The Mat. The Ivy.'" | Session 5: changed to "Columbia Women's Wrestling" (two-line h1) |
| 9 | "Our History" / "Our Trailblazers" — expand beyond athlete showcasing | Fixed in Rev 2 — section rebuilt with history milestones + athlete photo cards |
| 10 | Article content from Spectator + FlowWrestling couldn't be fetched (JS-rendered) | **Open** — paste key excerpts to incorporate quotes/facts |
| 11 | Old hero photo "bad" / gradient alone felt plain | Session 5: switched to IMG_3027 (team + Alma Mater) with heavy overlay |
| 12 | Remove transparent crown from hero section | Session 5: removed |
| 13 | Both hero CTA buttons should be same blue | Session 5: btn-hero-ghost now matches btn-hero-primary |
| 14 | "35+ athletes training 4–6 days/week is dishonest" | Session 5: replaced with "46 States Represented" |
| 15 | Writing throughout needs Mia's review pass — "AI slop" | **Open** — Mia will review all copy directly |

---

## Next Steps (Priority Order)

### To launch by June 9 (critical path)
1. **Placeholder pages** — build schedule.html, gallery.html, join.html as simple "coming soon" stubs so nav links don't 404 (~30 min)
2. **Writing pass** — Mia reviews and edits index.html copy directly (all sections — hero, Who We Are, Trailblazers, etc.)
3. **Git commit + push** to github.com/Columbia-Womens-Wrestling/Website
4. **Vercel deploy** — connect repo at vercel.com, auto-deploys on push to main; account: miacollins518@gmail.com
5. **Share live URL with coach** — get design + content feedback

### After launch (pending coach input)
6. **Fall 2026 schedule** — need from coach → fill in schedule.html
7. **Recruit form + donation info** → build out join.html
8. **Gallery** — Upload Photos Drive folder has Nationals shots from Madelyn Rohrer McLaughlin and Mia Selin Collins; download and review for gallery.html
9. **Captain + board headshots** for leadership page
10. **Domain redirect** — Columbia IT for cwwc.columbia.edu?; who manages perec.columbia.edu/content/wrestling-womens?
11. **Roster page** — blocked; needs coach meeting on Google Form + privacy decisions
12. **Article content** — Spectator + FlowWrestling articles JS-rendered, can't fetch; paste excerpts if you want quotes incorporated
