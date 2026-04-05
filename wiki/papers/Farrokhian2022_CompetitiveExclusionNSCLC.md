---
title: "Measuring competitive exclusion in non-small cell lung cancer"
authors: [Farrokhian N, Maltas J, Dinh M, Durmaz A, Ellsworth P, Hitomi M, McClure E, Marusyk A, Kaznatcheev A, Scott JG]
year: 2022
venue: "Science Advances"
doi: "10.1126/sciadv.abm7212"
arxiv: ""
topics: [frequency-dependent-selection, evolutionary-control]
lab_paper: true
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Farrokhian et al. (2022) experimentally measure frequency-dependent ecological interactions between a gefitinib-resistant PC9 NSCLC population and its sensitive ancestor using the evolutionary game assay. They show that the resistant clone's fitness cost is nearly completely ameliorated by ecological interactions at high-sensitive-population fractions, meaning monoculture fitness cost alone cannot predict competitive exclusion. Under drug treatment, the game dynamics invert: the sensitive ancestor is competitively excluded at all tested gefitinib concentrations. Competition simulations incorporating ecological effects reveal that monoculture-based models substantially overestimate the time to sensitive-cell extinction, and that counter-intuitively, higher drug doses can lead to worse long-term tumor burden control than lower doses.

## Conceptual contribution

This paper establishes that **competitive exclusion in cancer cannot be inferred from monoculture fitness measurements alone**. The mathematical condition for competitive exclusion requires the gain function (the difference between resistant and sensitive growth rates) to maintain the same sign across *all* population frequencies — a condition that monoculture assays structurally cannot verify. Ecological interactions in heterotypic culture may nearly abolish a substantial fitness cost when the resistant clone is rare, creating a potential "safe harbor" in which a drug-resistant subpopulation could be maintained at low frequency without fitness cost even in the absence of drug. This reframes the competitive exclusion concept — widely invoked in adaptive therapy rationale — from an inference based on monoculture fitness to an empirical question that requires frequency-resolved measurements.

The paper also makes a second conceptual advance in the context of treatment design: it demonstrates that **higher drug doses do not necessarily minimize tumor burden**. Lower doses prolong the competitive suppression of the resistant subpopulation by sustaining heterogeneity; at higher doses, the sensitive population is extinguished more rapidly, releasing the resistant population from competition and allowing unconstrained resistant outgrowth sooner. This ecologically-grounded argument provides an experimental and mechanistic basis for adaptive therapy rationale in NSCLC, grounding the intuition of "exploit competition" in empirically parameterized models.

## Key findings

- The gefitinib-resistant PC9 subpopulation carries a significant fitness cost (~75.6% of sensitive monoculture growth rate in DMSO), yet ecological interactions at high-sensitive fractions nearly completely ameliorate this cost — a fixed point may exist near $p_R \approx 0$
- In DMSO (no drug), the gain function remains positive across all frequencies: the sensitive ancestor competitively excludes the resistant strain, but the near-zero-frequency ecological rescue leaves open the possibility of a stable coexistence fixed point maintaining resistant cells at low frequency
- At all tested gefitinib concentrations, the gain function is entirely negative: the resistant strain competitively excludes the ancestor, with ecological interaction strength increasing with concentration
- Increasing gefitinib concentration increases the slope of the frequency-dependent growth rate curves (greater ecological interaction magnitude), accelerating competitive exclusion of the sensitive population
- Mathematical models using heterotypic (coculture) growth parameters predict substantially faster sensitive extinction than monoculture-based models — ecological effects accelerate competitive exclusion at every population fraction
- Lower drug dose (0.25 µM) produces a smaller initial tumor decline than higher dose (1 µM) but maintains heterogeneity longer, resulting in prolonged competition-mediated suppression of the resistant subpopulation and lower overall tumor burden at longer time scales
- The resistant phenotype is driven by a clonal KRAS G12D mutation with EGFR downregulation and KRAS upregulation; additional copy number changes (CCND1, RB1, FHIT, AKT1) and expression changes (ERBB2, cMET) suggest compound resistance

## Methods

