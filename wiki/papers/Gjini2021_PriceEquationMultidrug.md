---
title: "Price equation captures the role of drug interactions and collateral effects in the evolution of multidrug resistance"
authors: [Gjini E, Wood KB]
year: 2021
venue: "eLife"
doi: "10.7554/eLife.64851"
arxiv: ""
topics: [evolution-in-multidrug-environments, collateral-sensitivity, evolutionary-control]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Gjini and Wood develop a population dynamics framework for predicting phenotypic resistance evolution in bacterial populations exposed to two-drug combinations. The central model assumes that drug-resistant mutants behave identically to ancestral cells but at rescaled effective drug concentrations ($g_i = G(\alpha_i x, \beta_i y)$), linking each mutant's phenotype to two measurable scaling parameters. Using this assumption, they show that the evolution of mean resistance traits is governed by the Price equation ($d\bar{\alpha}/dt = \text{Cov}(\alpha, g)$), where covariance terms encode both drug interaction (through the growth surface $G$) and collateral effects (through the joint distribution of scaling parameters). In the approximately monomorphic limit, this reduces to weighted gradient dynamics $d\bar{\mathbf{a}}/dt = \Sigma\nabla G$: the drug interaction dictates the shape of the underlying fitness landscape and the collateral effects constrain the direction of motion on it. The framework is validated against *E. faecalis* TGC-CIP evolutionary data from [[papers/Dean2020_DrugComboEvolution|Dean2020]] with no free parameters, and is extended to incorporate mutational structure and temporal sequences of drug combinations.

## Conceptual contribution

The paper's central contribution is providing the formal theoretical foundation for the geometric rescaling approach to multidrug resistance evolution, and revealing that drug interactions and collateral effects are not independent, additive influences but are **formally coupled** through the local geometry of the two-drug response surface.

Prior to this work, drug interaction and collateral effects were identified as separate modifiers of resistance evolution — sometimes one dominated, sometimes the other, and empirically the balance appeared system-dependent. [[papers/Dean2020_DrugComboEvolution|Dean2020]] demonstrated the rescaling framework experimentally, showing that resistance phenotypes map onto the ancestral growth surface to predict evolutionary outcomes. Gjini2021 explains *why* this works: the Price equation, applied to the rescaling model, shows that the covariance between resistance traits and growth rate is exactly what governs selection. Because growth depends on both the drug interaction geometry (the shape of $G$) and the collateral structure of available mutants (the distribution of $\alpha_i, \beta_i$ pairs), the two effects are inseparable in the covariance.

The gradient dynamics approximation $d\bar{\mathbf{a}}/dt = \Sigma\nabla G$ provides a clean conceptual decomposition: $\nabla G$ (the landscape gradient) is determined entirely by drug interaction; $\Sigma$ (the scaling parameter covariance matrix) is determined entirely by collateral effects. Their combination, however, is multiplicative — the extent to which collateral sensitivity slows adaptation depends on how large the landscape gradient is in the collateral-sensitivity direction, and the balance between them **shifts with the dosage ratio** applied. The same drug pair can be interaction-dominated or collateral-effect-dominated depending on which dosage combination is chosen. This provides a principled framework for dosage optimization: specific concentration ratios can maximize the constraining effect of collateral sensitivity or minimize the landscape gradient in the resistance-increasing direction.

A second conceptual contribution is demonstrating that the rescaling model can be extended to incorporate mutational structure (which mutations are accessible, in what order) as a third driver of evolutionary dynamics, without requiring a fundamentally different framework. The mutation matrix appears as an additive correction to the Price equation, and its structure (direct vs. sequential pathways) can qualitatively change evolutionary dynamics even when selection and collateral effects are identical.

## Key findings

- Resistance evolution under two drugs obeys the Price equation: $d\bar{\alpha}/dt = \text{Cov}_\mathbf{x}(\alpha, g)$ and $d\bar{\beta}/dt = \text{Cov}_\mathbf{x}(\beta, g)$; the covariance sums encode both drug interaction (through $g = G(\alpha_i x, \beta_i y)$) and collateral effects (through the joint structure of $\alpha_i, \beta_i$ pairs)
- In the monomorphic limit, the Price equation reduces to weighted gradient dynamics $d\bar{\mathbf{a}}/dt = \Sigma\nabla G$, where $\Sigma$ is the covariance matrix of scaling parameters (encoding collateral effects) and $\nabla G$ is the weighted gradient of the ancestral growth surface (encoding drug interaction)
- Cross-resistance (positively correlated $\alpha, \beta$) leads to fastest growth adaptation; collateral sensitivity (negatively correlated) constrains trajectories and slows adaptation; but the magnitude of both effects depends on the shape of the growth surface at the current dosage
- The dominant driver of adaptation (drug interaction vs. collateral effects) shifts with dosage ratio: the same drug pair can be interaction-dominated or collateral-dominated depending on the concentration combination applied
- Validated against TGC-CIP *E. faecalis* data from [[papers/Dean2020_DrugComboEvolution|Dean2020]] with no free parameters: the model qualitatively captures the suppression of CIP resistance above a critical TGC concentration and differential growth adaptation rates across 11 dosage conditions; it systematically underestimates growth at high TGC, suggesting additional dynamics not captured by the model
- Incorporating sequential mutational pathways (ancestor → single mutant → double mutant) slows growth adaptation relative to direct access to all phenotypes, because the population must first accumulate resistance to the dominant drug before accessing the doubly resistant state
- Sequential two-epoch drug combination therapies (A then B) produce nonlinear effects on final resistance levels — resistance to each component drug and final growth rate change nonlinearly with fraction of time in each treatment, and cannot be inferred as a simple linear interpolation between A-only and B-only outcomes
- Resistance levels and growth adaptation rates depend sensitively on the true external drug concentrations even when scaling parameters (resistance phenotypes) are held fixed, because location on the curved response surface determines the growth gain from the same resistance level

