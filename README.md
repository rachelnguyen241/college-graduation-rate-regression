# college-graduation-rate-regression

# College Graduation Rate Regression

An original econometrics project testing whether tuition price predicts six-year graduation rates at four-year U.S. institutions — and demonstrating how a seemingly significant effect can disappear once a confounding variable is controlled for.

## Purpose

Can tuition be used as a proxy for institutional quality or student outcomes? This project tests that assumption directly, and more broadly demonstrates how to diagnose omitted variable bias and confounding in a regression — not just run one and report the coefficient.

## Data

- **Source:** [NCES College Navigator](https://nces.ed.gov/collegenavigator/)
- **Sample:** 25 four-year, degree-granting U.S. institutions, hand-collected and verified against the source
- **Variables:** published in-state tuition & fees (2024–25), undergraduate enrollment (fall 2024), six-year graduation rate (most recent cohort), public/private status

## Method

OLS regression in Stata, estimated in two steps:

1. Six-year graduation rate on tuition alone
2. Six-year graduation rate on tuition, enrollment, and private/public status

## Key finding

| | (1) Tuition only | (2) + Enrollment + Private |
|---|---|---|
| Tuition | 0.000138** (p=0.041) | 0.000390 (p=0.223) |
| Enrollment | — | -0.000620*** (p=0.001) |
| Private | — | -30.99* (p=0.077) |
| N | 25 | 25 |
| R² | 0.169 | 0.548 |

Tuition's coefficient looked statistically significant on its own — but that effect **disappeared** once enrollment was added to the model. Enrollment turned out to be the real, significant predictor: larger schools have lower graduation rates, and because large public schools also tend to charge lower tuition, that correlation had been propping up tuition's coefficient in the simple model (a classic suppression effect).

**What's likely still missing:** student selectivity (e.g. average incoming SAT/ACT score). More selective schools tend to charge higher tuition *and* have higher graduation rates for reasons
