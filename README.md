# ⚾🥊 SLUGGER BRAWL: Grand Slam Showdown
### *A High-Octane 3D Baseball × Boxing Arcade Hybrid*

[![WebGL](https://img.shields.io/badge/WebGL-3D%20Hardware%20Accelerated-00f0ff?style=for-the-badge&logo=webgl)](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)
[![Three.js](https://img.shields.io/badge/Three.js-r128-black?style=for-the-badge&logo=three.js)](https://threejs.org/)
[![Web Audio API](https://img.shields.io/badge/Audio-Procedural%20Web%20Audio-ff1850?style=for-the-badge)](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-Zero%20External-ffe500?style=for-the-badge)](https://github.com/chrisfbaileycb-arch/ball-box)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

---

## 📖 Overview

**Slugger Brawl** is an interactive, browser-based 3D arcade hybrid that fuses baseball batting with ringside boxing into a seamless, high-stakes showdown. 

When you step up to home plate, the pitcher winds up and fires a blistering fastball, curveball, or cutter. Timing your swing against the incoming pitch triggers a dramatic **CLASH**: time slows down, neon boxing ropes and turnbuckles rise around home plate under a dramatic spotlight, and the batter and pitcher square off in a 15-second round of arcade boxing.

How well you fight directly dictates the baseball outcome:
- **Knocked out / Depleted:** You're **OUT!**
- **Win by Points / Minor Damage:** Awarded a **SINGLE (1 Base)**.
- **Dominant Heavy Damage (Opponent HP < 25%):** Awarded a **DOUBLE (2 Bases)**.
- **Knockout (KO):** Awarded a **TRIPLE (3 Bases)**.
- **Clean Knockout (Batter HP $\ge$ 75%):** Crushed into a **HOME RUN (Grand Slam)!** Clears all runners on base with stadium fireworks, crowd cheers, and an explosive diamond celebration!

---

## 🌟 Key Features

### 1. 🕹️ Uninterrupted Finite State Machine (FSM)
- **Seamless 60 FPS Render Loop:** A single uninterrupted `requestAnimationFrame` loop drives the entire game. Transitions between the Pitching Phase, Clash Slow-Mo, Ringside Bout, and Diamond Baserunning interpolate smoothly via exponential camera lerping (`camera.position.lerp()`), preventing WebGL context drops or frame hitching.
- **Dual-Engine Architecture:** Runs in full **Hardware-Accelerated WebGL 3D** (Three.js with PCF soft shadow mapping, dynamic spotlights, and material shaders), paired with an automatic **Canvas 2.5D Fallback Engine** ensuring flawless play on any browser or sandbox.

### 2. 🏟️ High-Fidelity Procedural 3D Stadium
- **Zero Asset Download Dependencies:** 100% self-contained with runtime canvas-generated lawn grass mowing stripes and infield dirt textures.
- **Live Outfield Jumbotron:** A 3D LED screen in center field with live Canvas rendering showing dynamic pitch radar (*"96 MPH FASTBALL INBOUND!"*), live inning/outs tickers, and pulsing championship arcade banners.
- **Volumetric Floodlight Cones:** Glowing atmospheric light shafts projecting from four 24-meter stadium towers.
- **Field & Diamond Detailing:** White foul lines extending down 1st and 3rd base lines, yellow foul poles with 3D flags, outfield wall with distance markers (`380 FT`, `410 FT`), home plate batter's boxes, and dugout benches.
- **Animated Procedural Characters:**
  - **Batter:** Batting helmet with ear flap, team jersey with number on the back, pants with lateral stripes, cleated boots, wooden bat, and boxing gloves.
  - **Pitcher:** Hat with bill, striped jersey, pitching glove and boxing glove.
  - **Umpire:** Positioned behind home plate in classic navy blue coat and protective mask; crouches on pitch delivery, pumps right fist on strike calls, and calls outs.
  - **Catcher:** Modeled in full chest protector plates, shin guards, face mask, and catcher's mitt in receiving squat.
  - **Crowd:** Dynamic multi-tiered bleachers with fans cheering and performing stadium waves.

### 3. 💥 Tactile Combat "Juice" & Game Feel
- **Micro Hit-Stop (Freeze Frames):** 50–150ms micro-pauses on impactful jabs, heavy hooks, and super uppercuts, delivering punchy weight identical to elite fighting games.
- **Arcade Floating Combat Text:** 3D pop-up damage numbers and combat alerts (`+12`, `HOOK! +25`, `CRITICAL! +42`, `GUARD CRUSH!`, `BLOCKED! -3`, `SLIP COUNTER READY!`).
- **Dynamic Combo System & Multiplier:** Chaining rapid hits without taking damage increments the combo meter (`COMBO 3x • 1.3x DAMAGE`), boosting damage and accelerating the Super Meter.
- **Slip Counter Window:** Dodging (`W`) just as an opponent punch winds up triggers a slow-motion counter window, flashing the screen and guaranteeing a critical counter punch.
- **Screen Shake & Flash Effects:** Multi-axis camera shake and white flashes on heavy punches, bat cracks, and home runs.

### 4. 🔊 Multi-Layer Audio Engine & Play-by-Play Announcer
- **Arcade Speech Synthesis Announcer:** Energetic speech commentary via `window.speechSynthesis`:
  - *"Play ball!"*
  - *"Clash in the box!"*
  - *"Round one, fight!"*
  - *"Slip counter!"*
  - *"Super Knockout Punch!"*
  - *"Down goes the pitcher, triple base hit!"*
  - *"Clean knockout! That ball is outta here, grand slam!"*
  - *"Strike three, you're out!"*
- **Procedural Stadium Organ Fanfare:** Synthetic sine-organ chord progression (*"Da-da-da-da-da-DA! Charge!"*) sounding before pitches.
- **Multi-Tone Punch Synthesis:** Web Audio oscillators synthesizing light jabs, heavy hooks with sub-bass thump, shield blocks, bat cracks, and crowd roar.

### 5. 📊 Commercial-Grade UI/UX
- **Ghost Health Bars:** Two-tier health bars where the red bar drops instantly upon taking damage, while an amber ghost bar smoothly trails behind over 0.65s.
- **Difficulty Selector:**
  - **ROOKIE:** Slower pitches, relaxed timing window, gentle AI.
  - **PRO:** Balanced standard arcade challenge.
  - **ALL-STAR:** 96+ MPH blistering pitches and aggressive AI counter-hooks.
- **Diamond Baserunning Mini-Map:** Real-time visual tracking of runners on 1st, 2nd, and 3rd base.

---

## 🕹️ Controls Guide

| Action | Desktop (Keyboard) | Mobile / Touch Screen | Description |
| :--- | :--- | :--- | :--- |
| **Swing Bat** | `SPACE` | Tap **⚾ SWING BAT** | Swing bat when the pitch enters the sweet spot. |
| **Left Jab** | `A` or `←` | Tap **🥊 JAB** | Fast strike, interrupts opponent, builds combo. |
| **Right Power Hook** | `D` or `→` | Tap **💥 HOOK** | Heavy damage, can break opponent's guard. |
| **Guard Block** | `S` or `↓` (Hold) | Hold **🛡️ BLOCK** | High guard absorbing 80% incoming damage. |
| **Slip Dodge** | `W` or `↑` | Tap **⚡ SLIP** | Evades attacks; triggers **Slow-Mo Slip Counter** if timed to incoming punch! |
| **Grand Slam Super** | `SPACE` or `ENTER` | Tap **⭐ SUPER** | Cinematic KO uppercut when Super Meter reaches 80%+. |
| **Camera View** | Click `🎥 CAM` | Tap `🎥 CAM` | Toggle between Behind-Batter, Ringside, and Broadcast Overview. |
| **Audio Toggle** | Click `🔊 AUDIO` | Tap `🔊 AUDIO` | Toggle sound effects and announcer on/off. |

---

## ⚾ Combat Scoring Tie-In Matrix

| Bout Outcome | Condition | Baseball Result | Diamond Advance |
| :--- | :--- | :--- | :--- |
| **Batter Knockdown** | Batter HP reaches 0 | **OUT** | Batter retired. 3 Outs ends inning and clears bases. |
| **Opponent Lead at Bell** | Opponent has more HP at round end | **OUT** | Pitcher wins the exchange. Out recorded. |
| **Points Win (Minor Damage)** | Pitcher HP between 25% – 50% | **SINGLE** | Batter advances to 1st base; runners advance 1 base. |
| **Dominant Win (Heavy Damage)** | Pitcher HP < 25% | **DOUBLE** | Batter advances to 2nd base; runners advance 2 bases. |
| **Knockout (KO)** | Pitcher HP reaches 0 | **TRIPLE** | Batter advances to 3rd base; runners on base score! |
| **Clean Knockout (KO)** | Pitcher HP 0 and Batter HP $\ge$ 75% | **HOME RUN!** | 4-base Grand Slam! Clears diamond with fireworks & crowd roar. |

---

## 🚀 Quickstart & Installation

### Option 1: Direct Browser Launch
Simply open `index.html` in any modern web browser (Google Chrome, Mozilla Firefox, Brave, Microsoft Edge, Safari):
```bash
# On Linux
xdg-open index.html

# On macOS
open index.html

# On Windows
start index.html
```

### Option 2: Local HTTP Server (Recommended)
Run the included launcher script:
```bash
./start.sh
```
Or start a standard Python server:
```bash
python3 -m http.server 8080
```
Then navigate to `http://localhost:8080` in your web browser.

---

## 📁 Repository Structure

```
ball-box/
├── index.html       # Complete single-file game engine, UI, shaders & audio
├── start.sh         # Quickstart local HTTP server script
├── js/
│   └── three.min.js # Three.js r128 3D graphics library
└── README.md        # Comprehensive documentation & manual
```

---

## 🛠️ Architecture & Technical Details

- **Finite State Machine:** An explicit enum-based state manager (`INIT`, `READY_PITCH`, `PITCH_IN_FLIGHT`, `CLASH_TRANSITION`, `BOUT_ACTIVE`, `BOUT_DECISION`, `DIAMOND_RUN`) prevents race conditions between physics and camera director routines.
- **Micro Hit-Stop:** Pauses physics and animation updates for 50–150ms during punch contact while particle velocities and camera shake continue, creating visceral fighting game impact.
- **Audio Synthesizer:** Built completely on the native Web Audio API with zero audio sample downloads:
  - Pitch whoosh: Sine oscillator with exponential ramp Doppler slide.
  - Bat crack: Triangle oscillator + sub-bass punch + white noise burst.
  - Boxing bell: Dual harmonic overtone sine waves (1250 Hz & 1880 Hz).
  - Organ fanfare: Triangle chords with envelope shaping.
  - Announcer: Web Speech API synthesis with custom pitch and rate calibration.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE) - see the file for details.
