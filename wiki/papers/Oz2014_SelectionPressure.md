---
title: "Strength of Selection Pressure Is an Important Parameter Contributing to the Complexity of Antibiotic Resistance Evolution"
authors: [Oz T, Guvenek A, Yildiz S, Karaboga E, Tamer YT, Mumcuyan N, Ozan VB, Senturk GH, Cokol M, Yeh P, Toprak E]
year: 2014
venue: "Molecular Biology and Evolution"
doi: "10.1093/molbev/msu191"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Oz et al. evolved 88 *E. coli* MG1655 populations against 22 antibiotics for 21 days under two selection strategies in parallel: strong selection (cells propagated daily from half-MIC culture) and mild selection (cells propagated from one-eighth-MIC culture). Both strategies reached similar final resistance levels against the selecting drug, but strongly selected populations acquired more cross-resistance (27% vs. 23% of drug pairs), more antibiotic susceptibility — collateral sensitivity (CS) — (10% vs. 6%), and more mutations overall (pathway-specific: ~1.1 vs. ~0.65 per strain; off-pathway: ~1.7 vs. ~0.86 per strain). Aminoglycoside-resistant strains under strong selection developed susceptibility to ~6 other drug classes via TrkH mutations (L80Q, L153P), independently confirming the PMF/efflux mechanism identified by Lazar2013. The study concludes that selection strength is a hidden but controllable parameter shaping cross-resistance evolution, and that clinical use of high doses may promote more complex resistance phenotypes.

## Conceptual contribution

This paper establishes that **selection pressure strength (dose) is a parameter that shapes the cross-resistance and collateral sensitivity landscape, not merely the final resistance level to the selecting drug.** The central finding — that populations evolved under strong and mild selection reach similar final resistance levels yet develop strikingly different cross-resistance profiles — decouples resistance magnitude from resistance trajectory. This has a counterintuitive implication for clinical practice: the standard justification for using the highest tolerable dose (clear infection before resistance emerges) may simultaneously produce resistance profiles with more cross-drug consequences, as high doses select for more diverse pathway-specific mutations and more off-pathway mutations.

