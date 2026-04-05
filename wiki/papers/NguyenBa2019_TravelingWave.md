---
title: "High-resolution lineage tracking reveals traveling wave of adaptation in laboratory yeast"
authors: [Nguyen Ba AN, Cvijovic I, Rojas Echenique JI, Lawrence KR, Rego-Costa A, Liu X, Levy SF, Desai MM]
year: 2019
venue: "Nature"
doi: "10.1038/s41586-019-1749-3"
arxiv: ""
topics: [dna-barcoding-lineage-tracking, distribution-of-fitness-effects, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude"
---

## Summary

NguyenBa2019 introduces a renewable DNA barcoding system using 3 orthogonal Cre-Lox sites that can be flipped every 100 generations by galactose-inducible Cre expression, enabling ancestry-resolved lineage tracking across 1,000 generations (10 epochs) in diploid *Saccharomyces cerevisiae* at ~$10^{-5}$ frequency resolution. Tracking ~50,000 freshly barcoded lineages per epoch in two environments (YPD rich glucose and YPA 0.3% acetic acid, Ne ~ $5 \times 10^6$), the study provides the first direct empirical demonstration of a traveling wave of adaptation: fitness distributions remain broad and stable around a rising mean, confirming the Fisher-Kolmogorov / Desai-Fisher theoretical framework. The study additionally uncovers two phenomena — leapfrogging and the rich-get-richer effect — that contradict existing traveling wave models, revealing that the accessible distribution of fitness effects is fitness-dependent rather than uniform across lineages.

## Conceptual contribution

The central conceptual advance is that the beneficial DFE accessible to an evolving lineage is **not a fixed population-level property** but depends on that lineage's current fitness and clone size. High-fitness lineages expand more rapidly, reach larger sizes, and thereby experience lower effective genetic drift — giving them access to the full DFE including weak-effect mutations ($s < 2\%$) that would otherwise be lost to drift. Low-fitness lineages, constrained to smaller sizes, can only establish mutations of large enough effect to overcome their higher drift barrier. This **rich-get-richer effect** creates a positive feedback loop: current fitness determines clone size, which determines DFE access, which determines future fitness gains. Standard traveling wave models assume all lineages sample the same DFE — NguyenBa2019 shows this is incorrect, and that the feedback between fitness rank and DFE access is quantitatively important for predicting evolutionary dynamics.

The complementary finding — **leapfrogging** — shows that despite the rich-get-richer feedback, low-fitness lineages acquiring rare, strong-effect mutations can still overtake currently higher-fitness lineages before the epoch ends. This means the future common ancestor is not reliably the currently fittest lineage, preserving evolutionary unpredictability even in large, well-characterized populations. Together, these two observations establish that the traveling wave is not a simple conveyor belt where fitness rank is preserved over time, but a dynamical state in which DFE access is stratified by fitness rank while rare strong mutations continuously disrupt that stratification.

The third conceptual contribution is methodological: the renewable barcoding system overcomes the fundamental limitation of single-epoch barcoding (lineage identity is eventually lost to drift or sweep events) by reassigning ancestry every 100 generations. This enables long-timescale evolutionary dynamics to be decomposed into lineage-resolved trajectories in ways that were previously inaccessible.

## Key findings

- **Renewable barcoding system:** 3 orthogonal Cre-Lox sites (loxP, lox2722, lox5171) flanking barcode cassettes; galactose-inducible Cre expression flips barcode states every 100 generations; ancestral barcode string retained as an ancestry record; ~50,000 fresh barcodes assigned per epoch; 10 epochs × 100 generations = 1,000 generations of tracked ancestry
- **Traveling wave confirmed:** fitness distributions in both YPD and YPA populations maintain a stable, broad shape around a rising mean across all epochs; no evidence of periodic sweeps replacing the wave with a bottleneck; directly validates Desai-Fisher traveling wave theory
- **Rich-get-richer effect:** high-fitness lineages expand to larger clone sizes → lower effective genetic drift → access to both weak-effect and strong-effect beneficial mutations; low-fitness lineages are restricted to large-effect mutations that can overcome their higher drift barrier; this asymmetry is absent from standard traveling wave models and contributes quantitatively to the variance in evolutionary outcomes
- **Leapfrogging:** low-fitness lineages acquiring rare, large-effect mutations routinely overtake higher-fitness lineages within a single 100-generation epoch; the rate and magnitude of leapfrogging events are inconsistent with predictions of current traveling wave models that assume the future common ancestor is always the current fitness leader
- **Nested interference visible at $<10^{-4}$ frequency:** multiple simultaneous clonal interference events are resolved at frequencies below the detection limit of whole-genome metagenomics at equivalent sequencing depth, demonstrating that the barcoding approach provides a qualitatively richer view of clonal dynamics
- **Two environments compared:** similar traveling wave dynamics in both YPD and YPA, but YPA shows a higher inferred beneficial mutation supply rate, consistent with a more challenging environment presenting more adaptive opportunities

## Methods

- Diploid *S. cerevisiae* W303 background; two independently evolving populations (YPD, YPA); Ne ~ $5 \times 10^6$; daily 1:1024 serial dilution (10 generations/day)
- Three orthogonal Cre-Lox recombination systems (loxP × lox2722, lox2722 × lox5171, loxP × lox5171) encoded in a genomic landing pad; Cre-mediated inversion generates distinct barcode states; inversion triggered by galactose addition at the end of each 100-generation epoch
- Fresh ~50,000-barcode library introduced to subdivide all extant lineages at each epoch start; barcode sequence string encodes full ancestry record back to the founding epoch
- Barcode sequencing at the start and end of each epoch; two-step PCR with UMIs for duplicate correction (adapted from [[papers/Levy2015_LineageTracking|Levy2015]]); Bayesian trajectory analysis to infer fitness effects $s$ and establishment times $\tau$ per lineage
- Traveling wave model simulations and clonal interference models generated to compare against observed leapfrogging frequencies and fitness distribution widths

## Relationship to existing wiki

- **Extends [[papers/Levy2015_LineageTracking|Levy2015]]:** Levy2015 introduced the Cre-loxP landing pad and Bayesian fitness inference pipeline; NguyenBa2019 extends this to multi-epoch renewable barcoding, enabling 10× longer tracking. The beneficial DFE structure inferred from Levy2015 (non-exponential, clustered at 2–5%) provides the prior for understanding which mutations constitute the wave front.
- **Direct empirical test of traveling wave theory:** the traveling wave framework predicts that clonal interference should maintain a broad fitness distribution; NguyenBa2019 confirms this but also identifies systematic deviations (rich-get-richer, leapfrogging) that extend the theory.
- **Complements [[papers/Kryazhimskiy2014_GlobalEpistasis|Kryazhimskiy2014]]:** both use *S. cerevisiae* to show that fitness predicts future adaptability; but where Kryazhimskiy2014 measures this across populations differing in background fitness, NguyenBa2019 shows the same effect operates within a single evolving population at the lineage level, modulating DFE access in real time.
- **Relevant to [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]]:** the rich-get-richer effect means the effective DFE is not a single population-level object but a fitness-stratified quantity — the full beneficial DFE is only accessible to the highest-fitness lineages.
- **Relevant to [[topics/dna-barcoding-lineage-tracking/_hub|dna-barcoding-lineage-tracking]]:** introduces the renewable barcoding approach as the major methodological advance beyond Levy2015.

## Open questions raised

- Does the rich-get-richer DFE access mechanism operate in antibiotic resistance evolution, where drug selection creates fitness differences between lineages? Would high-fitness resistant lineages gain preferential access to weak-effect secondary resistance mutations while low-fitness lineages are restricted to strong-effect mutations?
- Does leapfrogging frequency depend predictably on the ratio of strong-mutation supply to mean fitness advantage of the wave front, and does this ratio vary between environments in ways that predict evolutionary predictability?
- Can the renewable barcoding approach be adapted to bacterial systems with shorter generation times and different genetic architectures, enabling multi-epoch ancestry-resolved lineage tracking in *E. faecalis* resistance evolution under drug cycling?
- Do the deviations from standard traveling wave models (rich-get-richer, leapfrogging) alter the quantitative predictions for fixation probability, clonal interference load, or the rate of fitness increase in ways that would affect how we interpret long-term evolution experiments?
- Can combining the renewable barcoding system with whole-genome sequencing of individual lineage representatives directly measure the conditional DFE — the distribution of fitness effects experienced by lineages at different fitness ranks — empirically quantifying the rich-get-richer DFE access differential?
