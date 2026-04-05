---
title: "Clinical prevalence of collateral sensitivity: a systematic exploration of multicentre antimicrobial surveillance data"
authors: [Tandar ST, Zwep LB, Woudt SHS, Schoffelen AF, Smits WK, Aulin LBS, Liakopoulos A, van Hasselt JGC]
year: 2026
venue: "Lancet Microbe"
doi: "10.1016/j.lanmic.2025.101274"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control]
lab_paper: false
canonical: false
relevance: high
ingested_by: "jamaltas"
---

## Summary

Tandar et al. performed the first large-scale, multi-species, multi-center quantitative analysis of collateral sensitivity in clinical isolates, analyzing over 5 million MIC measurements from three surveillance datasets (NIH, ISIS-AR, ATLAS) spanning 86 antibiotics and 30 pathogen species. Using a statistical inference approach that dichotomizes isolates by median MIC for a focal antibiotic and tests for a shift in MIC distributions for a test antibiotic, they find that collateral sensitivity is strikingly rare in clinical settings — only 3.03% of 12,024 species-antibiotic pairs — compared to 41.9% showing collateral resistance. Of 3,630 antibiotic pairs tested, only 6 pairwise and 1 three-way CS interaction are conserved across four pathogen species (all ESKAPEE group members). These conserved pairs, particularly those involving colistin resistance, represent the most clinically actionable candidates for CS-based therapy. The results demonstrate a substantial gap between laboratory-identified CS and what is detectably consistent in clinical populations.

## Conceptual contribution

The paper's central contribution is empirical documentation of the **lab-to-clinic translation gap for collateral sensitivity**: CS pairs that are reproducibly identified under controlled laboratory evolution conditions are often absent or inconsistent in clinical surveillance data. The most prominent example is aminoglycoside CS in ciprofloxacin-resistant *P. aeruginosa* — well-characterized in adaptive laboratory evolution and linked to specific mutations (*gyrAB*, *mexS*, *nfxB*) — which does not emerge from the clinical dataset. The authors propose three explanations: (1) alternative ciprofloxacin resistance mechanisms in the clinic that don't confer aminoglycoside CS; (2) escape mutations that negate CS in already-resistant strains; (3) epistatic interactions between the diverse genetic backgrounds of clinical isolates and specific resistance mutations that produce variable pleiotropic outcomes.

This establishes a critical distinction between two types of CS: **mechanism-linked CS** (arising from a single dominant resistance mechanism and therefore consistent across isolates) versus **trajectory-dependent CS** (arising reliably under one specific evolutionary trajectory but absent under alternative paths). Clinical populations evolve along diverse trajectories, meaning only the former class is likely to show up systematically in surveillance data. This conceptual distinction should inform which CS pairs are prioritized for therapeutic development.

A second conceptual contribution is **cross-species conservation as a practical filter for clinical utility**. The study operationalizes this criterion: a CS pair conserved across four clinically important pathogens (especially ESKAPEE members) can potentially be applied regardless of which pathogen is causing the infection — a practical advantage in empirical treatment. The rarity of such conserved pairs (6 of thousands tested) reinforces the challenge but also precisely identifies the highest-priority targets.

## Key findings

