---
title: "Dynamic collateral sensitivity profiles highlight opportunities and challenges for optimizing antibiotic treatments"
authors: [Maltas J, Huynh A, Wood KB]
year: 2025
venue: "PLOS Biology"
doi: "10.1371/journal.pbio.3002970"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control, evolution-in-fluctuating-environments]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Maltas, Huynh, and Wood use serial-passage laboratory evolution in *Enterococcus faecalis* V583 to characterize how collateral sensitivity and resistance profiles change over evolutionary time. Across 400 strain–antibiotic combinations (20 evolving populations × 5 drugs × 4 time points), they find that collateral resistance dominates early adaptation — over 91% of instantaneous collateral effects in the first two days — while subsequent steps shift increasingly toward collateral sensitivity. At the individual drug-pair level, however, temporal trends are idiosyncratic and nearly unpredictable between adjacent time points (~40% agreement). The paper also demonstrates experimentally that collateral sensitivity forms transient windows that constrain when drug switching is effective, and develops a dynamic MDP (d-MDP) framework that accounts for this temporal variation and achieves 50% lower cumulative resistance than the best static MDP policy.

## Conceptual contribution

The central conceptual advance is that collateral sensitivity profiles are not a fixed input to a treatment design problem but are themselves dynamic outputs of the evolutionary process. The lab's earlier MDP framework ([[papers/Maltas2019_CollateralSensitivity|Maltas2019]]) implicitly assumed that collateral effects measured at one time point characterize the system throughout treatment. This paper shows that assumption is violated: the collateral landscape shifts systematically over evolutionary time. Early adaptation is dominated by broad collateral resistance — plausibly from nonspecific efflux or general stress responses that confer low-level multi-drug resistance — while later stages favor drug-specific collateral sensitivity as the population is forced to acquire more targeted resistance mutations under escalating drug concentrations.

This temporal structure creates transient windows of exploitability that a static policy cannot reliably leverage, but that a dynamic, time-aware policy can. Crucially, static MDP policies do not merely underperform — they can actively misuse these windows by placing the population in a state that happens to be collaterally sensitive under the current drug landscape but is unfavorable when the landscape shifts. The d-MDP framework corrects this by computing policies in reverse chronological order, so that each time period's optimal action incorporates the value of the state it leaves the population in for all subsequent periods. The framework establishes a new principle: **temporal characterization of collateral profiles is not an empirical nicety but a prerequisite for meaningful optimization of sequential drug treatment.**

## Key findings

- Early adaptation (days 0–2) is dominated by collateral resistance: 91.25% of instantaneous collateral effects in this window confer resistance rather than sensitivity; subsequent 2-day windows show 33–39% collateral resistance and 52–57% collateral sensitivity
- Global trend: as resistance to the selecting drug increases, instantaneous mean collateral effects trend toward sensitivity and the frequency of collateral sensitivity increases significantly (logistic regression, $p < 0.05$); the trend is not strong enough to overcome the initial collateral resistance burst, so cumulative effects remain net-positive (resistance) throughout
- Individual drug-pair predictability is near chance: day-2 profiles correctly predict day-4 profiles only 41% of the time; day-4 predicts day-6 at 37%; day-6 predicts day-8 at 41%
- Within-population heterogeneity study (48 isolates per time point from 3 drug pairs): LZD-CRO and CRO-DOX populations show statistically significant increases in the frequency of sensitive isolates over time; CRO-CIP shows the opposite trend (resistance increasing)
- No evolved strain became collaterally sensitive to LZD at any time point; DAP collateral sensitivity was rare throughout — critical because these are last-resort antibiotics for MDR gram-positive infections
- 14-day CRO-selection / DOX-probing experiment across 20 replicate populations: a statistically distinct 6-day window (days 8–13) emerges in which DOX collateral sensitivity is maximized; switching before or after this window produces markedly different — and sometimes collaterally resistant — outcomes
- Simple combinatorial model predicts a trade-off in multi-drug sequences: optimizing resistance to the applied drug (via switching) tends to raise global resistance to the full drug panel; this global resistance does not depend sensitively on switch timing, only on drug identity
- d-MDP (dynamic MDP, solved via backward induction over 4 sequential collateral profiles) achieves 50% lower total resistance compared to the best static MDP policy derived from any single time-point's collateral data
- Static MDP policies fail even when they transiently create collateral sensitivity states — the failure is not in creating sensitivity but in knowing when those states occur and exploiting them forward in time

