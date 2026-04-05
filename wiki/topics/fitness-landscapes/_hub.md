# Fitness Landscapes

## What this topic is about

A fitness landscape is a mapping from genotype (or phenotype) space to fitness. Each point in the landscape represents a possible genetic state, and its height represents the fitness of that state in a given environment. The topology of the landscape — how many peaks there are, how accessible they are, how deep the valleys are — determines whether evolution is predictable or stochastic, fast or slow, and whether populations get trapped at local optima.

The concept was introduced by Sewall Wright and has been central to evolutionary theory since. Modern empirical work on fitness landscapes, enabled by high-throughput combinatorial mutagenesis, has revealed that real landscapes are neither perfectly smooth (as assumed by some models) nor completely random (as assumed by others), but instead have structure that reflects the biochemical constraints of the underlying molecular system.

For this lab, fitness landscapes are both a conceptual framework and a practical object of study. Understanding the landscape of antibiotic resistance — how many beneficial mutations exist, how they interact (epistasis), and how the landscape changes across environments (drug types, concentrations) — is essential for predicting evolutionary trajectories and designing treatment strategies. The key insight connecting landscapes to control is that the ruggedness of the landscape determines the degree to which evolution is channeled versus free, and thus the degree to which it can be steered.

A foundational theoretical result from [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] is that the consequences of environmental fluctuations for evolution cannot be understood from single-landscape properties alone — they depend on the *joint* structure of the landscape pair: specifically, the correlation between landscape peaks ($\rho$) and the ruggedness of each landscape ($\sigma$). In smooth landscapes, alternating environments has minimal effect except when landscapes are strongly anticorrelated. In rugged landscapes, positive interlandscape correlation enables fitness gains above single-landscape levels by channeling trajectories toward **shared fitness maxima** — genotypes locally optimal in both environments. Shared maxima in positively correlated rugged landscapes tend to have higher average fitness than non-shared maxima, providing a structural explanation for why correlated-environment cycling can outperform static adaptation. The paper also establishes that anticorrelated landscape pairs drive ergodic-like steady-state dynamics, broadly sampling genotype space and reducing average fitness — a theoretical parallel to the collateral sensitivity cycling strategies employed in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], and a warning that naively cycling anticorrelated-landscape drugs may not achieve the intended effect when epistasis is present.

## Key papers

- Maltas2020 showed that in rugged landscapes (epistasis $\sigma = 1$), paired landscape evolution (rapid alternation) produces higher steady-state fitness than single landscape evolution for a range of positive interlandscape correlations — an effect absent in smooth landscapes and that grows as ruggedness increases [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 established that shared fitness maxima — genotypes that are locally optimal in both environments — are the dominant driver of evolutionary dynamics under landscape alternation: for positively correlated rugged pairs, shared maxima have higher average fitness than non-shared maxima, and evolutionary trajectories are channeled toward them; for anticorrelated pairs, the absence of shared maxima drives ergodic-like dynamics with reduced fitness [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 showed that collateral fitness (fitness increase in landscape B following adaptation to alternating A-B environments) is positive even for weakly anticorrelated rugged landscapes, implying that cycling two drugs with mutual collateral sensitivity may still produce cross-resistance genotypes when epistasis is sufficient to generate shared maxima [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 demonstrated that the optimal protocol (static vs. switching) is timescale-dependent: at short times, static environments always produce greater fitness; only at moderate to long timescales does switching between correlated rugged landscapes produce fitness advantages [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2019a illustrated landscape concepts through the LZD→CHL evolutionary trajectory, in which LZD selection drives populations across a fitness valley to reach CHL resistance levels exceeding those achieved by direct CHL selection — a concrete empirical case of cross-environment fitness peak structure [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

## Key concepts and methods

- **Rough Mt. Fuji landscape** — additive base landscape with epistatic noise $\xi_j \sim \mathcal{N}(0, \sigma^2)$; $\sigma$ parameterizes ruggedness (epistasis)
- **Paired landscape generation** — Gram-Schmidt orthogonalization to construct landscape B with prescribed Pearson correlation $\rho$ to landscape A; yields ensembles with tunable interlandscape correlation
- **Shared fitness maximum** — genotype that is a local maximum in both landscapes A and B; frequency increases with $\rho$ and $\sigma$; mean fitness of shared maxima exceeds non-shared maxima for positive $\rho$
- **SSWM Markov chain** — Strong Selection Weak Mutation model; population evolves as random walk among uphill neighbors; analytically tractable via matrix exponentiation
- **Normalized entropy** $S(\bar{p})/S_\text{max}$ — measure of genotype distribution breadth at steady state; low entropy = concentrated in shared maxima; high entropy = ergodic-like sampling

## Open questions

- How does the fitness landscape for antibiotic resistance change as a function of drug concentration and type?
- Are empirical resistance landscapes more or less rugged than expected from random models, and does ruggedness vary across drug classes?
- For what range of landscape sizes ($N$) do the Maltas2020 results generalize — the paper uses $N = 7$ for tractability [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]
- Can empirical collateral sensitivity data be used to estimate the effective correlation $\rho$ between drug-pair fitness landscapes, and does this predict the success of drug cycling in experiments?
- When epistasis produces shared maxima even under anticorrelated (mutual collateral sensitivity) landscape pairs, how does this reconcile with the success of MDP-based cycling in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]?
- How does population size interact with landscape ruggedness to determine evolutionary predictability? Clonal interference reduces but does not eliminate tunable-correlation effects at moderate $x$ [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory: landscape models (NK, HoC, rough Mt. Fuji) | developing | Maltas2020 introduces and uses rough Mt. Fuji; NK and empirical models not yet represented |
| Empirical measurement of fitness landscapes | thin | No papers yet |
| Landscape ruggedness and evolutionary predictability | developing | Maltas2020 establishes how ruggedness modulates adaptation under alternating environments |
| Joint landscape structure: paired landscapes and shared maxima | developing | Maltas2020 introduces framework; no empirical validation yet |
| Environment-dependence of fitness landscapes | developing | Maltas2020 theoretical; empirical landscape variation across drugs thin |
| Landscapes and treatment design | developing | Maltas2020 provides theoretical framing; Maltas2019a provides empirical link to drug cycling |

## Cross-topic connections

- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis is the molecular basis for landscape ruggedness
- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — the DFE is a local property of the landscape
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects reflect the structure of the landscape across environments
- [[topics/evolutionary-control/_hub|evolutionary-control]] — landscape topology determines what control strategies are feasible