- CS is rare in clinical settings: 364/12,024 species-antibiotic pairs (3.03%) show CS vs. 5,044/12,024 (41.9%) showing collateral resistance — a 14-fold asymmetry
- Colistin resistance is most frequently associated with CS: cefazolin, ampicillin, and levofloxacin all show CS in isolates with high colistin MIC, conserved across *A. baumannii*, *E. coli*, *K. pneumoniae*, and *P. aeruginosa* (four ESKAPEE pathogens); mechanistic basis is loss of LPS layer increasing membrane permeability
- Six total pairwise CS pairs conserved across four species: colistin→cefazolin, colistin→ampicillin, colistin→levofloxacin, linezolid→azithromycin, tobramycin→cefuroxime, chloramphenicol→amoxicillin-clavulanate
- One three-way CS conserved across four species: azithromycin CS in isolates with elevated MICs for both linezolid and meropenem, across *E. faecalis*, *E. faecium*, *S. agalactiae*, and *S. pneumoniae*
- β-lactam intraclass CS is an exception to the general rule that CS is interclass: 34.2% of β-lactam CS interactions are within-class, driven mainly by cephalosporins; other antibiotic classes show predominantly interclass CS
- 43.0% of identified CS interactions are associated with a ≥2-fold MIC reduction; 14.2% of CS interactions with known MIC breakpoints would shift the mean population from resistant to susceptible — potentially clinically meaningful
- Lab-clinic discrepancy: aminoglycoside CS in ciprofloxacin-resistant *P. aeruginosa* (well-established in lab evolution) was absent from the clinical dataset
- Most CS interactions are species-specific: 220 pairs found in only 1 species, 45 in 2 species; none conserved across >4 species

## Methods

- MIC data pooled from NIH (2,050 isolates), ISIS-AR (4.5M isolates, primarily Netherlands), and ATLAS (600K isolates, 73 countries); total ~5.1M isolates
- collatRal R package for collateral effect quantification: isolates dichotomized into high- and low-MIC groups for focal antibiotic (at median MIC); collateral effect $\varphi$ = mean difference in $\log_2(\text{MIC}_A)$ between high- and low-MIC groups for focal antibiotic B
- Significance threshold: FDR-adjusted p < 0.05 + minimum effect size $|\varphi| \geq 0.5$ (equivalent to ~40% MIC change)
- Three-way CS: groups defined as high MIC for both B and C vs. low for either; same $|\psi| \geq 0.5$ threshold
- MIC breakpoints from AMR package (R) using EUCAST or CLSI; censored MIC values imputed (≤ values used as-is; > values doubled)
- Results made publicly available via interactive web app (collateralviz.lacdr.leidenuniv.nl)

## Relationship to existing wiki

This paper directly addresses the major gap in the collateral-sensitivity hub: "Cross-organism and cross-drug generality" was marked thin. Tandar2026 provides comprehensive clinical data across 30 species and 86 antibiotics. The finding that only 3% of species-antibiotic pairs show CS — far less than the lab-based expectation — is a direct counterpoint to the extensive *E. faecalis* collateral profiling in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]. The lab-clinic gap identified here is the translational counterpart of the temporal dynamics gap identified in [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]: both challenge the static, single-snapshot view of CS as a fixed and exploitable property. The CS-based treatment framing connects to [[topics/evolutionary-control/_hub|evolutionary-control]]; clinical translation is now empirically constrained by this paper's findings.

## Open questions raised

- What molecular mechanisms underlie the CS pairs conserved across species — are they all attributable to the LPS-permeability mechanism (for colistin pairs), or do different mechanisms explain each conserved pair?
- Can the 14.2% of CS interactions that would shift populations across the susceptibility breakpoint actually be exploited therapeutically — is statistical MIC shift in a population clinically relevant for individual-patient treatment decisions?
- Why does intraclass CS occur predominantly in β-lactams/cephalosporins? Is this related to the structural diversity of β-lactamase evolution imposing specific epistatic trade-offs within the class?
- How would these results change if the analysis were restricted to longitudinal data from patients who actually received the focal antibiotic — would CS be more or less prevalent in directionally selected vs. cross-sectional clinical populations?
- Are the ISIS-AR results (dominated by Dutch clinical settings) generalizable to high-resistance environments (e.g., South Asia, Sub-Saharan Africa) where resistance mechanisms may differ substantially?

## Conversion notes

Conversion was clean. Reference list not included in the body of the converted markdown — references in the paper cited as numbered footnotes \[1\]–\[28\] but full reference list was cut off. Key references from the text are identified by context. DOI and full citation for the paper itself confirmed from header.
