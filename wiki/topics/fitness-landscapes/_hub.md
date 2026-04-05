# Fitness Landscapes

## What this topic is about

A fitness landscape is a mapping from genotype (or phenotype) space to fitness. Each point in the landscape represents a possible genetic state, and its height represents the fitness of that state in a given environment. The topology of the landscape — how many peaks there are, how accessible they are, how deep the valleys are — determines whether evolution is predictable or stochastic, fast or slow, and whether populations get trapped at local optima.

The concept was introduced by Sewall Wright and has been central to evolutionary theory since. Modern empirical work on fitness landscapes, enabled by high-throughput combinatorial mutagenesis, has revealed that real landscapes are neither perfectly smooth (as assumed by some models) nor completely random (as assumed by others), but instead have structure that reflects the biochemical constraints of the underlying molecular system.

For this lab, fitness landscapes are both a conceptual framework and a practical object of study. Understanding the landscape of antibiotic resistance — how many beneficial mutations exist, how they interact (epistasis), and how the landscape changes across environments (drug types, concentrations) — is essential for predicting evolutionary trajectories and designing treatment strategies. The key insight connecting landscapes to control is that the ruggedness of the landscape determines the degree to which evolution is channeled versus free, and thus the degree to which it can be steered.

A key empirical advance is the use of fully characterized fitness landscapes as substrates for testing evolutionary control strategies. [[papers/Weaver2024_RLDrugCycling|Weaver2024]] leveraged the Mira et al. 2015 *E. coli* β-lactamase landscape — growth rates for 16 genotypes (4 binary TEM-1 β-lactamase alleles) across 15 β-lactam antibiotics — as a benchmark for comparing RL, MDP, and random drug-cycling policies. This is significant because it anchors the control problem in measured rather than theoretically generated landscapes: the landscape topology (specifically, that CTX places 15/16 genotypes in fitness valleys) directly shapes which policies are effective. The **opportunity landscape** introduced by Weaver2024 — the minimum fitness each genotype can be forced into across the available drug panel — translates landscape topology into a drug-selection criterion: drugs that maximize mean opportunity fitness can reliably trap the evolving population regardless of its current state. This provides a new connection between landscape analysis and control design that is independent of transition model assumptions.

A foundational theoretical result from [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] is that the consequences of environmental fluctuations for evolution cannot be understood from single-landscape properties alone — they depend on the *joint* structure of the landscape pair: specifically, the correlation between landscape peaks ($\rho$) and the ruggedness of each landscape ($\sigma$). In smooth landscapes, alternating environments has minimal effect except when landscapes are strongly anticorrelated. In rugged landscapes, positive interlandscape correlation enables fitness gains above single-landscape levels by channeling trajectories toward **shared fitness maxima** — genotypes locally optimal in both environments. Shared maxima in positively correlated rugged landscapes tend to have higher average fitness than non-shared maxima, providing a structural explanation for why correlated-environment cycling can outperform static adaptation. The paper also establishes that anticorrelated landscape pairs drive ergodic-like steady-state dynamics, broadly sampling genotype space and reducing average fitness — a theoretical parallel to the collateral sensitivity cycling strategies employed in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], and a warning that naively cycling anticorrelated-landscape drugs may not achieve the intended effect when epistasis is present.

## Key papers

