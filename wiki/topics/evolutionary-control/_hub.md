# Evolutionary Control

## What this topic is about

Evolutionary control is the problem of designing treatment strategies that do not merely suppress a pathogen or tumor in the short term, but actively steer its evolutionary trajectory toward states that are more vulnerable, less fit, or trapped at evolutionary dead ends. The goal is not just to kill cells but to shape the population's future genetic composition.

The key conceptual departure from classical treatment optimization is the time horizon: greedy strategies (always use the most effective drug now) may be suboptimal because they do not account for the evolutionary consequences of the selection pressure they impose. A drug that works well today may select for resistance profiles that are harder to treat tomorrow. Conversely, a drug that is less effective today may steer the population toward a state where it becomes highly sensitive to a future treatment. This counterintuitive principle — that short-term sacrifice can yield long-term gain — is the core of evolutionary steering, articulated and experimentally validated by [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].

Formal frameworks for evolutionary control include Markov decision processes (MDPs), stochastic optimal control, and model predictive control. These approaches take as input a model of evolutionary dynamics (transition probabilities between resistance states) and optimize a policy (a mapping from current state to treatment choice) that maximizes long-term outcomes. [[papers/Maltas2019_CollateralSensitivity|Maltas2019]] demonstrated that an MDP built on empirically measured collateral sensitivity profiles produces drug-cycling policies that outperform intuitive protocols in laboratory evolution experiments — the first experimental validation of a control-theoretic framework for antibiotic resistance. A key mechanistic insight is that the optimal policy's success depends entirely on collateral sensitivity: when collateral effects are set to zero in simulation, resistance saturates rapidly under the same policy.

Adaptive therapy — a clinical approach that modulates treatment intensity in response to observed tumor or pathogen burden — is a related strategy that exploits competitive suppression between sensitive and resistant sub-populations, and connects this topic to frequency-dependent selection.

## Key papers

- Maltas2019 introduced a Markov decision process framework for designing optimal drug policies that outperform intuitive cycling protocols by steering populations toward vulnerable future states rather than maximizing short-term efficacy alone [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 demonstrated experimentally that MDP-derived drug sequences reduce cumulative growth and adaptation rate relative to all tested protocols — single-drug, two-drug cycles, and a four-drug cycle — in 20-day laboratory evolution experiments in *E. faecalis* [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 established that the resistance distribution under the optimal long-term policy is bimodal: low average resistance is achieved not by maintaining intermediate resistance but by alternating frequently effective drugs with rare "steering" drugs that impose transient high resistance while shepherding the population to a more vulnerable state [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that the discount factor $\gamma$ in the MDP framework allows explicit tuning between short-term (patient-level) and long-term (hospital or population-level) optimization objectives, revealing a formal trade-off between instantaneous efficacy and long-term evolutionary sustainability [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — primary formal framework for policy optimization in this lab's work; introduced for antibiotic resistance by Maltas2019
- **Value iteration** — dynamic programming algorithm used to solve the MDP and find optimal policies
- **Discount factor $\gamma$** — tunes the MDP between short-term and long-term objectives; central to characterizing the trade-off between instantaneous drug efficacy and evolutionary steering

## Open questions

- How sensitive are optimal MDP policies to errors or misspecification in the transition probabilities estimated from evolutionary experiments? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- How do optimal policies change when collateral profiles are time-varying (i.e., when epistasis causes profiles to shift as resistance accumulates)? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- Can the MDP framework be extended to account for fitness costs and drug-free "holidays" as control levers? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- What is the relative importance of collateral sensitivity versus competitive suppression (adaptive therapy) as mechanisms for evolutionary control?
- Can adaptive therapy protocols be designed that are robust to patient-to-patient variation in evolutionary dynamics?
- How do optimal policies scale to larger drug panels and longer treatment timescales than those tested experimentally?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Conceptual foundations: evolutionary steering vs. suppression | developing | Maltas2019 establishes the core principle with experimental evidence |
| MDP and stochastic control frameworks | developing | Maltas2019 is the key entry point; extensions to other systems thin |
| Adaptive therapy: theory and clinical evidence | thin | Not yet represented in wiki |
| Collateral sensitivity as a control mechanism | developing | Maltas2019 provides the mechanistic link and experimental validation |
| Robustness and model uncertainty | thin | Explicitly flagged as future work by Maltas2019 |
| Clinical translation | thin | Maltas2019 explicitly scopes to idealized lab populations; translation not addressed |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the primary mechanism exploited in the MDP framework; the control strategy depends entirely on the statistical structure of collateral profiles
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential drug protocols are the operational setting for MDP-derived cycling strategies
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — adaptive therapy exploits frequency-dependent competition between sensitive and resistant sub-populations
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — landscape topology determines which evolutionary trajectories are accessible and thus what can be controlled
