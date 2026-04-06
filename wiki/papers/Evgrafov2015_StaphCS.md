---
title: "Collateral Resistance and Sensitivity Modulate Evolution of High-Level Resistance to Drug Combination Treatment in Staphylococcus aureus"
authors: [Rodriguez de Evgrafov M, Gumpert H, Munck C, Thomsen TT, Sommer MOA]
year: 2015
venue: "Molecular Biology and Evolution"
doi: "10.1093/molbev/msv006"
arxiv: ""
topics: [evolution-in-multidrug-environments, collateral-sensitivity]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Rodriguez de Evgrafov et al. tested whether the sub-MIC paradigm — that antagonistic drug combinations slow resistance evolution better than synergistic ones — holds at clinically relevant concentrations above the wild-type MIC. Using *Staphylococcus aureus* strain Newman evolved against six antibiotics and five combinations (one antagonistic, one additive, three synergistic) across five sequential resistance challenge periods, they found no correlation between drug interaction type and resistance evolution. All drug combinations slowed resistance evolution relative to monotreatment, regardless of pharmacological interaction. Instead, cross-resistance and collateral sensitivity between the constituent drugs predicted combination performance: the best combination (FUS-ERY) worked because fusidic acid resistance creates CS to erythromycin; the worst (FUS-AMI, which is antagonistic) failed because amikacin resistance creates cross-resistance to fusidic acid via shared fusA mutations. Whole-genome sequencing confirmed that combination-evolved isolates carry the same canonical resistance mutations as single-drug-evolved isolates, establishing that constituent drug response — not the drug interaction itself — drives resistance evolution at clinical concentrations.

## Conceptual contribution

This paper challenges a decade-old in vitro sub-MIC paradigm (Hegreness 2008, Michel 2008) by showing it does not generalize to clinically relevant concentrations. The key insight is that drug interactions are not static properties — they change as resistance evolves, and post-adaptation FICI values often shift substantially from WT values (DOX-CPR shifted from synergistic to antagonistic). This evolutionary dynamics of drug interactions makes interaction type an unreliable long-term predictor of resistance evolution.

In its place, the paper establishes collateral sensitivity and cross-resistance between constituent drugs as the better design criterion — one that operates regardless of concentration range and is grounded in the mechanistic biology of resistance mutations. When resistance mutations to one drug also confer sensitivity to the partner drug, the combination is self-limiting: the very mutations selected by one component undermine resistance to the other. When resistance mutations confer cross-resistance to the partner (e.g., fusA mutations conferring both FUS and AMI resistance), the combination's evolutionary advantage collapses even if the drugs are pharmacologically antagonistic.

This reframing has a practical implication: rather than characterizing drug interactions before selecting combinations, the focus should be on whether available resistance mutations produce divergent or convergent trajectories — a question answerable through CS/cross-resistance profiling of evolved lines.

## Key findings

- No significant correlation between WT drug interaction type (FICI) and resistance evolution at above-MIC concentrations in *S. aureus*; combinations spanning antagonistic (FUS-AMI, FICI = 1.69), additive (CPR-AMP, FICI = 0.99), and synergistic (DOX-ERY, FICI = 0.58; DOX-CPR, FICI = 0.81; FUS-ERY, FICI = 0.75) showed no monotonic trend in evolvability
- All five drug combinations slowed resistance evolution relative to their slowest single-drug component (evolvability index <1 for most isolates); best performance: FUS-ERY (evolvability indices <0.2); worst: FUS-AMI and DOX-CPR (evolvability >1 for some replicates)
- Drug interactions evolved during resistance adaptation: DOX-CPR shifted from synergistic (WT FICI = 0.81) to antagonistic post-adaptation; FUS-ERY remained synergistic but FICI increased; FUS-AMI FICI values shifted across replicates
- FUS→ERY collateral sensitivity explains FUS-ERY success: fusidic acid-evolved isolates had IC90 values below WT for erythromycin; combinations where component drugs produce CS had significantly lower evolvability indices than those without (Mann-Whitney P < 0.05)
- AMI→FUS cross-resistance via fusA mutations explains FUS-AMI failure: amikacin-evolved isolates had >10× WT IC90 for fusidic acid; fusA mutations (known FUS-resistance mutations) were identified in all FUS-evolved and all AMI-evolved isolates; fusA confers both FUS and AMI resistance despite non-overlapping binding sites
- Combination-evolved isolates accumulated mutations in the same canonical target genes as single-drug-evolved isolates (rplD for ERY; parC/gyrA for CPR; rpsJ for DOX; fusA for FUS and AMI; pbpA for AMP) — individual constituent drug response dominates genetic evolution
- The antagonistic FUS-AMI combination — theoretically predicted to slow evolution — was among the worst performers because fusA cross-resistance undermined the combination's theoretical advantage
- Drug interaction type observed in *E. coli* does not necessarily transfer to *S. aureus*: DOX-CPR was strongly antagonistic in *E. coli* (prior literature) but synergistic in the *S. aureus* strain Newman used here — highlighting organism-dependence of pharmacological interactions

