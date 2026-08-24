# CWWC Website — Project Context Brief
*For: second brain / AI handoff · Generated: 2026-06-08*

---

## What This Project Is

A static website for the **Columbia Women's Wrestling Club (CWWC)** — replacing an outdated Square site at `columbiawomenswrestling.square.site`. The new site is self-hosted, version-controlled, and deployed on Vercel.

This is not a personal portfolio or hobby project. CWWC is a nationally competitive athletics program at Columbia University. The site needs to reflect that: it is being built to a D1-caliber standard because the program operates at that level and is in the process of pursuing varsity status. Every design and copy decision is made through that lens.

**Repo:** github.com/Columbia-Womens-Wrestling/Website  
**Deploy target:** Vercel (account: miacollins518@gmail.com)  
**Tech stack:** Vanilla HTML + CSS + Bootstrap 5 CDN — no build step, no framework, no npm  
**Builder:** Mia Collins — CWWC Secretary, web lead, student at Columbia  

---

## URGENT — Coach Demo Is Tomorrow (June 9, 2026)

The site needs to be live and complete enough to share with Head Coach Emma Randall by tomorrow. Mia told the coach it would be ready.

**A site with "coming soon" placeholder pages is not acceptable.** The coach is evaluating whether this site represents the program at the level it deserves. Showing her nav links that lead to empty stubs would communicate the opposite of what this program is trying to project — that they operate with the same professionalism and resources as a varsity program.

