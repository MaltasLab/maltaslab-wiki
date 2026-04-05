---
title: "Mechanism-independent method for predicting response to multidrug combinations in bacteria"
authors: [Wood K, Nishida S, Sontag ED, Cluzel P]
year: 2012
venue: "Proceedings of the National Academy of Sciences"
doi: "10.1073/pnas.1201281109"
arxiv: ""
topics: [evolution-in-multidrug-environments, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Wood et al. (2012) develop a mechanism-independent, maximum entropy statistical framework for predicting the growth response of bacteria to combinations of three or more drugs. By measuring growth responses to individual drugs and all pairwise combinations, the authors construct a maximum entropy probability distribution that yields accurate predictions of higher-order combination effects without any knowledge of molecular mechanisms. The framework is validated across diverse drug classes in both *E. coli* and *S. aureus*, demonstrating that pairwise interactions capture ~97% of total correlations in the multidrug response, with pure three- and four-drug interactions contributing only ~3%. The approach yields simple algebraic formulas — derived from the Isserlis theorem via the Gaussian maximum entropy distribution — that provide closed-form, mechanism-independent predictions of any N-drug growth response from pairwise data alone.

## Conceptual contribution

This paper establishes a fundamental statistical regularity: for a wide variety of antimicrobial drug combinations in bacteria, **the multidrug growth response obeys statistical rather than chemical laws for combinations larger than two**. Higher-order drug interactions (involving exactly three or more drugs simultaneously) are negligible; the net effect of any combination arises from the accumulation of pairwise interactions. This has a direct and profound implication for evolution in multidrug environments: the **two-dimensional drug interaction surface is the sufficient statistical object** for predicting how bacteria grow under any combination of those drugs. A higher-dimensional landscape is not needed because the 2D surface and its pairwise correlations contain essentially all the relevant fitness information.

This result provides the statistical and empirical foundation underlying the geometric rescaling framework of [[papers/Dean2020_DrugComboEvolution|Dean2020]] and the Price equation analysis of [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]. The reason the ancestral 2D response surface is sufficient to predict evolutionary dynamics under multidrug combinations is precisely that pairwise interactions dominate and higher-order effects are negligible. Wood2012 establishes this at the level of growth physiology before it is applied to evolutionary dynamics.

The maximum entropy approach also demonstrates a general methodological principle: predicting N-drug effects is fundamentally a statistical problem, not a chemical one requiring mechanistic knowledge. Measuring all pairwise effects is sufficient. The problem of combinatorial complexity in multidrug pharmacology is thus tractable — $O(N^2)$ pairwise measurements suffice to predict any N-drug combination.

## Key findings

- For all combinations tested — five three-drug combinations and two four-drug combinations in *E. coli*, plus one three-drug combination in *S. aureus* — maximum entropy predictions from pairwise data agree quantitatively with directly measured multidrug growth responses
- Pairwise model: $R^2 = 0.90$ for fixed-concentration experiments and $R^2 = 0.95$ for the large combinatorial survey (93 unique three-drug combinations across diverse drug types); Bliss independence model: $R^2 = 0.33$ and $R^2 = 0.29$ respectively
- Entropy analysis demonstrates that pure three-drug interactions contribute only ~3% of total correlations; ~97% of correlations arise from single-drug and pairwise effects
- The maximum entropy distribution for pairwise interactions follows a Gaussian form, yielding simple Isserlis-theorem formulas:

$$g_{ijk} = g_i g_{jk} + g_j g_{ik} + g_k g_{ij} - 2g_i g_j g_k$$

$$g_{ijkl} = g_{ij}g_{kl} + g_{ik}g_{jl} + g_{il}g_{jk} - 2g_i g_j g_k g_l$$

- The maximum entropy distribution is parameterized by "resilience coefficients" $h_i$ (single-drug responses) and "drug-drug coupling coefficients" $J_{ij}$ (pairwise interactions) in $P_\text{pair}(x) = \frac{1}{Z}\exp\!\left(\sum_i h_i x_i + \sum_{i<j} J_{ij} x_i x_j\right)$
- Results hold across diverse drug classes: protein synthesis inhibitors (macrolides, aminoglycosides, tetracyclines, lincosamides, chloramphenicol), DNA synthesis inhibitors (fluoroquinolones, quinolones), folic acid synthesis inhibitors (sulfonamides, diaminopyrimidines), cell wall synthesis inhibitors, polypeptide antibiotics, preservatives, and analgesics
- Some three-drug combinations involving strongly interacting pairs yield apparent independence overall; others produce amplified synergy or antagonism — both outcomes are accurately predicted from pairwise data without invoking genuine three-drug effects

## Methods

- Growth measured as normalized exponential-phase growth rate from $A_{600}$ time series in 96-well plates; nonlinear least-squares fitting of exponential to the range $0.01 < A_{600} < 0.1$; all rates normalized by untreated growth rate
- *E. coli* strain WT BW25113; *S. aureus* strain Newman (clinically isolated)
- IC$_{50}$ standard curves generated per drug to normalize day-to-day fluctuations (typically $< 5\%$); concentrations scaled accordingly across experiments
- Maximum entropy distribution parameters $h_i$ and $J_{ij}$ solved numerically to match measured moments $\langle X_i \rangle = g_i$ and $\langle X_i X_j \rangle = g_{ij}$
- Fraction of total correlations captured by pairwise model ($f_c$) computed using maximum entropy distributions consistent with all combinations up to order $i$; quantifies how much information remains beyond pairwise interactions
- Model selection via standard information-theoretic criteria comparing pairwise and independence models

## Relationship to existing wiki

- **Foundation for geometric rescaling:** The pairwise dominance result explains why the 2D ancestral response surface in [[papers/Dean2020_DrugComboEvolution|Dean2020]] and [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]] is sufficient to predict evolutionary dynamics under multidrug combinations — if 3+ drug effects were significant, a higher-dimensional surface would be required; Wood2012 validates that they are not
- **Companion to [[papers/Hegreness2008_AcceleratedResistance|Hegreness2008]] and [[papers/Michel2008_MultidrugsResistance|Michel2008]]:** These studies characterize how drug interaction type shapes resistance evolution; Wood2012 establishes the statistical structure of the growth response landscape under combinations, showing pairwise structure is complete
- **Connects to [[wiki/topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]]:** Provides the empirical basis for why 2D-surface-based evolutionary models are the right level of description even for 3+ drug combinations
- **Connects to [[wiki/topics/fitness-landscapes/_hub|fitness-landscapes]]:** The multidrug fitness landscape has lower effective dimensionality than naively expected — pairwise interaction structure determines it

