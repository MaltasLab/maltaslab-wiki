---
title: "Global epistasis makes adaptation predictable despite sequence-level stochasticity"
authors: [Kryazhimskiy S, Rice DP, Jerison ER, Desai MM]
year: 2014
venue: "Science"
doi: "10.1126/science.1250939"
arxiv: ""
topics: [genetic-epistasis, distribution-of-fitness-effects, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Kryazhimskiy, Rice, Jerison & Desai (2014) conducted a hierarchical evolution experiment in *Saccharomyces cerevisiae* to determine whether historical contingency makes adaptation fundamentally unpredictable. They first evolved 432 independent lines for 240 generations to generate 64 "Founder" genotypes spanning a range of fitness, then founded 10 replicate populations per Founder (640 populations total) and evolved each for 500 generations. Founder identity explained 50% of the variance in fitness increment after 500 generations — but 46% of that was explained by Founder fitness and only 4% by specific Founder genotype. Whole-genome sequencing of 104 evolved clones revealed that lines from the same Founder are no more likely to share mutations than lines from different Founders, ruling out modular and idiosyncratic epistasis as primary drivers. Targeted knockouts of three beneficial genes across 18 genetic backgrounds confirmed global diminishing returns epistasis: fitness effects decline consistently with background fitness, with no background-specific idiosyncratic deviations.

## Conceptual contribution

**Global epistasis as the dominant form of epistasis, and fitness as the sufficient statistic for predicting adaptation.** The paper introduces a three-way distinction — modular, idiosyncratic, and global epistasis — and provides discriminating statistical tests. The key insight is that modular and idiosyncratic epistasis predict elevated mutation sharing within Founder lineages (because beneficial mutations are background-specific), while global epistasis predicts no such sharing (all genotypes draw from the same mutation pool, differing only in how much benefit each mutation confers). The absence of elevated within-Founder sharing across 104 sequenced clones — combined with the direct demonstration via targeted knockouts that fitness effect depends only on background fitness, not specific genotype — establishes global epistasis as the dominant mode. This result implies that the fitness landscape has a lower effective dimensionality than the number of distinct beneficial mutations would suggest: current fitness is the single scalar sufficient to predict future adaptability.

**The "rule of declining adaptability" as a universal consequence of global epistasis.** Lower-fitness genotypes adapt more rapidly; higher-fitness genotypes adapt more slowly; distinct genotypes with identical fitness are equally adaptable. This rule holds across prokaryotes and eukaryotes in rich and minimal media, suggesting it is a universal consequence of global diminishing returns rather than a system-specific artifact. The resolution of the predictability paradox follows: fitness trajectories are predictable (diminishing returns channels them toward convergence) while sequence-level evolution is stochastic (many distinct mutational paths reach each fitness level). These are not contradictory but two consequences of the same global epistatic structure.

**The conceptual and experimental foundation for the environment-invariant global epistasis framework of Ardell2024.** This paper established that global epistasis dominates in a single environment (rich glucose media). The subsequent paper [[papers/Ardell2024_GlobalEpistasis|Ardell2024]] by the same last author (Kryazhimskiy) extended this result to show that global epistasis slopes are nearly invariant across six environments, introducing the pivot growth rate $\bar{\lambda}_e$ as the single environmental parameter that shifts the DFE. Understanding the earlier result is essential context for the later one.

## Key findings

- Founder identity explains 50% of variance in fitness increment after 500 adaptation generations; 46% of that is attributable to Founder fitness, and only 4% to specific Founder genotype — fitness is the relevant predictor, not genotype
- Lower-fitness Founders consistently adapt more rapidly, driving convergent fitness trajectories across all 640 independent evolving populations
- 104 whole-genome-sequenced clones show mutations that are unique at the nucleotide level (unlike bacteria/viruses), but convergent at gene and GO levels: 24 genes mutated in ≥3 replicate lines (vs. 2.7 expected by chance, p<0.01)
- Lines descended from the same Founder share no more mutations than lines from different Founders — ruling out modular and idiosyncratic epistasis as primary drivers of declining adaptability
- Targeted knockouts of *GAT2*, *WHI2*, and *SFL1* in 18 genetic backgrounds (all 13 Founders + DivAnc + 4 additional clones) confirm global diminishing returns: fitness effects are negatively correlated with background fitness, with no idiosyncratic genotype-specific deviations
- The biological basis of global coupling is unknown — beneficial mutations affecting functionally diverse processes (Ras/PKA pathway regulation, cell cycle, filamentous growth) are globally coupled, suggesting no single mechanistic pathway underlies the pattern

## Methods

- **Diversification phase:** 432 independent lines evolved from a single haploid *S. cerevisiae* clone (DivAnc) for 240 generations in rich media (YPAD) in 96-well microplates; half at large and half at small population size; 64 Founder clones selected to span a range of fitness relative to DivAnc
- **Adaptation phase:** 10 independent replicate populations per Founder (640 populations) evolved for 500 generations at large population size; fitness measured by competitive assay against a reference strain at 0, 250, and 500 generations
- **Variance decomposition:** ANOVA partitioning of variance in fitness increment into measurement noise, inherent evolutionary stochasticity, and Founder identity; further partitioned Founder identity component into Founder fitness vs. specific Founder genotype contributions
- **Whole-genome sequencing:** one clone per population from 15 Founders at generation 500; 104 total clones retained after excluding mutator and diploid lines; 818 putatively functional mutations (nonsense, frameshift, nonsynonymous, promoter)
- **Convergence/parallelism analysis:** gene-level and GO-level tests for within-Founder vs. between-Founder mutation sharing; multinomial tests for multi-hit genes
- **Targeted knockouts:** *GAT2*, *WHI2*, *SFL1*, *HO* (control) constructed in all 13 Founders, DivAnc, and 4 additional clones; fitness effects measured by competitive assay in each background

## Relationship to existing wiki

- **Foundational predecessor to [[papers/Ardell2024_GlobalEpistasis|Ardell2024]]:** this paper established global epistasis dominance in a single environment; Ardell2024 extended to six environments showing slope invariance and introducing the pivot growth rate $\bar{\lambda}_e$; Kryazhimskiy is corresponding author on both
- **Connects to [[wiki/topics/genetic-epistasis/_hub|genetic-epistasis]]:** establishes the framework distinguishing global, modular, and idiosyncratic epistasis and demonstrates global dominance; introduces the rule of declining adaptability as the empirical signature
- **Connects to [[wiki/topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]]:** targeted knockout experiments directly demonstrate that the beneficial DFE shifts toward smaller effects in fitter backgrounds — the original empirical evidence for diminishing returns at the single-mutation level
- **Connects to [[wiki/topics/fitness-landscapes/_hub|fitness-landscapes]]:** fitness is the sufficient statistic for predicting future adaptation, not specific landscape position; the fitness landscape has lower effective dimensionality than mutation count implies

## Open questions raised

- What is the molecular/biochemical basis of global coupling — why do mutations in functionally unrelated processes (Ras regulation, cell cycle, filamentous growth) all show diminishing returns that track background fitness rather than specific pathway interactions?
- Does the rule of declining adaptability hold under antibiotic selection pressure — or does mechanistic constraint on resistance pathways create modular epistasis (a few redundant efflux/target-alteration pathways) that would cause specific genotype to predict adaptability more than fitness alone?
- At what evolutionary timescale or fitness distance does global epistasis break down in favor of idiosyncratic epistasis — the paper notes weak but statistically significant genotype-specific effects (4% of variance); are these idiosyncratic effects amplified at longer timescales or more extreme fitness differences?

## Key figures

**Figure 1** (fitness evolution): (A) Distribution of fitness across all lines over time — initial variance declines as populations converge; inset shows inter-population fitness variance collapsing. (B) Variance decomposition: after 500 generations, Founder identity = 50%, stochasticity = 29%, measurement error = 21%; of Founder identity, fitness = 46%, specific genotype = 4%. (C) Fitness-adaptability relationship: lower Founder fitness → greater fitness increment. (D) Mean fitness of 10 descendant lines vs. Founder fitness — negative correlation confirming rule of declining adaptability.

**Figure 2** (sequence evolution): (A) Mutation types from Adaptation phase. (B) Numbers of putatively functional mutations per line do not differ significantly across Founders — inconsistent with modular epistasis prediction. (C) Convergence/parallelism matrix: no elevated sharing within-Founder vs. between-Founder at gene or GO level. (D) Multi-hit gene mutations by Founder background — showing convergent gene targets but distributed across Founder lineages.

**Figure 3** (diminishing returns): Fitness effects of *gat2Δ*, *whi2Δ*, *sfl1Δ* and control *hoΔ* knockouts plotted against background fitness across 18 strains. Beneficial knockouts show consistent negative correlation (diminishing returns); *hoΔ* shows no correlation (negative control). No background-specific idiosyncratic deviations visible.
