# Clonal Interference

**Clonal interference** is the phenomenon in asexual populations where multiple beneficial mutations arise and compete with each other before any one of them fixes. This slows adaptation relative to the sequential fixation predicted by the [[concepts/sswm|SSWM]] regime and makes evolutionary trajectories less predictable, because the "winning" lineage depends on the stochastic timing and magnitude of competing mutations.

## Conditions

Clonal interference dominates when the population mutation supply rate $N\mu$ is large enough that multiple beneficial mutations are segregating simultaneously:

- **SSWM regime** ($N\mu \ll 1$): mutations fix sequentially; evolution is a step-by-step walk on the fitness landscape
- **Clonal interference regime** ($N\mu \gtrsim 1$): multiple beneficial lineages compete; the mutation with the largest fitness effect does not always win because earlier-arising mutations may have a head start

The transition between these regimes is continuous, and in typical laboratory microbial populations ($N \sim 10^6$–$10^9$, $\mu \sim 10^{-9}$–$10^{-7}$), clonal interference is the norm rather than the exception.

## Consequences for adaptation

1. **Slowed fixation**: beneficial mutations that would fix rapidly in small populations are displaced by later-arising mutations with larger effects, extending the time to reach local fitness peaks
2. **Selection for large-effect mutations**: clonal interference filters out small-effect beneficial mutations, biasing the spectrum of fixed mutations toward larger fitness effects than the underlying DFE would predict
3. **Traveling wave dynamics**: in large populations, adaptation proceeds as a traveling wave in fitness space, with multiple competing lineages forming the leading edge [[papers/NguyenBa2019_TravelingWave|NguyenBa2019]]
4. **Leapfrogging**: lineages can overtake earlier-established competitors by acquiring additional beneficial mutations, leading to non-monotonic frequency trajectories [[papers/NguyenBa2019_TravelingWave|NguyenBa2019]]

## Empirical characterization

[[papers/Levy2015_LineageTracking|Levy2015]] provided the first high-resolution view of clonal interference in yeast, tracking ~500,000 barcoded lineages through 168 generations of batch culture. The key observations:
- Massive clonal interference: hundreds of lineages with inferred $s > 0$ expand simultaneously, but only ~5 reach high frequency per epoch
- Two-phase dynamics: lineages expand exponentially (stochastic phase) until reaching a frequency threshold (~$1/s$), after which their fate is largely deterministic
- The beneficial mutation rate spectrum $\mu(s)$ is non-exponential, violating extreme value theory predictions

[[papers/NguyenBa2019_TravelingWave|NguyenBa2019]] extended this to 1,000 generations using renewable barcodes, confirming traveling wave dynamics and discovering a "rich-get-richer" effect: high-fitness lineages access more beneficial mutations than low-fitness lineages, accelerating the wave's advance.

## Implications for evolutionary control

Under SSWM assumptions (used in [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]], [[papers/Weaver2024_RLDrugCycling|Weaver2024]], [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]), evolution follows a predictable Markov chain on the fitness landscape. In the clonal interference regime, multiple genotypes coexist simultaneously, and the population's trajectory through genotype space is less deterministic. This creates a gap between theoretical predictions (based on SSWM) and experimental outcomes in large populations — a gap that RL-based approaches like [[papers/Weaver2024_RLDrugCycling|Weaver2024]] may be better positioned to handle because they learn from population-level observables rather than requiring genotype-level state tracking.

## Related concepts and pages

- [[concepts/sswm|SSWM]] — the complementary regime where mutations fix sequentially
- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — the DFE determines the spectrum of competing beneficial mutations
- [[topics/dna-barcoding-lineage-tracking/_hub|dna-barcoding-lineage-tracking]] — the experimental methodology for resolving clonal interference at single-lineage resolution
- [[papers/Levy2015_LineageTracking|Levy2015]] — first high-resolution characterization of clonal interference in yeast
- [[papers/NguyenBa2019_TravelingWave|NguyenBa2019]] — traveling wave dynamics and leapfrogging under clonal interference
