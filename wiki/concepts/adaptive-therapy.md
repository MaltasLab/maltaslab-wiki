# Adaptive Therapy

**Adaptive therapy** is a treatment strategy that modulates drug exposure dynamically in response to observed population burden — rather than applying drug at fixed maximum tolerated doses — in order to maintain or exploit competition between sensitive and resistant sub-populations.

## Core biological rationale

Classical cancer and infection treatment attempts to kill as many cells as possible as fast as possible. This strategy has an evolutionary cost: when sensitive cells are eliminated, resistant cells are released from competitive suppression and can expand without constraint. Adaptive therapy inverts this logic by asking: **can we use sensitive cells as a tool to suppress resistant cells?**

At low resistant-cell frequency, sensitive cells often outcompete resistant cells in the absence of drug (sensitive cells typically bear no fitness cost from drug sensitivity, while resistant cells often bear a resistance cost). Maintaining a sufficient sensitive-cell population therefore keeps resistant cells suppressed through ecological competition. Drug exposure is then modulated to:

1. Keep total population burden under control (below a clinical threshold)
2. Avoid eliminating sensitive cells faster than necessary
3. Exploit any drug dependence (where resistant cells actually grow faster with drug than without)

## Variants

**Competition-based adaptive therapy** (Gatenby/Zhang style): tumor volume or pathogen burden is monitored; drug is applied when burden rises above a threshold and withdrawn when burden falls below a lower threshold. The goal is to maintain a stable tumor or infection that does not progress, rather than to eliminate it. Clinical proof of concept in prostate cancer (Zhang et al. 2017).

**Drug holiday optimization** (Maltas2023 style): exploits drug *dependence* — the phenomenon where drug-resistant cells grow faster *with* drug than *without* it. The analytically optimal drug holiday schedule is:

$$f_\text{on} = \frac{1}{1 + \gamma}, \quad \text{where } \gamma = \frac{k_{1,\text{on}} - k_{2,\text{on}}}{k_{2,\text{off}} - k_{1,\text{off}}}$$

derived from the four measurable per-capita growth rates of sensitive and dependent-resistant subpopulations under drug-on and drug-off conditions. This schedule uniquely maintains population heterogeneity and achieves lower total growth than either static drug or drug-free treatment [[papers/Maltas2023_DrugDependence|Maltas2023]].

**Blind adaptive therapy**: a feedback algorithm using only total population size measurements (without knowing the sensitive/resistant composition) that switches drug on or off based on observed population growth rate. Converges to near-optimal outcomes despite lack of subpopulation information [[papers/Maltas2023_DrugDependence|Maltas2023]].

## Connection to frequency-dependent selection

Adaptive therapy is mechanistically grounded in **frequency-dependent ecological interactions** between sensitive and resistant subpopulations. [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] demonstrated that monoculture fitness cost alone cannot predict competitive exclusion — the full gain function (fitness difference as a function of population frequency) must be measured. In PC9 NSCLC, ecological interactions at high-sensitive fractions nearly abolish the fitness cost of resistance at low resistant frequency, suggesting a safe-harbor dynamic where competitive suppression is highly nonlinear. These ecological details determine whether adaptive therapy's core assumption (competitive suppression of resistant cells by sensitive cells) holds in a given system.

## Key predictions and experimental findings

- Optimal drug holiday fraction $f_\text{on} = 1/(1+\gamma)$ is derived from four measurable growth rates; validated in 9-day and 48-day mixed-population experiments in BRAF V600E melanoma [[papers/Maltas2023_DrugDependence|Maltas2023]]
- Spatial effects do not undermine the well-mixed prediction: 2D on-lattice ABM simulations confirm that the optimal holiday fraction is robust to spatial structure [[papers/Maltas2023_DrugDependence|Maltas2023]]
- Patient stratification is possible: melanocytic differentiation state (MITFhigh) predicts drug dependence and therefore suitability for holiday-based adaptive therapy [[papers/Maltas2023_DrugDependence|Maltas2023]]
- Lower drug doses can outperform higher doses by maintaining competitive suppression longer, as shown empirically in NSCLC gefitinib experiments [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]

## Related concepts and pages

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — formal optimization framework for drug cycling; related but distinct from adaptive therapy (MDPs optimize over discrete drug choices; adaptive therapy modulates a single drug's intensity)
- [[topics/evolutionary-control/_hub|evolutionary-control]] — adaptive therapy is a key mechanism of evolutionary control
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — competitive suppression between sensitive and resistant cells is the ecological mechanism underlying adaptive therapy
- [[papers/Maltas2023_DrugDependence|Maltas2023]] — drug holiday optimization in BRAF V600E melanoma
- [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] — frequency-resolved characterization of ecological interactions in NSCLC
