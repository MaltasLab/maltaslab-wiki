---
title: "Antibiotics can be used to contain drug-resistant bacteria by maintaining sufficiently large sensitive populations"
authors: [Hansen E, Karslake J, Woods RJ, Read AF, Wood KB]
year: 2020
venue: "PLoS Biology"
doi: "10.1371/journal.pbio.3000713"
arxiv: ""
topics: [evolutionary-control, frequency-dependent-selection]
lab_paper: true
canonical: true
relevance: high
ingested_by: "jamaltas"
---

## Summary

Hansen et al. provide the first explicit experimental demonstration that a **competition-maximizing containment strategy** — maintaining the maximum tolerable number of drug-sensitive bacteria — can suppress the growth of drug-resistant bacteria and substantially delay treatment failure in vitro. Using computer-controlled bioreactors with real-time adaptive drug dosing, the authors track "escape time" (time for resistant cells to eclipse a threshold density, the acceptable burden $P_\text{max}$) in matched populations of resistant-only cells versus mixed sensitive + resistant cells receiving identical drug treatment. At sufficiently high $P_\text{max}$ (OD = 0.2), mixed populations are contained below threshold for >18 hours while resistant-only populations escape in 6–9 hours — more than doubling escape time. At low $P_\text{max}$ (OD = 0.1), competition is insufficient and escape times are indistinguishable. A logistic competition model with Hill-function drug inhibition quantitatively predicts the experimental dynamics with no adjustable parameters.

## Conceptual contribution

The paper's central conceptual contribution is **decisively experimental**: prior work showing that competitive suppression of resistant cells by sensitive cells could extend treatment was purely theoretical or confined to parasites and cancer. Hansen2020 establishes it experimentally in bacteria, under the most challenging possible conditions — well-mixed bioreactors with continuous resource renewal, where competition is weakest. This makes the positive result more striking: even under conditions minimizing competition, sensitive cells can more than double escape times when the acceptable burden is set high enough.

The paper also clarifies the key conditions for containment to outperform elimination:
1. **The acceptable burden must be sufficiently high** — below a threshold $P_\text{max}$, competition is too weak to provide benefit; above it, competitive suppression dominates
2. **Mutation must not be the dominant source of new resistant cells** — containment can be actively harmful if sensitive cells generate resistance faster than they suppress it; at standard bacterial mutation rates in this system, mutation is negligible relative to competition

This establishes the two-parameter design space for containment (acceptable burden, mutation rate) and provides a quantitative framework for predicting when competition-based control is beneficial. The framework connects directly to adaptive therapy in cancer: both exploit competitive suppression between sensitive and resistant subpopulations to delay treatment failure, but this paper provides the bacterial analog with explicit experimental confirmation and a minimal predictive model.

A second conceptual contribution is the **adaptive drug dosing protocol**: the mixed population determines drug dosing in real time (feedback control maintaining $P_\text{max}$), and identical drug concentrations are then applied to all vials. This design decouples drug effects from competition effects — any observed difference in escape times between mixed and resistant-only populations must be attributable to competitive suppression, not differential drug exposure.

## Key findings

- At high $P_\text{max}$ (OD = 0.2): mixed populations (90% sensitive, 10% resistant at initiation) contained below threshold for the full experiment duration (>18 hours) in nearly all replicates; resistant-only populations escaped in 6–9 hours — more than doubling the escape time by maximizing the sensitive subpopulation
- At low $P_\text{max}$ (OD = 0.1): no significant difference between mixed and resistant-only escape times, confirming the density-dependence of competitive suppression
- Escape time increases rapidly with $P_\text{max}$ for mixed populations but not resistant-only, across a continuous range of $P_\text{max}$ from 0.2 to 0.5 (Fig. 5)
- Model predictions match experimental dynamics quantitatively with no adjustable parameters; the only systematic discrepancy is that the model slightly underestimates resistant-only escape time at low $P_\text{max}$, suggesting competition is underestimated at low densities
- At the conclusion of experiments, mixed vials are predominantly resistant — containment does not drive reversal but delay; competitive suppression is not elimination
- Long-duration experiment (>35 hours, $P_\text{max}$ set above predicted steady state): mixed population held below threshold for the entire experiment; resistant-only population transiently crosses threshold then returns below it
- Mutation plays negligible role: dose-response curves of isolates from start vs. end of experiment are indistinguishable; theoretical analysis confirms mutation rate too low to dominate over competition in this system (S2 Text)
- Benefit of containment increases with: higher $P_\text{max}$, lower initial frequency of resistance, greater fitness cost of resistance (S6 Fig)
- Resistant strain (REL606-derived, 5 mutations: OmpF P138H, AcrR-IS1 insertion, others) exhibits 4.3× higher IC$_{50}$ for doxycycline (210 ng/mL vs. 49 ng/mL) and a small fitness cost ($r_R = 0.0152$ vs. $r_S = 0.0169$ min$^{-1}$)

