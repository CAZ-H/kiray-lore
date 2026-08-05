# The Kiray Archive

Lore wiki for the lore of Be an Alien:Renewal and Kiray, published at **https://caz-h.github.io/kiray-lore/**.

This is a hard sci-fi worldbuilding project backing the Roblox game [Be an Alien: Renewal](https://www.roblox.com/games/463915360/Be-an-Alien-Renewal), which is a Roblox game about becoming an alien creature on the moon [[Kiray]] of the Skyris system, and roleplaying, exploring, fighting, and building as that creature. Become one of many custom alien creatures that look like snakes, birds, lizards, dinosaurs, and other weird things, and customize your character. 

If you are a Roblox player on Discord, you can [join the community](https://discord.gg/xnrm338P7N) to learn more, or even contribute. Currently, lore for this project is a work in progress, and many details are not defined at all, feel free to participate in speculation about species, ecosystem, astronomy, civilization, etc. Your ideas may shape the future of this project. 

Built with [Quartz 5](https://quartz.jzhao.xyz/).

## Editing & Testing

Edit or add Markdown files under `Documents/`. Obsidian-style `[[wikilinks]]` and GitHub-flavored Markdown are both valid. 

There are batch files in the root directory to `install.bat` the Node dependencies, and to `serve.bat` the wiki locally at http://localhost:8080/kiray-lore/. Requires Node.js 22+. The local preview is served under the `/kiray-lore` path on purpose, via `--baseDir /kiray-lore`, so that it matches how GitHub Pages serves the site. 

After merging to `main`, the site redeploys automatically.

### File Layout

- `Documents/`: the wiki content (lore `.md` documents and `index.md` landing pages).
- `quartz.config.yaml`: site configuration (title, theme colors, plugins).

## Notes

### AI Usage

- AI has **not** been used to write lore documents.
    - Yes, I really do write these documents like a dusty academic professor, I really did give Skiedons parrot feet for hands, and I really did spend a horrifying amount of time writing and rewriting the Kirian physiology document when I should have been sleeping.
- AI has **not** been used to generate artwork for this project.

### Modifications to Quartz

- `quartz/cli/plugin-git-handlers.js` contains a fix to quote paths passed to `git clone`, so `npx quartz plugin install` works when the repo has been cloned to a directory whose path contains spaces. 

- `quartz/components/renderPage.tsx` contains a fix that adds a `data-basepath` attribute to the `<body>` tag, derived from the subpath of `baseUrl` in `quartz.config.yaml` (`/kiray-lore` for this repo). The explorer, graph, and search plugins build their link URLs at runtime by reading `document.body.dataset.basepath` (via `resolveBasePath` in `@quartz-community/utils`), but as of July 2026 no version of the Quartz core actually sets that attribute, so on a GitHub Pages *project* site (served under a subpath rather than at the domain root), every explorer/graph/search link points to the wrong URL and 404s. Without this fix, sidebar navigation breaks on the deployed site while still working in local previews served from the dir root.

- `quartz/components/scripts/popover.inline.ts` contains a fix to the link preview popovers. Popovers are cached per page, so hovering a second link to a different section of a page that had already been previewed would reuse the cached popover but fail to scroll it, leaving the preview showing whichever section was viewed first. The cause was that `showPopover` read the `popoverInner` variable from the enclosing scope, which is only declared further down in the path that fetches a page for the first time; reusing a cached popover therefore ran that code before the variable existed and threw a `ReferenceError` before the scroll could happen. The fix resolves the inner element from the popover being shown instead, and also scrolls back to the top for links with no section anchor. 