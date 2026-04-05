---
title: "Drug interactions modulate the potential for evolution of resistance"
authors: [Michel JB, Yeh PJ, Chait R, Moellering RC, Kishony R]
year: 2008
venue: "PNAS"
doi: "10.1073/pnas.0800944105"
arxiv: ""
topics: [evolution-in-multidrug-environments, evolutionary-control, genetic-epistasis]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Michel, Yeh et al. extend the mutant selection window (MSW) concept from single drugs to two-drug combinations in *Staphylococcus aureus*. They build a high-throughput scanner-based colony imaging system — 30 Epson office scanners with custom MATLAB image analysis — measuring resistance frequencies $F_{XY}(C_X, C_Y)$ across 11×11 concentration grids for three drug pairs spanning synergistic to antagonistic interactions. They construct a mathematical model decomposing multidrug resistance into three empirically measurable components: single-drug resistance frequency distributions $p_X$, $p_Y$; drug epistasis $\eta_{XY}$ (the shape of the MIC isobologram); and cross-resistance $\xi$ (a single fitted parameter). The model predicts full 2D resistance frequency surfaces accurately. A key theoretical result proves analytically that, absent cross-resistance, the smallest achievable MSW over all concentration ratios decreases monotonically as drug interactions move from synergy to antagonism — formally establishing that antagonism is more effective than synergy at limiting the resistance selection window when drug resistance mechanisms are orthogonal.

## Conceptual contribution

This paper provides the formal population genetics foundation for the principle that antagonistic drug combinations limit resistance evolution. Where [[papers/Hegreness2008_AcceleratedResistance|Hegreness2008]] demonstrated empirically that synergy accelerates adaptation, Michel2008 derives from first principles *why* — by decomposing the multidrug resistance potential into three independently measurable factors and proving that epistasis type directly governs the MSW geometry. The analytical result (Eq. 3) shows that $\text{MSW}_{XY}$ is a monotone decreasing function of the epistasis parameter $\varepsilon$ (which ranges from negative under synergy to positive under antagonism), with the MSW eventually vanishing under strong antagonism or suppression. This is not merely an empirical observation but a mathematical consequence of how resistance mutation frequency distributions interact with isobologram geometry.

A structurally important contribution is that the model's growth function for resistant cells takes the form:

$$\eta(C_X, C_Y) = \eta_{XY}\!\left(\frac{C_X}{x}, \frac{C_Y}{y}\right)$$

where $x$ and $y$ are the cell's single-drug MICs and $\eta_{XY}$ is the wild-type growth indicator function (the isobologram shape). This is the **exact geometric rescaling assumption** later formalized as the core of [[papers/Dean2020_DrugComboEvolution|Dean2020]] and given population dynamics foundations in [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]: resistance mutations effectively rescale experienced drug concentrations, and the growth consequences are read from the wild-type drug interaction surface. Michel2008 introduces this assumption in the context of resistance frequency prediction and validates it empirically.

The paper also introduces cross-resistance $\xi$ as a formal parameter on the continuum from $\xi = 0$ (resistance mutations are drug-specific) to $\xi = 1$ (every resistance mutation confers resistance to both drugs). This is the quantitative precursor to the collateral sensitivity framework: low $\xi$ corresponds to orthogonal resistance mechanisms (analogous to collateral sensitivity), while high $\xi$ corresponds to cross-resistance (analogous to collateral resistance). The experiments reveal that cross-resistance can dominate the MSW signal: the antagonistic pair FUS-AMI has high cross-resistance ($\xi = 0.3$), negating the theoretical MSW reduction benefit of antagonism, while synergistic FUS-ERY has near-zero cross-resistance ($\xi < 10^{-2}$), enabling a 10-fold MSW reduction. This shows that epistasis type and cross-resistance are distinct and separable determinants of multidrug resistance potential.

## Key findings

- Three drug pairs in *S. aureus* show qualitatively different resistance frequency surfaces: FUS-ERY (synergistic, $\varepsilon = -0.1$, near-zero cross-resistance) allows up to 10-fold MSW narrowing relative to either drug alone; CPR-AMP (additive, $\varepsilon = 0.06$, no cross-resistance) allows moderate MSW reduction; FUS-AMI (antagonistic, $\varepsilon = 0.3$, high cross-resistance $\xi = 0.3$) shows no MSW reduction — resistance frequency comparable to AMI alone
- The mathematical model predicts all three resistance frequency surfaces accurately using only one free parameter ($\xi$); all other inputs ($F_X$, $F_Y$, $\eta_{XY}$) are independently measured — validating the model's decomposition of $F_{XY}$ into epistasis and cross-resistance components
- Analytical result (Eq. 3): absent cross-resistance, $\text{MSW}_{XY}$ decreases monotonically from synergy to antagonism; the MSW eventually vanishes for strongly suppressive or complete antagonism; this cannot be directly tested from the three drug pairs studied because cross-resistance co-varies with interaction type in this dataset — the authors identify this as a priority for future screens
- Cross-resistance is the dominant factor when strong: FUS-AMI's high cross-resistance ($\xi = 0.3$) means that AMI-resistant mutations also resist FUS, so combining FUS with AMI adds no independent resistance barrier
- The multiplicative model ($F_{XY} = F_X F_Y$) fails to predict the observed diversity of resistance surfaces, confirming that epistasis is a required component of any quantitative framework
- Synergy (FUS-ERY) combined with absent cross-resistance enables the greatest MSW reduction in the dataset — a combination of low $\xi$ and synergy fortuitously produces the best resistance suppression, not synergy alone; this result is consistent with the theory once cross-resistance is accounted for

