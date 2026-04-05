# Evolution in Fluctuating Environments

## What this topic is about

This topic covers populations evolving under **sequential** or **alternating** environments — where the selective pressure changes over time, one environment at a time. This includes drug cycling protocols (rotating through individual drugs in sequence), alternating therapies, and any scenario where the environment is applied serially rather than simultaneously. The defining feature is temporal heterogeneity: the organism adapts to one environment and then faces a different one.

The central question is how the history of environments shapes the evolutionary trajectory of a population. A population that has been exposed to drug A may have evolved a resistance profile that makes it more or less vulnerable to drug B — this is precisely where collateral sensitivity becomes a tool. Sequential protocols that exploit collateral effects can be designed to cycle populations through a series of vulnerable states, preventing any single resistance strategy from becoming entrenched.

A key theoretical insight, formalized and experimentally validated by [[papers/Maltas2019_CollateralSensitivity|Maltas2019]], is that optimal sequential treatment is not the greedy choice (always use the most effective current drug) but may require occasionally deploying a less effective drug to steer the population toward a more exploitable future state. The Markov decision process (MDP) framework makes this principle quantitative: the discount factor $\gamma$ tunes the degree of far-sightedness, and long-term optimal policies ($\gamma \approx 1$) systematically outperform intuitive cycling strategies in laboratory evolution experiments. This is now the strongest experimental evidence that sequential treatment outcomes are meaningfully improved by principled optimization versus naive drug switching.

A further complication — and opportunity — is that the collateral landscape itself is not static over the course of sequential treatment. [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] showed that collateral sensitivity to a given drug does not arise uniformly throughout an evolutionary experiment but emerges in transient windows whose timing depends on the selecting drug and the degree of resistance accumulated. This means the question for sequential therapy is not only "which drug to switch to?" but "when is the right moment to switch?". A 14-day experiment tracking CRO-evolved populations' sensitivity to DOX identified a distinct 6-day window (days 8–13) during which collateral sensitivity is maximized; populations switched to DOX before or after this window fare substantially worse. The dynamic MDP (d-MDP) framework, which accounts for these time-varying collateral landscapes via backward-induction optimization, achieves 50% lower total resistance in simulation than any static policy — establishing that exploiting sequential protocols requires temporal characterization of collateral profiles, not just their endpoint values.

## Key papers

- Maltas2019 demonstrated experimentally that MDP-derived drug sequences reduce cumulative growth and adaptation rates relative to all tested comparison protocols — single-drug, pairwise cycles, and a four-drug uniform cycle — in 20-day serial-passage evolution of *E. faecalis* V583 [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that among intuitive two-drug cycles, cycles with mutual collateral sensitivity (e.g., RIF–AMP, RIF–FOF) outperform other two-drug cycles, consistent with prior predictions from the collateral sensitivity literature, but that MDP-derived sequences outperform even the best pairwise cycles [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 established that the performance advantage of MDP policies over collateral sensitivity cycles is mechanistically dependent on collateral effects: setting all collateral sensitivities to zero in simulation causes resistance to saturate rapidly even under the optimal policy [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that the LZD→CHL cross-resistance trajectory — in which LZD selection drives a population across a fitness valley to higher CHL resistance than direct CHL selection — illustrates how sequential exposure history can steer populations to resistance states that are otherwise inaccessible [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2025 demonstrated experimentally that the success of switching from CRO to DOX depends on precisely timed exploitation of a transient collateral sensitivity window: across 20 replicate populations in a 14-day evolution experiment, DOX collateral sensitivity peaks during days 8–13 and then declines — confirming that collateral sensitivity windows are real, detectable, but time-limited [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2025 showed using the d-MDP framework that time-varying collateral profiles require time-aware policies: static MDPs derived from individual time-point collateral data diverge substantially from the temporally optimal policy (TD-opt) and achieve roughly twice the cumulative resistance — with the divergence increasing at later stages as collateral landscapes shift most dramatically [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — the formal framework used to design optimal sequential drug policies
- **Serial-passage laboratory evolution** — 8-day (collateral sensitivity mapping) and 20-day (protocol comparison) experiments; daily dilutions with escalating drug concentrations
- **Cumulative growth and adaptation rate** — outcome measures for comparing cycling protocols; cumulative growth sums daily OD; adaptation rate is the slope of the OD-vs-time regression

## Open questions

- Can sequential protocols maintain long-term suppression, or do populations eventually evolve cross-resistance to all drugs in the cycle? The 20-day MDP experiments are suggestive but do not resolve long-term dynamics [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].
- How does stochasticity in resistance evolution affect the performance of fixed (pre-determined) versus adaptive (state-dependent) cycling protocols? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]] shows fixed cycles drawn from MDP realizations perform near-optimally, but this may break down over longer timescales.
- What cycling period (time per drug) maximizes the evolutionary cost of resistance? The Maltas2019 experiments use 2-day periods but the optimal period length is not characterized.
- ~~How do collateral profiles change dynamically over the course of sequential drug exposure?~~ **Addressed by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]**: early adaptation is dominated by collateral resistance; later stages shift toward sensitivity; transient dosing windows emerge where sensitivity to a second drug is maximized. New question: how do the width and timing of sensitivity windows vary across drug pairs, and can they be predicted without full temporal phenotyping?
- Can optimal sequential protocols be designed that are robust to uncertainty in the timing of collateral landscape transitions — i.e., when the population shifts from a CR-dominated to a CS-dominated regime? [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory of evolution in changing environments | thin | MDP framework introduced but broader theory of fluctuating-environment evolution not yet represented |
| Drug cycling: empirical evidence from lab evolution | developing | Maltas2019 provides the core experimental comparison; need additional systems |
| Temporal dynamics of collateral sensitivity | developing | Maltas2025 establishes global temporal trends and transient windows in *E. faecalis*; generality needed |
| Collateral sensitivity as a basis for cycling design | developing | Maltas2019 and Maltas2025 are the key entries; generality across organisms thin |
| Optimal cycling: MDP and d-MDP control-theoretic approaches | developing | Maltas2019 (static) and Maltas2025 (dynamic) establish the framework; extensions to realistic clinical settings thin |
| Clinical implementation and adaptive therapy | thin | Not yet represented in wiki |

## Cross-topic connections

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — collateral effects are the mechanism that makes sequential protocols exploitable; drug-class clustering structure provides the empirical basis for MDP transition probabilities
- [[topics/evolutionary-control/_hub|evolutionary-control]] — optimal sequential treatment design is the primary application of evolutionary control theory; MDP framework spans both topics
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — contrast: sequential vs. simultaneous drug exposure; the boundary between these topics is sharp and definitional
