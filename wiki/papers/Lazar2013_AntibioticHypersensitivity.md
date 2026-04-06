---
title: "Bacterial evolution of antibiotic hypersensitivity"
authors: [Lázár V, Singh GP, Spohn R, Nagy I, Horváth B, Hrtyan M, Busa-Fekete R, Bogos B, Méhi O, Csörgő B, Pósfai G, Fekete G, Szappanos B, Kégl B, Papp B, Pál C]
year: 2013
venue: "Molecular Systems Biology"
doi: "10.1038/msb.2013.57"
arxiv: ""
topics: [collateral-sensitivity]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Lázár et al. conducted the first large-scale systematic laboratory evolution study explicitly designed to chart collateral sensitivity (CS) interactions between antibiotics in *Escherichia coli*. Starting from a single ancestral clone (*E. coli* K12 BW25113), 240 parallel populations were evolved under constant sublethal concentrations of 24 antibiotics (~140 generations), and 96 populations per antibiotic were evolved under escalating concentrations for 12 selected antibiotics (240–384 generations). Susceptibility of each evolved line to all other antibiotics was then measured. At least 35% of antibiotic pairs showed CS in at least one direction. Aminoglycosides dominate the CS network, accounting for 44% of all CS interactions. Mechanistically, the study identifies PMF (proton-motive force)-reducing mutations — convergently observed in trkH, cyoB, hemA, and ispA — as the driver: these mutations simultaneously confer aminoglycoside resistance (reduced PMF-dependent drug uptake) and hypersensitivity to other antibiotic classes (impaired AcrAB efflux, itself PMF-dependent).

## Conceptual contribution

This paper establishes collateral sensitivity as a *network phenomenon* with structured, non-random topology — not merely an occasional trade-off but a prevalent feature of antibiotic resistance evolution with deterministic organizing principles. Two structural rules emerge: CS is absent between drugs targeting the same cellular subsystem (indicating that CS requires mechanistic non-overlap between resistance and sensitivity pathways), and CS interactions cluster around aminoglycosides due to a shared physiological dependency (PMF) that aminoglycoside resistance mechanisms antagonize in opposite directions for uptake vs. efflux.

The PMF antagonism model is the most complete mechanistic explanation for any antibiotic-antibiotic CS interaction in the literature at the time of publication, and remains one of the best-characterized today. It identifies a structural principle: when resistance to one drug is achieved by altering a cellular property (here, membrane potential) that is exploited in *opposite directions* by different drug classes (aminoglycosides require PMF for uptake; many other drugs rely on PMF-dependent efflux for clearance), resistance to one class inevitably creates broad sensitivity to the other. This is a generalizable design logic for predicting CS from first principles rather than measuring it empirically.

The paper also frames CS explicitly as a potential therapeutic lever — noting that sequential treatment with a drug and its CS partner "may represent a viable strategy" — though it explicitly declines to make specific therapeutic recommendations, leaving that development for subsequent work.

## Key findings

