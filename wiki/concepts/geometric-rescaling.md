# Geometric Rescaling

**Geometric rescaling** is a modeling assumption — and empirical observation — that drug-resistant mutants behave identically to ancestral (drug-sensitive) cells but at a rescaled effective drug concentration. A mutant characterized by resistance parameters $(\alpha, \beta)$ growing in external drug concentrations $(x, y)$ experiences the same growth rate as an ancestral cell at concentrations $(\alpha x, \beta y)$:

$$g_i = G(\alpha_i x, \beta_i y)$$

where $G(x, y)$ is the ancestral two-drug growth surface and $\alpha_i, \beta_i$ are the **scaling parameters** of mutant $i$.

## Scaling parameters and their measurement

For a single drug, the scaling parameter $\alpha \equiv K_\text{WT} / K_\text{Mut}$ is the ratio of half-maximal inhibitory concentrations (IC$_{50}$) between the ancestral and mutant populations, estimated by fitting Hill-function dose-response curves $f(d) = (1 + (d/K)^h)^{-1}$. Intuitively:

- $\alpha < 1$: mutant is **resistant** (effective drug concentration is lower than true concentration)
- $\alpha > 1$: mutant is **sensitized** (effective concentration is higher)
- $\alpha = 1$: no change from ancestral

In the presence of two drugs, each mutant is characterized by a pair $(\alpha_i, \beta_i)$ — one scaling parameter per drug. These pairs encode the mutant's complete phenotype in the two-drug environment. **Collateral effects** correspond directly to the joint structure of these pairs: cross-resistance = positively correlated $(\alpha, \beta)$; collateral sensitivity = negatively correlated $(\alpha, \beta)$.

## Why it matters

The power of the rescaling assumption is that it **links resistance evolution to measurable properties of the ancestral population**. Rather than requiring knowledge of the specific mutations or molecular mechanisms underlying resistance, the framework only needs:

1. The ancestral two-drug growth surface $G(x, y)$ — measurable from dose-response experiments on wild-type cells
2. The scaling parameters of available mutants — measurable from IC$_{50}$ comparisons

Once these two inputs are known, the growth rate of any mutant at any drug combination can be predicted without additional experiments.

## Empirical support and limitations

The rescaling approximation is supported empirically in multiple bacterial species and drug pairs [[papers/Dean2020_DrugComboEvolution|Dean2020]], and provides quantitative predictions for resistance evolution dynamics that are validated against experimental data [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]. The approximation holds well when resistance is due to efflux pumps or drug-degrading enzymes (which physically reduce intracellular drug concentration) but can fail when resistance mutations alter the steepness (Hill coefficient) or shape of the dose-response curve rather than simply shifting its scale.

## Formal connection to the Price equation

The rescaling assumption, combined with standard frequency dynamics ($df_i/dt = f_i(g_i - \bar{g})$), directly yields the Price equation for resistance evolution:

$$\frac{d\bar{\alpha}}{dt} = \text{Cov}_\mathbf{x}(\alpha, g), \quad \frac{d\bar{\beta}}{dt} = \text{Cov}_\mathbf{x}(\beta, g)$$

This was derived by [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]] and provides the theoretical foundation for why the rescaling framework correctly predicts resistance dynamics. See [[concepts/price-equation|Price equation]] for details.

## Related concepts and pages

- [[concepts/price-equation|Price equation]] — the population dynamics consequence of the rescaling assumption
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — primary application domain
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the off-diagonal structure of the $(\alpha, \beta)$ distribution
- [[papers/Dean2020_DrugComboEvolution|Dean2020]] — experimental validation in *E. faecalis* across four drug pairs
- [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]] — Price equation derivation from the rescaling model
