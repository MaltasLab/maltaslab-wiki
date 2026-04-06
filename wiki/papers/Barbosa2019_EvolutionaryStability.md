---
title: "Evolutionary stability of collateral sensitivity to antibiotics in the model pathogen Pseudomonas aeruginosa"
authors: [Barbosa C, Römhild R, Rosenstiel P, Schulenburg H]
year: 2019
venue: "eLife"
doi: ""
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control, evolution-in-fluctuating-environments]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Barbosa, Römhild et al. performed a two-step evolution experiment in *Pseudomonas aeruginosa* to test the **evolutionary stability** of collateral sensitivity (CS) — the third and largely unexplored prerequisite for CS-based clinical therapy. Starting from Barbosa2017 populations that had evolved resistance to drug A (piperacillin/tazobactam or carbenicillin) with concomitant reciprocal CS to drug B (streptomycin or gentamicin), clonal lineages were exposed to drug B either alone (unconstrained) or together with drug A (constrained), at two concentration escalation rates (mild or strong). Three distinct outcomes were observed: (i) bacteria frequently failed to overcome the CS-imposed vulnerability and went extinct; (ii) some lineages escaped the double bind by evolving multidrug resistance; and (iii) most surviving lineages that acquired resistance to drug B simultaneously became re-sensitized to drug A, maintaining the reciprocal trade-off. Drug order substantially influenced which outcome predominated, attributable to variation in CS effect size, epistasis among resistance mutations, and fitness costs.

## Conceptual contribution

This paper directly addresses whether collateral sensitivity is a durable evolutionary constraint or merely a transient phenotypic state. Prior work established that CS is common (Lazar2013, Maltas2019a) and exploitable in sequential therapy (Maltas2019a). But a critical prerequisite — temporal stability under continued evolution — had not been tested: can bacteria simply evolve to overcome CS given additional evolutionary time, or does the underlying trade-off hold after a drug switch? Barbosa2019 answers with three empirically distinct outcomes: extinction, escape, and trade-off maintenance. The finding that extinction is common and trade-off maintenance predominates among survivors establishes that CS functions as a genuine evolutionary trap — not merely a transient phenotypic state — under realistic conditions of sequential drug exposure.

The paper also establishes **drug order** as a determinant of evolutionary outcome in CS cycling. The same two drugs in reverse order may produce substantially different probabilities of extinction versus escape versus trade-off maintenance, because CS effect size, epistatic compatibility of resistance mutations, and fitness costs all depend on which drug was applied first. This has direct implications for treatment protocol design: the order of a CS-cycling sequence is not interchangeable, and characterizing the asymmetry of CS pairs is necessary for identifying the optimal direction of switching.

A conceptually important nuance is that escape remains possible — CS is not an absolute barrier to multidrug resistance evolution but a probabilistic one. Its effectiveness as a trap depends on drug pair identity, drug order, and selection pressure conditions (mild versus strong). This motivates pre-selecting drug pairs for cycling therapy based on their evolutionary stability properties, not just the magnitude of their CS profiles.

## Key findings

- Two-step evolution experiment in *P. aeruginosa* PA14 using two reciprocal CS pairs from Barbosa2017: piperacillin/tazobactam (PIT) ↔ streptomycin (STR) and carbenicillin (CAR) ↔ gentamicin (GEN)
- Four selective conditions in parallel: mild or strong concentration escalation of drug B × unconstrained (drug B alone) or constrained (drug B + drug A)
- Three main outcomes: (i) extinction — bacteria fail to overcome CS and die; (ii) escape — hypersensitivity converts to multidrug cross-resistance; (iii) trade-off maintenance — drug B resistance accompanied by re-sensitization to drug A
- Extinction was a common outcome, demonstrating that CS can be an effective evolutionary trap
- Among surviving lineages, trade-off maintenance was more frequent than multidrug resistance escape
- Drug order significantly affected outcome distributions, attributable to CS effect size, epistasis among adaptive mutations, and fitness costs of resistance
- Results confirmed by an independent set of two-step evolution experiments

## Methods

