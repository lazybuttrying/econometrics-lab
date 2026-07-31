# Initial Issues Backlog

## 1) docs: finalize chapter-pipeline.md with mandatory outputs
- Problem: chapter lifecycle and deliverables need formal definition.
- Checklist: define chapter lifecycle; specify required outputs per chapter; link templates.
- Acceptance: `docs/chapter-pipeline.md` exists and is referenced in README.
- Labels: docs, priority:high
- Milestone: Probability & Statistics Foundation

## 2) docs: create 8-week learning-plan.md aligned to Econometrics with R
- Problem: learning plan is needed for pacing and chapter progression.
- Checklist: weekly goals, concepts, experiment, coding objective, reflection objective; include https://www.econometrics-with-r.org/index.html.
- Acceptance: `docs/learning-plan.md` complete for 8 weeks.
- Labels: docs, concept, priority:high
- Milestone: Probability & Statistics Foundation

## 3) docs: create milestones.md progress tracker with completion criteria
- Problem: milestone completion criteria are not consolidated.
- Acceptance: tracker defines criteria for all major milestones.
- Labels: docs, priority:medium
- Milestone: Probability & Statistics Foundation

## 4) concept: add expectation concept page using template
- Problem: expectation concept needs complete page using template.
- Acceptance: page includes template sections and knowledge links.
- Labels: concept, good first issue, priority:high
- Milestone: Probability & Statistics Foundation

## 5) concept: add variance concept page using template
- Problem: variance concept page is pending.
- Acceptance: page includes template sections and knowledge links.
- Labels: concept, good first issue, priority:high
- Milestone: Probability & Statistics Foundation

## 6) concept: add covariance concept page using template
- Problem: covariance concept page is pending.
- Acceptance: page includes template sections and knowledge links.
- Labels: concept, good first issue, priority:medium
- Milestone: Probability & Statistics Foundation

## 7) experiment: implement law-of-large-numbers experiment scaffold
- Problem: LLN experiment is scaffold-only.
- Checklist: `config.R`, `run.R`, `analysis.R`, `notes.md`, `outputs/`; hypothesis and expected result documented.
- Acceptance: experiment runs and produces reproducible output.
- Labels: experiment, priority:high
- Milestone: Probability & Statistics Foundation

## 8) experiment: implement sampling-distribution experiment scaffold
- Problem: sampling-distribution experiment is scaffold-only.
- Acceptance: reproducible run + analysis assets available.
- Labels: experiment, priority:high
- Milestone: Probability & Statistics Foundation

## 9) src: add reusable simulation helpers for repeated sampling
- Problem: repeated sampling logic should be centralized.
- Checklist: move helpers to reusable layer; roxygen docs; no duplicated logic.
- Acceptance: helpers used by at least two experiments.
- Labels: src, experiment, priority:high
- Milestone: Probability & Statistics Foundation

## 10) tests: expand testthat coverage for probability helpers
- Problem: edge case coverage is limited.
- Acceptance: edge cases covered and tests pass in CI.
- Labels: tests, priority:high
- Milestone: Probability & Statistics Foundation

## 11) ci: enforce concept completion gate in workflow
- Problem: concept-gate policy should be CI-enforced.
- Acceptance: CI fails when active/completed concepts violate required flags.
- Labels: ci, tests, priority:medium
- Milestone: Probability & Statistics Foundation

## 12) visualization: define shared plotting conventions and theme helper
- Problem: visual style and reusable theming are not standardized.
- Acceptance: style guide in `visualization/themes/README.md` and helper in reusable code.
- Labels: visualization, src, priority:medium
- Milestone: Regression Core

## 13) shiny: scaffold projects/inference-explorer app structure
- Problem: inference explorer needs baseline app structure.
- Acceptance: app boots and contains placeholder module wiring.
- Labels: shiny, experiment, priority:medium, help wanted
- Milestone: Public Teaching Toolkit v1

## 14) data: add dataset metadata templates and CASchools data card
- Problem: data governance docs need starter templates.
- Acceptance: metadata template exists and `CASchools.md` completed with fields.
- Labels: data, docs, priority:medium
- Milestone: Regression Core