- **Evolutionary game assay** (Kaznatcheev et al. 2019): PC9 sensitive (EGFP-labeled) and gefitinib-resistant (mCherry-labeled) cells cocultured across a full spectrum of initial sensitive:resistant proportions; 3,000 cells per well in 96-well plates; imaged every 4 h over 5 days using BioSpa 8 Automated Incubator and Cytation 5 time-lapse microscopy
- Growth rates extracted via semi-log regression (Theil-Sen estimator); frequency-dependent fitness functions fit by weighted least-squares regression; payoff matrices derived from intercepts at $p = 0$ and $p = 1$
- Resistant cell line derived by 6-month exposure to 1 µM gefitinib; matched DMSO-treated sensitive line maintained in parallel; lentiviral transduction with nuclear-localized EGFP and mCherry
- **Replicator dynamics** (frequency-only model) and **Lotka-Volterra model** with frequency-dependent growth rates for competition simulations; equal and unequal carrying capacity conditions tested
- **Whole-exome sequencing**: fastp → BWA-MEM → Strelka2/GATK pipeline; CNVkit for copy number; MOBSTER for clonality estimation
- **RNA-Seq**: NEBNext rRNA depletion → Illumina NextSeq 550; Salmon/tximport/edgeR for quantification and differential expression

## Relationship to existing wiki

- Directly extends [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], which developed the mathematical framework for frequency-dependent ecological interactions and preexisting resistance in the same PC9 NSCLC system using the same evolutionary game assay. Farrokhian2022 precedes Maltas2024 chronologically and provides the empirical characterization of ecological interactions in a specific drug-resistance context (gefitinib resistance, experimentally evolved KRAS G12D) rather than engineered resistance mutations.
- Uses the evolutionary game assay methodology from Kaznatcheev et al. 2019 (Nat Ecol Evol), which the lab employs for frequency-dependent fitness measurement in NSCLC.
- Treatment dose implications connect to [[topics/evolutionary-control/_hub|evolutionary-control]] — specifically the adaptive therapy rationale that competitive suppression of resistant cells by sensitive cells can be prolonged by judicious dosing; provides mechanistic grounding complementary to drug dependence work in [[papers/Maltas2023_DrugDependence|Maltas2023]].
- The "safe harbor" finding — resistant cells potentially maintained at low frequency by ecological interactions even at fitness cost — creates a direct connection to [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] and opens a question about whether ecological interactions in the absence of drug could prime populations for rapid resistance expansion when drug is applied.
- Competition simulations complement [[topics/fitness-landscapes/_hub|fitness-landscapes]] by modeling evolutionary dynamics in the compositional (frequency) space rather than genotype space.

## Open questions raised

- Does the putative near-$p_R = 0$ coexistence fixed point actually exist and maintain resistant cells at low frequency in the absence of drug? If so, this would represent a novel ecological mechanism for pre-existing resistance maintenance independent of mutation rate or clonal dynamics.
- Do these ecological interactions generalize to other gefitinib resistance mechanisms beyond KRAS G12D, and are they reproducible across replicate resistance evolution experiments (acknowledged as limitation)?
- Can the ecologically grounded lower-dose argument be translated into a quantitative optimal dosing strategy? What drug concentration minimizes total tumor burden over a clinically relevant time horizon?
- How do density-dependent effects and spatial heterogeneity (acknowledged as absorbed into the effective game measurement) alter the competitive dynamics observed in these 2D monolay in vitro assays?
- How do three-way (or higher) interactions between multiple resistance mechanisms within a heterogeneous tumor alter competitive exclusion dynamics?

## Conversion notes

Source PDF filename is `Farrhokian.pdf` (misspelled first author). Correct author surname is Farrokhian. Wiki page and cite key use the correct spelling. Figure image files were not extracted (converter limitation); see original PDF at `raw/papers/Farrhokian.pdf`. Page layout appears garbled in one section (text from introduction and results are interleaved around lines 15–23 of the markdown), likely due to multi-column PDF layout. All scientific content is recoverable from context. Figure captions were extracted; raw image files were not.