## Methods

- Organism: *S. aureus* Newman NCTC 8178 (streptomycin-resistant strain); single frozen aliquot used for all experiments to minimize Luria-Delbrück fluctuations
- Drug pairs: FUS-ERY (synergistic, $\varepsilon = -0.1$), CPR-AMP (additive, $\varepsilon = 0.06$), FUS-AMI (antagonistic, $\varepsilon = 0.3$)
- Resistance frequency measurement: 11×11 drug concentration grid; six-well agar plates (7 mL LB agar per well) at each concentration; six inoculum sizes per plate ($10^{1.5}$ to $10^9$ cells/well, 9 orders of magnitude); 5-day incubation at 30°C, 70% humidity on scanners
- Scanner array: 30 Epson Perfection 3170/3490 office scanners controlled by one computer; 5 plates per scanner; 600 dpi time-lapse images every hour for 5 days; single colonies >0.1 mm detected by custom MATLAB contour-detection algorithm
- MIC lines: measured independently in 96-well liquid media assays ($\sim10^3$ cells/well; OD 0.1 contour); epistasis parameter $\varepsilon$ estimated by fitting $x^{10^\varepsilon} + y^{10^\varepsilon} = 1$ to MIC line
- MPC defined as $F_{XY} < 10^{-9}$
- Model: $F_{XY}(C_X, C_Y) = \iint \eta_{XY}(C_X/x, C_Y/y) \cdot p_{XY}(x,y) \, dx \, dy$; $p_{XY} = \xi p_{XY}^\text{Correl} + (1-\xi) p_{XY}^\text{Indep}$; $\xi$ estimated by least-squares (one free parameter per drug pair)

## Relationship to existing wiki

The model $\eta(C_X/x, C_Y/y)$ here is the direct precursor to the [[concepts/geometric-drug-concentration-rescaling|geometric drug concentration rescaling]] framework introduced empirically in [[papers/Dean2020_DrugComboEvolution|Dean2020]] and formalized in [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]. Both Dean2020 and Gjini2021 use the same assumption: resistance mutations rescale experienced drug concentrations, with growth consequences read off the ancestral (wild-type) isobologram $\eta_{XY}$.

The cross-resistance parameter $\xi$ in this paper is the population genetics quantification of collateral resistance (high $\xi$) vs. collateral sensitivity (low $\xi$) — the phenomenon central to [[topics/collateral-sensitivity/_hub|collateral-sensitivity]]. The lab's extensive empirical characterization of collateral sensitivity profiles in *E. faecalis* can be understood as empirically measuring the joint distribution $p_{XY}(x,y)$ that Michel2008 treats theoretically.

The analytical result that the MSW is minimized by antagonism (absent cross-resistance) provides formal underpinning for the [[topics/evolutionary-control/_hub|evolutionary-control]] principle that antagonistic drug combinations can serve as evolutionary brakes — connecting this paper directly to [[papers/Hegreness2008_AcceleratedResistance|Hegreness2008]] (empirical demonstration) and the lab's MDP framework (design of optimal cycling strategies from collateral profiles).

The drug-level epistasis parameter $\varepsilon$ here is conceptually distinct from but related to mutation-level epistasis studied in [[topics/genetic-epistasis/_hub|genetic-epistasis]] and [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]: both concern how interactions between two entities (drugs or mutations) deviate from additivity.

## Open questions raised

- Can drug pairs be identified with antagonistic epistasis *and* low cross-resistance simultaneously — the combination the theory predicts would most effectively minimize the MSW? Michel2008 calls for future screens targeting this combination [[papers/Michel2008_MultidrugsResistance|Michel2008]]
- How does the cross-resistance parameter $\xi$ in this model relate to the empirically measured collateral sensitivity profiles in *E. faecalis*? Is there a systematic relationship between $\xi$ and the collateral sensitivity coefficients measured by Maltas2019a?
- Can the resistance frequency model be extended beyond spontaneous mutations to include horizontally transferred resistance — the dominant mechanism in *S. aureus*?
- Does the MSW minimization criterion align with the MDP/d-MDP optimal cycling approach, or do they identify different optimal drug pairs?
- How does population size affect the MSW, and is the analytical result in Eq. 3 robust to non-zero mutation supply under large populations (as in Levy2015)?

## Conversion notes

Conversion is clean. Paper is 5 pages (PNAS format). Figures not extracted but described from captions. Figure 1: schematic of MSW, its 2D extension, and epistasis types. Figure 2: experimental resistance frequency surfaces for all three drug pairs with MPC lines. Figure 3: diagram of the mathematical model components. Figure 4: comparison of experimental and theoretical surfaces; MSW of effective drugs for different concentration ratios. Figure 5: theoretical prediction of MSW vs. epistasis type. Authors J.-B. Michel and P.J. Yeh contributed equally; first listed author Michel used for cite key. Source PDF named kishony2008combo.pdf (last author); cite key Michel2008 follows first-author convention.
