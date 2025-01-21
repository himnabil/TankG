# 2D Game Specification

- Top-down tank battle  
- Basic geometric graphics  
- Turrets and AI mobs  
- Online multiplayer support  

## Overview
// ...existing or future content...

## Single Player First Increment
We are prioritizing single-player functionality before integrating any online elements.

## Detailed Mechanics
- Tanks move in all directions; turrets rotate independently.  
- Basic geometric shapes for obstacles and projectiles.  
- AI mobs patrol or chase players; turrets engage nearby threats.  
- Health Management: Each tank has a health pool of 100 HP; collisions with projectiles reduce health by 10 HP, and collisions with obstacles reduce health by 5 HP.  
- Bullet Management: Basic bullets are unlimited, but reloading takes 1 second. Special ammo might have limited capacity (e.g., 5 rounds) and a longer reload time (e.g., 3 seconds).  
- Collision: Tanks, AI mobs, and projectiles have hitboxes that trigger health reduction upon impact.  
- [will not be implemented yet] Online sessions allow multiple players to join or host battles.  

## Game Flow
- Players join a lobby and choose a tank loadout.
- Match starts with tanks and AI mobs; each tank aims to survive.  
- Scoreboard updates as AI mobs and players are eliminated.  
- On collision with a projectile, the tank’s health decreases.  
- If health reaches zero, the tank is destroyed and removed from play.  
- The session ends when only one player remains or time expires.

## [will not be implemented yet] Offline Spec
- Single-player or split-screen co-op  
- AI as the main challenge  
- Mission-based or wave survival modes  
- Core loop revolves around AI challenges and basic objectives  
- Players can select difficulty levels that adjust AI behavior  
- Progression system rewards upgrades, unlocking new maps or tanks  

## [will not be implemented yet] Online Spec
- Hosted servers or peer-to-peer connections  
- Player-vs-player or team-based matches  
- Leaderboards, matchmaking, chat features