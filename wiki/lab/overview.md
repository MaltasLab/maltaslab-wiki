# Lab Overview

> This page is built from bootstrapping (lab) papers and updated with each canonical ingest.

## Research focus

The Maltas Lab uses tools from statistical physics, population genetics, evolutionary game theory, and computational biology to understand how microscopic growth processes and genome dynamics at the single-cell level give rise to collective behaviors observable at the population level. The lab seeks to understand, forecast, and ultimately **control** evolutionary dynamics — developing unifying theoretical principles that apply across diverse biological scenarios.

## Model systems

- ***Enterococcus faecalis*** — primary bacterial system for antibiotic resistance evolution experiments; rapidly evolves resistance in the laboratory; fully sequenced reference genomes available [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- ***Saccharomyces cerevisiae*** — experimental evolution
- **Non-small cell lung cancer (NSCLC)** — validated experimental system for evolutionary dynamics in cancer; PC-9 cells (EGFR-mutant adenocarcinoma) used to study preexisting resistance to EGFR tyrosine kinase inhibitors (TKIs); engineered clinical resistance mutations (BRAF-V600E, KRAS-G12V, PIK3CA-E545K) characterized [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

## Experimental approach

The lab combines **parallel experimental evolution** with **high-throughput phenotypic measurement**. The core experimental workflow for characterizing resistance involves:

1. Serial-passage laboratory evolution: populations exposed to increasing drug concentrations over 8 days (up to ~60 generations), performed in replicate (typically 4 populations per condition) [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
2. IC50 measurement: dose-response curves fit to a Hill-like function $f(x) = (1 + (x/K)^h)^{-1}$ across all mutant–drug combinations to quantify resistance as $C \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$ [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
3. Growth cost measurement: logistic growth curves in drug-free media to estimate fitness costs of resistance [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
4. Whole-genome sequencing: population and clonal sequencing via the breseq pipeline to identify resistance-associated mutations [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

## Theoretical approach

The lab builds mathematical models that are directly parameterized by experimental data and tested against new experiments. A central modeling tool is the **Markov decision process (MDP)** framework, used to design optimal drug-cycling policies from empirically measured collateral sensitivity profiles [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]. See [[concepts/markov-decision-process|Markov decision process]] for the formal framework.

The lab's theoretical perspective emphasizes **population-level statistical structure** over individual-level mechanistic description. Even when individual evolutionary outcomes are highly stochastic and variable, tractable structure often exists at the population level — and that structure can be sufficient to enable rational control strategies.

## Experimental methods

Beyond bacterial serial-passage evolution, the lab employs:

- **Evolutionary game assay:** fluorescence-based coculture of GFP-labeled ancestor and mCherry-labeled mutant NSCLC cells at varying initial ancestor fractions; time-lapse microscopy every 4 h over 96 h using a BioSpa automated incubator; CellProfiler image analysis to extract cell counts and compute frequency-dependent growth curves [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- **Lentiviral engineering:** stable expression of resistance-conferring oncogenes (BRAF-V600E, KRAS-G12V, PIK3CA-E545K) in PC-9 cells [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- **Whole-exome sequencing and RNA-Seq:** GATK/BWA-MEM pipeline for variant calling; STAR/SALMON for transcriptomics; GSVA for pathway analysis [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

## Core research themes

### Collateral sensitivity and evolutionary steering

The lab's work on *E. faecalis* established that collateral sensitivity profiles — while heterogeneous at the individual mutant level — cluster by drug class at the population level. This statistical structure supports the design of MDP-derived drug-cycling policies that outperform intuitive protocols by incorporating **evolutionary steering**: occasionally deploying less effective drugs to guide the population toward a more vulnerable future state [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].

### Frequency-dependent ecological interactions and preexisting resistance

The lab has developed a mathematical framework showing that negative frequency-dependent selection (positive ecological interaction) between resistant mutants and their sensitive ancestors can extend mutant extinction times by orders of magnitude, dramatically expanding the parameter regime under which preexisting resistance is expected. This reframes preexisting resistance as an eco-evolutionary phenomenon rather than a purely mutational one, and introduces the distribution of ecological effects (DEE) as a new object of study [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].

### Multi-drug environments

Work spans both **simultaneous** drug combinations (evolution-in-multidrug-environments) and **sequential** drug protocols (evolution-in-fluctuating-environments), with explicit attention to the distinction between these regimes.

---

*Last updated: 2026-04-05. Updated from canonical ingests: [[papers/Maltas2019_CollateralSensitivity|Maltas2019]], [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].*
