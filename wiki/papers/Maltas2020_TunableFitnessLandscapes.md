---
title: "Evolution in alternating environments with tunable interlandscape correlations"
authors: [Maltas J, McNally DM, Wood KB]
year: 2020
venue: "Evolution"
doi: "10.1111/evo.14121"
arxiv: ""
topics: [fitness-landscapes, evolution-in-fluctuating-environments, genetic-epistasis]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Maltas, McNally, and Wood develop a Markov chain model of asexual evolution in paired fitness landscapes with tunable interlandscape correlation $\rho \in [-1, 1]$ and tunable ruggedness $\sigma$ (parameterizing epistasis). Each landscape is a "rough Mt. Fuji" construction — an additive base landscape with epistatic noise added — and paired landscapes share global statistical properties but differ in how correlated their fitness peaks are. The central question is whether rapid alternation between two such landscapes (paired landscape evolution, PLE) increases or decreases adaptation relative to single landscape evolution (SLE). The main finding is that PLE can outperform SLE in rugged positively correlated landscapes by shepherding evolutionary trajectories toward shared fitness maxima — globally optimal peaks accessible under both environments that static evolution is less likely to find. Anticorrelated landscape pairs produce the opposite effect: ergodic-like steady-state dynamics that broadly sample genotype space and reduce average fitness.

## Conceptual contribution

The paper provides a theoretical framework for understanding when sequential environmental alternation helps vs. hurts adaptation, as a function of the joint structure of the two fitness landscapes. The central insight is that **shared fitness maxima** — genotypes that are locally optimal in both environments — are the mechanistic link between landscape correlation and evolutionary dynamics. In rugged positively correlated landscapes, shared maxima are common and tend to have higher average fitness than non-shared maxima; alternating environments channel evolutionary trajectories toward them, promoting escape from suboptimal local peaks that trap single-landscape evolution. In anticorrelated landscapes, shared maxima are rare, and alternating environments force broad sampling of genotype space, producing ergodic-like dynamics and reduced fitness.

This framework directly addresses the theoretical underpinning of drug cycling strategies in the collateral sensitivity literature. Mutual collateral sensitivity between two drugs (adaptation to drug A sensitizes to B, and vice versa) corresponds to landscapes with anticorrelated fitness peaks. A counterintuitive implication follows: repeatedly cycling drugs with mutual collateral sensitivity may produce cross-resistance rather than sustained sensitivity, particularly in rugged landscapes, because shared maxima can still exist even when overall landscapes are weakly anticorrelated. The probability that evolution "finds" these shared cross-resistant peaks depends on landscape ruggedness (epistasis) and switching period — not just on the sign of the correlation.

A second conceptual contribution is identifying the **timescale-dependence of the optimal protocol**: at short timescales, static environments always produce greater fitness gains; at longer timescales, switching between positively correlated rugged landscapes produces higher steady-state fitness. This implies that whether drug cycling is beneficial or harmful depends on the timescale of treatment relative to the timescale of adaptation, a practically relevant but theoretically underappreciated consideration.

## Key findings

- In smooth ($\sigma = 0$) landscapes, PLE and SLE produce approximately equal fitness for all $\rho > -0.85$; for very negatively correlated landscapes, switching sharply reduces fitness
- In rugged ($\sigma = 1$) landscapes, PLE exceeds SLE for a range of positive correlations; as ruggedness increases, this range expands
- The fitness advantage of PLE in positively correlated rugged landscapes arises because: (1) shared fitness maxima become more common as $\rho$ increases; (2) shared maxima in positively correlated landscapes have higher mean fitness than non-shared maxima; (3) switching between correlated landscapes channels trajectories toward these shared maxima
- Anticorrelated landscape pairs ($\rho < 0$) produce ergodic-like dynamics: all (or nearly all) genotypes are occupied with nonzero probability at steady state; normalized entropy approaches the uniform distribution; average fitness is substantially reduced relative to SLE
- Collateral fitness analysis (fitness gain in landscape B under PLE): switching leads to increased fitness in both A and B even for weakly anticorrelated landscapes, implying that cycling drugs with mutual collateral sensitivity (anticorrelated landscapes) tends to produce a cross-resistant genotype distribution when epistasis is present
- On short timescales, static environments always produce greater fitness gain; the benefit of switching in positively correlated rugged landscapes only emerges at moderate to long timescales
- Clonal interference (modeled phenomenologically with a greedy walker parameterized by selective advantage exponent $x$): moderate interference ($x \sim 5$) reduces but does not eliminate the observed effects; large populations ($x > 5$) largely suppress switching effects
- Switching period: increasing period from 1 step (rapid) to 2–8 steps per environment reduces anticorrelated-landscape effects significantly but the positive-correlation fitness benefit is robust to period doubling

## Methods