The aminoglycoside finding is a particularly clean demonstration: strong selection against all four tested aminoglycosides reliably drives TrkH mutations in 5/8 strains, producing susceptibility to ~6 drug classes. This is independent confirmation — using a different *E. coli* strain (MG1655), medium (M9 minimal), temperature (30°C), and TrkH positions (L80Q, L153P vs. Lazar2013's T350L) — that TrkH mutations are a robustly selected evolutionary outcome of strong aminoglycoside selection and that the PMF/efflux mechanism is not an artifact of specific experimental conditions.

From an evolutionary control perspective, the paper raises the question of whether dose can function not just as a pharmacological parameter but as an evolutionary steering lever. Mild selection produces populations with weaker cross-resistance, fewer off-pathway mutations, and a more "local" resistance profile (concentrated near the selecting drug class). Whether this property can be deliberately exploited — using doses calibrated to maintain therapeutic effect while constraining the cross-resistance footprint — is a direct implication of the paper's findings, though not a strategy it implements.

## Key findings

- 88 *E. coli* MG1655 populations evolved for 21 days against 22 antibiotics (7 drug classes); 2 populations per drug per selection strength; final resistance to the selecting drug similar between conditions (log₁₀ ratio = 0.47 ± 0.65, P = 0.01 sign test; strongly selected strains ~2.7× more resistant on average — a modest difference given 21 days of evolution)
- Cross-resistance frequency: 27% (strong) vs. 23% (mild) of drug pairs; cross-resistance magnitude significantly higher under strong selection ($P = 3 \times 10^{-2}$, Wilcoxon rank-sum test)
- Antibiotic susceptibility (CS) frequency: 10% (strong) vs. 6% (mild); susceptibility magnitude significantly higher under strong selection ($P = 2 \times 10^{-5}$, Wilcoxon rank-sum test)
- Correlation between direct-resistance (resistance to selecting drug) and cross-resistance is weak ($R = 0.23$, $P = 0.033$) — selection strength effects are not simply mediated by higher direct resistance level
- Strongly selected strains: ~3 mutations on average (124 total); mildly selected: ~2 mutations (91 total); pathway-specific mutations: ~1.1 vs. ~0.65 per strain ($P = 0.0085$); off-pathway mutations: ~1.7 vs. ~0.86 per strain; 9/11 pathway-specific mutations found in mildly selected strains were also found in strongly selected strains
- Aminoglycoside resistance (STR, AMK, KAN, TOB) under strong selection produces susceptibility to ~6 drug classes on average; mild selection produces susceptibility to ~2 drug classes
- TrkH mutations found in 5/8 aminoglycoside-resistant strongly selected strains (L80Q in 4 strains; L153P in 1 strain); on average, TrkH-mutant strains are susceptible to 6 other drug classes; consistent with Lazar2013's TrkH/PMF efflux model
- Aminoglycoside resistance is "idiosyncratic" — no strains evolved against other drug classes developed aminoglycoside cross-resistance
- Folic acid synthesis inhibitor resistance is "independent" — these strains show no cross-resistance to other drug classes; only known pathway-specific mutations (folA, folP, folM, folX)
- Gene amplification of *acrAB* locus found in only 2 strains (AMK-M-1 and SPR-S-2); rare due to the gradual adaptation protocol
- Two cefoxitin-resistant strongly selected strains became mutator strains (558 mutations each); excluded from genotypic analysis
- *pyrE-rph* operon deletions found in 29 strains (predominantly mildly selected, 20 vs. 4), linked to growth rate increases in minimal media; faster-growing strains grew at $48 \pm 3$ min doubling time vs. $70 \pm 4$ min for the ancestor
- Table 2 catalogs pathway-specific and off-pathway mutations for all 22 drugs; common off-pathway genes: *trkH*, *acrB*, *acrR*, *marR*, *envZ*, *ompF*, *ompC*, *fis*, *mprA*, *soxR*

## Methods

- *E. coli* K-12 MG1655 in M9 minimal medium + 0.4% glucose + 0.2% amicase; 30°C; 22 antibiotics from 7 classes
- Strong selection: cells from half-MIC culture transferred (30 µl) daily to fresh vials with increasing concentrations; mild selection: cells from 1/8-MIC culture transferred; 60× dilution per day; 21-day protocol; steady-state population size $5 \times 10^9$–$10^{10}$ cells
- Phenotyping: 22-h plate reader assay (Tecan M200) at $10^{1/2}$ or $2^{1/2}$ dilution steps; MIC by interpolation at $\text{OD}_\text{final} = 0.03$; duplicate measurements; 22×88 normalized cross-resistance matrix converted to trinary (−1/0/+1)
- Cross-resistance network construction: $10^5$ random permutations for significance; $P < 0.05$ threshold; 7×7 drug-class interaction matrix
- WGS: 88 evolved strains + ancestor via Illumina HiSeq2000 (2×100 bp paired-end, ≥100× coverage); Bowtie2 alignment to MG1655 reference (NC\_000913.2); SAMtools + BRESEQ variant calling; data deposited at NCBI SRA (SRP042989)
- Pathway-specific gene classification via EcoCyc database; off-pathway genes defined as repeatedly mutated genes outside the target pathway of the selecting drug

## Relationship to existing wiki

The TrkH/PMF mechanism is the centerpiece of [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] in this wiki. Oz2014 independently confirms this mechanism with novel TrkH alleles (L80Q, L153P vs. Lazar2013's T350L), a different strain (MG1655 vs. K-12 derivatives), minimal media, and 30°C — strengthening the conclusion that TrkH mutations are a robustly selected evolutionary outcome of strong aminoglycoside selection rather than condition-specific.

The finding that selection pressure strength modulates the CS landscape is complementary to [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]], which shows that CS profiles change as a function of evolutionary time. Oz2014 adds a second dimension: dose history shapes the cross-resistance profile at the same endpoint. Together, these two papers argue that CS profiles are not static properties of resistance mutations — they depend on both *when* and *at what intensity* resistance evolved.

The clinical argument (high doses may promote more complex resistance) connects to the adaptive therapy and containment principles articulated by [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and [[papers/Hansen2020_ContainmentStrategy|Hansen2020]]: both frameworks argue that lower or modulated drug exposure can achieve better long-term population control. Oz2014 provides empirical cross-resistance data supporting the premise that dose modulation changes the evolutionary outcome.

The off-pathway mutations found here (*marR*, *mprA*, *ompR*) partially overlap with resistance mechanisms characterized in [[papers/Lazar2018_CollateralSensitivityAMPs|Lazar2018]] and [[papers/Roemhild2020_NitrofurantoinCS|Roemhild2020]], suggesting shared regulatory routes between antibiotic resistance in general and AMP/NIT-specific CS mechanisms.

## Open questions raised

- Can dose be explicitly optimized as an evolutionary control variable — not just drug sequence (MDP/RL) but drug concentration — to minimize cross-resistance generation while maintaining therapeutic effect?
- Is there a dose threshold between "mild" and "strong" selection where the cross-resistance landscape changes qualitatively, or is the effect graded continuously with dose?
- Does the selection strength relationship hold in clinical pathogens (*E. faecalis*, *S. aureus*, *P. aeruginosa*) and clinical conditions (non-minimal media, 37°C, polymicrobial environments, host immune interaction)?
- If strong selection produces more diverse off-pathway mutations (*acrB*, *marR*, *envZ*, *ompF*), do those populations have different collateral sensitivity profiles than the more restricted profiles from mild selection — and could those profiles be exploited differently by MDP/d-MDP cycling protocols?
- Can selection pressure modulation be combined with MDP/d-MDP collateral sensitivity cycling — e.g., using mild doses to produce populations with narrower, more predictable CS profiles, then applying optimal drug cycling?

## Conversion notes

Figure images were not extracted per wiki convention. Key figures: Fig. 1 (schematic of strong and mild selection protocols; representative resistance trajectories; final resistance ratio distribution); Fig. 2 (cross-resistance heatmaps for 22×88 drug-strain matrix, strong vs. mild; dose-response representative curves); Fig. 3 (cross-resistance networks for strong and mild selection — 7-class interaction networks with frequency/strength-coded lines); Fig. 4 (circular genome plots of mutations for 50S inhibitors and aminoglycosides; TrkH highlighted in magenta); Fig. 5 (pathway mutation distribution by drug class; pathway-specific gene diversity; TrkH mutation histogram with susceptibility magnitude). Conversion quality was good; Table 1 (drug list with MIC and mechanism) and Table 2 (pathway-specific and off-pathway mutations) rendered correctly.
