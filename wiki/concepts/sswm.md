# Strong Selection Weak Mutation (SSWM)

**Strong Selection Weak Mutation (SSWM)** is a regime of evolutionary dynamics in which mutations are rare enough that each mutation fixes or is lost before the next one arises. This produces a sequential, step-by-step adaptive walk through genotype space rather than the simultaneous competition of many mutant lineages (clonal interference).

## Conditions for the SSWM regime

The SSWM approximation requires:

1. **Weak mutation**: $N\mu \ll 1$, where $N$ is population size and $\mu$ is mutation rate per genome per generation. This ensures new mutations are rare enough not to co-occur.
2. **Strong selection**: $s \gg 1/N$, where $s$ is the selective coefficient. This ensures beneficial mutations fix deterministically rather than drifting. (Formally, $Ns \gg 1$.)

Together these imply that the population is nearly clonal at any given time, occupying a single genotype, and transitions occur one mutation at a time.

## SSWM as a Markov chain on the fitness landscape

Under SSWM, the evolutionary dynamics reduce to a **random walk on the fitness landscape** that is biased uphill. The population transitions from genotype $i$ to genotype $j$ only if genotype $j$ is fitter ($f_j > f_i$) and accessible via a single mutation from $i$. The transition matrix is:

$$T_{ij} = \begin{cases} 1/m & \text{if } j \text{ is a fitter single-step neighbor of } i \\ 0 & \text{otherwise} \end{cases}$$

where $m$ is the number of fitter single-step neighbors of genotype $i$. This model assumes uniform fixation probability among beneficial mutations (ignoring the magnitude of the selective advantage).

The population's state is tracked as a probability distribution $\bar{p}$ over genotypes. For single-landscape evolution (SLE), the steady-state distribution is $\bar{p}_A = \lim_{M\to\infty} (T_A)^M \bar{p}_0$. For alternating-landscape evolution (PLE, switching between landscapes A and B), the steady state is $\bar{p}_{AB} = \lim_{M\to\infty} (T_B T_A)^{M/2} \bar{p}_0$, analytically tractable via matrix exponentiation.

## Applications in this lab's work

**Paired fitness landscape theory** ([[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]): The SSWM Markov chain is used to model evolution in pairs of rough Mt. Fuji landscapes with tunable interlandscape correlation. The key result is that SSWM dynamics under alternating environments (drug cycling) are governed by the distribution of shared fitness maxima — genotypes that are locally optimal in both landscapes.

**Reinforcement learning for drug cycling** ([[papers/Weaver2024_RLDrugCycling|Weaver2024]]): The SSWM Markov chain over the empirical *E. coli* β-lactamase fitness landscape serves as the evolutionary simulator against which RL agents are trained. Each drug selection shifts the transition matrix $T$, and the population distribution evolves accordingly. This provides a tractable evolutionary model for training and evaluating RL policies without requiring continuous-time growth simulations.

## Limitations

- **Clonal interference neglected**: In large populations ($N\mu > 1$), multiple beneficial mutations compete simultaneously, and the adaptive walk is faster but less predictable than SSWM predicts.
- **Equal fixation probability**: The basic SSWM Markov chain treats all uphill moves equally; a more realistic version would weight transitions by fixation probability $\propto s$ (or $\propto s^x$ for varying population sizes, as in the clonal interference model of [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]).
- **Clonal population**: Real populations may maintain standing variation, which can accelerate adaptation and is incorporated differently in the [[concepts/geometric-rescaling|geometric rescaling]] framework of [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]].

## Related concepts and pages

- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — SSWM defines the evolutionary process on fitness landscapes
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — SSWM in alternating environments is the theoretical framework of Maltas2020
- [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] — primary use of SSWM Markov chain for paired landscape theory
- [[papers/Weaver2024_RLDrugCycling|Weaver2024]] — SSWM as evolutionary simulator for RL drug-cycling training
