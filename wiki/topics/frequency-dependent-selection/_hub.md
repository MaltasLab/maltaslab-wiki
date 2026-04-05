# Frequency-Dependent Selection

## What this topic is about

Frequency-dependent selection describes any scenario where the fitness of a genotype depends not just on its intrinsic properties but on how common or rare it is in the population. This is a departure from the classical population genetics assumption of constant fitness, and it generates qualitatively different evolutionary dynamics: stable polymorphisms, oscillations, and evolutionary games.

In the context of this lab, frequency-dependent selection arises most naturally when sub-populations interact — for example, when drug-resistant and drug-sensitive cells compete in the same environment. The fitness of any one type depends on the composition of the population it inhabits, making evolutionary outcomes sensitive to initial frequencies and population structure. A resistance-conferring mutation that is costly in monoculture may grow substantially better when it is rare in a predominantly sensitive ancestor population — a phenomenon known as negative frequency-dependent selection (or, from the mutant's perspective, a positive ecological interaction).

[[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] establishes that this ecological dimension is not a secondary correction to resistance evolution but a primary driver. The key conceptual advance is the distinction between **intrinsic fitness** ($f_i$: monoculture growth rate) and **ecological fitness** ($f_e$: growth rate when rare in an ancestor-dominated environment). A mutant's evolutionary fate before treatment is determined more by $f_e$ than by $f_i$: extinction time depends almost entirely on $f_e$ and is independent of $N$, $\mu$, and $f_c$. This reframes preexisting resistance from a mutation-supply problem to an eco-evolutionary one — and motivates the DEE (distribution of ecological effects) as a new empirical and theoretical object, analogous to the DFE.

A core challenge is connecting theory to experiment: frequency-dependent fitness is often measured indirectly, and the lab has developed a fluorescence-based evolutionary game assay (coculture with nuclear-localized GFP and mCherry labels, time-lapse microscopy) to directly measure ecological interaction curves as a function of ancestor fraction.

A direct empirical application of this framework to a clinically derived resistance system is provided by [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]], which measured payoff matrices for a gefitinib-resistant PC9 NSCLC population and its sensitive ancestor. This work reveals a conceptually important asymmetry: **the condition for competitive exclusion is that the gain function must maintain the same sign across all population frequencies**, and monoculture fitness measurements cannot verify this condition. Even with a significant fitness cost (resistant clone grows at ~76% of sensitive monoculture rate), ecological interactions at high-sensitive fractions nearly fully compensate for the cost — implying a potential stable coexistence fixed point near $p_R \approx 0$ that could maintain resistant cells as a "safe harbor" population even in the absence of drug. Drug treatment flips the game entirely: at every tested gefitinib concentration, the gain function inverts sign and the sensitive ancestor is competitively excluded.

## Key papers

- Farrokhian2022 demonstrated experimentally that the fitness cost of gefitinib resistance in PC9 NSCLC is nearly completely ameliorated by ecological interactions at high-sensitive-population fractions, showing that monoculture fitness measurements are insufficient to predict competitive exclusion — the mathematical condition (gain function maintaining constant sign) requires frequency-resolved measurements [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

- Farrokhian2022 showed that drug application (gefitinib at any tested concentration) completely inverts the game dynamics: while the resistant clone is competitively excluded in the absence of drug, the sensitive ancestor is competitively excluded under drug, with ecological interaction strength increasing monotonically with drug concentration [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

- Maltas2024 showed that frequency-dependent ecological interactions between drug-resistant mutants and their ancestor can increase mean extinction times by up to ~5 orders of magnitude, with a closed-form approximation $\tau(f_e) \approx \frac{3\ln(1-f_e)}{f_e^2-3}$ that depends only on ecological fitness and is independent of $N$, $\mu$, and $f_c$ [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

- Maltas2024 identified three regimes of preexisting resistance as a function of $N\mu$: a regime where ecology is irrelevant (rare regardless), a regime where ecology determines whether preexistence occurs, and a regime where ecology shapes the distribution of mutants even when preexistence is guaranteed by mutation supply alone [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

- Maltas2024 derived the stationary distribution of mutant ecological fitnesses $P(f_e) \approx \frac{f_e\mu}{f_\text{max}(1-f_e)}$, showing it is heavily right-skewed toward positive ecological interactions regardless of the underlying DEE, and invariant with population size and fitness cost [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

- Maltas2024 showed that when ecological fitness exceeds 1 ($f_e > 1$), a stable coexistence fixed point emerges between mutant and ancestor, transitioning the system from a game where the ancestor always wins to a game with a stable interior equilibrium, with the fixed-point location jointly determined by $f_e$ and $f_c$ [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

- Maltas2024 validated the framework experimentally: all three engineered clinical resistance mutations to EGFR TKIs in NSCLC (BRAF-V600E, KRAS-G12V, PIK3CA-E545K) exhibit positive ecological interactions with the ancestor PC-9 cell line, surveying ~70% of known clinical resistance mechanisms to third-generation TKIs [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

## Key concepts and methods

- **Intrinsic fitness ($f_i$):** monoculture growth rate of the mutant; the standard quantity measured in resistance assays
- **Ecological fitness ($f_e$):** mutant growth rate when rare in a predominantly ancestor environment; the quantity that drives preexisting resistance dynamics
- **Fitness cost ($f_c$):** $1 - f_i$; difference between ancestor and mutant monoculture growth rates
- **Distribution of ecological effects (DEE):** the distribution of $f_e$ across the space of possible resistance mutations; introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] as the ecological analogue of the DFE
- **Evolutionary game assay:** fluorescence-based coculture at varying ancestor fractions, with time-lapse microscopy; measures growth rate as a function of ancestor frequency to quantify ecological interaction curves
- **Generalized Moran process:** birth-death model with frequency-dependent fitness; yields closed-form extinction time distributions
- **Wright-Fisher simulations:** discrete-generation model with mutation; used to simulate stationary distributions and validate analytical approximations

## Open questions

- Does the putative near-$p_R = 0$ coexistence fixed point in gefitinib-resistant PC9 cells actually maintain a resistant subpopulation at low frequency in drug-free conditions? If so, ecological mechanisms — not just mutation supply — could sustain preexisting resistance even in the absence of drug [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]
- Do the ecological interactions between drug-resistant and sensitive NSCLC cells generalize across resistance mechanisms and drugs, or is the near-zero-frequency rescue specific to KRAS G12D–EGFR dependence dynamics? [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]
- What does the DEE actually look like in real biological systems? This is the key unmeasured quantity motivating future work [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- Do positive ecological interactions between resistant mutants and their ancestors generalize across organisms (bacteria, viruses, other cancers)? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- What molecular mechanisms produce positive ecological interactions? Paracrine signaling, resource modification, public goods production? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- Can the ecological interaction between mutant and ancestor be disrupted therapeutically to accelerate extinction of preexisting resistance before treatment begins? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- How do frequency-dependent interactions between drug-resistant sub-populations (not just mutant-ancestor) affect resistance evolution under treatment?
- Under what conditions does frequency-dependent selection maintain stable polymorphism versus drive fixation or extinction?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory: frequency-dependent fitness, Moran process, Wright-Fisher | developing | Maltas2024 provides a full treatment focused on preexisting resistance |
| Extinction time distributions and analytical approximations | strong | Maltas2024 derives closed-form results with wide parameter validation |
| Three regimes of preexisting resistance | developing | Maltas2024 establishes the framework; empirical tests across systems needed |
| Stationary distribution of ecological fitnesses and the DEE | developing | Maltas2024 introduces the DEE; no empirical DEE measurements exist yet |
| Evolutionary game theory and stable coexistence | developing | Maltas2024 treats the $f_e > 1$ regime; Farrokhian2022 provides empirical near-zero-frequency rescue example |
| Experimental measurement: evolutionary game assay | developing | Farrokhian2022 characterizes gefitinib resistance context; Maltas2024 characterizes engineered resistance mutations |
| Competitive exclusion criteria and game inversion under drug | developing | Farrokhian2022 establishes the gain-function condition and documents drug-induced game flip |
| Implications for treatment design | developing | Farrokhian2022 shows lower doses can improve long-term tumor burden by maintaining heterogeneity |

## Cross-topic connections

- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — the DEE introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] is the ecological analogue of the DFE; both describe distributions over mutation space
- [[topics/evolutionary-control/_hub|evolutionary-control]] — frequency-dependent interactions between sensitive and resistant sub-populations are the mechanism exploited by adaptive therapy; Maltas2024 raises the possibility of disrupting ecological rescue as a pre-treatment control strategy
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — frequency-dependent fitness modifies the effective fitness landscape experienced by rare mutants
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — sub-population interactions under combination therapy are often frequency-dependent
