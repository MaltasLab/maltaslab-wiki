---
title: "Antibiotic interactions shape short-term evolution of resistance in E. faecalis"
authors: [Dean Z, Maltas J, Wood KB]
year: 2020
venue: "PLOS Pathogens"
doi: "10.1371/journal.ppat.1008278"
arxiv: ""
topics: [evolution-in-multidrug-environments, collateral-sensitivity]
lab_paper: true
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Dean, Maltas & Wood (2020) use high-throughput laboratory evolution to characterize how four two-drug combinations — spanning synergistic to suppressive interactions — shape the rate of resistance evolution and the resistance profiles that emerge in *E. faecalis* V583. They find rich and at times counterintuitive evolutionary behavior: a synergistic dual β-lactam combination (CRO-AMP) accelerates growth adaptation relative to either drug alone, while antagonistic and suppressive combinations slow or even eliminate resistance to one of the component drugs. Across all cases, the results can be understood via a **geometric rescaling framework**: resistance mutations effectively reduce the experienced drug concentration, so the evolutionary consequences of any resistance profile can be read off the ancestral two-drug growth response surface. The framework also predicts that resistance profiles selected in combinations tend to be nearly growth-optimal along contours connecting the profiles selected by the individual component drugs.

## Conceptual contribution

This paper establishes a **geometric rescaling framework** as the primary tool for understanding how drug combinations shape resistance evolution without requiring molecular-level knowledge of individual mutations. The core insight is that resistance mutations effectively act as concentration rescalings — an evolved cell growing in external concentration $C$ behaves approximately as an ancestral cell growing in a lower effective concentration $C' = C / \text{fold-change}$. Given this, the evolutionary consequences of any resistance phenotype can be predicted by "rescaling" the drug concentrations back onto the ancestral two-dimensional growth response surface. The framework makes three interlocking predictions:

1. **Identical resistance profiles → different growth rates under different dosage combinations.** Because different dosage combinations occupy different locations on the growth response surface, the same resistance phenotype lands at different growth values after rescaling. This explains why CRO-AMP combinations accelerate growth adaptation despite selecting for resistance profiles nearly identical to the single drugs: the steepness of the synergistic response surface means even the same rescaling yields large growth increases for combination conditions.

2. **Resistance profiles are growth-optimized along contours in resistance space.** The profiles selected under different dosage combinations lie approximately on a smooth contour connecting the profiles selected by the individual component drugs, and each observed profile is within ~15% of the growth-optimal profile along that contour. This implies that natural selection efficiently navigates toward the nearest growth-optimizing phenotype in the accessible resistance landscape.

3. **Suppressive interactions can completely eliminate resistance to a drug by making resistance evolutionarily neutral.** When a suppressive drug (TGC) renders the growth response surface approximately vertical with respect to the co-administered drug (CIP) — meaning CIP concentration no longer affects growth above a critical TGC level — rescaling CIP concentration no longer increases growth, removing the selective pressure for CIP resistance entirely.

These principles represent a quantitative systems-level bridge between the pharmacology of drug combinations (encoded in the ancestral growth response surface) and the evolutionary dynamics of resistance, achievable without genome sequencing or knowledge of specific resistance mechanisms.

## Key findings

- **CRO-AMP (synergistic):** drug combinations accelerate growth adaptation relative to single drugs ($p < 10^{-4}$) despite populations evolving nearly identical cross-resistance profiles (~23.5-fold CRO resistance, ~2.5-fold AMP resistance) under all four conditions; accelerated adaptation is explained by the steep curvature of the synergistic response surface
- **AMP-STR (antagonistic):** drug combinations substantially slow growth adaptation relative to single drugs ($p < 10^{-4}$); resistance profiles under combinations mirror those of the dominant drug in the mixture (condition B profiles ≈ AMP-only; condition C profiles ≈ STR-only)
- **CRO-CIP (antagonistic):** combinations slow adaptation; single-drug collateral sensitivities are eliminated — CRO resistance is associated with CIP collateral sensitivity and CIP resistance with CRO collateral sensitivity, but these collateral effects disappear in combinations
- **TGC-CIP (suppressive):** adaptation rate decreases monotonically with TGC concentration; above a critical concentration (TGC$_\text{crit} \approx 0.03$ µg/mL), CIP resistance is completely absent; TGC-CIP interaction is suppressive (combined effect < effect of TGC alone), creating a near-vertical response surface at high TGC
- Observed resistance profiles in AMP-STR and CRO-CIP combinations are predicted by rescaling to give growth rates within ~15% of the growth-optimal profile along the contour connecting single-drug resistance endpoints
- Adaptation to synergistic combination at constant inhibition is faster than adaptation to component drugs — a direct counterexample to the intuition that synergistic combinations are evolutionarily superior to single-drug treatment

