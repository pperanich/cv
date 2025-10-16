# Preston Peranich - CV

A modern, professionally-typeset curriculum vitae built with [Typst](https://typst.app/) and the [modern-cv](https://typst.app/universe/package/modern-cv) template. Features reproducible builds via Nix flakes.

## Overview

This repository contains my professional CV/resume, highlighting experience in:

- Neural interfaces and noninvasive brain-computer interfaces
- Real-time embedded systems and edge computing
- Optical instrumentation (OCT, holography)
- Additive manufacturing and sensor fusion
- Open-source projects (ezmsg, DC Mini)

## Prerequisites

With Nix installed and flakes enabled, you get:

- Reproducible builds with pinned dependencies
- Automatic font and package management
- Live-reload development environment

Install Nix: <https://nixos.org/download.html>

Enable flakes (if not already enabled):

```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

## Building the CV

**Build the CV:**

```bash
nix run .#build
# Output: ./main.pdf
```

**Watch mode** (auto-rebuild on changes):

```bash
nix run .#watch
```

## Development

### Nix Development Shell

Enter a shell with all dependencies:

```bash
nix develop
```

Inside the dev shell:

- `typst watch main.typ` - Auto-recompile on changes
- `typstfmt main.typ` - Format the source file

### Direct Editing

1. Edit `main.typ` with your content
1. Rebuild using one of the methods above
1. View `main.pdf`

## Project Structure

```
.
├── flake.nix          # Nix flake configuration
├── flake.lock         # Locked dependency versions
├── main.typ           # CV source (Typst markup)
├── main.pdf           # Compiled CV (output)
├── profile.jpg        # Profile photo
└── README.md          # This file
```

## Nix Flake Details

The flake provides:

- **`packages.default`** - Build the CV as a Nix derivation
- **`apps.build`** - Build script (outputs to current directory)
- **`apps.watch`** - Watch script for live recompilation
- **`devShells.default`** - Development environment with Typst and tools

### Adding Typst Packages

Edit the `unstable_typstPackages` list in `flake.nix`:

```nix
unstable_typstPackages = [
  {
    name = "package-name";
    version = "x.y.z";
    hash = "sha256-...";
  }
];
```

### Adding Fonts

Add font paths to the `fontPaths` list:

```nix
fontPaths = [
  "${pkgs.roboto}/share/fonts/truetype"
  # Add more fonts here
];
```

## CI/CD

The repository can be integrated with GitHub Actions for automated PDF builds:

```yaml
name: Build CV
on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5
      - uses: DeterminateSystems/nix-installer-action@main
      - run: nix run .#build
      - uses: actions/upload-artifact@v4
        with:
          name: cv
          path: main.pdf
```

## Resources

- **Typst**: <https://typst.app/>
- **modern-cv template**: <https://typst.app/universe/package/modern-cv>
- **Typix (Nix + Typst)**: <https://github.com/loqusion/typix>
- **Typst documentation**: <https://typst.app/docs/>

## License

This CV content is personal and proprietary. The build system configuration (flake.nix) may be reused under MIT license.

---

**Generated with [Typst](https://typst.app/) • Built with [Nix](https://nixos.org/)**