## Methods

- **Rescaling model**: mutant growth $g_i = G(\alpha_i x, \beta_i y)$; $\alpha_i, \beta_i$ are scaling parameters estimated from IC$_{50}$ ratios (ancestral vs. mutant) for each drug; measured as $\alpha = K_\text{WT}^1 / K_\text{Mut}^1$; scaling parameters extracted from [[papers/Dean2020_DrugComboEvolution|Dean2020]] data for TGC-CIP, AMP-STR, CRO-CIP
- **Population dynamics**: M subpopulations, each growing exponentially at rate $g_i$; frequency dynamics $df_i/dt = f_i(g_i - \bar{g})$; Price equation derived by combining with mean trait dynamics
- **Growth surfaces**: empirically measured from [[papers/Dean2020_DrugComboEvolution|Dean2020]] for TGC-CIP (antagonistic), AMP-STR (antagonistic), CRO-CIP (antagonistic); pharmacodynamic model-generated surfaces (Greco et al. 1995) for synergistic, additive, and antagonistic cases in Figure 4
- **Monomorphic approximation**: Taylor expand $g_i$ around mean $(\bar{\alpha}, \bar{\beta})$, neglect quadratic terms; yields $d\bar{\mathbf{a}}/dt = \Sigma\nabla G$ (Eq. 9); validated numerically in Figure 4 supplementary
- **Model simulation**: numerical integration of full Price equation (Eq. 5) with initial population 99% ancestral ($\alpha = \beta = 1$) + 1% mutants; 100 subsampled ensembles of ~10 scaling parameter pairs drawn from Dean2020 experimental collection of 50–100 isolates per drug pair
- **Mutational extension**: mutation matrix $m_{ji}$ added as additive correction; direct vs. sequential pathway structures compared for SS/RS/SR/RR phenotype model; distance-based mutation model $m_{ji} \propto e^{-d_{ji}}$ tested
- **Sequential treatment**: two-epoch model (treatment A for time $t_1$, treatment B for time $T - t_1$); numerical integration with varying $t_1/T$

## Relationship to existing wiki

This paper is the theoretical companion to [[papers/Dean2020_DrugComboEvolution|Dean2020]]: where Dean2020 introduced the geometric rescaling framework empirically and demonstrated it in four *E. faecalis* drug pairs, Gjini2021 provides the population dynamics derivation explaining why the framework predicts resistance evolution dynamics. The scaling parameters $(\alpha_i, \beta_i)$ from Dean2020 are the inputs to the Price equation model; the empirical growth surfaces from Dean2020 are the landscapes on which the gradient dynamics operate.

The gradient dynamics interpretation directly extends the conceptual framework of the [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] hub: drug interaction shapes the landscape, collateral effects constrain the direction of motion, and dosage ratio sets the weighting. This provides a design principle for combination therapy — one can in principle choose dosage combinations that minimize the gradient in the resistance-increasing direction or maximally exploit collateral sensitivity constraints.

The paper also connects to [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] by revealing that collateral effects (the off-diagonal elements of $\Sigma$) do not act independently of drug interaction — their constraining effect on resistance evolution depends on the shape of the local landscape. A drug pair with strong mutual collateral sensitivity but a steep synergistic growth surface may still produce rapid resistance evolution because the landscape gradient can overwhelm the collateral constraint.

For [[topics/evolutionary-control/_hub|evolutionary-control]], the dosage-ratio result (that the dominant driver shifts with concentration combination) introduces a new control lever: even with a fixed drug pair, the pharmacological dosage ratio can be optimized to maximize the constraining effect of collateral sensitivity or to exploit the response surface geometry.

## Open questions raised

- Can the dosage ratio at which the transition between interaction-dominated and collateral-effect-dominated adaptation occurs be analytically predicted from measurable properties of the growth surface, enabling prospective identification of optimal dosages before running evolution experiments?
- The model neglects fitness costs of resistance (growth rate in drug-free conditions), clonal interference, and intercellular interactions — how do these factors alter the gradient dynamics approximation, particularly at high mutation supply or high population density?
- Can the Price equation framework be extended from two-drug to three-drug combinations, where the growth surface is 3D and the scaling parameter covariance matrix is $3 \times 3$, without loss of the gradient dynamics interpretation?
- The sequential treatment section (Figure 7) shows nonlinear effects of A→B scheduling; does this nonlinearity provide enough structure to identify optimal A→B switching times that minimize final resistance, analogous to the MDP framework in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]?
- The model validates qualitatively but systematically underestimates growth at high TGC — what biological mechanism explains this discrepancy, and how would it alter the gradient dynamics picture if included?

## Conversion notes

Conversion was clean. Mathematical notation was reproduced accurately. Figure captions are complete. Tables converted correctly. Source PDF filename (WoodElife.pdf) uses PI name; cite key Gjini2021 follows first-author convention.
