# Quarto Rules

## Purpose
Use `.qmd` for reproducible analyses, teaching reports, and experiment narratives.

## Allowed locations
- `experiments/**/analysis.qmd`
- `projects/**` for report-like artifacts
- docs only when publication-ready content is needed

## Required sections
Each analysis must include: Goal, Inputs, Method, Results, Interpretation, Reproducibility Notes, Next Steps.

## Reproducibility standards
- Use relative paths only.
- Set and document seed.
- Keep code chunks executable end-to-end.
- Avoid manual edits to generated figures/tables.

## Output policy
Render outputs to `outputs/reports/` (or experiment-local output folders when explicitly required).

## PR checklist
- [ ] `.qmd` renders locally with declared params
- [ ] Seed and inputs documented
- [ ] Output path is reproducible
- [ ] Related concept and experiment links updated
