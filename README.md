# FP-DinoDuo
Developed by Chase W. and Collin S.

## How to Play
Click the link below to play an HTML 5 version of DinoDuo  
https://redbit200.github.io/FP-DinoDuo/

#### Controls:  
Space bar - Jump  
Left arrow key - Move Left  
Right arrow key - Move Right  
Up arrow key - Move up through a pipe  
Down arrow key - Move down through a pipe  
ESC Key - Pause menu

#### Objective:  
Make sure both of the dinosaurs reach the end of the level! The goal is marked with a green square, once both dinosaurs are in their respective square you will clear the level! If the timer runs out, you lose and must restart!
You are controlling both characters at the same time, be creative to figure out a way to reach both goals!

## Reflection
For this iteration, our focus was on adding a dynamic camera to the game. This was a challenge to incorporate as we needed the camera to always have both characters on screen at the same time. To have both a camera that moves with the player and show both characters the camera had to be able to zoom in and out depending on how close or far the characters were from each other. We had to look at the Godot documentation on Camera2D to get a better idea how the node worked and how to go about solving the issue. Other then add the camera we added a feature to be able to select any level in the game from the title screen, which was not hard to get working.

## Evaluation
- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The release demonstrates the core gameplay loop: the player can take action that moves them toward a goal.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: The game runs without errors or warnings.
- [X] B-3: The playable game is published to GitHub Pages and linked from the <code>README.md</code> file, or executable builds are provided for download as part of the GitHub release.
- [X] B-4: The source code and project structure comply with our adopted style guides.
- [X] B-5: Clear progress has been made on the game with respect to the project plan.
- [X] A-1: The source code contains no warnings: all warnings are properly addressed, not just ignored.
- [X] A-2: The game includes the conventional player experience loop of title, gameplay, and ending.
- [X] A-3: Earn <em>N</em>*&lceil;<em>P</em>/2&rceil; stars, where <em>N</em> is the iteration number and <em>P</em> is the number of people on the team.
- [X] ⭐ Include a dynamic (non-static) camera
- [ ] ⭐ Incorporate parallax background scrolling
- [ ] ⭐ Use paper doll animations
- [ ] ⭐ Incorporate smooth transitions between title, game, and end states, rather than jumping between states via <code>change_scene</code>
- [ ] ⭐ Support both touch and mouse/keyboard input in the Web build
- [ ] ⭐ Allow the user to control the volume of music and sound effects independently.
- [ ] ⭐ Incorporate juiciness and document it in the <code>README.md</code>
- [ ] ⭐ Incorporate another kind of juiciness and document it in the <code>README.md</code>
- [ ] ⭐ Use particle effects
- [ ] ⭐ Use different layers and masks to manage collisions and document this in the <code>README.md</code>
- [X] ⭐ Incorporate pop into your HUD or title screen using <code>Tween</code> or <code>AnimationPlayer</code>
- [ ] ⭐ Include an AI-controlled characters
- [ ] ⭐ Include an AI-controlled character controlled with a different AI
- [X] ⭐ Add a pause menu that includes, at minimum, the ability to resume or return to the main menu
- [ ] ⭐ The game is released publicly on <code>itch.io</code>, with all the recommended accompanying text, screenshots, gameplay videos, <i>etc.</i>

We believe that this submission deserves an A based on the checklist above.


# Third Party Assets
Dinosaur Sprites  
Artist: [ScissorMarks](https://twitter.com/ScissorMarks)  
Free for personal use  
Source: https://arks.itch.io/dino-characters  

Map Assets  
`Sci-fi Platformer Tiles (32x32)`  
Author: [bart](https://opengameart.org/users/bart)  
[Creative Commons 1.0 Universal - Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/)     
Source: https://opengameart.org/content/sci-fi-platformer-tiles-32x32  

Font  
`Dinocraft`  
Author: [selawetype](https://www.dafont.com/sukro-typeface.d6998)  
Free for personal use   
Source: https://www.dafont.com/dinocraft.font

Jump Sound  
no copyright reserved  
[Creative Commons 1.0 Universal - Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/)     
Author: [BehanSean](https://freesound.org/people/BehanSean/)  
Source: https://freesound.org/people/BehanSean/sounds/422426/  
