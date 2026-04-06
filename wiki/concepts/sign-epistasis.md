# Sign Epistasis

**Sign epistasis** occurs when the fitness effect of a mutation changes sign — from beneficial to deleterious or vice versa — depending on the genetic background in which it appears. This is a stronger form of epistasis than magnitude epistasis (where effects change in size but not direction) and has qualitatively different consequences for evolutionary dynamics.

## Types

- **Simple sign epistasis**: a mutation is beneficial in one background but deleterious in another. This creates fitness valleys between some genotypes but does not necessarily prevent adaptive walks from reaching the global optimum.
- **Reciprocal sign epistasis**: two mutations are each individually deleterious but jointly beneficial (or vice versa). This is necessary and sufficient for the existence of multiple fitness peaks in the landscape, and creates irreversible evolutionary constraints.

## Consequences for fitness landscapes

Sign epistasis is the molecular mechanism that creates **local fitness peaks** — genotypes from which all single-step mutations are deleterious. The number and distribution of local peaks determines:
- How many evolutionary endpoints are accessible from a given starting point
- Whether adaptive walks can reach the global optimum or become trapped
- Whether drug sequence interventions can steer evolution across fitness valleys

In the TEM-1 $\beta$-lactamase landscape ([[papers/Mira2015_RationalAntibioticTreatment|Mira2015]]), sign epistasis across drug environments is pervasive: every genotype ranks among the top 5 under at least one of 15 drugs and among the bottom 4 under at least one other. This environment-dependent sign reversal is the empirical basis for designing drug sequences that reverse resistance.

## Quantitative characterization

[[papers/Couce2024_ChangingFitnessEffects|Couce2024]] quantified the temporal prevalence of sign epistasis in the LTEE: only 5.9% of beneficial mutations available to the *E. coli* ancestor remain beneficial after 2,000 generations of evolution; >90% become neutral or deleterious. This establishes that sign epistasis is so pervasive among beneficial mutations that it essentially fully renews the accessible fitness landscape on the timescale of thousands of generations.

[[papers/Ardell2024_GlobalEpistasis|Ardell2024]] showed that 94% of mutations tested in *S. cerevisiae* were beneficial in at least one genotype-environment combination and deleterious in at least one other — making sign reversal the rule rather than the exception. The **pivot growth rate** $\bar{\lambda}_e$ predicts where sign switches occur: mutations are beneficial below the pivot and deleterious above it.

## Relationship to global epistasis

Global diminishing-returns epistasis ([[papers/Kryazhimskiy2014_GlobalEpistasis|Kryazhimskiy2014]]) and sign epistasis are related but distinct. Global epistasis describes a systematic trend (fitness effects decline with background fitness); sign epistasis is an extreme manifestation where the declining trend crosses zero. [[papers/Bakerlee2022_IdiosyncraticEpistasis|Bakerlee2022]] showed that apparent global trends (fitness-correlated trends) often arise from just ~4 specific pairwise idiosyncratic interactions, suggesting that sign epistasis at the landscape level emerges from sparse, identifiable molecular interactions rather than non-specific global coupling.

## Role in the lab's theoretical frameworks

- **Rough Mt. Fuji model** ([[papers/Neidhart2014_RMFModel|Neidhart2014]], [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]): the ruggedness parameter $\sigma$ controls the amplitude of sign epistasis; higher $\sigma$ creates more local fitness peaks and more constrained adaptive walks
- **SSWM Markov chains** ([[concepts/sswm|SSWM]]): sign epistasis determines which transitions are forbidden (downhill steps) in the Markov chain, shaping the topology of the fitness graph
- **Drug cycling optimization**: sign epistasis across drug environments is what makes resistance reversal via drug switching possible — without it, resistance mutations would be unconditionally beneficial and no drug sequence could reverse resistance

## Related concepts and pages

- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — parent topic
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — sign epistasis determines landscape topology
- [[concepts/sswm|SSWM]] — sign epistasis constrains SSWM transition matrices
- [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]] — pervasive environment-dependent sign epistasis in TEM-1 landscape
- [[papers/Ardell2024_GlobalEpistasis|Ardell2024]] — pivot growth rate framework for predicting sign switches
- [[papers/Couce2024_ChangingFitnessEffects|Couce2024]] — temporal dynamics of sign epistasis in LTEE