## Methods

- **Bacterial strains**: *E. coli* REL606 and REL607 (LTEE ancestor strains differing by a neutral araA marker); doxycycline-resistant mutant isolated from lab-evolved REL606 (escalating doxycycline, 3 days); resistance confirmed by whole-genome sequencing (5 mutations; OmpF P138H, AcrR IS1 insertion, others)
- **Bioreactors**: custom computer-controlled constant-volume (17 mL) bioreactors; OD monitored by IR LED/photodiode; flow controlled by peristaltic pumps (up to 6 per vial); up to 9 simultaneous cultures; controlled by custom MATLAB software (same system as Karslake2016)
- **Drug dosing**: real-time feedback control: if $\text{OD}_\text{avg} > P_\text{max}$ and current drug < $d_\text{max}$, add drug for 21 seconds at 1 mL/min; dosing protocol determined by mixed vial then applied identically to all vials (R-only, S-only, mixed, drug-free controls)
- **Escape time measurement**: time for OD to exceed $P_\text{max} + 0.025$ for the first time; normalized by total experiment length
- **Mathematical model**: two-strain logistic growth ODEs with Hill-function drug inhibition and time delays; competition via shared carrying capacity $C$; drug concentration modeled by inflow/outflow dynamics; all parameters from independent measurements (no fitting to escape time data)
- **Whole-genome sequencing**: breseq pipeline against REL606 reference (NC_012967); Swift 2S turbo library prep; NovaSeq-6000, 150 bp paired-end

## Relationship to existing wiki

This paper establishes the experimental foundation for **competition-based adaptive therapy in bacteria** — a conceptual analog to the drug holiday framework in cancer ([[papers/Maltas2023_DrugDependence|Maltas2023]]) and to the density-dependent PK/PD bistability study ([[papers/Karslake2016_InoculumEffect|Karslake2016]]). All three use the same custom bioreactor system. Karslake2016 focused on how population density affects drug efficacy; Hansen2020 focuses on how it affects competitive suppression. Together they establish that population density is a design variable for treatment, not merely a technical parameter.

The paper provides the first explicit bacterial experimental demonstration of [[concepts/adaptive-therapy|adaptive therapy]] — maintaining sensitive cells as a competitive tool against resistant cells — and directly grounds the conceptual framework described in that concept page. The competitive suppression mechanism directly invokes the ecological interactions characterized in [[papers/Yurtsev2013_BacterialCheating|Yurtsev2013]] and [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] — the fitness of resistant cells is not constant but depends on the composition (and thus frequency) of the population they inhabit. Whereas those papers characterize the equilibrium properties of these interactions, Hansen2020 exploits them dynamically to extend escape time.

The adaptive drug dosing protocol — real-time feedback control maintaining population at $P_\text{max}$ — is related to but distinct from the MDP/d-MDP framework in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]. The MDP optimizes over drug *identity* given a collateral sensitivity model; the containment protocol optimizes over drug *amount* given a competition model. Both are evolutionary control strategies, but they operate on different levers.

The paper uses *E. coli* REL606/REL607, the LTEE ancestor strains also referenced in [[papers/Good2017_MolecularEvolutionLTEE|Good2017]] and [[papers/Couce2024_ChangingFitnessEffects|Couce2024]], providing a genetic anchor to the long-term evolution literature.

## Open questions raised

- The experimental system measures density-mediated competition via shared carrying capacity; however, competition in vivo involves spatial heterogeneity, immune effects, and potentially direct interference (bacteriocins). Does competition-based containment scale to these more complex environments, and does spatial structure enhance or diminish the competitive suppression effect?
- The model consistently underestimates competition at low $P_\text{max}$, suggesting additional competitive mechanisms not captured by simple logistic growth. What is the mechanistic basis — spatial effects even in the well-mixed bioreactor, metabolic cross-inhibition, or pH dynamics (as in Karslake2016)?
- The paper sets an initial 90:10 sensitive:resistant ratio to maximize competitive benefit. How sensitive is escape time to this initial composition, and is there a controllable "optimal initial ratio" that maximizes escape time given the fitness cost and IC$_{50}$ ratio?
- The adaptive dosing protocol is explicitly suboptimal — it sometimes reduces the sensitive population more than necessary. Can RL or MDP-based dosing frameworks (as in Weaver2024, Maltas2019a) be used to simultaneously maintain $P_\text{max}$ and maximize the sensitive subpopulation fraction, achieving a containment benefit even larger than demonstrated here?
- Theory predicts that containment can be *harmful* when resistant cells are sufficiently rare that de novo mutation from the sensitive population dominates over competitive suppression. Are there clinical scenarios (e.g., prophylactic treatment before resistance emerges) where containment is genuinely counterproductive?

## Conversion notes

Conversion was clean. Figures 1–5 and supporting figures (S1–S6) were not extracted — key figure descriptions reconstructed from captions. Reference list [1]–[82] is complete in the conversion.
