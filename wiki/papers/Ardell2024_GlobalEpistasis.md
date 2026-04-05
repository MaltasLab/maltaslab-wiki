---
title: "Environment-independent distribution of mutational effects emerges from microscopic epistasis"
authors: [Ardell SM, Martsul A, Johnson MS, Kryazhimskiy S]
year: 2024
venue: "Science"
doi: "10.1126/science.adn0753"
arxiv: ""
topics: [genetic-epistasis, distribution-of-fitness-effects, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Ardell, Martsul, Johnson, and Kryazhimskiy measure the fitness effects of ~100 quasi-random barcoded insertion mutations across 42 *Saccharomyces cerevisiae* strains in six laboratory environments (2 temperatures × 3 pH levels). Using bulk barcode competition assays near exponential steady state, they find that the global epistasis slope $b_m$ — the rate at which a mutation's fitness effect changes with background genotype growth rate — is nearly invariant across environments for individual mutations (87% of pairwise slope comparisons statistically indistinguishable; invariant-slope model explains 43% vs. 45% for fully environment-specific model). The environment tunes only one effective parameter: the **pivot growth rate** $\bar{\lambda}_e$, the background growth rate at which an average mutation switches sign. This yields the generalized global epistasis equation $\Delta\lambda_{mge} = b_m(\lambda_{ge} - \bar{\lambda}_e) + \eta_{me} + \xi_{mge}$, which predicts that DFE moments — when plotted against the adjusted background growth rate $\lambda_{ge}^* = \lambda_{ge} - \bar{\lambda}_e$ — collapse onto universal environment-independent curves, validated without free parameters against an independent YPD dataset of 163 strains.

## Conceptual contribution

This paper establishes that the apparent complexity of how mutational effects vary across genetic backgrounds (G×G epistasis) and environments (G×E, G×G×E interactions) reduces to a surprisingly simple structure: most of the variance is captured by a single environmental scalar, the pivot growth rate $\bar{\lambda}_e$. The conceptual advance is that **global epistasis** — a well-known tendency for mutations to show diminishing returns in high-fitness backgrounds — is not merely a local phenomenological pattern but a nearly universal property of genotype-to-fitness maps that is preserved across environments. The environment does not reshape the distribution of global epistasis slopes; it only shifts the reference point (pivot) at which mutations change sign.

This has two major consequences. First, evolutionary predictions across environments become much more tractable: knowing a genotype's fitness relative to its environment's pivot growth rate is sufficient to predict the DFE it experiences, without enumerating G×G, G×E, or G×G×E interactions individually. The DFE becomes, in a precise sense, environment-independent once expressed in adjusted coordinates. Second, the paper establishes that sign reversal — mutations switching from beneficial to deleterious or vice versa as background or environment changes — is not stochastic noise but a structured, predictable consequence of global epistasis. No mutation was unconditionally beneficial or deleterious across the 42 backgrounds and 6 environments studied; 94% were beneficial in at least one context and deleterious in at least another.

The generalized global epistasis equation $\Delta\lambda_{mge} = b_m(\lambda_{ge} - \bar{\lambda}_e) + \eta_{me} + \xi_{mge}$ is both a predictive tool and a conceptual framework. The slope $b_m$ captures the "sensitivity" of a mutation to background fitness — nearly environment-invariant. The pivot $\bar{\lambda}_e$ captures the environment's single degree of freedom. The terms $\eta_{me}$ (pivot noise) and $\xi_{mge}$ (idiosyncratic epistasis) capture residual unpredictability. The "bowtie" pattern that emerges — mutation effects fanning out as background growth rate deviates from the pivot in either direction — suggests that the effective dimensionality of genotype-to-phenotype maps is surprisingly low, with a single scalar sufficient to describe the macroscopic shape of the DFE in a new genetic or environmental context.

## Key findings

- No mutation was unconditionally beneficial or deleterious: 94% (88/94) of mutations were beneficial in at least one strain and condition; of those, 96% (85/88) were also deleterious in at least one; even within a single environment, 33–63% of mutations changed sign across background strains
- Global epistasis model (Eq. 1) was statistically significant for 97% (91/94) of mutations and explained on average 45% of variance in mutational effects across backgrounds and environments; 98% (245/250) of significant slopes $b_{me}$ are negative (diminishing returns epistasis)
- Global epistasis slopes of individual mutations are nearly environment-invariant: 87% (1169/1333) of pairwise slope comparisons across environments are statistically indistinguishable; 62% (58/94) of mutations have invariant slopes in all environments; an invariant-slope model explains 43% of variance versus 45% for environment-specific slopes — only 2% difference
- The environment modulates only the pivot growth rate $\bar{\lambda}_e$ (the background fitness at which the average mutation switches sign): DFE moments collapse onto universal environment-independent curves when plotted against adjusted background growth rate $\lambda_{ge}^* = \lambda_{ge} - \bar{\lambda}_e$
- DFE mean decreases linearly with adjusted growth rate and crosses zero at the pivot; DFE variance is minimized at the pivot (bowtie pattern); DFE skewness decreases monotonically with adjusted growth rate and also crosses zero at the pivot
- Theoretical predictions for DFE variance and skewness in YPD environment validated without any free parameters against an independent dataset of 163 strains (superset of the 42 strains used here)
- Strains with the same adjusted growth rate $\lambda_{ge}^*$ have significantly more similar DFEs than strains in the same environment with the same absolute growth rate, confirming that the pivot-adjusted coordinate is the fundamental predictor

## Methods

- Organism: *S. cerevisiae* (42 background strains; all BY×RM cross segregants differing by ~$2 \times 10^4$ SNPs; sampled to cover a range of growth rates lower than in previous studies)
- Mutations: ~100 quasi-random barcoded insertion mutations from Johnson et al. (2019) (*Science* 366, 490–493); 5 designated as putatively neutral reference; 94 mutations analyzed
- Environments: 6 factorial conditions — 2 temperatures (30°C, 37°C) × 3 pH levels (3.2, 5.0, 7.0); chosen to impose global physiological stress while varying environmental permissibility
- Competition assay: bulk barcode competition experiments at near-exponential steady state; absolute growth rate $\lambda$ inferred from barcode frequency dynamics with precision ~$7 \times 10^{-3}$ h$^{-1}$; validated against low-throughput pairwise competition assays
- Classification: mutation classified as beneficial, deleterious, or neutral based on whether 99% CI of estimated effect $\Delta\lambda$ excludes zero; FDR = 2.4%
- Model fitting: linear regression of Eq. 1 ($\Delta\lambda_{mge} = a_{me} + b_{me}\lambda_{ge} + \xi_{mge}$) per mutation; F-test with Benjamini-Hochberg correction; slope invariance tested by pairwise t-tests with BH correction
- YPD validation: pivot growth rate for YPD estimated as background growth rate at which DFE mean equals zero; DFE moment predictions tested without free parameters against 163-strain dataset from Johnson et al. (2019)

## Relationship to existing wiki

This paper directly expands the [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] topic: it is the first systematic characterization of how the DFE varies across genetic backgrounds *and* environments simultaneously, and it shows the variation is governed by a single effective parameter (pivot growth rate). The "bowtie" structure — DFE variance minimized at the pivot, mean crossing zero there — provides a mechanistic picture of why DFEs measured in different systems can look so different: they reflect different background fitnesses relative to the pivot.

The result connects deeply to [[topics/genetic-epistasis/_hub|genetic-epistasis]]: global epistasis here is both the empirical phenomenon (slopes negative, diminishing returns) and the mechanistic principle (slopes nearly invariant; pivot shifts with environment). The earlier theoretical context in the wiki (Maltas2020 using $\sigma$ as a ruggedness proxy) can now be connected to this empirical framework — global epistasis slope invariance is a statement about the statistical architecture of the fitness landscape being preserved across environments.

The system (42 *S. cerevisiae* strains, barcoded insertion mutations, bulk competition) is closely related to the barcode lineage tracking system used in [[papers/Levy2015_LineageTracking|Levy2015]] — both use barcoded mutation libraries in yeast competition experiments, but Levy2015 tracks frequency dynamics of ~500,000 spontaneous mutation lineages under clonal competition, while Ardell2024 tracks ~100 designed insertion mutations against 42 defined backgrounds. The complementarity illuminates different levels of the fitness landscape.

The finding that background growth rate (relative to the pivot) predicts the DFE is relevant to the lab's interest in predicting antibiotic resistance evolution: as drug resistance evolution proceeds and populations shift to higher background fitness in the drug environment, the DFE they experience shifts in a predictable direction — fewer beneficial mutations available, more deleterious ones — which should slow further adaptation. This provides a population-level mechanistic underpinning for the "diminishing returns" dynamics observed in long-term evolution experiments.

## Open questions raised

- Does global epistasis slope invariance hold under perturbations that target specific cellular processes (e.g., antibiotic drug exposure), or do mechanistically targeted stressors reshape the slope distribution? The paper explicitly flags this as an open question
- What determines the pivot growth rate $\bar{\lambda}_e$ in different environments — is it the mean fitness of all accessible genotypes (as the Reddy-Desai model predicts), a physiological state variable (growth rate, ribosome capacity), or something else?
- Does the global epistasis framework apply to resistance mutations specifically, or only to the quasi-random insertion mutations used here? Resistance mutations may be in highly constrained mechanistic classes that violate the statistical assumptions of the Reddy-Desai model
- Can the pivot growth rate concept be used to predict how the DFE for resistance mutations changes as *E. faecalis* adapts to antibiotics — i.e., does early adaptation (low background fitness) expose many beneficial resistance mutations, with the supply declining as fitness increases?
- Does the invariance of global epistasis slopes hold across sexual vs. asexual reproduction, and does the level of recombination between *S. cerevisiae* segregants affect slope estimates?

## Conversion notes

Conversion is clean. Paper is 6 pages (*Science* format, 2024). Figures extracted as images but not included. Figure 1: scatter plots of proportion of beneficial/deleterious mutations vs. background growth rate across environments. Figure 2: histograms of global epistasis slopes and intercepts across environments; correlation between slopes and intercepts. Figure 3: regression lines per mutation across environments (slopes near-invariant). Figure 4: bowtie visualization of mutation effects; DFE moment plots vs. unadjusted and adjusted background growth rate. Source PDF named SergeyEpistasis.pdf (corresponding/last author Kryazhimskiy); cite key Ardell2024 follows first-author convention (Ardell listed first among equal-contribution co-first authors Ardell and Martsul).
