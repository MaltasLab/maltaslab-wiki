# Evolutionary Control

## What this topic is about

Evolutionary control is the problem of designing treatment strategies that do not merely suppress a pathogen or tumor in the short term, but actively steer its evolutionary trajectory toward states that are more vulnerable, less fit, or trapped at evolutionary dead ends. The goal is not just to kill cells but to shape the population's future genetic composition.

The key conceptual departure from classical treatment optimization is the time horizon: greedy strategies (always use the most effective drug now) may be suboptimal because they do not account for the evolutionary consequences of the selection pressure they impose. A drug that works well today may select for resistance profiles that are harder to treat tomorrow. Conversely, a drug that is less effective today may steer the population toward a state where it becomes highly sensitive to a future treatment. This counterintuitive principle — that short-term sacrifice can yield long-term gain — is the core of evolutionary steering, articulated and experimentally validated by [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]].

Formal frameworks for evolutionary control include Markov decision processes (MDPs), stochastic optimal control, and model predictive control. These approaches take as input a model of evolutionary dynamics (transition probabilities between resistance states) and optimize a policy (a mapping from current state to treatment choice) that maximizes long-term outcomes. [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] demonstrated that an MDP built on empirically measured collateral sensitivity profiles produces drug-cycling policies that outperform intuitive protocols in laboratory evolution experiments — the first experimental validation of a control-theoretic framework for antibiotic resistance. A key mechanistic insight is that the optimal policy's success depends entirely on collateral sensitivity: when collateral effects are set to zero in simulation, resistance saturates rapidly under the same policy.

A critical limitation of the static MDP is that collateral profiles are not fixed — they evolve as resistance accumulates. [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] showed that this limitation is not merely theoretical: static MDP policies can fail even when they transiently create collateral sensitivity states, because without knowledge of when those states occur in evolutionary time, the policy cannot exploit them forward. The dynamic MDP (d-MDP) framework addresses this by solving a sequence of MDPs in reverse chronological order, incorporating the value of future collateral states into current decisions via backward induction. This achieves 50% lower cumulative resistance than the best static policy in simulation. The framework establishes a deeper principle: **the control problem is not just "what is the optimal sequence of drugs?" but "what is the optimal sequence given that the relationship between drugs is itself changing?"** — making evolutionary control an intrinsically time-varying optimization problem.

A complementary mechanism for evolutionary control — distinct from collateral sensitivity but structurally analogous — is **drug dependence**: the phenomenon where a drug-resistant cell population grows faster *in the presence* of the drug it is resistant to than without it. [[papers/Maltas2023_DrugDependence|Maltas2023]] demonstrated that this property can be analytically optimized: given measurable per-capita growth rates for sensitive and dependent-resistant subpopulations under drug-on and drug-off conditions, the optimal fraction of time on drug is $f_\text{on} = 1/(1+\gamma)$, where $\gamma$ depends only on those four growth rates. This schedule uniquely maintains population heterogeneity and achieves lower total growth than either static treatment. Crucially, a "blind" adaptive therapy algorithm — requiring only population-level size measurements — converges to near-optimal outcomes, making the framework clinically actionable. The underlying principle is the same as collateral sensitivity-based control: both exploit a *cost of resistance* — a state where the resistance mechanism itself creates vulnerability — to design strategies that prevent any single resistance strategy from prevailing.

Adaptive therapy — a clinical approach that modulates treatment intensity in response to observed tumor or pathogen burden — is a related strategy that exploits competitive suppression between sensitive and resistant sub-populations, and connects this topic to frequency-dependent selection. [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] provides direct empirical grounding for this rationale in NSCLC: lower drug doses prolong competitive suppression of resistant cells by the sensitive ancestor, maintaining heterogeneity longer and achieving better long-term tumor burden than maximally effective doses — an ecologically-parameterized demonstration that **higher dose is not always better** when resistant and sensitive populations are in active ecological competition.