## Methods

- *E. faecalis* strain V583 (vancomycin-resistant clinical isolate); 5 antibiotics chosen for diverse mechanisms: CRO (β-lactam / cell wall synthesis), CIP (quinolone / DNA gyrase), DAP (lipopeptide / cell membrane), DOX (tetracycline / 30S ribosome), LZD (oxazolidinone / 50S ribosome)
- 8-day serial-passage evolution: 4 independent replicate populations per drug; single colony isolated at days 2, 4, 6, 8; 37°C in BHI medium; escalating concentrations via selection of highest-concentration well with visible growth
- IC50 determination: Hill-like dose-response fitting $f(x) = (1 + (x/K)^h)^{-1}$ over 6–14 concentrations; collateral response $c \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$; threshold at $|c| > 3\sigma_\text{WT}$; all measurements in technical replicates of 3–4
- Instantaneous collateral effects: $c_\text{inst} \equiv \log_2(\text{IC}_{50,D_t} / \text{IC}_{50,D_{t-2}})$ — collateral effects relative to previous time point rather than ancestor
- Population heterogeneity: 48 isolates (12 per time point × 4 time points) from 3 selected drug-pair lineages (LZD-CRO, CRO-DOX, CRO-CIP); ANOVA and logistic regression on frequency trends
- 14-day drug-switching experiment: 20 replicate populations in escalating CRO; daily DOX sensitivity probing via area-under-dose-response curve and IC50 fold-change; one-way ANOVA with post-hoc pairwise comparisons to identify dosing windows
- d-MDP: state space is $n_d$-dimensional resistance vector (integer levels −5 to 25); discretized collateral effects (−2, −1, 0, 1, 2); MDPs solved by value iteration in reverse chronological order (day 6–8 first); reward at each step combines resistance to current drug and expected value of future state derived from exhaustive simulation under later-period optimal policy

## Relationship to existing wiki

This paper directly extends and partially invalidates the static MDP model introduced in [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]. It uses the same *E. faecalis* V583 system, the same antibiotic panel, and the same IC50 measurement protocol, making it a direct temporal follow-up. The open questions flagged in the collateral-sensitivity and evolutionary-control hubs — specifically, "How do collateral profiles change dynamically as resistance accumulates?" and "How do optimal policies change when collateral profiles are time-varying?" — are the precise targets of this paper.

The d-MDP framework represents the next generation of the [[concepts/markov-decision-process|Markov decision process]] approach to evolutionary control, extending it from a static to a temporally staged optimization. The concept of transient sensitivity windows connects to [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — the timing of drug switches in sequential protocols is now shown to be as important as the choice of drug.

## Open questions raised

- What molecular mechanisms underlie the global shift from collateral resistance to sensitivity over evolutionary time? The efflux/stress-response hypothesis for early-stage resistance is plausible but untested genotypically in this study.
- Are the temporal dynamics of collateral profiles conserved across species, strains, or drug classes? The current dataset covers only *E. faecalis* V583 and 5 antibiotics; several recent studies hint at dynamic features in other systems but systematic comparisons are lacking.
- How wide are transient collateral sensitivity windows for other drug pairs beyond CRO→DOX, and can they be predicted from early-timepoint measurements?
- Can d-MDP policies be designed that are robust to uncertainty in when evolutionary transitions between collateral regimes occur?
- How do results change under non-laboratory conditions: biofilm physiology, host-pathogen interactions, spatially heterogeneous antibiotic concentrations, or starting from clinical (rather than laboratory-adapted) strains?
- The combinatorial model's prediction that multi-drug sequences raise global resistance regardless of timing has not been tested experimentally — a key challenge for multi-drug sequential therapy design.

## Conversion notes

Figures are not extracted by the converter. Key figures are described in plain language above and in the Key findings section based on caption text and surrounding context. All quantitative values cited here are drawn from the text. Source PDF figures of particular importance:
- Fig 1 (p. 2–3): 5×5 collateral profile matrices at 4 time points — shows raw diversity of temporal trends across drug pairs
- Fig 2 (p. 5): instantaneous collateral effects summary and global trend toward CS with increasing resistance
- Fig 3 (p. 7): within-population heterogeneity with 48-colony sampling at each time point
- Fig 4 (p. 9): 14-day CRO/DOX drug-switching experiment with dosing window highlighted
- Fig 5 (p. 11): d-MDP vs static MDP comparison — resistance trajectories and policy divergence over time