## Methods

- **Strain:** *E. faecalis* V583 (fully sequenced clinical isolate; grown in BHI at 37°C)
- **Drugs:** ampicillin (AMP, β-lactam), ceftriaxone (CRO, β-lactam), streptomycin (STR, aminoglycoside), ciprofloxacin (CIP, fluoroquinolone), tigecycline (TGC, glycylcycline)
- **Drug interaction characterization:** per capita growth rate measured across 90–100 dosage combinations per drug pair via OD time series on automated microplate reader with plate stacker; Loewe additivity null model used to classify interaction type from isobole shape
- **Laboratory evolution:** 24 replicate populations per condition (8 per condition for TGC-CIP with 11 conditions) evolved 3–4 days (20–30 generations) with daily 100× dilution into fresh media and drug; 96-well microplate format
- **Growth rate estimation:** per capita growth rate estimated from OD time series via nonlinear least-squares fit to exponential function over OD range 0.1–0.4; adaptation rate per condition estimated by linear regression of growth rate over time
- **Phenotypic resistance profiling:** IC$_{50}$ estimated in 6 randomly selected populations per condition via Hill-like dose-response fitting $f(x) = (1+(x/K)^h)^{-1}$; resistance quantified as $\log_2$(IC$_{50,\text{evolved}}$ / IC$_{50,\text{ancestor}}$)
- **Rescaling analysis:** observed mean fold-changes in IC$_{50}$ used to rescale drug concentrations onto the ancestral 2D growth surface; growth at rescaled points estimated by 2D cubic spline interpolation

## Relationship to existing wiki

- Directly extends the lab's collateral sensitivity work in *E. faecalis* — [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] characterized single-drug-to-single-drug collateral profiles; this paper shows how simultaneous two-drug environments modulate which cross-resistance profiles are selected, and how combinations can eliminate the collateral sensitivities that single-drug selection produces.
- Uses the same *E. faecalis* V583 strain, IC$_{50}$ measurement methodology (Hill function dose-response), and laboratory evolution design as [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]].
- The geometric rescaling framework complements the Markov chain model of SSWM evolution in paired fitness landscapes from [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]: both papers address how the relationship between two drug environments shapes evolutionary outcomes, but from complementary angles — rescaling operates on the phenotypic (growth rate) space while the paired landscape model operates on the genotypic (fitness landscape correlation) space.
- Directly populates the previously empty [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] hub.
- Contributes to [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] through the finding that combination therapy modulates and can eliminate the collateral effects observed under single-drug selection.

## Open questions raised

- Does the rescaling framework generalize beyond *E. faecalis* V583 to other bacterial species, or to combinations of more than two drugs? The current study is limited to one strain and two-drug combinations.
- What specific genetic mechanisms underlie the acceleration of growth adaptation in the CRO-AMP synergistic combination? The paper explicitly does not characterize molecular mechanisms; penicillin-binding protein mutations are a plausible candidate for cross-resistance.
- Can the rescaling analysis be extended from qualitative to quantitative prediction, incorporating fitness costs and population-level heterogeneity (multiple competing resistance phenotypes)?
- Do the evolutionary dynamics observed in planktonic populations transfer to biofilm communities, where spatial heterogeneity and population density effects are known to alter resistance dynamics in *E. faecalis*?
- Can the growth-optimization prediction (resistance profiles lie near growth-optimal contours) be used prospectively to predict which resistance profiles will dominate under a given combination, before performing evolution experiments?
- How does epistasis between resistance mutations interact with the rescaling framework when multiple rounds of sequential selection accumulate?

## Key figures

- **Fig. 1** (CRO-AMP): Left panel shows concave (synergistic) growth contours; right panels show growth curves and adaptation rates demonstrating faster adaptation in combinations vs. single drugs despite identical resistance profiles.
- **Fig. 2** (AMP-STR): Left panel shows convex (antagonistic) growth contours; demonstrates slower adaptation in combinations, with profiles tracking the dominant drug.
- **Fig. 3** (CRO-CIP): Antagonistic combination slows adaptation; single-drug collateral sensitivities are absent in combinations.
- **Fig. 4** (TGC-CIP): Suppressive interaction; adaptation rate declines monotonically with TGC concentration; CIP resistance disappears above TGC$_\text{crit}$.
- **Fig. 5**: Geometric rescaling shown on 2D ancestral growth surfaces for CRO-AMP and TGC-CIP — squares show rescaled effective concentrations; predicted growth along rescaled contour matches observed adaptation differences.
- **Fig. 6** (AMP-STR, CRO-CIP): Resistance profiles in 2D resistance space lie on contours connecting single-drug endpoints; predicted growth-optimal positions agree closely with observed mean profiles.
