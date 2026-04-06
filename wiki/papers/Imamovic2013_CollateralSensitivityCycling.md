---
title: "Use of Collateral Sensitivity Networks to Design Drug Cycling Protocols That Avoid Resistance Development"
authors: [Imamovic L, Sommer MOA]
year: 2013
venue: "Science Translational Medicine"
doi: "10.1126/scitranslmed.3006609"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control, evolution-in-fluctuating-environments]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Imamovic & Sommer evolved *Escherichia coli* MG1655 to be resistant to 23 clinically relevant antibiotics spanning 11 drug classes, then mapped the resulting collateral sensitivity (CS) and cross-resistance profiles by IC90 dose-response curves for all pairwise drug combinations. 17/23 resistant strains showed CS to at least one other drug; aminoglycoside resistance was the broadest CS hub (CS to 14 unrelated drugs from multiple classes). They constructed a directed CS network from these data, enumerated all valid CS cycles within it (207 total), and provided experimental proof of principle for the concept they named **collateral sensitivity cycling**: sequentially treating *E. coli* with gentamicin and cefuroxime — a reciprocally CS pair — completely eradicated each fluorescently labeled resistant subpopulation at each drug switch step. CS also reduced the mutant prevention concentration (MPC) for resistant strains against CS-target drugs. CS profiles were validated in two clinical pathogenic *E. coli* isolates (94% concordance with lab strain MG1655).

## Conceptual contribution

This paper established **collateral sensitivity cycling** as a named treatment paradigm and provided its first experimental proof of principle. The conceptual novelty is twofold.

**First, a mechanism-based distinction from fitness-cost cycling.** The prevailing rationale for antibiotic cycling at the time was that withdrawing a drug in rotation removes selective pressure for resistance, allowing costly resistant mutants to be outcompeted by susceptible cells. Imamovic2013 demonstrates that CS cycling operates on a fundamentally different principle: **active selection against resistance** through increased drug sensitivity, not passive dilution during withdrawal. In the proof-of-principle experiment, CS cycling works even in the absence of fitness costs — resistant mutants were readily recovered in the absence of drug selection, confirming that the competitive advantage during cycling comes entirely from CS. This reframing positions CS cycling as a strategy that can succeed even when resistance carries no fitness cost, a critical limitation of standard cycling rationales.

**Second, the CS network as a design tool.** By constructing a directed graph in which nodes are drugs and edges represent CS relationships, the paper transforms the abstract observation that CS exists into a systematic combinatorial tool: enumerate all closed loops in the network to identify all possible cycling protocols. This produces 207 valid cycles from 23 drugs — more than enough practical options for a clinical cycling strategy. The network also reveals structural features: certain drugs (aminoglycosides, polymyxins, tetracyclines) appear in CS cycles far more frequently due to broad or strong CS profiles, and cross-resistance between drug classes used in existing clinical cycling programs (β-lactam/quinolone) explains the failure of those programs.

A third contribution is the demonstration that CS reduces the MPC: resistant bacteria require a *lower* drug concentration of the CS-target drug to prevent de novo resistance evolution relative to WT. This means that CS cycling confers a double benefit — it kills resistant cells faster (via kill kinetics) and prevents emergence of new resistance at lower drug concentrations. This has significant clinical implications for dosing within a CS cycling protocol.

## Key findings

- 23 antibiotics in 11 classes (Table 1: aminoglycosides AMI/GEN/KAN/STR, β-lactams AMP/AMX/PIP/CFX/CFP, quinolones NAL/CIP/LEV, tetracyclines TET/MIN/TGC, amphenicol CHL, macrolide AZY, polymyxins COL/POL, fosfomycin FOS, rifamycin RIF, nitrofurantoin NIT, trimethoprim TRI) evolved to resistance in *E. coli* MG1655 by gradient plate method (10 days, LB); polymyxins by serial passage in liquid
- All 23 resistant strains achieved resistance at or above EUCAST clinical breakpoints
- 17/23 resistant strains show CS to at least one other drug
- Aminoglycoside resistance is the broadest CS hub: CS to 14 drugs from β-lactams, polymyxins, macrolides, tetracyclines, chloramphenicol, fosfomycin, and nitrofurantoin — with notable drug-specific variation within the class (STR-resistant does not show CS to polymyxins, FOS, AZY, while AMI/GEN/KAN-resistant do)
- β-lactam/quinolone cross-resistance is common — the paper explicitly flags this as the likely cause of failure in clinical antibiotic cycling programs that rotate these two classes
- CS network graph enumeration yields 207 possible CS cycles (22 two-drug cycles; most remaining are three- or four-drug cycles)
- Aminoglycosides, polymyxins, and tetracyclines appear in 59% of two-drug cycles due to strong reciprocal CS profiles
- Proof of principle using GEN/CFX reciprocal CS pair: CFP-labeled GEN-resistant cells completely eradicated by CFX (4 μg/mL); YFP-labeled CFX-resistant cells completely eradicated by GEN (1 μg/mL); confirmed reproducible by switching CFP/YFP labels
- Fitness costs are not the mechanism: resistant mutants recovered readily in drug-free conditions; CS cycling works through active selection, not passive dilution
- CS accelerates kill kinetics: both GEN-resistant and CFX-resistant strains are killed *faster* than WT by the CS drug at 16× MICWT
- CS reduces MPC: GEN-resistant strains have lower MPC for CFX than WT; CFX-resistant strains have lower MPC for GEN than WT — meaning less drug is needed to prevent de novo resistance evolution in already-resistant bacteria during CS cycling
- Clinical isolate validation (EC3770, EC3856 from Hvidovre Hospital Denmark): 94% concordance with MG1655 CS profiles; NIT-related interactions account for most exceptions (6%), plausibly due to NIT's multi-target mechanism

