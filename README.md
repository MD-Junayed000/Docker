# Docker Networking Lab

## Overview

This repository brings together hands-on lab material for learning Docker and Linux networking alongside a lightweight sample Node.js service that is intended to run in a container. The written guides (DOCX and PDF) walk through container fundamentals, networking primitives, and day-to-day Docker workflows, while the `Dockerfile` shows how to package a Node.js application for local experimentation.

## Repository layout

- `Dockerfile` — builds a Node.js 19 Alpine image, installs dependencies from `package.json`, and runs `server.js` from the `src` directory.
- `Docker Full Learn.docx`, `Git.docx`, `Network Devices.docx` — extended notes that accompany the lab sessions.
- `Networking and Docker lab/` — bite-sized PDFs that cover specific Docker and networking topics (image construction, bind mounts, multi-stage builds, namespace connectivity, monitored NGINX deployment, and more).

> The sample application source (`package.json`, `server.js`, additional modules under `src/`) is expected to be supplied by the learner. Add these files before building the container image.

## Prerequisites

- Docker Engine 20.10 or newer.
- (Optional) Node.js 19+ and npm if you want to run or test the app outside Docker.
- A PDF reader for the lab walkthroughs and notes.

## Quick start

1. Place your Node.js project files in the repository root so the structure matches:
   ```text
   Dockerfile
   package.json
   src/
     server.js
     ...
   ```
2. Build the container image:
   ```bash
   docker build -t docker-networking-lab .
   ```
3. Run the container, mapping any ports your app exposes (example uses 3000):
   ```bash
   docker run --rm -it -p 3000:3000 docker-networking-lab
   ```
4. Open the application in your browser or API client and iterate on the code. Rebuild the image whenever you change dependencies.

## Working with the lab material

- Start with `Docker Host Setup.pdf` and `Install Docker on Ubuntu.pdf` for environment preparation.
- Use `Dockerfile Basics Explained.pdf`, `Building Docker Image Steps.pdf`, and `Multi-stage Docker Build.pdf` to deepen your understanding of image creation.
- Explore container lifecycle management via `Docker Restart Policies Explained.pdf`, `Docker Stop vs Kill.pdf`, and the `Docker Basic Utilization problem.pdf` exercises.
- Dive into networking using `Linux Networking Basics.pdf`, `CONNECT NETWORK NS TO ROOT.pdf`, `Process Communication between Namespaces.pdf`, and `Containers Communication Setup.pdf`.
- Practice operational topics such as logging (`Log Sharing with Docker.pdf`), storage (`In-Memory Storage with Docker.pdf`, `Docker Bind Mounts Overview and Working with Docker Volumes.pdf`), and monitoring (`Deploying Monitored NGINX Server.pdf`).

## Suggested workflow

1. Review the conceptual notes (`Docker Full Learn.docx`, `Network Devices.docx`).
2. Follow the focused PDFs in the `Networking and Docker lab/` folder in the order listed above.
3. Implement the exercises using your own Node.js service, iterating inside Docker with the provided `Dockerfile`.
4. Document your findings or configuration tweaks in a personal lab journal for future reference.

## Troubleshooting tips

- Missing `package.json` or `src` files will cause `npm install` to fail during `docker build`. Ensure the expected files exist before building.
- Use bind mounts (`docker run -v ${PWD}:/app`) if you prefer live-editing source files without rebuilding the image.
- For networking experiments, create user-defined bridges (`docker network create`) and attach multiple containers to observe connectivity concepts from the PDFs.

## Contributing

Feel free to add additional lab write-ups, source examples, or automation scripts. When contributing, keep documentation concise, prefer Markdown for new assets, and note any external prerequisites.

## License

No explicit license is provided. Treat the material as private courseware unless the repository owner states otherwise.
