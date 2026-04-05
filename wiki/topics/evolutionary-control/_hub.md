# Evolutionary Control

## What this topic is about

Evolutionary control is the problem of designing treatment strategies that do not merely suppress a pathogen or tumor in the short term, but actively steer its evolutionary trajectory toward states that are more vulnerable, less fit, or trapped at evolutionary dead ends. The goal is not just to kill cells but to shape the population's future genetic composition.

The key conceptual departure from classical treatment optimization is the time horizon: greedy strategies (always use the most effective drug now) may be suboptimal because they do not account for the evolutionary consequences of the selection pressure they impose. A drug that works well today may select for resistance profiles that are harder to treat tomorrow. Conversely, a drug that is less effective today may steer the population toward a state where it becomes highly sensitive to a future treatment. This counterintuitive principle — that short-term sacrifice can yield long-term gain — is the core of evolutionary steering, articulated and experimentally validated by [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].

Formal frameworks for evolutionary control include Markov decision processes (MDPs), stochastic optimal control, and model predictive control. These approaches take as input a model of evolutionary dynamics (transition probabilities between resistance states) and optimize a policy (a mapping from current state to treatment choice) that maximizes long-term outcomes. [[papers/Maltas2019_CollateralSensitivity|Maltas2019]] demonstrated that an MDP built on empirically measured collateral sensitivity profiles produces drug-cycling policies that outperform intuitive protocols in laboratory evolution experiments — the first experimental validation of a control-theoretic framework for antibiotic resistance. A key mechanistic insight is that the optimal policy's success depends entirely on collateral sensitivity: when collateral effects are set to zero in simulation, resistance saturates rapidly under the same policy.

A critical limitation of the static MDP is that collateral profiles are not fixed — they evolve as resistance accumulates. [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] showed that this limitation is not merely theoretical: static MDP policies can fail even when they transiently create collateral sensitivity states, because without knowledge of when those states occur in evolutionary time, the policy cannot exploit them forward. The dynamic MDP (d-MDP) framework addresses this by solving a sequence of MDPs in reverse chronological order, incorporating the value of future collateral states into current decisions via backward induction. This achieves 50% lower cumulative resistance than the best static policy in simulation. The framework establishes a deeper principle: **the control problem is not just "what is the optimal sequence of drugs?" but "what is the optimal sequence given that the relationship between drugs is itself changing?"** — making evolutionary control an intrinsically time-varying optimization problem.

Adaptive therapy — a clinical approach that modulates treatment intensity in response to observed tumor or pathogen burden — is a related strategy that exploits competitive suppression between sensitive and resistant sub-populations, and connects this topic to frequency-dependent selection.

## Key papers

- Maltas2019 introduced a Markov decision process framework for designing optimal drug policies that outperform intuitive cycling protocols by steering populations toward vulnerable future states rather than maximizing short-term efficacy alone [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 demonstrated experimentally that MDP-derived drug sequences reduce cumulative growth and adaptation rate relative to all tested protocols — single-drug, two-drug cycles, and a four-drug cycle — in 20-day laboratory evolution experiments in *E. faecalis* [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 established that the resistance distribution under the optimal long-term policy is bimodal: low average resistance is achieved not by maintaining intermediate resistance but by alternating frequently effective drugs with rare "steering" drugs that impose transient high resistance while shepherding the population to a more vulnerable state [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that the discount factor $\gamma$ in the MDP framework allows explicit tuning between short-term (patient-level) and long-term (hospital or population-level) optimization objectives, revealing a formal trade-off between instantaneous efficacy and long-term evolutionary sustainability [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2025 introduced the dynamic MDP (d-MDP) — a backward-induction extension of the static MDP that accounts for time-varying collateral profiles by solving sequential MDPs in reverse chronological order, incorporating the future-state value into each period's reward; d-MDP achieves 50% lower total resistance compared to the best static MDP derived from any single time-point's collateral data [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2025 showed that static MDP policies fail not by failing to create collateral sensitivity states but by failing to exploit them: without knowledge of when in evolutionary time those states occur, the policy cannot guide the population through them, and the evolving collateral landscape leaves it stranded in high-resistance configurations [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — primary formal framework for policy optimization in this lab's work; introduced for antibiotic resistance by Maltas2019
- **Value iteration** — dynamic programming algorithm used to solve the MDP and find optimal policies
- **Discount factor $\gamma$** — tunes the MDP between short-term and long-term objectives; central to characterizing the trade-off between instantaneous drug efficacy and evolutionary steering

## Open questions

- How sensitive are optimal MDP policies to errors or misspecification in the transition probabilities estimated from evolutionary experiments? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- ~~How do optimal policies change when collateral profiles are time-varying?~~ **Addressed by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]**: the d-MDP framework solves the time-varying problem via backward induction; policies derived from single-timepoint collateral data diverge substantially from the temporally optimal policy, particularly at later stages of evolution. New open question: can d-MDP policies be made robust to uncertainty in *when* evolutionary transitions between collateral regimes occur?
- Can the MDP framework be extended to account for fitness costs and drug-free "holidays" as control levers? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- What is the relative importance of collateral sensitivity versus competitive suppression (adaptive therapy) as mechanisms for evolutionary control?
- Can adaptive therapy protocols be designed that are robust to patient-to-patient variation in evolutionary dynamics?
- How do optimal policies scale to larger drug panels and longer treatment timescales than those tested experimentally?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Conceptual foundations: evolutionary steering vs. suppression | developing | Maltas2019 establishes the core principle; Maltas2025 extends it to dynamic landscapes |
| MDP and stochastic control frameworks | developing | Maltas2019 (static MDP) and Maltas2025 (d-MDP) are the key entries; extensions to other systems thin |
| Dynamic/time-varying optimal control | developing | Maltas2025 establishes the d-MDP framework; generalizations to realistic clinical settings needed |
| Adaptive therapy: theory and clinical evidence | thin | Not yet represented in wiki |
| Collateral sensitivity as a control mechanism | developing | Maltas2019 and Maltas2025 provide the mechanistic link and experimental validation |
| Robustness and model uncertainty | thin | Explicitly flagged as future work; d-MDP adds temporal uncertainty as a new robustness challenge |
| Clinical translation | thin | Both lab papers explicitly scope to idealized laboratory populations; translation not addressed |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the primary mechanism exploited in the MDP framework; the control strategy depends entirely on the statistical structure of collateral profiles
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential drug protocols are the operational setting for MDP-derived cycling strategies
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — adaptive therapy exploits frequency-dependent competition between sensitive and resistant sub-populations
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — landscape topology determines which evolutionary trajectories are accessible and thus what can be controlled