- Maltas2020 showed that in rugged landscapes (epistasis $\sigma = 1$), paired landscape evolution (rapid alternation) produces higher steady-state fitness than single landscape evolution for a range of positive interlandscape correlations — an effect absent in smooth landscapes and that grows as ruggedness increases [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 established that shared fitness maxima — genotypes that are locally optimal in both environments — are the dominant driver of evolutionary dynamics under landscape alternation: for positively correlated rugged pairs, shared maxima have higher average fitness than non-shared maxima, and evolutionary trajectories are channeled toward them; for anticorrelated pairs, the absence of shared maxima drives ergodic-like dynamics with reduced fitness [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 showed that collateral fitness (fitness increase in landscape B following adaptation to alternating A-B environments) is positive even for weakly anticorrelated rugged landscapes, implying that cycling two drugs with mutual collateral sensitivity may still produce cross-resistance genotypes when epistasis is sufficient to generate shared maxima [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Maltas2020 demonstrated that the optimal protocol (static vs. switching) is timescale-dependent: at short times, static environments always produce greater fitness; only at moderate to long timescales does switching between correlated rugged landscapes produce fitness advantages [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]

- Weaver2024 used the empirical Mira et al. 2015 *E. coli* β-lactamase fitness landscapes (16 genotypes × 15 β-lactam drugs, derived from combinatorial mutagenesis of TEM-1 β-lactamase) as a benchmark for RL-based drug cycling, establishing that landscape topology directly determines policy effectiveness: CTX (cefotaxime) places 15/16 genotypes in fitness valleys, making it the dominant "opportunity drug" that RL agents preferentially select [[papers/Weaver2024_RLDrugCycling|Weaver2024]]

- Weaver2024 introduced the opportunity landscape — the minimum fitness per genotype over all available drugs — as a landscape-derived criterion for drug panel design: high mean opportunity fitness indicates a drug set that can reliably force the evolving population into low-fitness states regardless of current resistance genotype [[papers/Weaver2024_RLDrugCycling|Weaver2024]]

- Ardell2024 showed that global epistasis slopes — quantifying how mutation fitness effects depend on background genotype fitness across the landscape — are nearly invariant across environments in *S. cerevisiae*: the statistical architecture of the landscape (slope distribution) is preserved under diverse environmental perturbations, while the pivot growth rate $\bar{\lambda}_e$ shifts; this implies that the landscape's local geometry (how mutation effects scale with fitness) is an intrinsic property of the organism's genotype-to-fitness map rather than an environment-specific feature [[papers/Ardell2024_GlobalEpistasis|Ardell2024]]

- Hegreness2008 demonstrated with a geometric isobologram model that the same resistance mutation (modeled as an effective drug concentration reduction) achieves different fitness gains depending on drug-pair interaction type: in synergistic environments the mutation crosses more isoboles than in additive or antagonistic environments, establishing that drug interaction type determines the shape of the fitness landscape for resistance mutations and thus the selective pressure driving adaptation [[papers/Hegreness2008_AcceleratedResistance|Hegreness2008]]

- Maltas2019a illustrated landscape concepts through the LZD→CHL evolutionary trajectory, in which LZD selection drives populations across a fitness valley to reach CHL resistance levels exceeding those achieved by direct CHL selection — a concrete empirical case of cross-environment fitness peak structure [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Couce2024 demonstrated that the *E. coli* fitness landscape is simultaneously **macroscopically stable** and **locally dynamic** over 50,000 generations of LTEE evolution: the statistical architecture of the landscape (mean fitness effect, deleterious tail) is conserved without directional change, while the beneficial portion of the landscape is completely renewed on the timescale of ~2,000 generations by sign epistasis; the global landscape shape is therefore more conserved than the local topology — establishing that landscape stability and landscape dynamism operate at different scales and timescales [[papers/Couce2024_ChangingFitnessEffects|Couce2024]]

## Key concepts and methods

- **Rough Mt. Fuji landscape** — additive base landscape with epistatic noise $\xi_j \sim \mathcal{N}(0, \sigma^2)$; $\sigma$ parameterizes ruggedness (epistasis)
- **Paired landscape generation** — Gram-Schmidt orthogonalization to construct landscape B with prescribed Pearson correlation $\rho$ to landscape A; yields ensembles with tunable interlandscape correlation
- **Shared fitness maximum** — genotype that is a local maximum in both landscapes A and B; frequency increases with $\rho$ and $\sigma$; mean fitness of shared maxima exceeds non-shared maxima for positive $\rho$
- [[concepts/sswm|SSWM Markov chain]] — Strong Selection Weak Mutation model; population evolves as random walk among uphill neighbors; analytically tractable via matrix exponentiation
- **Normalized entropy** $S(\bar{p})/S_\text{max}$ — measure of genotype distribution breadth at steady state; low entropy = concentrated in shared maxima; high entropy = ergodic-like sampling
- **Opportunity landscape** — for each genotype, the minimum fitness over the available drug panel; identifies which drugs can maximally constrain the evolving population regardless of its state [[papers/Weaver2024_RLDrugCycling|Weaver2024]]
- **TEM-1 β-lactamase alleles** — A42G, E104K, M182T, G238S; 4 binary loci defining 16 genotypes used in Mira et al. 2015 empirical landscapes; benchmark landscape for RL control in [[papers/Weaver2024_RLDrugCycling|Weaver2024]]

## Open questions

- How does the fitness landscape for antibiotic resistance change as a function of drug concentration and type?
- Are empirical resistance landscapes more or less rugged than expected from random models, and does ruggedness vary across drug classes?
- For what range of landscape sizes ($N$) do the Maltas2020 results generalize — the paper uses $N = 7$ for tractability [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]
- Can empirical collateral sensitivity data be used to estimate the effective correlation $\rho$ between drug-pair fitness landscapes, and does this predict the success of drug cycling in experiments?
- ~~When epistasis produces shared maxima even under anticorrelated (mutual collateral sensitivity) landscape pairs, how does this reconcile with the success of MDP-based cycling in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]?~~ **Addressed by [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]**: The MDP exploits the *population-level distribution* of collateral effects, not the deterministic structure of any single landscape pair. Shared maxima exist but the MDP does not require them to be absent — it requires only that the population-averaged collateral sensitivity creates a net advantage when exploited over many evolutionary steps. New question: can the shared-maxima fraction be estimated from empirical collateral sensitivity data, and does it predict when MDP-based cycling will fail to maintain low resistance?
- How does population size interact with landscape ruggedness to determine evolutionary predictability? Clonal interference reduces but does not eliminate tunable-correlation effects at moderate $x$ [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]]
- Can the opportunity landscape be used to design optimal drug panels from scratch — selecting the minimal set of drugs that maximizes mean opportunity fitness — and how does panel size trade off against coverage of genotype space? [[papers/Weaver2024_RLDrugCycling|Weaver2024]]
- Do RL agents trained on empirical landscapes (*E. coli* β-lactamase) learn policies that correspond to human-interpretable landscape features (e.g., always choosing the highest-opportunity drug), or do they exploit non-obvious landscape structure?
- Does the beneficial tail contraction (non-exponential → exponential) observed over 50K generations in the LTEE provide a generalizable diagnostic for "distance to fitness peak" in empirical resistance landscapes — could this transition be used to predict when resistance evolution in patients will plateau? [[papers/Couce2024_ChangingFitnessEffects|Couce2024]]

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory: landscape models (NK, HoC, rough Mt. Fuji) | developing | Maltas2020 introduces and uses rough Mt. Fuji; NK and empirical models not yet represented |
| Empirical measurement of fitness landscapes | developing | Weaver2024 uses Mira et al. 2015 *E. coli* β-lactamase landscapes as a benchmark; lab has not independently measured these landscapes |
| Landscape ruggedness and evolutionary predictability | developing | Maltas2020 establishes how ruggedness modulates adaptation under alternating environments |
| Joint landscape structure: paired landscapes and shared maxima | developing | Maltas2020 introduces framework; no empirical validation yet |
| Environment-dependence of fitness landscapes | developing | Maltas2020 theoretical; empirical landscape variation across drugs thin |
| Landscapes and treatment design | developing | Maltas2020 provides theoretical framing; Maltas2019a provides empirical link to drug cycling; Weaver2024 shows RL can exploit empirical landscape topology for control |

## Cross-topic connections

- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis is the molecular basis for landscape ruggedness
- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — the DFE is a local property of the landscape
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects reflect the structure of the landscape across environments
- [[topics/evolutionary-control/_hub|evolutionary-control]] — landscape topology determines what control strategies are feasible
