---
title: "Frequency-Dependent Ecological Interactions Increase the Prevalence, and Shape the Distribution, of Preexisting Drug Resistance"
authors: [Maltas J, Tadele DS, Durmaz A, McFarland CD, Hinczewski M, Scott JG]
year: 2024
venue: "PRX Life"
doi: "10.1103/PRXLife.2.023010"
arxiv: ""
topics: [frequency-dependent-selection, distribution-of-fitness-effects]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude Sonnet 4.6"
---

## Summary

This paper develops a rigorous mathematical framework for understanding how frequency-dependent ecological interactions between drug-resistant mutants and their drug-sensitive ancestors affect the prevalence and distribution of preexisting resistance. Using a generalized Moran process and Wright-Fisher simulations — each with closed-form analytical approximations — the authors show that negative frequency-dependent selection (where the resistant mutant's fitness is augmented by the presence of ancestor cells) can extend mutant extinction times by up to five orders of magnitude, dramatically expanding the parameter regime under which preexisting resistance is expected. The theory predicts that even when mutants with strong positive ecological interactions are rare, they dominate the stationary distribution of resistant clones. This is validated experimentally in NSCLC: three independently engineered clinical resistance mutations to EGFR tyrosine kinase inhibitors all exhibit positive ecological interactions with their ancestor PC-9 cells.

## Conceptual contribution

The paper resolves a long-standing paradox in evolutionary medicine: how do costly resistance mutations persist in a population before treatment begins, given that they should be rapidly eliminated by purifying selection? The standard answer invokes mutation supply — enough mutations arise continuously to maintain a standing pool. This paper proposes and substantiates an alternative (and complementary) mechanism: **frequency-dependent ecological rescue**. A resistant mutant that grows ~20% slower than the ancestor in monoculture may grow nearly as well as the ancestor when rare in a predominantly ancestor population. This negative frequency-dependent selection (from the mutant's perspective) — which the authors term a "positive ecological interaction" — dramatically increases extinction times and thus the probability that a resistant clone survives to encounter treatment.

The conceptual shift is significant. It reframes preexisting resistance from a purely mutational phenomenon to an eco-evolutionary one: the fate of a resistance-conferring mutation is not determined solely by its intrinsic fitness cost, but jointly by its intrinsic fitness and its ecological fitness (fitness in the ancestor-dominated environment it actually inhabits). The paper formalizes this distinction with the notation $f_i$ (intrinsic/monoculture fitness), $f_e$ (ecological fitness in ancestor-dominated coculture), and $f_c$ (fitness cost = $1 - f_i$).

A secondary conceptual contribution is the introduction of the **distribution of ecological effects (DEE)** as a new theoretical object — directly analogous to the distribution of fitness effects (DFE), but describing the distribution of ecological interaction strengths across the space of possible resistance mutations. The authors derive results that are agnostic to the specific DEE, allowing the framework to be updated as empirical DEE measurements become available.

## Key findings

- Mean extinction time varies by ~5 orders of magnitude as ecological fitness $f_e$ varies from 0 to 1, with a robust analytical approximation:
$$\tau(f_e) \approx \frac{3\ln(1 - f_e)}{f_e^2 - 3}$$
  Strikingly, $\tau$ depends only on $f_e$ — not on population size $N$, mutation rate $\mu$, or fitness cost $f_c$.

- Three regimes of preexisting resistance are identified based on $N\mu$:
  1. **Small $N\mu$ (green regime):** Preexistence rare regardless of ecology
  2. **Intermediate $N\mu$ (yellow regime):** Preexistence occurs only if ecological interactions are present ($N_\text{mut}^\text{eco} > 1$ but $N_\text{mut}^\text{no eco} < 1$)
  3. **Large $N\mu$ (blue regime):** Preexistence likely regardless, but ecology shapes the distribution of mutants

- The mean number of mutants with ecological interactions:
$$N_\text{mut}^\text{eco} \approx \frac{N\mu}{f_\text{max}} W\!\left[\left(1 - f_\text{max} + \mu f_c^{f_c/(f_c-1)}\right)^{-1}\right]$$
  where $W$ is the Lambert W function. The ratio $N_\text{mut}^\text{eco} / N_\text{mut}^\text{no eco}$ is constant with $N\mu$ for small $\mu$.

- In the many-mutant regime, the stationary distribution of ecological fitnesses is heavily right-skewed toward positive interactions:
$$P(f_e) \approx \frac{f_e \mu}{f_\text{max}(1 - f_e)} \quad \text{for} \quad \mu \ll 1$$
  This distribution is invariant with respect to fitness cost and population size.

- The general form for any DEE $\rho_0(f_e)$:
$$P(f_e) \approx \frac{f_e \mu}{(1 - f_e)} \rho_0(f_e)$$
  Even if positive ecological interactions are rare in $\rho_0$, they still dominate the stationary mutant distribution.

- When $f_e > 1$, a stable coexistence fixed point emerges between mutant and ancestor (an evolutionary game with negative frequency-dependent selection); mutants with $f_e > 1$ and small $f_c$ dominate the stationary distribution in this regime.

- Experimental validation in NSCLC: three engineered clinical resistance mutations to EGFR TKIs — BRAF-V600E, KRAS-G12V, and PIK3CA-E545K — all show positive ecological interactions with the ancestor PC-9 cell line, with ecological fitness $f_e > f_i$. An evolved gefitinib-resistant mutant (previously reported) shows the same pattern; fresh WXS/RNA-seq identifies KRASG12D, MET amplification, and CCND1 amplification. Together these mutations survey ~70% of known clinical resistance mechanisms to third-generation TKIs.

- Control experiment: BRAF-V600E and KRAS-G12V mutants do not show positive ecological interactions with each other (only with the ancestor), consistent with the model's prediction that positive ecological interactions emerge specifically between ancestor and mutant through coevolution.

## Methods

- **Generalized Moran process:** Birth-death process on states $s \in \{0,\ldots,N\}$; frequency-dependent mutant fitness modeled as linear in ancestor fraction; closed-form extinction time distributions derived analytically
- **Wright-Fisher simulations:** Fixed population size $N$ with per-generation mutation probability $\mu$; intrinsic fitness drawn uniform in $[0, 1-f_c]$; ecological fitness drawn uniform in $[0,1]$ (or $[0, f_\text{max}]$); ancestor growth rate fixed at 1; mutant growth interpolates linearly between $f_i$ and $f_e$
- **Analytical approximations:** Lambert W function used for $N_\text{mut}^\text{eco}$; validated across several decades of $\mu$ within 10% of simulations
- **Cell line:** PC-9 human NSCLC cells (EGFR-mutant adenocarcinoma; Sigma-Aldrich)
- **Genetic engineering:** Lentiviral transduction of BRAF-V600E, KRAS-G12V, and PIK3CA-E545K into PC-9 cells; cells labeled with nuclear-localized GFP (ancestor) or mCherry (mutants) for fluorescent tracking
- **Evolutionary game assay:** Coculture at varying ancestor fractions; time-lapse fluorescence microscopy every 4 h over 96 h using BioSpa automated incubator; cell counting via CellProfiler
- **Drug sensitivity assays:** CellTiter-Glo luminescence in 96-well plates; gefitinib, osimertinib, erlotinib tested over 3-fold dilution series
- **RNA-Seq:** FASTP → STAR alignment → SALMON quantification → TXIMETA; GSVA for pathway activity; ARRIBA for fusion transcripts
- **WXS:** FASTP → BWA-MEM → GATK HaplotypeCaller; CNVKit for copy-number; VEP for variant annotation

## Key figures

**Figure 1 — Conceptual illustration of frequency-dependent rescue.** Two panels illustrating the core idea. (a) Growth rate vs. ancestor fraction for two hypothetical resistant mutants with identical intrinsic fitness and fitness cost but different ecological interactions: one with positive ecological interaction (red; growth improves as ancestor fraction increases, $f_e \approx 1$) and one with negative ecological interaction (blue; growth decreases as ancestor fraction increases). (b) Two evolutionary trajectories for a population: without ecological interactions (top), all costly mutants go extinct before treatment; with ecological interactions (bottom), rare mutants with positive ecological interactions survive substantially longer, making preexisting resistance much more likely to be present at the time of drug administration.

**Figure 2 — Extinction times and phase diagram.** (a) Closed-form extinction time distributions from the generalized Moran process ($N=100$, $f_c=0.25$): the positive ecological mutant ($f_e=1.0$, red) shows a heavily right-skewed distribution relative to the neutral mutant ($f_e = 1-f_c = 0.75$, blue). (b) Wright-Fisher mean extinction time as a function of $f_e$ ($N=10{,}000$, $\mu=10^{-6}$, 500 generations); spans ~5 orders of magnitude; analytical approximation (Eq. 1) overlaid. (c) Simulations across varying $f_c$, $\mu$, and $N$ confirm that extinction time depends only on $f_e$. (d) Phase diagram in $(N\mu, f_c)$ space depicting three regimes: green (preexistence rare), yellow (ecology-dependent preexistence), blue (preexistence likely regardless of ecology but ecology shapes distribution).

**Figure 3 — Stationary distributions and representative trajectories.** (a) Representative Wright-Fisher trajectories in the rare-mutant regime: without ecology (top), mutants go extinct; with ecology (bottom), rare high-$f_e$ mutants (red) survive substantially longer. (b) Many-mutant regime trajectories: positive ecological mutants (red) visually dominate the mutant subpopulation. (c) Left: stationary distribution of mutant ecological fitnesses under uniform DEE — right-skewed toward $f_e \approx 1$. Right: joint density of intrinsic and ecological fitness showing independence in this regime. (d) Same analysis under a Gaussian DEE centered at $f_e = 0.5$: qualitatively similar, positive ecological mutants still dominate.

**Figure 4 — Fixed-point regime ($f_e > 1$).** (a) Stationary distribution when ecological fitness can exceed 1 (uniform in $[0, 1.10]$): mutants with $f_e > 1$ dominate. (b–c) Stationary distributions of intrinsic fitness and joint ($f_i$, $f_e$) density: unlike the $f_e < 1$ regime, fitness cost now matters — only mutants with large positive ecological interaction AND small fitness cost are represented at meaningful frequencies. (d) Illustration of the stable fixed-point mechanism: for $f_e < 1$ (left), the mutant is always disadvantaged; for $f_e > 1$ (right), a stable coexistence equilibrium exists at an intermediate ancestor fraction.

**Figure 5 — Experimental validation in NSCLC.** Top portion: stacked bar chart of known resistance mechanisms to osimertinib (third-generation TKI) in EGFR-positive NSCLC, annotating the coverage provided by the evolved and engineered mutants studied. Top panel: evolved gefitinib-resistant PC-9 mutant (previously reported) shows positive ecological interaction with ancestor; WXS/RNA-seq identifies KRASG12D, MET amplification, CCND1 amplification. Bottom panels: measured frequency-dependent growth curves for three engineered mutants (KRAS-G12V, PIK3CA-E545K, BRAF-V600E) versus ancestor; all three show positive ecological interaction ($f_e > f_i$), strikingly similar in shape and magnitude to the evolved mutant.

## Relationship to existing wiki

This paper provides the primary theoretical and experimental foundation for the `frequency-dependent-selection` topic hub. It extends that topic in two directions not previously represented: (1) a fully worked mathematical framework connecting $f_e$ to extinction times, mutant prevalence, and stationary distributions; (2) experimental validation in a cancer system (NSCLC), broadening the lab's scope beyond bacteria.

The paper also introduces the DEE concept as a parallel to the DFE, directly connecting to `distribution-of-fitness-effects`: [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]].

The NSCLC system (PC-9 cells, EGFR TKI resistance) appears here as the experimental validation platform — connecting to the lab's stated model systems in [[wiki/lab/overview|lab overview]].

The reference list cites Maltas et al. (2024) *Nature Ecology & Evolution* on drug dependence and treatment holidays (ref [10]), suggesting a closely related lab paper not yet ingested.

## Open questions raised

- What does the DEE actually look like in real biological systems? This paper motivates its measurement but does not provide it — any assumed DEE is currently theoretical [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- Do these frequency-dependent ecological interactions generalize across organisms? The paper validates in NSCLC; analogous results in *E. coli* and *P. aeruginosa* are cited from other groups, but systematic cross-system characterization is absent [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- What molecular mechanisms underlie the positive ecological interactions? The paper identifies candidate mutations via WXS/RNA-seq but does not establish mechanistic causality [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- How do frequency-dependent ecological interactions interact with spatial structure, immune response, and treatment adherence in clinical settings? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- Can the ecological interaction between mutant and ancestor be exploited therapeutically — e.g., by disrupting the positive ecological interaction to accelerate mutant extinction before treatment? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- What happens to the DEE / stationary distribution when mutant-mutant ecological interactions are also included (not just mutant-ancestor)?  [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
