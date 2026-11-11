# Wirebonding for the SZOSS

Slides for a 20-minute talk on Chip-on-Board and wire bonding at SZOSS (Shenzhen Open Source Silicon).
LaTeX Beamer, 16:9.

Structure: title, what is CoB, ways to bond, wire bonding, TAB, challenges, open.cob.json, about me; extra: design for bonding.

## Build

Needs `pdflatex`, `latexmk` and the usual TeX Live packages (beamer, tikz, qrcode, fontawesome5, booktabs).

```bash
make          # build slides.pdf
make watch    # rebuild on every change
make clean    # remove build/
```

## Release

Pushing a tag that starts with `v` builds the slides in GitHub Actions and attaches the PDF to a GitHub release:

```bash
git tag v0.1.0
git push origin v0.1.0
```

Pushes to `main` and pull requests only build the PDF and upload it as a workflow artifact.

## License

Slides, LaTeX source and own images: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/), see [`LICENSE`](LICENSE).
Not covered: the Xiaohongshu logo (`images/xiaohongshu.*`) and the CERN lettering in the portrait photo.
Images from [open.cob.json](https://github.com/MaxClerkwell/open.cob.json) are also CC BY 4.0.
