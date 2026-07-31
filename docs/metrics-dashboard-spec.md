# Metrics Dashboard Specification

## GitHub metrics
| Metric | Data source | Frequency | Target | Alert |
|---|---|---|---|---|
| Open/closed issues | GitHub Issues API | Weekly | net neutral or better | >20% growth 2 weeks |
| PR lead time | PR metadata | Weekly | < 7 days median | >14 days median |
| Review turnaround | PR reviews | Weekly | < 72h first review | >7 days |
| Stale item count | issue/PR labels | Weekly | < 15 open stale | >25 stale |

## Learning metrics
| Metric | Data source | Frequency | Target | Alert |
|---|---|---|---|---|
| Concept coverage by topic | `tracking/concepts.csv` | Weekly | +2/month | no change 4 weeks |
| Experiment completion by topic | `experiments/` status | Weekly | +1/month | none in month |
| Test coverage trend | `covr` reports | Monthly | non-decreasing | drop >5% |

## Community metrics
| Metric | Data source | Frequency | Target | Alert |
|---|---|---|---|---|
| Unique contributors | GitHub contributors | Monthly | +1/month | 0 new in month |
| Returning contributors | PR author history | Monthly | >=30% repeat | <15% repeat |
| Discussion engagement | Discussions analytics | Weekly | >=5 meaningful replies/week | <2 replies/week |