## Key papers

- Farrokhian2022 demonstrated empirically in PC9 NSCLC that lower gefitinib doses can produce better long-term tumor burden control than higher doses: lower concentrations maintain competition-mediated suppression of resistant cells by prolonging heterogeneity, while higher concentrations extinguish sensitive cells faster and release the resistant subpopulation from competitive constraint sooner [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

- Farrokhian2022 showed that incorporating frequency-dependent ecological effects into competition simulations (Lotka-Volterra and replicator dynamics with empirically derived payoff matrices) substantially changes predictions for sensitive-cell extinction rate compared to monoculture-based models — ecological interactions accelerate competitive exclusion at every population fraction, meaning monotypic growth measurements systematically underestimate the speed of resistance dynamics [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

- Maltas2019a introduced a Markov decision process framework for designing optimal drug policies that outperform intuitive cycling protocols by steering populations toward vulnerable future states rather than maximizing short-term efficacy alone [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a demonstrated experimentally that MDP-derived drug sequences reduce cumulative growth and adaptation rate relative to all tested protocols — single-drug, two-drug cycles, and a four-drug cycle — in 20-day laboratory evolution experiments in *E. faecalis* [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a established that the resistance distribution under the optimal long-term policy is bimodal: low average resistance is achieved not by maintaining intermediate resistance but by alternating frequently effective drugs with rare "steering" drugs that impose transient high resistance while shepherding the population to a more vulnerable state [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a showed that the discount factor $\gamma$ in the MDP framework allows explicit tuning between short-term (patient-level) and long-term (hospital or population-level) optimization objectives, revealing a formal trade-off between instantaneous efficacy and long-term evolutionary sustainability [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2025 introduced the dynamic MDP (d-MDP) — a backward-induction extension of the static MDP that accounts for time-varying collateral profiles by solving sequential MDPs in reverse chronological order, incorporating the future-state value into each period's reward; d-MDP achieves 50% lower total resistance compared to the best static MDP derived from any single time-point's collateral data [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2025 showed that static MDP policies fail not by failing to create collateral sensitivity states but by failing to exploit them: without knowledge of when in evolutionary time those states occur, the policy cannot guide the population through them, and the evolving collateral landscape leaves it stranded in high-resistance configurations [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2023 derived the analytically optimal drug holiday schedule for drug-dependent cancer: $f_\text{on} = 1/(1+\gamma)$ where $\gamma = (k_{1,\text{on}} - k_{2,\text{on}})/(k_{2,\text{off}} - k_{1,\text{off}})$; this schedule uniquely maintains population heterogeneity and achieves lower total growth than static drug or drug-free treatment in BRAF V600E melanoma; validated experimentally in 9-day and 48-day mixed-population experiments [[papers/Maltas2023_DrugDependence|Maltas2023]]

- Maltas2023 demonstrated that a "blind" adaptive therapy algorithm — using only total population size measurements, without knowledge of individual subpopulation growth rates — approximates the optimal drug holiday schedule and maintains near-50:50 heterogeneity over 48 days in mixed sensitive/dependent-resistant populations [[papers/Maltas2023_DrugDependence|Maltas2023]]

- Maltas2023 showed that melanocytic differentiation state (MITFhigh, SOX10high) predicts drug dependence in BRAF V600E melanoma — MITF loss during resistance acquisition causes cells to retain sensitivity to ERK hyperactivation, trapping them in drug dependence — enabling patient stratification for holiday-based therapy [[papers/Maltas2023_DrugDependence|Maltas2023]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — primary formal framework for policy optimization in this lab's work; introduced for antibiotic resistance by Maltas2019a
- **Value iteration** — dynamic programming algorithm used to solve the MDP and find optimal policies
- **Discount factor $\gamma$** — tunes the MDP between short-term and long-term objectives; central to characterizing the trade-off between instantaneous drug efficacy and evolutionary steering
- **Drug holiday optimal fraction** $f_\text{on} = 1/(1+\gamma)$ — analytically optimal fraction of time on drug for drug-dependent populations; derived from four measurable growth rates [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **Blind adaptive therapy algorithm** — feedback-based schedule that switches between drug and drug-free based on observed population growth rates; approximates optimal outcome without subpopulation measurements [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **2D on-lattice agent-based model (ABM)** — spatial simulation tool validating well-mixed model predictions; implemented via Hybrid Automata Library [[papers/Maltas2023_DrugDependence|Maltas2023]]

## Open questions

- How sensitive are optimal MDP policies to errors or misspecification in the transition probabilities estimated from evolutionary experiments? [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
- ~~How do optimal policies change when collateral profiles are time-varying?~~ **Addressed by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]**: the d-MDP framework solves the time-varying problem via backward induction; policies derived from single-timepoint collateral data diverge substantially from the temporally optimal policy, particularly at later stages of evolution. New open question: can d-MDP policies be made robust to uncertainty in *when* evolutionary transitions between collateral regimes occur?
- Can the MDP framework be extended to account for fitness costs and drug-free "holidays" as control levers? [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
- Can the dose-heterogeneity trade-off observed in Farrokhian2022 be formalized as an optimal dosing problem — what concentration minimizes total tumor burden over a clinically relevant time horizon? [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]
- What is the relative importance of collateral sensitivity versus competitive suppression (adaptive therapy) as mechanisms for evolutionary control?
- Can adaptive therapy protocols be designed that are robust to patient-to-patient variation in evolutionary dynamics?
- Does drug dependence arise in other targeted therapy systems (e.g., EGFR inhibition in NSCLC) and is melanocytic differentiation state logic generalizable to other lineage-defining transcription factors? [[papers/Maltas2023_DrugDependence|Maltas2023]]
- Does the drug holiday schedule itself eventually select for escape? What is the long-term evolutionary fate of drug-dependent populations under optimally scheduled intermittent treatment? [[papers/Maltas2023_DrugDependence|Maltas2023]]
- Can pre-treatment biopsy transcriptomics prospectively identify drug-dependence-susceptible tumors — and is this achievable from liquid biopsy / ctDNA surveillance alone? [[papers/Maltas2023_DrugDependence|Maltas2023]]
- How do optimal policies scale to larger drug panels and longer treatment timescales than those tested experimentally?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Conceptual foundations: evolutionary steering vs. suppression | developing | Maltas2019a establishes the core principle; Maltas2025 extends it to dynamic landscapes |
| MDP and stochastic control frameworks | developing | Maltas2019a (static MDP) and Maltas2025 (d-MDP) are the key entries; extensions to other systems thin |
| Dynamic/time-varying optimal control | developing | Maltas2025 establishes the d-MDP framework; generalizations to realistic clinical settings needed |
| Adaptive therapy: theory and clinical evidence | developing | Maltas2023 provides theory, experimental validation, and ABM; Farrokhian2022 provides ecological grounding for dose-heterogeneity trade-off |
| Drug dependence as a control mechanism | developing | Maltas2023 establishes the framework and patient stratification logic; generality to other cancers needed |
| Collateral sensitivity as a control mechanism | developing | Maltas2019a and Maltas2025 provide the mechanistic link and experimental validation |
| Robustness and model uncertainty | thin | Explicitly flagged as future work; d-MDP adds temporal uncertainty as a new robustness challenge |
| Clinical translation | thin | Both lab papers explicitly scope to idealized laboratory populations; translation not addressed |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the primary mechanism exploited in the MDP framework; the control strategy depends entirely on the statistical structure of collateral profiles
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential drug protocols are the operational setting for MDP-derived cycling strategies
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — adaptive therapy exploits frequency-dependent competition between sensitive and resistant sub-populations
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — landscape topology determines which evolutionary trajectories are accessible and thus what can be controlled
