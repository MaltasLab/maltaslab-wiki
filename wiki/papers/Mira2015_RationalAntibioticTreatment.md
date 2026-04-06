---
title: "Rational Design of Antibiotic Treatment Plans: A Treatment Strategy for Managing Evolution and Reversing Resistance"
authors: [Mira PM, Crona K, Greene D, Meza JC, Sturmfels B, Barlow M]
year: 2015
venue: "PLoS ONE"
doi: "10.1371/journal.pone.0122283"
arxiv: ""
topics: [fitness-landscapes, evolutionary-control, genetic-epistasis]
lab_paper: false
canonical: false
relevance: high
ingested_by: "jamaltas"
---

## Summary

Mira et al. constructed the first fully empirical fitness landscape for *E. coli* TEM-1 β-lactamase resistance, measuring growth rates for all 16 genotypes defined by four binary amino acid substitutions (M69L, E104K, G238S, N276D) across 15 β-lactam antibiotics. Using these growth rates to compute substitution transition probabilities under two models (the growth-rate-weighted Correlated Probability Model and the rank-order Equal Probability Model), the authors performed an exhaustive search over all antibiotic sequences of length $k$ (up to $k = 6$) to identify treatment paths that maximize the probability of the population returning from any of the 16 resistant genotypes to the drug-susceptible wild type (TEM-1). Optimal treatment paths achieve return probabilities of 0.6–1.0 (CPM) and 0.38–1.0 (EPM); cyclical plans that start and end at wild type achieve probabilities of 0.62–0.7.

## Conceptual contribution

The paper's central contribution is establishing **proof-of-principle for computationally designed resistance-reversing antibiotic sequences**: by treating resistance evolution as a Markov chain on a measured fitness landscape and maximizing the transition probability from a resistant genotype back to wild type, a planned succession of antibiotics can reliably guide the population back to drug susceptibility. This reframes the antibiotic treatment problem from "suppress resistance" to "reverse resistance" — a strictly stronger goal. The transition matrix product $M(f_{a_1}) \cdot M(f_{a_2}) \cdots M(f_{a_k})$ compactly encodes the probability of evolving from any genotype $u$ to any genotype $v$ under a drug sequence $a_1, a_2, \ldots, a_k$; the entry $(u, v)$ of this product is the desired objective to maximize.

A secondary conceptual contribution is the **cyclical treatment plan**: paths that both start and end at wild type (0000), which can in principle be repeated indefinitely to maintain susceptibility. The CPM cyclical plans achieve probabilities of 0.62–0.7, establishing that self-reinforcing (cycling-back-to-wild-type) protocols are feasible and quantifiable. This provides a mechanistic basis and empirical grounding for the drug-cycling strategies later formalized by MDP and RL frameworks.

The paper also introduces the **two-model comparison** (CPM vs. EPM) as a sensitivity check for the dependence of results on the specific transition probability model. CPM is appropriate when fitness differences are small (fixation probability scales linearly with fitness difference in the weak selection limit); EPM is appropriate when fitness differences are large and fixation probabilities are approximately equal for all beneficial mutations. The relative agreement between CPM and EPM results across optimal paths validates the robustness of the identified treatment sequences.

## Key findings

- Complete 16×15 growth rate matrix (Table 4) for TEM β-lactamase: all 16 genotypes (0000 through 1111 in binary notation for M69L, E104K, G238S, N276D) × 15 β-lactam antibiotics measured in *E. coli* DH5α-E; this is the foundational empirical landscape used as benchmark in downstream control studies
- Genotype rank orders (Table 5) show high pleiotropy across drugs: every genotype ranks 5 or better (and 13 or worse) in at least one drug's landscape, confirming abundant fitness pleiotropy as drug selective pressure changes — the mechanistic basis for resistance reversal via drug switching
- CPM optimal return probabilities (Tables 6–7): range from 0.6 to 1.0 depending on starting genotype and path length; probabilities often stagnate after a limited number of steps; 1111 (TEM-50) achieves probability 1.0 under optimal 4–6 step CPM paths
- EPM optimal return probabilities (Tables 8–9): range from 0.375 to 1.0; some genotypes require more steps or have intrinsically lower maximum probabilities under EPM; CPM and EPM often agree on which antibiotics to use but differ in probabilities assigned to specific steps
- Cyclical CPM treatment paths (Table 12, Fig. 18): 2-step through 6-step cycles starting and ending at 0000 achieve probabilities 0.62–0.70; two-drug cycles are the most efficient (probability 0.70 for AM/TZP cycling between 0000 and 0010 states)
- The discrete optimization problem (identifying the drug sequence maximizing return probability) is computationally exponential in sequence length: $15^k$ sequences must be evaluated for length-$k$ paths; feasible up to $k = 6$ on the TEM landscape but not generally tractable for large $k$
- Supplemental analysis demonstrates that maximum return probability can increase indefinitely with path length in some systems (3-locus example where alternating two drugs increases probability from 0.9 to 0.99 to 0.999), but this does not always occur — the TEM landscape saturates relatively quickly

