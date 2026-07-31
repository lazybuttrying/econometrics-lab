# Econometrics Lab

![CI](https://img.shields.io/github/actions/workflow/status/OWNER/REPO/ci.yml?branch=main&label=ci)
![License](https://img.shields.io/github/license/OWNER/REPO)
![Last Commit](https://img.shields.io/github/last-commit/OWNER/REPO)
![Open Issues](https://img.shields.io/github/issues/OWNER/REPO)
![Open PRs](https://img.shields.io/github/issues-pr/OWNER/REPO)

A reproducible learning framework for econometrics through implementation, simulation, visualization, and reflection.

> Replace `OWNER/REPO` in badges with `lazybuttrying/econometrics-lab` after default branch setup.

## Why this repository exists
This repository exists to turn econometrics study into reusable, testable, and explainable artifacts that contributors can extend over time.

## Learning lifecycle
Concept → Question → Simulation → Visualization → Experiment → Reusable Code → Interactive Playground → Mini Project → Reflection

## Repository principles
1. No duplicated code. Anything reused twice belongs in `R/` (or temporarily `src/` during migration).
2. No manual figures. Every figure must be reproducible from code.
3. One experiment = one directory with its own configuration and analysis.
4. One concept = one knowledge page with links to related concepts.
5. Projects only integrate existing components. New logic should be developed in reusable layers first.
6. Every chapter ends with a reflection before moving on.
7. Every concept must connect to the knowledge graph.
8. Relative paths only; no machine-specific absolute paths.
9. Seed must be set for simulation-based analyses.
10. CI must fail if tests or concept-gate checks fail.

## Quickstart
```bash
git clone https://github.com/OWNER/REPO.git
cd REPO
Rscript -e "install.packages(c('ggplot2','dplyr','testthat','lintr','styler','quarto'))"
Rscript experiments/probability/central-limit-theorem/run.R
Rscript scripts/render-report.R experiments/probability/central-limit-theorem/analysis.qmd experiments/probability/central-limit-theorem 123
Rscript -e "testthat::test_dir('tests/testthat')"
```

## First 45 Minutes in Econometrics Lab
1. Read `docs/repository-philosophy.md`.
2. Open `concepts/probability/random-variable/README.md`.
3. Run the CLT experiment in `experiments/probability/central-limit-theorem/`.
4. Render the analysis report with `scripts/render-report.R`.
5. Check `knowledge/graph.md` and related links.
6. Pick one `good first issue` in GitHub issues.

## Repository map
- `concepts/`: concept knowledge pages.
- `experiments/`: reproducible experiment units.
- `R/`: reusable functions.
- `projects/`: integrated teaching/playground apps.
- `knowledge/`: glossary and graph artifacts.
- `docs/`: roadmap, process, governance, releases, growth.
- `templates/`: reusable templates for concepts and experiments.
- `tests/`: testthat tests.

## Reproducibility principles
- Seed all simulation code.
- Use relative paths only.
- Keep generated outputs reproducible from code.
- Keep tests and concept-gate checks green.

## Core reference
https://www.econometrics-with-r.org/index.html

## Roadmap status
See `docs/roadmap.md`, `docs/milestones.md`, and `docs/growth-plan-6-months.md`.
Current focus: Probability & Statistics Foundation milestone.

## Contributing
Start with `CONTRIBUTING.md`, then review `CODE_OF_CONDUCT.md` and `SECURITY.md`.

## License
MIT License. See `LICENSE`.