## Methods

- *S. aureus* strain Newman; modified LB media (reduced NaCl); 37°C; 96-well microtiter plates
- Five serial resistance challenges with escalating concentrations; three replicate lineages per condition; seed from most resistant replicate at each step
- Combinations tested at 1:1 IC90 ratio; FICI measured at 90% inhibition using checkerboard dilution
- Evolvability index: $\frac{1}{n}\left(\frac{\text{IC}_{90}[A]_{AB}}{\text{IC}_{90}[A]_A} + \frac{\text{IC}_{90}[B]_{AB}}{\text{IC}_{90}[B]_B}\right)$ — quantifies how combination exposure modulates resistance to each component relative to single-drug evolution
- IC90 determination: four isolates per evolved population tested in quadruplicate with 2-fold dilution steps; OD600 at 16+ h
- Whole-genome sequencing: Illumina/IonTorrent; aligned to *S. aureus* Newman (NC_009641.1) using Bowtie2; variant calling with SAMTools; average coverage 125× at 99.6% genome coverage; SNPs confirmed at ≥80% read frequency and phred ≥30

## Relationship to existing wiki

This paper directly challenges and qualifies the finding of [[papers/Hegreness2008_AcceleratedResistance|Hegreness2008]] (synergy accelerates resistance in *E. coli* at sub-MIC) and the framework of [[papers/Michel2008_MultidrugsResistance|Michel2008]] (antagonism reduces MSW), by showing neither generalizes to above-MIC conditions. It also aligns with and extends [[papers/Dean2020_DrugComboEvolution|Dean2020]]'s finding that combinations can modulate CS profiles, and confirms from a resistance-evolution angle what [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] established at the phenotypic level: that cross-resistance and CS between drug classes is the key structural determinant of evolutionary trade-offs.

The fusA cross-resistance between amikacin and fusidic acid documented here is an interesting parallel to [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]]'s finding that fusA mutations in aminoglycoside-adapted *E. coli* populations confer hypersensitivity to other antibiotics via the PMF pathway — two very different second-order resistance effects from the same elongation factor gene.

The evolvability index introduced here is a practical extension of the conceptual framework in [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]], providing a quantitative tool for comparing combination therapy performance relative to single-drug baselines.

## Open questions raised

- Does the CS/cross-resistance predictor of combination performance hold at intermediate concentrations (between sub-MIC and clinical MIC), or is there a sharp transition between the interaction-dominated and CS-dominated regimes?
- Can the fusA cross-resistance between AMI and FUS (sharing no overlapping binding sites) be explained within the geometric rescaling framework, and does it represent a general pattern for resistance mutations that alter universal translation machinery?
- Can CS profiling of evolved populations replace drug interaction FICI measurements as the primary design tool for antibiotic combination therapy?
- How does the evolvability index behave in combinations of more than two drugs — does the predictive value of CS/cross-resistance scale additively or non-additively with the number of components?

## Conversion notes

Several figure images were not extracted per wiki convention. Key figures: Fig. 2 (drug tolerance over adaptation time for each combination — grouped bar plots); Fig. 3 (IC90 gain for most evolved isolates); Fig. 4 (evolvability index values by combination); Fig. 5 (cross-resistance/CS heatmap between constituent drug pairs); Fig. 6 (mutation table across single-drug and combination-evolved isolates). These figures appear on PDF pages 2–7.