## Methods

- Organism: *E. coli* MG1655 (lab strain) + EC3770, EC3856 (clinical pathogenic isolates); modified LB medium
- Resistance evolution: gradient plate method (21 drugs), serial passage in liquid (polymyxins COL, POL); 10-day adaptation
- IC90 determination: 96-well plates, 10^4 cells, 18h at 37°C, logarithmic twofold dilution gradient; polynomial interpolation in R; defined as lowest concentration inhibiting ≥90% growth
- CS profiles: MICResistant vs. MICWT; collateral sensitivity = MICResistant < MICWT; visualized with Cytoscape 3.0.1
- CS cycle enumeration: identified all 2–4 drug closed-loop paths within the directed CS network (table S3)
- Competition assay: CFP- and YFP-labeled isogenic strains (pZE21 MCS1 plasmid, kanamycin resistance); mixed 1:1 at ~5×10^4 CFU/mL; 18h incubation; survival determined by plating on kanamycin ± selecting antibiotic agar
- Time-kill curves: 5×10^5 cells at 16× MICWT; serial dilutions plated at multiple time points
- MPC determination: 10^9 CFU plated on agar supplemented with 1–8× MICWT; viable colonies counted at 24h

## Relationship to existing wiki

This paper is the direct conceptual predecessor of the CS-based evolutionary control strategies now central to the lab's work. [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] explicitly extends and formalizes the CS cycling concept introduced here: where Imamovic2013 identifies all possible CS cycles by graph enumeration (a greedy approach — follow CS arrows), Maltas2019a uses a Markov decision process to find *non-greedy* optimal policies that account for long-term evolutionary steering. The key advance in Maltas2019a is the insight that a drug that performs poorly today may position the population for greater vulnerability tomorrow — a consideration absent from the Imamovic2013 framework, which cycles to the drug with the highest immediate CS.

The CS network constructed here is the *E. coli* MG1655 counterpart to the [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] CS network, published the same year. Both map CS across ~23 antibiotics in *E. coli* MG1655. Lazar2013 used 240 independent populations per drug and focused on mechanistic characterization (PMF/TrkH pathway); Imamovic2013 used one strain per drug and focused on cycling application (network enumeration, proof of principle). Together they constitute the foundational 2013 literature on CS in *E. coli*.

[[papers/Imamovic2018_PhenotypicConvergence|Imamovic2018]] is by the same first author and extends this work to *P. aeruginosa* in cystic fibrosis, applying the cycling concept in a clinical context with in vivo validation. The NIT-related CS exceptions identified in Imamovic2013 are mechanistically followed up in [[papers/Roemhild2020_NitrofurantoinCS|Roemhild2020]], which identifies why NIT CS is variable: multiple distinct resistance mechanisms converge on NIT CS through different molecular routes. [[papers/Barbosa2017_AlternativeEvolutionaryPaths|Barbosa2017]] shows that CS network topology differs between *E. coli* and *P. aeruginosa* — directly relevant to the 94% concordance claim here. [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]] is the large-scale clinical validation of how well lab-derived CS networks (like the one constructed here) translate to real patient isolates — the answer being that CS is far rarer clinically (3%) than in controlled lab evolution.

## Open questions raised

- The proof of principle uses one CS pair (GEN/CFX) with clonal lineages in a simplified environment. How do CS cycling outcomes change with heterogeneous starting populations, standing genetic variation, and multiple rounds of selection — conditions closer to clinical infections?
- The 94% concordance between lab strain and clinical isolates is promising, but only 2 clinical isolates were tested and 8 of the 23 drugs. Does concordance hold for the full 23-drug panel across a more diverse clinical sample?
- The framework uses a greedy cycling rule: switch to the best-CS drug given current resistance. Maltas2019a shows that non-greedy policies can outperform this. Can the Imamovic2013 network data be re-analyzed with an MDP to quantify the performance gap between greedy CS cycling and optimal sequential control?
- Does the MPC-reduction benefit of CS scale with the magnitude of CS (stronger CS = greater MPC reduction)? If so, MPC can be used as a comparative criterion for ranking CS pairs for clinical utility.
- Within-drug variation in CS (STR versus AMI/GEN/KAN within aminoglycosides) implies that alternative evolutionary paths to resistance produce different CS profiles. How does within-treatment variation (as documented by [[papers/Barbosa2017_AlternativeEvolutionaryPaths|Barbosa2017]] for *P. aeruginosa*) affect the reliability of the cycle enumeration framework for species with higher mutational diversity in resistance pathways?

## Conversion notes

Conversion quality was good. Full paper captured including all Results, Discussion, and Methods. Table 1 (drug list) fully rendered. Figures 1–6 not extracted as images but captions and surrounding text describe their content clearly: Fig. 1 (CS cycling concept schematic and dose-response definitions), Fig. 2 (23×23 CS/cross-resistance heat map), Fig. 3 (CS network graph and cycle distribution), Fig. 4 (GEN/CFX cycling proof of principle competition assay), Fig. 5 (kill kinetics and MPC), Fig. 6 (clinical isolate heat map). DOI extracted from paper header: 10.1126/scitranslmed.3006609.