Every page in the nav must exist and look intentional. If content is pending (e.g., the fall 2026 schedule isn't confirmed yet), that's fine — real athletic programs post "schedule to be announced" during the offseason. The page itself must look like it belongs to a D1-caliber program, not like a construction zone.

---

## Current Status

| Page | File | Status |
|---|---|---|
| Home | `index.html` | **Built** — needs Mia's writing/copy pass |
| Leadership | `leadership.html` | **Built** — coaches, captains, board complete |
| Schedule | `schedule.html` | **Needs to be built** |
| Gallery | `gallery.html` | **Needs to be built** |
| Join & Support | `join.html` | **Needs to be built** |
| Roster | — | Blocked — pending coach meeting |

---

## Design System (maintain consistently across all pages)

**Colors — Official Columbia University Pantone**

| Role | Hex | Use |
|---|---|---|
| Primary Blue | `#1D4F91` | Stats bg, timeline bg, pillar accents |
| Dark Blue (nav bg) | `#003087` | Nav, page header banners, dark sections |
| Button Blue | `#0077C8` | CTA buttons, hover states |
| Light Blue (accent) | `#6CACE4` | Eyebrows, labels, timeline badges, footer border |
| Body text | `#222222` | Default text color |
| Secondary text | `#53565A` | Subtext, captions |
| Border | `#D0D0CE` | Dividers |
| Light bg | `#F0F0F0` | Tint sections |

**Typography:** `system-ui, -apple-system, 'Segoe UI'` — no Google Fonts  
**Layout:** Bootstrap 5 grid, mobile-first  
**Crown:** `img/crown.svg` used in nav, stats section, CTA panels — not hero (removed)

**Established CSS classes (in `css/style.css`):**
- `.site-nav`, `.nav-crown`, `.nav-cta` — navigation
- `.page-header`, `.page-header-title`, `.page-header-sub` — inner page headers
- `.eyebrow` — small all-caps label above headings
- `.section`, `.section-light`, `.section-tint`, `.section-dark`, `.section-navy`
- `.section-heading`, `.section-lead`
- `.btn-hero-primary`, `.btn-hero-ghost`, `.btn-outline-dark`, `.btn-white`
- `.stats-section`, `.stat-block`, `.stat-number`, `.stat-label`, `.stat-detail`
- `.photo-block`, `.photo-block--vignette`
- `.athlete-card-with-photo`, `.athlete-photo`, `.athlete-card-body`
- `.staff-card`, `.staff-photo-wrap`, `.staff-info`, `.staff-name`, `.staff-title`, `.staff-bio`, `.staff-email`
- `.captain-card`, `.captain-name`, `.captain-role`
- `.board-list`, `.board-item`, `.board-role`, `.board-name`
- `.history-timeline-section`, `.timeline-row`, `.timeline-milestone`, `.timeline-year`
- `.pillar`, `.pillar-title`, `.pillar-text`
- `.cta-recruit`, `.cta-donate`, `.cta-crown`, `.cta-inner`, `.cta-title`, `.cta-tag`
- `.site-footer`, `.footer-brand`, `.footer-sub`, `.footer-links`

---

## Page-by-Page Content Guide

### index.html — Home (BUILT, needs copy pass)

Sections in order:
1. Sticky nav (#003087, light blue accent, crown in brand)
2. Hero — `hero-team.jpg` (team in front of Alma Mater), heavy overlay (0.62–0.93), h1 "Columbia Women's Wrestling", subtitle uses doc quote "highest levels — academically and athletically", 2 blue CTA buttons (Recruit Me / Support the Program)
3. Stats — 4 stats: 2020 (Founded), 46 (States Represented), 2nd (2026 Club Nationals), 100+ (Class of 2026 Recruits)
4. Who We Are / Why CWWC — white bg, 2 rows: mission text + team.jpg photo; coach intro + emma-randall.png + 4 pillar cards
5. Our Trailblazers — dark bg, 3 athlete cards with photos (Bri Csontos, Maya Letona, Arian Carpio)
6. History Timeline — blue bg, 3 milestones (2020, 2021–24, 2024)
7. Split CTA — Recruit (blue-mid) / Donate (dark navy)
8. Footer — dark, blue top border

**Writing note:** Mia is doing a copy pass herself — some phrases feel too AI-generated. Don't refactor copy without her direction.

### leadership.html — Leadership (BUILT)

Sections:
1. Nav (active: Leadership)
2. Page header
3. Coaching Staff: Emma Randall (Head Coach, photo: `emma-randall.png`, email: erandall@nycrtc.com) + Maya Letona (Assistant Coach CC '24, photo: `maya-letona-leader.png`, email: mletonascs@gmail.com)
4. Team Captains: Kaylie Musard + Ceci Reitter (minimal info — Mia reaching out to them directly)
5. Executive Board: President Lyric Nelson, VP Anjali Mignone, Secretary Mia Collins, Treasurer Ivy Andersen, Safety Officer Noa Omessi

### schedule.html — Schedule (NEEDS BUILD)

**What we have:**
- Season format: 13+ competitions per season (9 tournaments + 4 duals), mirrors D1 NCAA minimum
- Fall 2026 schedule: not yet confirmed — coach hasn't provided dates
- 2025–2026 highlights: 2nd Place at 2026 Club Nationals (Women's Collegiate Club Nationals), The Palestra, North Liberty IA
- Competition schedule runs fall through spring; national championship in spring

**How to handle missing fall schedule:** Real programs post "Schedule will be announced" during offseason. Build a properly designed page that says this without looking like a construction zone. Include season format info and last season's highlight. Do NOT use "coming soon" text on a gray card.

### gallery.html — Gallery (NEEDS BUILD)

**Photos available in `img/`:**
- `team.jpg` — 2026 Nationals 2nd Place awards ceremony, The Palestra. Photo © Tony Rotundo/WrestlersAreWarriors.com
- `alt-hero-1.JPG` — Full team photo on Levien Gymnasium mat (Columbia Wrestling branding visible). Note: image has a red graphic panel on the left ~35% — use `object-fit: cover; object-position: right center` or crop to show the team portion only
- `hero-media-day.jpg` — 2 athletes in Columbia singlets at Fall 2025 Media Day
- `bri-csontos.png` — Bri Csontos (CC '23), U20 National Team, Pan Am Gold
- `maya-letona.png` — Maya Letona (CC '24), U.S. Senior National Team, Olympic Trials
- `arian-carpio.png` — Arian Carpio (GS '26), Philippines Olympic Qualifiers

**Approach:** Use all 6 photos in a responsive 2–3 column grid with captions. Include a "Submit a Photo" section pointing to the team's Google Form (crowdsource drive — exact URL TBD, placeholder for now). The gallery will grow once the Google Form link is shared with the team.

**Old site note:** The Square site gallery had 8+ action photos (outdoor practice on Low Plaza, indoor gym). Those specific photos are not yet in the repo. They may be in the Upload Photos Drive folder.

### join.html — Join & Support (NEEDS BUILD)

**Two sections:**

**1. Recruit Me / Prospective Athletes:**
- Form fields: Full name, Email, Expected Columbia graduation year, Current school, Weight class, Years wrestling, Notable achievements (textarea), Highlight film link (optional), How did you hear about us
- Note: 100+ athletes submitted Recruit Me for Class of 2026 — this is an established pipeline
- Form needs a backend for submission. Use Formspree (`https://formspree.io/f/REPLACE_ID`) — requires free account. For coach demo, form just needs to look right.

**2. Donate / Support the Club:**
- Donation goes through Columbia University's official giving portal
- Donor must enter "Women's Wrestling Club" in the fund search bar
- Old site had a "Donate" button pointing to a Columbia URL (exact URL not captured — needs to be confirmed with club)
- For coach demo: include the donation instructions and a button/link pointing to Columbia's main giving page as placeholder

---

## Key Content — Coaches

**Emma Randall — Head Coach**  
NYC Regional Training Center + Columbia. USA Wrestling Gold level certification (<100 in US). Former Beat the Streets NYC Program Director. B.A. + M.S. Sports Psychology, Lock Haven. Founding board member, Wrestle Like A Girl. Advisory board, Sports Bra Project. USA Wrestling D1 Women's Wrestling committee. Email: erandall@nycrtc.com

**Maya Letona — Assistant Coach**  
CC '24. U.S. Senior National Team. Competed at U.S. Olympic Trials. Returned to program as assistant coach after graduating Columbia College 2024. Email: mletonascs@gmail.com

## Key Content — Notable Athletes

**Bri Csontos** (CC '23) — U20 National Team. Pan American Gold. Outstanding Wrestler of Pan Am event. Everything as a Columbia club athlete.  
**Maya Letona** (CC '24) — U.S. Senior National Team. U.S. Olympic Trials competitor.  
**Arian Carpio** (GS '26) — Philippines at World Team Trials + 2024 Paris Olympic Qualifiers.  

Columbia was the **only non-varsity program** among 20 collegiate teams at the 2024 U.S. Olympic Trials.

## Key Content — Program History / Framing

This site is being built in the context of a potential varsity announcement. All copy should frame the club history as **proof of what was built and what is possible** — not as a campaign for varsity status. Never use language like "fighting for," "hoping for," or "seeking" varsity recognition. The tone is retrospective and proud, not petitioning.

---

## Pending From Coach (do not fabricate)

- Fall 2026 competition schedule (dates, opponents, locations)
- Exact Columbia giving portal URL for donations
- Arian Carpio athlete photo (none in Drive yet)
- Full team group photo (not in media day folder)
- Captain details: Kaylie Musard, Ceci Reitter (Mia reaching out)
- Roster page: Google Form structure + privacy decisions (weight class public? headshots required?)
- Domain: cwwc.columbia.edu? Who manages perec.columbia.edu/content/wrestling-womens?

---

## Photo Credits to Know

- `team.jpg` — Photo © Tony Rotundo / WrestlersAreWarriors.com (contact Mia Selin Collins if copyright concern)
- `crown.svg` — Wikipedia CC BY-SA 4.0
- All other photos: internal / Drive uploads

---

## Decisions Already Made (do not revisit without Mia)

- No sponsors on any page (removed entirely, was on old site)
- Vanilla HTML/CSS/JS only — no npm, no bundler, no framework
- Bootstrap 5 CDN (not installed)
- No Google Fonts — system-ui stack only
- No comments explaining "what" the code does
- schedule.json flat-file CMS planned for schedule page (when schedule data exists)
- No roster page until after coach meeting
