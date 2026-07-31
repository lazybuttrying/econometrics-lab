# Monthly Release Rhythm

## Release train
- **Week 1**: plan/scope
- **Week 2**: implement
- **Week 3**: stabilize
- **Week 4**: release + retrospective

## Versioning (0.y.z)
- Increment `y` for milestone-level delivery
- Increment `z` for fixes/polish

## Freeze policy
Feature freeze starts at week 3 end; only stabilization and fixes after freeze.

## Go/No-go checklist
- [ ] CI green
- [ ] Concept gate green
- [ ] Changelog and notes ready
- [ ] No critical open blockers

## Hotfix path
Patch from latest tag, open fast-track PR, tag `v0.y.(z+1)` after CI passes.