## Open questions raised

- Under what biochemical conditions do genuine three-body drug interactions emerge? The paper notes that a drug acting as an enzyme requiring two substrates could produce a three-body effect not captured by pairwise measurements
- Does pairwise dominance hold for the growth responses of *evolved* (resistant) strains, or do resistance mutations alter drug interaction geometry in ways that introduce higher-order effects?
- Can the maximum entropy framework be extended from instantaneous growth rate prediction to predicting evolutionary trajectories under multidrug combinations?
- Does the ~3% higher-order contribution vary systematically with drug class, organism, concentration regime, or resistance state in ways that matter for clinical predictions?
- How does pairwise dominance scale to combinations of 5, 6, or more drugs as used in combination regimens for tuberculosis or HIV?

## Key figures

**Figure 1** (schematic): Three-panel diagram illustrating the maximum entropy prediction approach. (A) Pairwise growth responses ($g_{12}$, $g_{23}$, $g_{13}$) are inputs to predict the three-drug response ($g_{123}$). (B) Each drug $D_i$ is associated with random variable $X_i$ with $\langle X_i \rangle = g_i$; pairwise interactions encoded as correlations. (C) Maximum entropy distribution parameterized by resilience coefficients $h_i$ and coupling coefficients $J_{ij}$; N-drug growth predicted as $\langle X_1 X_2 \cdots X_N \rangle$.

**Figure 2** (three- and four-drug results): Four panels showing maximum entropy predictions versus direct measurements: erythromycin-doxycycline-lincomycin and chloramphenicol-erythromycin-salicylate in *E. coli*; a four-drug combination in *E. coli*; tetracycline-kanamycin-erythromycin in *S. aureus*. Insets show heat maps comparing model predictions to data across 2D concentration planes. Agreement is quantitative in all cases.

**Figure 3** (accumulation of pairwise interactions): Six panels illustrating how pairwise interactions combine to yield a rich variety of three- and four-drug outcomes — amplified synergy, apparent independence, combined antagonism — all without genuine higher-order effects.
