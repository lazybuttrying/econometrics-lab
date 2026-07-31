# Contributing to Econometrics Lab

## Welcome
Thanks for contributing to a reproducible, implementation-first econometrics learning project.

## Ways to contribute
- Concept notes and connections
- Experiment implementations
- Reusable code in `R/`
- Tests in `tests/testthat/`
- Documentation and templates
- Visualization conventions/helpers
- Shiny teaching tools

## Prerequisites
- R
- Quarto
- Git

## Local setup
1. Clone the repository.
2. Install R dependencies.
3. Run the first experiment.
4. Render one analysis report.
5. Run tests.

## Branch naming
- `feat/<scope>-<short-description>`
- `fix/<scope>-<short-description>`
- `docs/<scope>-<short-description>`

## Commit messages
Use Conventional Commits (e.g., `feat: add LLN experiment scaffold`).

## Pull request process
- Keep PRs focused.
- Link issue/milestone.
- Fill PR checklist and include reproducibility steps.

## Required PR checklist
- [ ] Reproducible commands and seed provided
- [ ] Tests updated and passing
- [ ] Concept graph links added/updated

## Definition of Done
### Concept tasks
- Completed sections from concept template
- Connections added to graph

### Experiment tasks
- Has `config.R`, `run.R`, analysis file, and notes
- Rerunnable with relative paths and fixed seed

### Code tasks
- Reusable logic in `R/`
- Tests cover new behavior

## Review expectations
Best effort: first maintainer response within 3 business days.

## Policies
- Code of Conduct: `CODE_OF_CONDUCT.md`
- Security policy: `SECURITY.md`
- Support paths: `SUPPORT.md`

Core reference:
https://www.econometrics-with-r.org/index.html
