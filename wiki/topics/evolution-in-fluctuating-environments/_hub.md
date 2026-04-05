# Evolution in Fluctuating Environments

## What this topic is about

This topic covers populations evolving under **sequential** or **alternating** environments — where the selective pressure changes over time, one environment at a time. This includes drug cycling protocols (rotating through individual drugs in sequence), alternating therapies, and any scenario where the environment is applied serially rather than simultaneously. The defining feature is temporal heterogeneity: the organism adapts to one environment and then faces a different one.

The central question is how the history of environments shapes the evolutionary trajectory of a population. A population that has been exposed to drug A may have evolved a resistance profile that makes it more or less vulnerable to drug B — this is precisely where collateral sensitivity becomes a tool. Sequential protocols that exploit collateral effects can be designed to cycle populations through a series of vulnerable states, preventing any single resistance strategy from becoming entrenched.

A key theoretical insight is that optimal sequential treatment is not necessarily the greedy choice (always use the most effective current drug) but may require occasionally deploying a less effective drug to steer the population toward a more exploitable future state. This counterintuitive principle distinguishes evolutionary steering from naive intuition and motivates the use of formal optimization frameworks like Markov decision processes.

## Key papers

*(none yet — populate during ingest)*

## Key concepts and methods

*(none yet)*

## Open questions

- What cycling period maximizes the evolutionary cost of resistance under sequential protocols?
- How does the depth of resistance (degree of fitness cost) affect the benefits of cycling?
- Can sequential protocols maintain long-term suppression, or do populations eventually evolve cross-resistance to all drugs in the cycle?
- How does stochasticity in resistance evolution affect the performance of deterministic optimal cycling protocols?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory of evolution in changing environments | thin | No papers yet |
| Drug cycling: empirical evidence | thin | No papers yet |
| Collateral sensitivity as a basis for cycling design | thin | No papers yet |
| Optimal cycling: MDP and control-theoretic approaches | thin | No papers yet |
| Clinical implementation and adaptive therapy | thin | No papers yet |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the mechanism that makes sequential protocols exploitable
- [[topics/evolutionary-control/_hub|evolutionary-control]] — optimal sequential treatment design is a primary application of evolutionary control theory
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — contrast: sequential vs. simultaneous drug exposure
