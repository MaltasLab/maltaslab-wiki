# Fitness Cost of Resistance

**Fitness cost** (or **cost of resistance**) refers to the reduction in growth rate or competitive ability that a drug-resistant organism experiences in the absence of drug, relative to its drug-sensitive ancestor. Fitness cost is the ecological mechanism that makes evolutionary control strategies possible: without a cost, resistant cells would never be at a competitive disadvantage, and strategies based on competition between sensitive and resistant sub-populations would have no lever to exploit.

## Measurement

Fitness cost is typically quantified as:

$$f_c = 1 - \frac{r_R}{r_S}$$

where $r_R$ is the resistant strain's growth rate and $r_S$ is the sensitive strain's growth rate in drug-free conditions. Values range from 0 (no cost) to 1 (lethal). In practice, costs are often small ($f_c \sim 0.01$–$0.15$) but consequential over the timescales of competition experiments.

**Monoculture vs. ecological fitness cost:** A critical distinction established by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] and [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] is that monoculture fitness cost ($f_c$) does not reliably predict competitive outcomes. The ecological fitness $f_e$ — growth rate when rare in an ancestor-dominated environment — can differ substantially from $f_i = 1 - f_c$ due to frequency-dependent interactions. In PC9 NSCLC, a resistant clone with ~24% monoculture fitness cost has its cost nearly completely ameliorated by ecological interactions at high sensitive fractions [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]].

## Role in evolutionary control

Fitness cost is the biological prerequisite for three major control strategies in this lab's work:

1. **Competition-based containment** ([[papers/Hansen2020_ContainmentStrategy|Hansen2020]]): sensitive cells outcompete resistant cells in low-drug conditions because of the fitness cost of resistance. The benefit of containment increases with the magnitude of the fitness cost.

2. **Drug dependence** ([[papers/Maltas2023_DrugDependence|Maltas2023]]): an extreme form of fitness cost where resistant cells grow faster *with* drug than without, creating a vulnerability exploitable by optimally timed drug holidays.

3. **Collateral sensitivity cycling** ([[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]): drug switching exploits the cost of resistance to one drug to create sensitivity to another, steering populations through a sequence of vulnerable states.

## Context dependence

Fitness cost is not a fixed property of a resistance mutation — it depends on:
- **Population composition**: frequency-dependent interactions can ameliorate or exaggerate costs [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- **Drug environment**: costs measured in drug-free conditions may not reflect costs under sub-inhibitory drug concentrations
- **Genetic background**: the same resistance mutation can impose different costs depending on other mutations present [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]
- **Population density**: density-dependent drug inhibition changes the effective selection pressure on resistant cells [[papers/Karslake2016_InoculumEffect|Karslake2016]]

## Specific measurements in the wiki

- *E. coli* doxycycline resistance: $r_R = 0.0152$ vs. $r_S = 0.0169$ min$^{-1}$ ($f_c \approx 0.10$) [[papers/Hansen2020_ContainmentStrategy|Hansen2020]]
- PC9 NSCLC gefitinib resistance: resistant clone grows at ~76% of sensitive monoculture rate ($f_c \approx 0.24$) [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]
- BRAF V600E melanoma MAPKi resistance: variable across clones; drug-dependent clones show negative effective cost (faster growth *with* drug) [[papers/Maltas2023_DrugDependence|Maltas2023]]

## Related concepts and pages

- [[concepts/adaptive-therapy|Adaptive therapy]] — exploits fitness cost via competition-based treatment modulation
- [[concepts/competitive-exclusion|Competitive exclusion]] — the ecological outcome when fitness cost drives resistant cells to extinction
- [[topics/evolutionary-control/_hub|evolutionary-control]] — fitness cost is the central biological lever for control strategies
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — ecological fitness may differ from monoculture fitness cost
