# Lab Overview

> This page is built from bootstrapping (lab) papers and updated with each canonical ingest.

## Research focus

The Maltas Lab uses tools from statistical physics, population genetics, evolutionary game theory, and computational biology to understand how microscopic growth processes and genome dynamics at the single-cell level give rise to collective behaviors observable at the population level. The lab seeks to understand, forecast, and ultimately **control** evolutionary dynamics — developing unifying theoretical principles that apply across diverse biological scenarios.

## Model systems

- ***Enterococcus faecalis*** — primary bacterial system for antibiotic resistance evolution experiments; rapidly evolves resistance in the laboratory; fully sequenced reference genomes available [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
- ***Saccharomyces cerevisiae*** — experimental evolution
- ***BRAF*V600E mutant melanoma** — used to study drug dependence (acquired resistance that requires the drug for survival) in targeted MAPK inhibitor therapy; panel includes A375, COLO679, UACC62, WM793, HS294T, SKMEL5, SKMEL28 cell lines representing the full spectrum from melanocytic to dedifferentiated transcriptional states; collaboration with Kris C. Wood lab (Duke) [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **Non-small cell lung cancer (NSCLC)** — validated experimental system for evolutionary dynamics in cancer; PC-9 cells (EGFR-mutant adenocarcinoma) used to study preexisting resistance to EGFR tyrosine kinase inhibitors (TKIs); engineered clinical resistance mutations (BRAF-V600E, KRAS-G12V, PIK3CA-E545K) characterized [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]; experimentally evolved gefitinib resistance (KRAS G12D) used to measure competitive exclusion dynamics and parameterize treatment simulations [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

## Experimental approach

The lab combines **parallel experimental evolution** with **high-throughput phenotypic measurement**. The core experimental workflow for characterizing resistance involves:

1. Serial-passage laboratory evolution: populations exposed to increasing drug concentrations over 8 days (up to ~60 generations) for antibiotics, or 30–60 days (up to ~450 generations) for slow-adapting nonantibiotic stressors; performed in replicate (typically 4–32 populations per condition) [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]
2. IC50 measurement: dose-response curves fit to a Hill-like function $f(x) = (1 + (x/K)^h)^{-1}$ across all mutant–drug combinations to quantify resistance as $C \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$ [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
3. Growth cost measurement: logistic growth curves in drug-free media to estimate fitness costs of resistance [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
4. Whole-genome sequencing: population and clonal sequencing via the breseq pipeline to identify resistance-associated mutations [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

## Theoretical approach

The lab builds mathematical models that are directly parameterized by experimental data and tested against new experiments. Modeling tools include:

- **Markov decision process (MDP) framework** — used to design optimal drug-cycling policies from empirically measured collateral sensitivity profiles; extended to a dynamic MDP (d-MDP) for time-varying collateral landscapes [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]. See [[concepts/markov-decision-process|Markov decision process]].
- **Optimal drug holiday scheduling** — analytical derivation of $f_\text{on} = 1/(1+\gamma)$ from subpopulation growth rates for drug-dependent cancer; extended to finite-time regimes with initial-composition corrections [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **2D on-lattice agent-based models (ABMs)** — spatial validation of well-mixed predictions; can be updated in real time from observed growth rates to track time-varying spatial optima [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **Additive null model for sequential stressor selection** — element-wise sum of log-IC50 collateral profiles to screen for productive sequential environment pairs without exhaustive experimentation; ignores epistasis but validated against experimental results [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]
- **Paired fitness landscape theory (rough Mt. Fuji model)** — Markov chain model of SSWM evolution in landscape pairs with tunable interlandscape correlation $\rho$ and ruggedness $\sigma$; reveals that shared fitness maxima are the dominant driver of evolutionary outcomes under alternating environments; establishes when environmental cycling helps vs. hurts adaptation as a function of landscape correlation and epistasis [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

The lab also uses **fitness landscape theory** as an analytical lens for understanding evolutionary dynamics in alternating environments. A Markov chain model of SSWM evolution in paired fitness landscapes — where each landscape represents evolution under a different drug, and the correlation between landscapes quantifies their collateral sensitivity relationship — shows that whether environmental cycling helps or hurts adaptation depends critically on two factors: the ruggedness (epistasis) of the landscapes and the correlation between them [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]. Positively correlated rugged landscapes share fitness maxima that have higher-than-average fitness; switching channels evolution toward these shared peaks. Anticorrelated landscapes (the theoretical model of mutual collateral sensitivity) produce ergodic-like dynamics that broadly sample genotype space at the cost of reduced average fitness — but shared maxima can still emerge under sufficient epistasis, providing a theoretical rationale for why collateral sensitivity cycling may fail in highly epistatic systems.

The lab's theoretical perspective emphasizes **population-level statistical structure** over individual-level mechanistic description. Even when individual evolutionary outcomes are highly stochastic and variable, tractable structure often exists at the population level — and that structure can be sufficient to enable rational control strategies.

## Experimental methods

Beyond bacterial serial-passage evolution, the lab employs cancer cell line evolution and drug-scheduling experiments:

- **Evolutionary game assay:** fluorescence-based coculture of GFP-labeled ancestor and mCherry-labeled mutant NSCLC cells at varying initial ancestor fractions; time-lapse microscopy every 4 h over 96 h (5 days) using a BioSpa 8 Automated Incubator and Cytation 5 Imaging Reader; cell counts extracted via Gen5/ImageJ; growth rates estimated by Theil-Sen regression on semi-log cell-count time series; fitness functions fit by weighted least-squares regression; payoff matrices derived from intercepts [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]
- **Lentiviral engineering:** stable expression of resistance-conferring oncogenes (BRAF-V600E, KRAS-G12V, PIK3CA-E545K) in PC-9 cells [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- **Whole-exome sequencing and RNA-Seq:** GATK/BWA-MEM pipeline for variant calling; STAR/SALMON for transcriptomics; GSVA for pathway analysis [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- **Cancer cell drug resistance derivation:** escalating dose or high-dose shock protocols for MAPKi (BRAFi PLX4720, MEKi AZD6244, combination) resistant cancer cell lines; STR profiling for identity confirmation [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **Clonogenic growth and drug scheduling assays:** crystal violet quantification; mixed-population experiments to measure subpopulation dynamics; cell counting via Coulter counter; growth rate estimation from 6-day exponential growth assays [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **DepMap transcriptomic analysis:** two-class comparison, GSEA, ssGSEA for cell-line classification and dependency scoring across large panels of cancer cell lines [[papers/Maltas2023_DrugDependence|Maltas2023]]
- **Lentiviral perturbations and CRISPR/Cas9 in cancer models:** ectopic expression of transcription factors (MITF, SOX10, JunB) and receptor tyrosine kinases (EGFR); gene knockout with TKOv3-derived sgRNAs [[papers/Maltas2023_DrugDependence|Maltas2023]]

## Core research themes

### Collateral sensitivity and evolutionary steering

The lab's work on *E. faecalis* established that collateral sensitivity profiles — while heterogeneous at the individual mutant level — cluster by drug class at the population level. This statistical structure supports the design of MDP-derived drug-cycling policies that outperform intuitive protocols by incorporating **evolutionary steering**: occasionally deploying less effective drugs to guide the population toward a more vulnerable future state [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]].

A subsequent study revealed that collateral sensitivity profiles are not static but evolve over evolutionary time: early adaptation strongly favors collateral resistance, while later adaptation increasingly favors collateral sensitivity — creating transient windows during which drug switching is most effective [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]. This finding prompted the development of the **dynamic MDP (d-MDP)** framework, which extends the original MDP approach via backward induction over temporally ordered collateral profiles, achieving 50% lower cumulative resistance than static policies in simulation. The lab's view of evolutionary control has matured from "design optimal sequences given fixed collateral effects" to "design optimal sequences given a collateral landscape that is itself evolving" — an intrinsically time-varying optimization problem.

A parallel extension of the collateral sensitivity work demonstrated that the phenomenon is not confined to antibiotic–antibiotic pairs: nonantibiotic stressors including biocides (CHX, TCS), preservatives (NaBz), extreme pH, and osmotic stress also generate collateral sensitivity to antibiotics in *E. faecalis*, with over half (58%) of collateral effects being sensitivities rather than resistances [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]. Crucially, sequential exposure to environments with orthogonal sensitizing profiles (e.g., LZD followed by NaBz) compounds vulnerabilities additively — sensitizing populations to ~6 conditions on average versus ~4 for either stressor alone. This raises the possibility that nondrug stressors in clinical environments (hand sanitizers, food preservatives, osmotic stress) could be leveraged as evolutionary levers to enhance antibiotic susceptibility.

### Frequency-dependent ecological interactions and preexisting resistance

The lab has developed a mathematical framework showing that negative frequency-dependent selection (positive ecological interaction) between resistant mutants and their sensitive ancestors can extend mutant extinction times by orders of magnitude, dramatically expanding the parameter regime under which preexisting resistance is expected. This reframes preexisting resistance as an eco-evolutionary phenomenon rather than a purely mutational one, and introduces the distribution of ecological effects (DEE) as a new object of study [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].

The lab has also empirically characterized these ecological interactions in the context of experimentally evolved drug resistance. In PC9 NSCLC, a gefitinib-resistant population (driven by KRAS G12D) and its sensitive ancestor play a qualitatively different evolutionary game depending on the presence of drug: in drug-free conditions, the sensitive ancestor competitively excludes the resistant clone, but ecological interactions at high-sensitive fractions nearly completely abolish the fitness cost at low resistant frequency — suggesting a potential stable coexistence point that could maintain drug-resistant cells as a "safe harbor." Under drug treatment at any concentration, the game inverts entirely: the sensitive ancestor is competitively excluded. Critically, this paper established that **monoculture fitness cost alone cannot predict competitive exclusion** — the gain function must maintain a consistent sign across all population frequencies, a condition only assessable through frequency-resolved coculture measurements [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]].

### Drug dependence and optimal holiday scheduling

In *BRAF*V600E mutant melanoma, a subset of drug-resistant cells becomes *dependent* on the drug — growing faster with it than without it. This dependence is predictable from the pre-treatment differentiation state: melanocytic (MITFhigh) tumors are primed for drug addiction because adaptive MITF loss during resistance acquisition retains sensitivity to ERK hyperactivation via the ERK2–JunB–p21 axis. This predictability enables patient stratification. The lab derived the analytically optimal "drug holiday" schedule — $f_\text{on} = 1/(1+\gamma)$ — from measurable subpopulation growth rates and showed that a feedback-based adaptive therapy algorithm achieves near-optimal outcomes using only total population size measurements [[papers/Maltas2023_DrugDependence|Maltas2023]]. The framework extends to finite-time treatments and is robust to spatial effects validated by agent-based modeling.

### Multi-drug environments

Work spans both **simultaneous** drug combinations (evolution-in-multidrug-environments) and **sequential** drug protocols (evolution-in-fluctuating-environments), with explicit attention to the distinction between these regimes.

---

*Last updated: 2026-04-05. Updated from canonical ingests: [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]], [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]], [[papers/Maltas2023_DrugDependence|Maltas2023]], [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]], [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]].*