- Starting populations: previously evolved, highly resistant PA14 populations from Barbosa2017 serial passage experiments
- Reciprocal CS of two pairs re-confirmed by dose-response analysis before the second evolution step
- Clonal lineages isolated from drug A-resistant populations; second evolution initiated at sub-inhibitory drug B concentrations with linear concentration increases at two rates (mild or strong)
- Constrained conditions: drug A maintained in combination with drug B during the second step
- Bacterial growth monitored by continuous absorbance measurements
- Population extinction frequencies quantified
- Antibiotic resistance changes characterized phenotypically
- Phenotypic data combined with genomic and functional genetic analyses
- Independent validation experiment performed as confirmatory replication

## Relationship to existing wiki

This paper is a direct follow-up to [[papers/Barbosa2017_AlternativeEvolutionaryPaths|Barbosa2017]]: the populations used as starting material are the drug A-resistant populations from that study, and the two reciprocal CS pairs tested (PIT↔STR, CAR↔GEN) were identified and mechanistically characterized there. Barbosa2017 established *that* these CS patterns exist and traced them to *nalC*, *mexZ*, and *pmrB* mutations; Barbosa2019 asks *whether* those CS constraints hold over evolutionary time when the second drug is applied.

The evolutionary stability question connects directly to the MDP/sequential control framework of [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]: the MDP assumes that when a population is switched to drug B (to which it is CS), either it goes extinct or trade-off maintenance applies. Barbosa2019 provides the first systematic experimental test of this assumption in *P. aeruginosa*, finding that it holds more often than not but is not universal.

Drug-order effects on evolutionary outcome connect to the temporal CS dynamics documented by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] and the dose-history dependence established by [[papers/Oz2014_SelectionPressure|Oz2014]]: both show that the CS landscape depends on *how* resistance was acquired, not just *that* it was acquired.

The three-outcome typology (extinction, escape, trade-off maintenance) is structurally analogous to treatment outcomes in adaptive therapy: tumor elimination, competitive escape by resistant clones, or stable coexistence. [[papers/Maltas2023_DrugDependence|Maltas2023]] and [[papers/Hansen2020_ContainmentStrategy|Hansen2020]] analyze analogous outcome typologies in drug-dependent cancer and competition-based bacterial containment respectively.

## Open questions raised

- What quantitative properties of a CS pair — effect size, symmetry, epistatic compatibility of resistance mutations, fitness costs — best predict which of the three outcomes (extinction, escape, trade-off maintenance) will predominate? Can these be measured in advance to pre-select pairs most likely to produce extinction?
- Is drug-order asymmetry in evolutionary outcome (i.e., PIT→STR versus STR→PIT producing different outcomes) a general feature of all reciprocal CS pairs, or specific to the PIT/STR and CAR/GEN pairs tested here?
- Does the constrained environment (continuing drug A while applying drug B) consistently improve evolutionary outcomes — and is this because of direct selection pressure on drug A resistance, or epistatic effects of the combined mutation burden?
- How do these evolutionary stability findings scale from M9 minimal medium to SCFM or clinical *P. aeruginosa* isolates, where fitness costs and epistatic landscapes may differ?
- Can the three-outcome framework be incorporated formally into an MDP or d-MDP control model — assigning transition probabilities to extinction, escape, and trade-off maintenance for each drug pair and order — to optimize treatment sequences for maximum extinction probability?

## Conversion notes

Conversion quality was very poor: the output file is only 59 lines, capturing only the abstract, eLife digest, introduction, and the first paragraph of Results. The bulk of the paper — quantitative outcome frequencies, genomic analysis, epistasis characterization, Discussion, Methods — was not captured. Key quantitative findings (extinction rates per condition, escape frequencies, re-sensitization magnitudes, genotypic analysis) are unavailable from the conversion and derived here from the abstract alone. Key figures (Fig. 1: experimental design and dose-response curves; remaining figures: outcome distributions, genomic data, epistasis) are not described. PI should review the PDF directly for quantitative details and validation experiment results. DOI not extracted from conversion — requires manual lookup [VERIFY].
