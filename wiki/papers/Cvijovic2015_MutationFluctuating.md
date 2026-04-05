---
title: "Fate of a mutation in a fluctuating environment"
authors: [Cvijovic I, Good BH, Jerison ER, Desai MM]
year: 2015
venue: "Proceedings of the National Academy of Sciences"
doi: "10.1073/pnas.1505406112"
arxiv: ""
topics: [evolution-in-fluctuating-environments, distribution-of-fitness-effects]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Cvijović, Good, Jerison & Desai (2015) derive the fixation probability of a new mutation in a two-state fluctuating environment, covering the full range of timescales — including the critical intermediate regime where evolutionary and environmental timescales overlap and neither the "time-averaged fitness" nor the "single-epoch" approximation holds. Using an effective diffusion approach, they reduce the time-varying selection problem to a time-independent modified Kimura equation with an elevated drift barrier $s^*$ that depends on population size, within-epoch selection strength $s$, mean epoch length $\tau$, and epoch-length variability $\delta\tau$. The central result is that mutations with $|\bar{s}| \ll s^*$ fix with probability $\approx 2s^*$ regardless of their average fitness effect — including on-average deleterious mutations — and that a deleterious mutation can fix more readily than an equivalent always-beneficial mutation in a constant environment. A second mechanism, "seasonal drift" — correlated lineage fluctuations from variable epoch lengths — causes the drift barrier to decay only logarithmically with $N$ in large populations, making even very large populations vulnerable to specialist trait erosion under irregular environmental switching.

## Conceptual contribution

**The modified Kimura formula and the elevated drift barrier.** The paper's central result is that environmental fluctuations do not destroy the Kimura formula's structure but replace its drift barrier: the fixation probability satisfies

$$p_\text{fix}(\bar{s}; N, s, \tau, \delta\tau) = \frac{2\bar{s}}{1 - e^{-\bar{s}/s^*}},$$

where $s^*$ is an elevated drift barrier independent of $\bar{s}$ but dependent on the fluctuation dynamics. In the fast-switching limit ($s\tau \ll 1$) the standard $s^* \approx 1/(2N)$ is recovered. In the intermediate regime ($1 \lesssim s\tau \ll 2\log(Ns)$), the drift barrier grows exponentially as

$$s^* \approx \frac{e^{s\tau/2}}{\pi N s\tau},$$

which can exceed $1/(2N)$ by many orders of magnitude. This unifies the effects of temporal fluctuations into a single interpretable quantity and makes explicit how a specific cycling timescale $\tau$ maps to a reduced efficiency of selection. For bacteria with $N \sim 10^6$ and typical antibiotic selection coefficients ($s \sim 10\%$) under daily drug cycling ($\tau \sim 10$ generations), the condition $s\tau \sim 1$ is directly satisfied — placing lab drug cycling experiments squarely in the regime where this theory applies.

**Counterintuitive fixation: deleterious mutations fix more readily than neutral or beneficial ones.** Because the elevated $s^*$ broadens the effective neutral range, an on-average deleterious mutation with $\bar{s} \sim -s^*$ can fix with probability $\approx 2s^*$ — far above the neutral rate $1/N$ and comparable to or exceeding the fixation probability of a truly beneficial mutation ($\approx 2\bar{s}$) in a constant environment. The ratio $p_\text{fix}(-\bar{s}, \tau > 0) / p_\text{fix}(\bar{s}, \tau = 0)$ can be much greater than one when fluctuations are strong. This has direct implications for the lab's drug cycling work: under the intermediate timescale regime, resistance mutations that carry moderate fitness costs in drug-free environments (trade-off mutations) may fix during cycling as readily as always-beneficial mutations — undermining the assumption that cost-bearing resistance mutations are unlikely to spread during cycling protocols.

**Seasonal drift as a distinct stochastic mechanism not captured by effective population size.** Variable epoch lengths introduce correlated fluctuations across entire lineages (unlike genetic drift, which acts independently on each individual). These correlated fluctuations do not diminish at higher allele frequencies, so defining an effective population size $N_e = 2/s^*$ is formally correct but mechanistically misleading: neutral fixation times scale as $N_e^2$ rather than $N_e$, and the drift barrier in the seasonal drift regime decays only logarithmically with $N$ rather than as $1/N$. This means that even very large populations — like clinical bacterial populations during antibiotic treatment — offer only logarithmically better protection against specialist trait erosion than moderate-sized populations when drug epoch timing is irregular.

## Key findings

