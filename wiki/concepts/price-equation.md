# Price Equation

The **Price equation** (Price 1970, 1972) is a mathematical identity describing how the population mean value of any trait changes over time. It decomposes evolutionary change into a selection term (covariance of trait with fitness) and a transmission term (within-group change):

$$\Delta \bar{z} = \text{Cov}(w, z) + E[w \, \Delta z]$$

where $\bar{z}$ is the population mean trait, $w$ is relative fitness, and $\Delta z$ is within-lineage trait change. In the absence of mutation or within-generation change ($E[w \, \Delta z] = 0$), the equation reduces to:

$$\Delta \bar{z} = \text{Cov}(w, z)$$

**The change in mean trait equals the covariance of that trait with fitness.** This is not a model — it is a mathematical identity, true by construction from the definitions of mean and covariance.

## Continuous-time form

In continuous time with per capita growth rates $g_i$ and population frequencies $f_i$ evolving as $df_i/dt = f_i(g_i - \bar{g})$, the Price equation for mean trait $\bar{\alpha} = \sum_i \alpha_i f_i$ becomes:

$$\frac{d\bar{\alpha}}{dt} = \text{Cov}(\alpha, g) \equiv \sum_i \alpha_i f_i (g_i - \bar{g})$$

The covariance subscript can be decorated with the external conditions $\mathbf{x}$ (drug concentrations) to emphasize that growth rates — and therefore the covariance — depend on the environment.

## Application to multidrug resistance evolution

[[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]] applied the Price equation to resistance evolution in two-drug environments using the [[concepts/geometric-drug-concentration-rescaling|geometric drug concentration rescaling]] assumption. With each mutant's growth given by $g_i = G(\alpha_i x, \beta_i y)$, the joint dynamics of mean resistance traits to both drugs become:

$$\frac{d\bar{\alpha}}{dt} = \text{Cov}_\mathbf{x}(\alpha, g), \quad \frac{d\bar{\beta}}{dt} = \text{Cov}_\mathbf{x}(\beta, g)$$

The covariance terms encode both drug interaction (through the shape of $G$) and collateral effects (through the joint distribution of scaling parameter pairs $(\alpha_i, \beta_i)$). This unifies two previously separate factors into a single expression.

## Gradient dynamics approximation

When trait variation in the population is small (approximately monomorphic), the covariance can be Taylor-expanded around the population mean to yield a **weighted gradient dynamics** approximation:

$$\frac{d\bar{\mathbf{a}}}{dt} = \Sigma \nabla G$$

where $\Sigma$ is the $2 \times 2$ covariance matrix of scaling parameters encoding collateral effects, and $\nabla G$ is the local gradient of the ancestral growth surface encoding drug interaction. This approximation:

- Is accurate across a wide range of conditions [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]
- Shows that **drug interaction determines the landscape shape** (through $\nabla G$)
- Shows that **collateral effects constrain the direction of motion** on that landscape (through $\Sigma$)
- Implies that the two factors are **multiplicatively coupled** — neither alone predicts the dynamics

## Extension with mutation

When mutation at rate $\mu$ connects phenotype $j$ to phenotype $i$ with probability $m_{ji}$, the Price equation gains a transmission term:

$$\frac{d\bar{\alpha}}{dt} = \text{Cov}_\mathbf{x}(\alpha, g) - \mu(\bar{\alpha} - \bar{\alpha}_m)$$

where $\bar{\alpha}_m = \sum_{ij} \alpha_i m_{ji} f_j$ is the mean trait value among all arising mutants. Specific mutational structures (direct vs. sequential pathways, distance-based mutation) change the evolutionary trajectory even with identical selection dynamics.

## Related concepts and pages

- [[concepts/geometric-rescaling|Geometric rescaling]] — the model assumption that makes $g_i = G(\alpha_i x, \beta_i y)$ and connects the Price equation to measurable resistance phenotypes
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — the primary application domain in this lab
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects appear as the off-diagonal elements of $\Sigma$ in the gradient dynamics
- [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]] — the derivation and application of the Price equation to two-drug resistance evolution
