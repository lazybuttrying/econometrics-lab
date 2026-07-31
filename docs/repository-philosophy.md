# Repository Philosophy

Mission: Build econometrics understanding through implementation, simulation, visualization, and reflection.

Lifecycle:
Concept → Question → Simulation → Visualization → Experiment → Reusable Code → Interactive Playground → Mini Project → Reflection

Core reference:
https://www.econometrics-with-r.org/index.html

Rules:
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