- Fixation probability in a fluctuating environment satisfies the modified Kimura formula with elevated drift barrier $s^*$; the ratio of fixation probabilities of deleterious to beneficial mutations retains the exponential form $p_\text{fix}(-\bar{s})/p_\text{fix}(\bar{s}) = e^{-\bar{s}/s^*}$ but with the fluctuation-dependent $s^*$
- Three regimes for $s^*$: (i) fast switching $s\tau \ll 1$: $s^* \approx \frac{1}{2N}$ (constant environment recovered); (ii) slow periodic switching $1 \lesssim s\tau \ll 2\log(Ns)$: $s^* \approx \frac{e^{s\tau/2}}{\pi Ns\tau}$ (exponentially enhanced); (iii) irregular switching (large $s\delta\tau$): $s^* = \frac{(s\delta\tau)^2}{4\tau\log[\ldots]}$ (decays logarithmically with N)
- An on-average neutral mutation ($\bar{s} = 0$) in the intermediate regime fixes with probability much larger than $1/N$; the fixation probability saturates to $s$ (constant-environment beneficial rate) only when $s\tau \gg \log(Ns)$
- A deleterious mutation in a fluctuating environment can have higher fixation probability than an equivalent always-beneficial mutation in a constant environment when fluctuations are strong and $|\bar{s}| \sim s^*$
- The critical frequency scales separating evolutionary regimes: $x_\text{sel} = \frac{1}{2N|\bar{s}|\tau}$ (selection threshold), $x_{1/2} = e^{-s\tau/2}$ (equal-probability threshold), $x_\text{seas} = \frac{\tau_c}{N(s\delta\tau)^2}$ (seasonal drift threshold)
- For bacteria with $N > 10^6$, $s \approx 10\%$, $\tau \approx 10$ generations, the system is in the regime $1 \lesssim s\tau \ll 2\log(Ns)$ — standard time-averaged fitness approximation fails
- The "window of opportunity" concept: a mutation arising outside the first $\tau_c = 1/s$ generations of a beneficial epoch is almost certainly destined for extinction; only mutations arising at the right time can survive the subsequent deleterious epoch
- Validated by Wright-Fisher simulations across $N = 10^3$–$10^8$ and epoch timescales $s\tau = 0.1$–$10$ (Figs. 3, 4)

## Methods

- **Effective diffusion approach:** coarse-grains the time-varying selection dynamics over pairs of environmental epochs to derive a time-independent modified diffusion equation for fixation probability; computes moments $\langle \delta x \rangle$ and $\langle \delta x^2 \rangle$ by integrating the standard diffusion equation over complete epoch pairs
- **Fast-switching limit:** short-time asymptotic expansion of diffusion equation yields analytic moments (Eq. 11); recovered standard drift-dominated result
- **Slow-switching limit:** branching process methods for rare-allele dynamics with asymptotic matching at intermediate frequency $x_{1/2}$; yields analytic moments (Eq. 12)
- **Wright-Fisher simulations:** stochastic simulations with mutant lineages arising at random timepoints; $N$ ranging from $10^3$ to $10^8$; used to validate parameter collapse and $s^*$ predictions (Figs. 3, 4, 5)

## Relationship to existing wiki

- **Central contribution to [[wiki/topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]]:** provides the population-genetic foundation for why cycling timescale — not just time-averaged drug efficacy — determines resistance evolution outcomes; directly relevant to the lab's drug cycling experiments
- **Connects to [[wiki/topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]]:** the modified drift barrier $s^*$ broadens the effective neutral range of the DFE; mutations with $|\bar{s}| < s^*$ are functionally neutral regardless of their true average fitness effect under fluctuating selection
- **Connects to [[wiki/topics/evolutionary-control/_hub|evolutionary-control]]:** the timescale of cycling protocols determines which regime the population occupies; protocols in the intermediate $s\tau \sim 1$ regime operate under severely reduced selection efficiency, with implications for the efficacy of MDP-designed cycling strategies

## Open questions raised

- For the drug cycling protocols used by the lab (typical epoch lengths $\tau \sim 2$ days, resistance selection coefficients $s \sim 10$–50%), what is the predicted $s^*$? Does this suggest that current cycling timescales operate near the elevated drift barrier regime, potentially increasing the rate of unexpected resistance fixation?
- Is there an optimal epoch length $\tau^\ast$ that maximizes $s^*$ for a given selection coefficient $s$ and population size $N$ — maximizing how difficult it is for selection to drive resistance mutations to fixation?
- Does seasonal drift from variable drug exposure durations (as in adaptive therapy, where switching times depend on observed population dynamics) meaningfully increase fixation probability of resistance mutations relative to regular cycling — and does this create a trade-off between adaptive therapy's population-control benefit and its stochastic cost?
- The paper focuses on haploid, single-locus models; how do multi-locus resistance evolution (where multiple mutations interact) or diploid cancer cell populations alter the regime analysis and drift barrier?

## Key figures

**Figure 1** (fitness trajectories): Sample periodic fitness trajectory and frequency trajectories comparing fast-switching ($s\tau \ll 1$, small frequency oscillations) and slow-switching ($s\tau \gg 1$, dramatic oscillations with near-fixation and near-extinction events) regimes.

**Figure 2** (schematic phase space): Illustrates the three frequency scales ($x_\text{sel}$, $x_{1/2}$, $x_\text{seas}$) and how the dominant evolutionary force shifts across them in four regimes: drift-dominated, selection-dominated, seasonal-drift regime, and transitions between them.

**Figure 3** (parameter collapse): All Wright-Fisher simulations collapse onto the modified Kimura formula when plotted as $p_\text{fix}$ vs. $\bar{s}/s^*$, validating the theory across diverse parameter combinations.

**Figure 4** (drift barrier enhancement): $s^*$ vs. $Ns$ for fast and slow switching — confirming exponential enhancement in slow-switching regime; seasonal drift regime decays logarithmically with N.

**Figure 5** (fixation probability vs. average fitness): Shows crossover where on-average deleterious mutation (fluctuating environment) is more likely to fix than beneficial mutation (constant environment) as fluctuation strength increases.

**Figure 6** (phase diagram): Maps the parameter space ($s\tau$ vs. $s\delta\tau$) into regimes where environmental fluctuations do vs. do not change the drift barrier; illustrates how increasing $N$ expands the regime where fluctuations matter.