## Methods

- 16 TEM variant constructs cloned in pBR322 plasmid, expressed in *E. coli* DH5α-E; genotypes differ at four positions in blaTEM (M69L = 1000, E104K = 0100, G238S = 0010, N276D = 0001; wild type TEM-1 = 0000; TEM-50 = 1111)
- Growth assays: 12-replicate cultures in 384-well plates, 80 μl per well; antibiotics at inhibitory sublethal concentrations selected to maximize discrimination between alleles; OD600 measured every 20 minutes for 22 hours at 25.1°C via Eon Microplate Spectrophotometer
- Growth rates extracted via GrowthRates software (linear regression on exponential phase of OD600 curves); ANOVA between adjacent genotypes to assess significance
- Correlated Probability Model (CPM): $p_{u,v} = (f_v - f_u) / \sum_j (f_{u_j} - f_u)$ where $u_j$ are fitter neighbors; derived from weak-selection Kimura approximation to fixation probability
- Equal Probability Model (EPM): $M(f)_{u,v} = 1/N$ if $v$ is an uphill neighbor with $N$ total uphill neighbors; depends only on fitness graph topology, not fitness magnitude
- Time Machine program: Maple implementation enumerating all $15^k$ drug sequences of length $k$, computing matrix product $M(f_{a_1}) \cdots M(f_{a_k})$, selecting sequences maximizing the $(u, v)$ entry; run for $k = 2, 3, 4, 5, 6$
- Cyclical paths computed separately: starting and ending genotype fixed at 0000; paths that "halt" (adjacent genotypes coincide) excluded

## Relationship to existing wiki

This paper is the source of the empirical fitness landscape used extensively in [[papers/Weaver2024_RLDrugCycling|Weaver2024]] for benchmarking RL drug-cycling policies. The landscape (16 genotypes × 15 β-lactam antibiotics) provides the substrate on which the SSWM Markov chain evolutionary model and all RL/MDP control policies are evaluated. Mira2015's exhaustive sequence search is the direct computational predecessor to the MDP framework in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] — both optimize over drug sequences using a transition probability model — but Maltas2019a extends the approach to collateral sensitivity-based control in *E. faecalis* and demonstrates experimental validation. The SSWM model used here connects to [[concepts/sswm|SSWM Markov chain]] as the lab's standard evolutionary model for discrete genotype landscapes.

The treatment path optimization framework introduced here is conceptually related to but distinct from the RL and MDP approaches: it is **exact but computationally exponential** (exhaustive search), while MDP (value iteration) and RL (function approximation) each offer polynomial-time approximations under specific information assumptions. The paper's demonstration that return probabilities can stagnate with path length in the TEM landscape (but not universally) motivates the open question of whether landscape structure determines the value of longer treatment horizons.

The sign epistasis and fitness pleiotropy described here (every genotype ranks widely across the 15 drug landscapes) connect to [[topics/genetic-epistasis/_hub|genetic-epistasis]], specifically the multi-environment sign epistasis that makes fitness graphs drug-dependent.

## Open questions raised

- What structural properties of a fitness landscape determine whether the optimal treatment return probability saturates quickly with path length or continues to increase — is there a computable landscape statistic that predicts this?
- Can the exhaustive treatment path optimization be approximated efficiently — does the problem have polynomial-time solutions under relaxed objectives (e.g., ε-optimal, probabilistic), or is the hardness fundamental?
- How sensitive are the optimal antibiotic sequences to measurement error in growth rates — if fitness estimates change by ±10%, do the same sequences remain optimal, or does the solution change substantially?
- Mira2015 used a fixed (inhibitory sublethal) concentration for each drug; how do optimal treatment paths change as drug concentration varies — are the same sequences optimal across the clinically relevant concentration range?
- CPM and EPM agree on some paths but disagree on others; can the degree of CPM/EPM agreement be used as a confidence filter for clinical recommendations — preferring only paths that are robust to the specific transition probability model assumed?

## Conversion notes

Conversion was largely clean. Figures 1–18 (fitness graphs for each of the 15 antibiotics, summary path diagrams) were not extracted — only captions were captured. Key tables (2–12) converted well. Reference list complete (references [1]–[28]).
