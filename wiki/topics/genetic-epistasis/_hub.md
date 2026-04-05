# Genetic Epistasis

## What this topic is about

Genetic epistasis refers to interactions between mutations such that the combined fitness effect of two or more mutations differs from what would be expected from their individual effects. When two mutations combine to produce less fitness benefit than expected (negative epistasis), or more (positive epistasis), the evolutionary dynamics of the system are fundamentally altered. Epistasis determines whether mutations are accessible in sequence (whether the second mutation is beneficial given the first), and thus shapes the topology of the fitness landscape and the predictability of evolutionary trajectories.

In the context of antibiotic resistance, epistasis between resistance mutations determines whether multi-drug resistance can evolve incrementally (one mutation at a time) or requires simultaneous acquisition of multiple mutations. Sign epistasis — where the fitness effect of a mutation changes sign depending on genetic background — is particularly important because it creates local fitness peaks and constrains the paths available for adaptation.

The lab is interested in epistasis both as a fundamental property of fitness landscapes and as a practical constraint on evolutionary trajectories under drug treatment. Understanding the epistatic structure of resistance mutations informs predictions about which drug sequences or combinations will limit the evolution of multi-drug resistance.

A theoretical framework developed by [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] treats epistasis as a tunable parameter: the ruggedness $\sigma$ of a "rough Mt. Fuji" landscape parameterizes the amplitude of epistatic interactions. This allows the epistasis level to be varied continuously in simulation, revealing that epistasis has a critical and non-monotonic effect on adaptation in fluctuating environments. Without epistasis (smooth landscapes), alternating environments has minimal impact on evolutionary dynamics. With epistasis (rugged landscapes), the consequences of switching depend on the correlation structure between landscape pairs: positive interlandscape correlation combined with epistasis produces fitness-enhancing dynamics (escape from local optima via shared maxima); anticorrelated landscapes combined with epistasis produce ergodic-like dynamics and reduced average fitness. This framing establishes epistasis not just as a constraint on evolution but as an *amplifier* of environmental correlation effects.

## Key papers

- Maltas2020 showed that landscape ruggedness (a model of epistasis, parameterized by $\sigma$) is necessary for alternating environments to produce fitness advantages over static evolution — smooth landscapes ($\sigma = 0$) show no benefit from positively correlated switching, while rugged landscapes ($\sigma = 1$) do, with the effect growing as ruggedness increases [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 demonstrated that epistasis interacts with interlandscape correlation to determine the frequency of shared fitness maxima: rugged landscape pairs have a dramatically higher probability of sharing at least one maximum than smooth pairs at the same positive correlation, explaining why ruggedness amplifies the fitness advantage of correlated-environment switching [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2019b identified mutations in known antibiotic resistance genes (marR efflux regulator, penicillin-binding protein EF\_1148, ABC transporter EF\_2227) in *E. faecalis* populations adapted to nonantibiotic stressors (osmotic stress, NaBz, biocides), noting that phenotype-genotype relationships are complicated by epistasis and genetic background — the same mutation produces different collateral profiles depending on what other mutations are already present [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]

## Key concepts and methods

- **Rough Mt. Fuji landscape ruggedness parameter $\sigma$** — controls amplitude of random epistatic noise added to an additive base landscape; $\sigma = 0$ (no epistasis) to $\sigma \gg 1$ (highly epistatic); number of local maxima grows from 1 to $2^N/(N+1)$ as $\sigma$ increases [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]
- **Sign epistasis** — fitness effect of a mutation changes sign depending on genetic background; mechanistic basis for local fitness peaks in empirical landscapes
- **Whole-genome sequencing (breseq pipeline)** — used to identify candidate resistance mutations in evolved *E. faecalis* populations; epistatic interactions between identified mutations not fully resolved [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]

## Open questions

- How common is sign epistasis among antibiotic resistance mutations in *E. faecalis*, and does it vary by drug class?
- Does epistasis between resistance mutations create predictable constraints on evolutionary trajectories, or does epistasis primarily add stochasticity?
- How does the genetic background (strain, species) affect the magnitude and sign of epistatic interactions? Maltas2019b notes that the same mutations can produce different collateral phenotypes across backgrounds [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]
- Can the ruggedness level $\sigma$ of the Maltas2020 model be calibrated to empirical resistance landscape data? [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]
- When epistasis is strong enough to create shared maxima even between anticorrelated (mutual collateral sensitivity) landscape pairs, does this undermine MDP-based drug cycling strategies? How large is the effect under realistic population sizes and switching timescales?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Types of epistasis (magnitude, sign, reciprocal sign) | thin | No empirical papers yet; Maltas2020 treats ruggedness as a proxy for epistasis |
| Epistasis as landscape ruggedness: theory | developing | Maltas2020 establishes rough Mt. Fuji model and explores consequences for alternating environments |
| Epistasis in antibiotic resistance mutations | thin | Candidate mutations identified in Maltas2019b but epistatic interactions unresolved |
| Epistasis and collateral sensitivity profiles | thin | Maltas2019b notes complications; mechanism not resolved |
| Epistasis and evolvability in fluctuating environments | developing | Maltas2020 establishes key theoretical result (ruggedness amplifies environmental correlation effects) |

## Cross-topic connections

- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — epistasis is the molecular basis for non-additive fitness landscape structure
- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — epistasis changes the DFE as adaptation proceeds
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — epistatic interactions between resistance mutations can affect collateral sensitivity profiles