- At least 35% of all tested antibiotic pairs show CS in at least one direction, across two independent evolutionary protocols (constant sublethal and escalating concentrations); 85% of pairwise interactions overlap between protocols ($p < 10^{-5}$, randomization test)
- CS is absent between antibiotic pairs targeting the same cellular subsystem (Fisher's exact, $p = 0.013$) and depleted between pairs with overlapping chemogenomic profiles (Mann–Whitney U-test $p < 10^{-5}$)
- Aminoglycosides are the hub of the CS network: adaptation to aminoglycosides (kanamycin, tobramycin, streptomycin, gentamicin, amikacin) confers hypersensitivity spanning DNA synthesis, cell-wall synthesis, and non-aminoglycoside protein synthesis inhibitors; 44% of all CS interactions involve aminoglycosides
- Typical CS magnitude: 2- to 10-fold MIC decreases in evolved lines, consistent with known efflux pump mutant ranges
- Whole-genome sequencing of 14 aminoglycoside-adapted clones identified 100 mutations across 44 genes; 29.5% of affected genes mutated repeatedly (convergent evolution); mutations enriched in translational machinery, membrane transport, cell envelope homeostasis, and PMF-maintenance genes
- trkH mutations found in 64% of sequenced aminoglycoside-adapted clones; single insertion of trkH T350L into wild-type *E. coli* conferred simultaneous mild aminoglycoside resistance and multi-class hypersensitivity, with confirmed reduced membrane potential (DiOC2(3) assay) and elevated Hoechst 33342 accumulation
- AcrAB efflux link confirmed: AcrAB overexpression rescues sensitivity to chloramphenicol, ciprofloxacin, doxycycline, and trimethoprim in wild-type but not in PMF-deficient mutant backgrounds (trkH*, TOB3); 75% of CS-linked antibiotics are AcrAB substrates
- Non-aminoglycoside CS interactions also observed (55% of network) but not mechanistically resolved in this paper

## Methods

- *E. coli* K12 BW25113; MS-minimal medium + 0.2% glucose + 0.1% casamino acids; 96-well microtiter plates, 30°C
- Constant protocol: 10 parallel populations × 24 antibiotics × ~140 generations; escalating protocol: 96 populations × 12 antibiotics × ~240–384 generations
- High-throughput growth measurement: OD600 at 14h on 384-well plates (Hamilton Star robotic handling); normalization procedure for within-plate effects; collateral sensitivity identified by non-parametric bootstrap comparing 10 evolved vs. 10 adapted control lines
- Whole-genome resequencing: 14 aminoglycoside-adapted clones; SOLiD 5500xl platform; alignment to *E. coli* K-12 MG1655; variant calling confirmed by Sanger sequencing
- Single-mutation validation: allele replacement of trkH T350L into wild-type
- Membrane potential: DiOC2(3) carbocyanine dye fluorescence assay
- Efflux activity proxy: Hoechst 33342 accumulation assay (fluorescence per OD)
- AcrAB rescue experiment: multicopy plasmid carrying *acrAB* with native promoters vs. $\Delta acrB$ deletion; E-test MIC measurement

## Relationship to existing wiki

This is the direct conceptual predecessor to [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], which extended CS mapping to *E. faecalis*, introduced drug-class clustering as a population-level statistical structure, and built the MDP control framework on the CS foundation this paper established. The PMF/AcrAB mechanism identified here also connects directly to [[papers/Lazar2018_CollateralSensitivityAMPs|Lazar2018]] (same first/senior authors), which later extended the CS framework to AMP-antibiotic pairs and identified sbmA — a gene appearing in this paper's mutation list as influencing AMP resistance — as the driver of aminoglycoside-AMP cross-resistance.

The chemogenomic approach used here to define antibiotic mode-of-action profiles and predict CS topology is methodologically related to [[topics/fitness-landscapes/_hub|fitness landscapes]] work, as both map functional relationships between drugs through growth phenotype perturbations.

## Open questions raised

- What mechanisms underlie the 55% of CS interactions *not* involving aminoglycosides? The paper explicitly flags this as unresolved.
- How conserved are these CS networks across bacterial species beyond *E. coli* K12?
- Do PMF-reducing mutations arise early in clinical resistance evolution, and at what frequency are they present in clinical aminoglycoside-resistant isolates?
- Can PMF-linked CS be exploited sequentially in clinical protocols — does the cross-sensitivity survive in vivo pharmacokinetic conditions and across diverse clinical genetic backgrounds?

## Conversion notes

Several figure image files were extracted but not included per wiki convention. Key figures: Figure 1 (CS interaction network diagrams — panels A/B for constant vs. escalating protocols, panel C showing chemogenomic distance distribution, panel D showing interaction degree by class); Figure 3 (mechanistic model diagram — PMF antagonism schematic); Figures 4–6 (membrane potential, Hoechst accumulation, and AcrAB rescue data). Conversion quality was good overall; table formatting (Table I antibiotic list) was preserved.
