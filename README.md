# The Kiray Archive

Lore wiki for the lore of Be an Alien:Renewal and Kiray, published at **https://caz-h.github.io/kiray-lore/**.

This is a hard sci-fi worldbuilding project backing the Roblox game [Be an Alien: Renewal](https://www.roblox.com/games/463915360/Be-an-Alien-Renewal), which is a Roblox game about becoming an alien creature on the moon [[Kiray]] of the Skyris system, and roleplaying, exploring, fighting, and building as that creature. Become one of many custom alien creatures that look like snakes, birds, lizards, dinosaurs, and other weird things, and customize your character. 

If you are a Roblox player on Discord, you can [join the community](https://discord.gg/xnrm338P7N) to learn more, or even contribute. Currently, lore for this project is a work in progress, and many details are not defined at all, feel free to participate in speculation about species, ecosystem, astronomy, civilization, etc. Your ideas may shape the future of this project. 

Built with [Quartz 5](https://quartz.jzhao.xyz/).

## Editing & Testing

Edit or add Markdown files under `Documents/`. Obsidian-style `[[wikilinks]]` and GitHub-flavored Markdown are both valid. 

There are batch files in the root directory to `install.bat` the Node dependencies, and to `serve.bat` the wiki locally. Requires Node.js 22+.

After merging to `main`, the site redeploys automatically.

### File Layout

- `Documents/`: the wiki content (lore `.md` documents and `index.md` landing pages).
- `quartz.config.yaml` — site configuration (title, theme colors, plugins).

## Deployment

GitHub Pages must be set to deploy from **GitHub Actions** (repo Settings → Pages → Source → "GitHub Actions"). After that, every push to `main` publishes the site.

## Notes

### Modifications to Quartz

`quartz/cli/plugin-git-handlers.js` contains a fix to quote paths passed to `git clone`, so `npx quartz plugin install` works when the repo has been cloned to a directory whose path contains spaces. If Quartz in this project is updated, plugin install should be double checked to confirm it still works, but Quartz upstream may have fixed it by then.

### AI Usage

- AI has **not** been used to write lore documents.
    - Yes, I really do write these documents like a dusty academic professor. 
    - Yes, I really did give Skiedons parrot feet for hands.
    - Yes, I really did spend a horrifying amount of time writing and rewriting the Kirian physiology document when I should have been sleeping.
- AI has **not** been used to generate artwork for this project.

- AI was used to bootstrap the repo and the Quartz setup which generates the static wiki files from the human-authored markdown documents.
- AI has been used to deep-research complex foundational worldbuilding details such as the astronomical, geological, and biological foundations necessary to make robust decisions which influence the entire project downstream (E.g. The star's parameters decide Kiray's habitability and position in the solar system, which influences what color photosynthesizing plants can be, which influences where and how they can exist in the oceans, which influences how and where marine animals and plants evolve. Certain key numbers are extremely foundational and make or break the entire project, and many worldbuilding details were written before these documents existed, so it is critical to get these details as close to correct as possible. AI is very effective at exhaustively double-checking these details against themselves and against scientific literature.)
- AI has been used to double-check that human-decided worldbuilding details do not introduce incorrect science, implausibilities, or inconsistencies with the rest of the documentation.