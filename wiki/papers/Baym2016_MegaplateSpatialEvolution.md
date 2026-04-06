---
title: "Spatiotemporal microbial evolution on antibiotic landscapes"
authors: [Baym M, Lieberman TD, Kelsic ED, Chait R, Gross R, Yelin I, Kishony R]
year: 2016
venue: "Science"
doi: "10.1126/science.aag0822"
arxiv: ""
topics: [fitness-landscapes, evolutionary-control]
lab_paper: false
canonical: false
relevance: high
ingested_by: "jamaltas"
---

## Summary

This paper introduces the Microbial Evolution and Growth Arena (MEGA-plate), a 120×60 cm device in which successive agar regions contain exponentially increasing antibiotic concentrations (TMP: 0→3→30→300→3000× MIC; CPR: 0→20→200→2000→20000× MIC), allowing *E. coli* to migrate chemotactically through a spatial drug gradient and be visually observed as they adapt. Bacteria inoculated at the low-drug ends spread inward, halting at each concentration boundary until sufficiently resistant mutants arise and fan out. Ultimately, *E. coli* achieve 10,000-fold (TMP) and 100,000-fold (CPR) MIC increases in 10–12 days. The device enables reconstruction of phenotypic and genotypic evolutionary histories via time-lapse photography combined with isolate sequencing, providing a physical analog of Muller plots. The critical findings are: intermediate concentration steps are required for high-level resistance; multiple genotypic paths evolve in parallel; and highly resistant mutants arising behind the propagating front are physically blocked from leading further evolution.

## Conceptual contribution

The MEGA-plate establishes that in spatially structured environments, evolutionary outcome is determined not by absolute fitness but by **positional fitness** — fitness in the right location at the right time. This is a spatial extension of the fitness landscape concept: the drug concentration gradient is itself a spatial fitness landscape that the evolving population must navigate. The paper identifies two principles with broad implications. First, the **stepping-stone principle**: no sufficiently large jump in selection pressure can be crossed in a single step; evolution requires sequential access to intermediate resistance levels, making gradient steepness a determinant of whether high-level resistance is accessible at all. Second, **spatial clonal interference**: when highly resistant compensatory mutants arise behind the moving front, they are physically excluded from contributing to further adaptation — not because they are less fit, but because spatially prior lineages have already colonized the space between them and the front. These trapped mutants can demonstrably outcompete the front when relocated ahead of it, proving that positional context, not absolute fitness, determines who leads resistance evolution. Together, these two principles establish that the spatial drug concentration profile is an evolutionary control lever: gradient steepness determines whether evolution can proceed at all, and lineage partitioning determines which genotype determines the evolutionary direction.

## Key findings

- *E. coli* achieve 10,000-fold MIC increase for TMP and 100,000-fold for CPR over 10–12 days via sequential adaptive steps across competing lineages
- Intermediate concentration steps are strictly required: bacteria inoculated adjacent to the highest concentration (no intermediate step) fail to colonize it; adaptation rates increase monotonically with number of intermediate steps
- Multiple coexisting lineages evolve simultaneously — adjacent lineages exclude each other spatially, creating stable spatial domains corresponding to independent evolutionary histories
- Mutator phenotypes (dnaQ mutations: V96E, I97N, I97S, I97T) arise independently ≥6 times; mutators accumulate mutations ~5× faster but reach high-level resistance at similar times as non-mutators; mutators have a near-neutral dN/dS ratio vs. non-mutators with high dN/dS bias (most mutations adaptive)
- Primary resistance gene for TMP: folA (DHFR) with increasing allelic diversity at higher drug concentrations; additionally, genes not classically associated with TMP resistance (mar/sox stress response operons; pitA, aroK, mgrB) repeatedly mutated
- Resistance-conferring mutations often reduce growth yield; compensatory mutations then restore yield and frequently further increase resistance — but arise behind the front and are spatially trapped
- Trapped compensatory mutants can grow at drug concentrations where the front cannot (confirmed by transplantation experiment) — the front is led by "good enough + right location" mutants, not the most resistant overall
- The large plate size is essential: drug diffusion scales with distance² while bacterial front advances linearly, ensuring gradient integrity throughout the experiment

## Methods

- MEGA-plate: 120×60 cm rectangular acrylic dish; successive black-colored agar regions with exponential antibiotic concentration steps; soft agar overlay allowing chemotactic motility
- Organisms: *Escherichia coli* (motile)
- Drugs: trimethoprim (TMP) and ciprofloxacin (CPR)
- Readout: time-lapse photography → lineage reconstruction via video analysis; isolate sampling and MIC phenotyping; whole-genome sequencing of 21 (four-step) and 230 (intermediate-step) isolates
- Mutator detection: rifampin disk diffusion assay; dnaQ gene sequencing
- Compensatory mutant experiment: manual transplantation of isolated mutants ahead of advancing front

## Relationship to existing wiki

- Empirically complements [[papers/DeJong2018_SpatialSelectionPressure|DeJong2018]]: DeJong2018 models theoretically how spatial drug concentration profiles affect fixation dynamics; Baym2016 demonstrates experimentally on a macroscopic plate that gradient structure (steepness, intermediate steps) directly governs whether resistance evolution can proceed and how fast; the two papers together constitute the empirical-theoretical foundation for spatial evolutionary control
- The stepping-stone principle complements [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]]'s resistance-reversal framework: Mira2015 shows that the genotypic landscape must be traversed through sequential accessible steps (no fitness-valley jumps); Baym2016 shows the same principle applies in physical space (drug concentration gradients)
- Spatial lineage partitioning and clonal interference in space are related to the traveling wave dynamics documented by [[papers/NguyenBa2019_TravelingWave|NguyenBa2019]] in well-mixed populations: in both cases, evolutionary outcome is not determined by the fittest genotype alone but by the interaction of fitness and accessibility (spatial in Baym2016; clonal interference through the fitness distribution in NguyenBa2019)
- Connects to [[topics/fitness-landscapes/_hub|fitness-landscapes]] (spatial landscape navigation, mutational paths, compensatory mutations) and [[topics/evolutionary-control/_hub|evolutionary-control]] (gradient steepness as control parameter for resistance access)

## Open questions raised

- Can the stepping-stone principle be exploited therapeutically in spatially structured infections (e.g., biofilm, tissue gradients): would imposing sharp concentration discontinuities rather than smooth gradients prevent evolutionary access to high-level resistance?
- Does spatial trapping of highly resistant mutants occur in clinically relevant settings — biofilm interiors, tissue-level drug gradients, organ pharmacokinetics — and if so, does this mean the most-resistant genotype regularly fails to determine clinical outcomes?
- How does front width (determined by MEGA-plate dimensions) interact with mutational supply — and does the analogy to effective population size in this spatial setting predict which parameter space maps to clinical infection geometries?
- Can MEGA-plate geometry be adapted to test multi-drug spatial gradients — e.g., overlapping orthogonal gradients of two drugs with reciprocal collateral sensitivity — to directly visualize whether spatial deployment of CS pairs traps evolving populations more effectively than temporal cycling?