- **Fitness landscape model:** "rough Mt. Fuji" landscapes with $N = 7$ binary loci ($2^7 = 128$ genotypes); additive base landscape with single-mutation fitnesses drawn from Uniform(−1, 1); epistatic noise $\xi_j \sim \mathcal{N}(0, \sigma^2)$ added to each genotype; $\sigma = 0$ (smooth) or $\sigma = 1$ (rugged)
- **Paired landscape generation:** landscape A represented as a $2^N$-dimensional vector $\bar{A}$, centered and unit-variance normalized; orthogonal complement $\bar{A}_\perp$ constructed by Gram-Schmidt; landscape B generated as a linear combination $\bar{B} = \rho \bar{A} + \sqrt{1-\rho^2} \bar{A}_\perp$, giving Pearson correlation $\rho$ between A and B; both rescaled to share A's mean and variance
- **SSWM Markov chain:** transition probability $T_{ij} = 1/m$ where $m$ = number of neighbors fitter than $i$; steady state $\bar{p}_A$ for SLE and $\bar{p}_{AB}$ for PLE solved analytically via matrix powers $(T_A)^M$ and $(T_B T_A)^{M/2}$; ensemble average over 1000 landscape pairs
- **Clonal interference model:** greedy walker with fixation probability $\propto s^x$, where $s$ is selective advantage and $x$ parameterizes population size; $x = 0$ (random walker, SSWM) to $x = \infty$ (always steps to largest-fitness neighbor)
- **Shared maxima analysis:** fraction of A-maxima that are also B-maxima estimated by simulation and semi-analytical approximation (CDF of multivariate normal); entropy $S(\bar{p})/S_{max} = -(\sum_i p_i \ln p_i)/S_{max}$ to characterize genotype distribution breadth
- **Network diagrams:** nodes = genotypes; shading = relative fitness; circle size = steady-state occupation probability; arrows = nonzero transitions (widths = transition probability); used for qualitative visualization of $N = 4$ landscape examples

## Relationship to existing wiki

This paper provides the theoretical machinery underlying the lab's empirical work on collateral sensitivity. The drug-cycling experiments in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] assume that collateral sensitivity (anticorrelated fitness landscapes) should enable cycling strategies that keep resistance low — this paper shows that whether such cycling works depends critically on landscape ruggedness (epistasis) and timescale. Specifically, anticorrelated landscapes produce ergodic-like dynamics and cross-resistance under rapid switching, which is the theoretical prediction that explains why MDP-based cycling in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] must exploit the *population-level distribution* of collateral profiles rather than relying naively on anticorrelated landscape structure.

The ruggedness parameter $\sigma$ is a direct model of epistasis, making this paper a core theoretical reference for [[topics/genetic-epistasis/_hub|genetic-epistasis]] within the lab's framework. The discussion of how epistasis interacts with environmental correlation to determine whether evolution finds locally vs. globally optimal genotypes directly speaks to questions about whether collateral profiles are maintained across rounds of selection — an open question noted in [[topics/collateral-sensitivity/_hub|collateral-sensitivity]].

The paper also connects to [[topics/fitness-landscapes/_hub|fitness-landscapes]] by extending the rough Mt. Fuji landscape model to paired landscape analysis, introducing the concept of shared maxima as a structurally important feature of landscape pairs in fluctuating environments.

## Open questions raised

- Does the optimal switching correlation for maximizing fitness gain in the model correspond to any measurable property of drug pairs in experimental collateral sensitivity data?
- How does the fitness advantage of correlated-landscape switching scale with genome size $N$? The paper uses $N = 7$ for tractability; real resistance landscapes may have very different effective dimensionalities.
- Can the timescale at which correlated-landscape switching begins to outperform static evolution be predicted from measurable landscape properties (number of local maxima, shared maximum frequency), and does this correspond to observable timescales in bacterial evolution experiments?
- Under what conditions does the ergodic-like behavior of anticorrelated landscape evolution actually protect against high-level resistance — i.e., when does broad genotype sampling (low average fitness) mean low maximum fitness as well?
- How does horizontal gene transfer or population heterogeneity alter these predictions, which the model explicitly excludes?

## Conversion notes

The paper title was not captured by the PDF converter — the first page of the original PDF (raw/papers/MaltasTunable.pdf, p.1) contains the journal header and title as a layout element that was converted to an image placeholder. The title requires manual verification from the original PDF or publication record. All remaining content (abstract, results, methods, discussion, references) was extracted cleanly.

Key figures:
- Fig. 1 (p. 2): Schematic of fitness landscape and PLE vs. SLE trajectories for positively and negatively correlated landscape pairs; illustrates how shared maxima may or may not exist
- Fig. 2 (p. 4): Number of local maxima and fraction reaching global maximum vs. $\sigma$; network diagrams for $N = 4$ smooth vs. rugged landscapes showing adaptive trajectories
- Fig. 3 (p. 5): Fitness difference $\bar{F}_\Delta^A$ between SLE and PLE as a function of $\rho$ for $\sigma = 0$ and $\sigma = 1$; phase diagram in $(\rho, \sigma)$ space; timescale dependence; collateral fitness heatmap
- Fig. 4 (pp. 8–9): Shared maxima fractions, entropy, fraction of genotypes occupied, and fitness differences for full vs. shared-maxima-only ensembles; demonstrates dominance of shared maxima in driving dynamics
- Fig. 5 (p. 9): Clonal interference effects on fitness difference, entropy, shared-maximum fraction, and collateral fitness
- Fig. 6 (p. 10): Switching period effects on the same quantities
