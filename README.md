# Enrico Capistrano — Portfolio

A responsive React portfolio built with Vite, Three.js / React Three Fiber, GSAP, Framer Motion, and Lenis. Project preview panels are illustrative interface concepts, not screenshots of shipped products.

## Local development

Install Node.js 20 or newer and pnpm, then run:

```sh
pnpm install
pnpm dev
```

On Windows, double-click `Start Portfolio.bat` to start the local server and open the site. It runs Vite directly with Node, so pnpm does not need to be on the VS Code terminal’s PATH. Don’t open the source `index.html` directly; it needs Vite to serve its React modules.

Create the production site with `pnpm build`; preview it locally with `pnpm preview`.

## Cloudflare Pages

Connect this repository to Cloudflare Pages with these build settings:

- Build command: `pnpm build`
- Build output directory: `dist`
- Node.js version: `20` or newer

The `_headers` file is copied into `dist` and applies basic browser security headers. The static portfolio does not require a server-side runtime.

## Before launch

- Add Enrico’s real email and profile URLs in `src/App.jsx`.
- Replace project concept previews in `src/components/ProjectPreview.jsx` with actual screenshots only when they are available.
- Connect the contact form to a real email recipient or form service if you want to receive messages without visitors choosing a recipient in their email app.
