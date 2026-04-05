# Evolutionary Control

## What this topic is about

Evolutionary control is the problem of designing treatment strategies that do not merely suppress a pathogen or tumor in the short term, but actively steer its evolutionary trajectory toward states that are more vulnerable, less fit, or trapped at evolutionary dead ends. The goal is not just to kill cells but to shape the population's future genetic composition.

The key conceptual departure from classical treatment optimization is the time horizon: greedy strategies (always use the most effective drug now) may be suboptimal because they do not account for the evolutionary consequences of the selection pressure they impose. A drug that works well today may select for resistance profiles that are harder to treat tomorrow. Conversely, a drug that is less effective today may steer the population toward a state where it becomes highly sensitive to a future treatment. This counterintuitive principle — that short-term sacrifice can yield long-term gain — is the core of evolutionary steering.

Formal frameworks for evolutionary control include Markov decision processes (MDPs), stochastic optimal control, and model predictive control. These approaches take as input a model of evolutionary dynamics (transition probabilities between resistance states) and optimize a policy (a mapping from current state to treatment choice) that maximizes long-term outcomes. Adaptive therapy — a clinical approach that modulates treatment intensity in response to observed tumor or pathogen burden — is a related strategy that exploits competitive suppression between sensitive and resistant sub-populations.

## Key papers

*(none yet — populate during ingest)*

## Key concepts and methods

*(none yet)*

## Open questions

- How sensitive are optimal control policies to errors in the underlying evolutionary model?
- Can adaptive therapy protocols be designed that are robust to patient-to-patient variation in evolutionary dynamics?
- What is the relative importance of collateral sensitivity versus competitive suppression as mechanisms for evolutionary control?
- How do optimal policies change when resistance evolution is stochastic rather than deterministic?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Conceptual foundations: evolutionary steering vs. suppression | thin | No papers yet |
| MDP and stochastic control frameworks | thin | No papers yet |
| Adaptive therapy: theory and clinical evidence | thin | No papers yet |
| Collateral sensitivity as a control mechanism | thin | No papers yet |
| Robustness and model uncertainty | thin | No papers yet |
| Clinical translation | thin | No papers yet |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the primary mechanism exploited in drug-cycling control strategies
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential treatment protocols are the operational setting for most evolutionary control strategies
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — adaptive therapy exploits frequency-dependent competition between sensitive and resistant sub-populations
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — landscape topology determines which evolutionary trajectories are accessible and thus what can be controlled
