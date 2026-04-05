---
title: "Pervasive and diverse collateral sensitivity profiles inform optimal strategies to limit antibiotic resistance"
authors: [Maltas J, Wood KB]
year: 2019
venue: "PLOS Biology"
doi: "10.1371/journal.pbio.3000515"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control, evolution-in-fluctuating-environments]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude Sonnet 4.6"
---

## Summary

This paper provides a comprehensive quantitative characterization of collateral drug sensitivity and resistance in *Enterococcus faecalis*, measuring phenotypic profiles for 900 mutant–drug combinations across 60 evolved strains and 15 antibiotics. Despite substantial heterogeneity in individual collateral profiles, the authors show that profiles cluster by drug class, revealing tractable statistical structure. Building on this structure, the paper introduces a Markov decision process (MDP) framework for designing optimal drug-cycling policies that account for stochasticity and different optimization timescales. MDP-derived drug sequences are experimentally validated in 20-day laboratory evolution experiments, where they outperform all intuitive cycling protocols in reducing both cumulative growth and adaptation rate.

## Conceptual contribution

This paper establishes two interlocking conceptual advances. First, it resolves an apparent paradox in the collateral sensitivity literature: although individual collateral profiles are highly heterogeneous and difficult to predict at the level of a single mutant, statistical structure exists at the population level — profiles cluster by drug class consistently across the *E. faecalis* system. This shifts the framing from "collateral effects are too unpredictable to exploit" to "collateral effects are stochastic but tractably structured, and that structure is sufficient for rational control."

Second, the paper introduces the principle of **evolutionary steering**: optimal drug policies do not simply maximize short-term efficacy (greedy suppression) but instead occasionally apply less-effective drugs to shepherd the population toward a more vulnerable future state. The MDP framework formalizes this trade-off via a discount factor $\gamma$ that tunes the optimization between short-term and long-term objectives. This counterintuitive principle — that tolerating transient periods of high resistance can yield better long-term outcomes — is demonstrated both in simulation and in laboratory evolution experiments, making it one of the most direct experimental validations of a control-theoretic framework for antibiotic resistance.

## Key findings

- Collateral effects are pervasive: ~73% (612/840) of mutant–drug combinations show statistically significant changes in IC50 relative to the ancestral strain.
- Collateral sensitivity profiles are highly heterogeneous, even between parallel populations selected by the same drug (e.g., four DAP-evolved replicates show qualitatively different cross-resistance profiles to CRO).
- Variability between parallel replicates correlates with the degree of resistance to the selecting drug (Spearman $\rho = 0.82$, $p < 10^{-3}$ excluding SPT).
- Despite heterogeneity, hierarchical clustering partitions mutants into groups that correspond exactly to known drug classes (7 clusters: cell wall synthesis inhibitors, tetracyclines, lipopeptides, oxazolidinones, fluoroquinolones, aminocyclitols, antimycobacterials).
- DAP cross-resistance is surprisingly widespread: 64% of all evolved lineages (selected by other drugs) show increased DAP resistance.
- LZD selection drives higher CHL resistance than direct CHL selection — evolving populations cross a CHL fitness valley to reach an otherwise inaccessible resistance peak.
- Strong, repeatable collateral sensitivity to rifampicin (RIF) is observed in cell wall synthesis inhibitor-evolved populations.
- The long-term MDP policy ($\gamma \approx 1$) maintains low resistance indefinitely in simulation; when collateral sensitivity values are set to zero, resistance rapidly saturates — confirming that the success depends mechanistically on collateral effects.
- MDP-derived 4-drug sequences reduce cumulative growth relative to single-drug, two-drug, and representative four-drug cycling protocols, with statistically significant reductions in adaptation rate ($p < 0.05$ in all comparisons).
- The optimal policy's resistance distribution is bimodal: it achieves low average resistance not by maintaining intermediate resistance, but by alternating between highly effective and infrequently applied but evolutionarily useful drugs.

## Methods

- **Organism:** *Enterococcus faecalis* V583 (fully sequenced vancomycin-resistant clinical isolate)
- **Experimental evolution:** Serial-passage evolution in 96-well plates; 8 days (maximum ~60 generations); four replicate populations per drug; 15 antibiotics spanning 7 drug classes; daily 200-fold dilutions; drug concentration ratcheted up daily
- **Resistance measurement:** IC50 estimated by nonlinear least squares fitting of dose-response curves to a Hill-like function $f(x) = (1 + (x/K)^h)^{-1}$; measurements for all 60 mutants × 15 drugs; collateral effect defined as $C \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$
- **Fitness costs:** Growth rate and lag time measured in drug-free media by fitting logistic growth curves
- **Hierarchical clustering:** Correlation metric distance on collateral profile vectors; mean average linkage; performed in MATLAB
- **Whole-genome sequencing:** breseq pipeline; clonal and population sequencing; aligned to V583 reference (accession AE016830–AE016833); mutations filtered if present in control strains; analysis limited to variants > 30% frequency in population samples
- **MDP framework:** Discrete state space (resistance levels per drug), discrete actions (drug choice), transition probabilities estimated from experimental collateral profiles; reward = negative resistance to applied drug; value iteration to find optimal policy $\pi^*(s)$; discount factor $\gamma$ tunes short-term vs. long-term optimization
- **Laboratory validation:** 20-day serial passage experiment; 60 replicate populations across 13 drug protocols; populations exposed to drug concentrations just above WT MIC; OD measured every 20 minutes for 40-hour growth windows; cumulative growth and adaptation rate (slope of OD vs. time regression) as outcome measures

## Relationship to existing wiki

This is the first paper ingested; it is the foundational document for multiple topic hubs. It directly establishes the empirical and conceptual basis for:

- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — primary source for phenomenology, measurement approach, heterogeneity, and drug-class clustering structure
- [[topics/evolutionary-control/_hub|evolutionary-control]] — introduces MDP framework and the evolutionary steering principle
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — provides experimental evidence that optimized sequential drug sequences outperform naive cycling

## Key figures

**Figure 1 — Collateral sensitivity heat map across all 60 mutants and 15 drugs.** A matrix where columns are individual evolved mutants (4 replicates × 15 selecting drugs) and rows are testing drugs; color encodes $C = \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$, with red indicating cross-resistance and blue indicating collateral sensitivity. The diagonal blocks show resistance to the selecting drug. The right-panel inset highlights the four DAP-evolved replicates, showing qualitatively different collateral profiles despite identical selective conditions.

**Figure 2 — Growth costs and intra-drug variability.** Panel A shows OD time series for isolates selected by each drug versus the ancestral strain, fit to logistic growth functions. Panel B quantifies maximum specific growth rate and lag time normalized to the ancestor; cell wall synthesis inhibitor-evolved strains (CRO, FOF) show the largest growth costs. Panel C (left) shows the correlation between replicate variability and resistance level to the selecting drug; (right) histograms of pairwise Euclidean distances between collateral profiles from same-drug versus different-drug pairs, demonstrating that same-drug profiles are significantly more similar on average.

**Figure 3 — Drug-specific collateral phenomena.** Panel A shows dose-response curves for all mutants tested against DAP, illustrating the high frequency of DAP cross-resistance. Panel B shows the CHL resistance trajectory in LZD-selected populations over days 2–8: early collateral sensitivity at day 5 followed by higher-than-direct CHL resistance at day 8, with a fitness-valley-crossing interpretation diagrammed in the inset. Panels C–E show Sanger sequencing results linking 23S rRNA mutation accumulation to CHL resistance levels.

**Figure 4 — Hierarchical clustering of collateral profiles by drug class.** A reordered heat map in which both rows (testing drugs) and columns (evolved mutants) are sorted by hierarchical clustering. Seven distinct clusters emerge in the column dendrogram, each corresponding exactly to a known drug class: (A) cell wall synthesis inhibitors, (B) tetracyclines, (C) lipopeptides, (D) oxazolidinones, (E) fluoroquinolones, (F) aminocyclitols, (G) antimycobacterials. FOF clusters with cell wall inhibitors as a selecting drug (column) but diverges from them as a testing drug (row), illustrating the distinction between selecting and testing roles.

**Figure 5 — MDP simulation results.** Panel A shows discretized collateral sensitivity matrices for the six-drug subset. Panel B compares average resistance over time for MDP policies with different $\gamma$ values versus random cycling, and shows that removing collateral sensitivity (light red) eliminates the long-term benefit. Panels C–D show the time-dependent and steady-state probability distributions over drugs and resistance levels under the long-term optimal policy. Panel E shows the steady-state joint distribution over consecutive drug choices. Panel F compares MDP policies to the best 2-, 3-, and 4-drug collateral sensitivity cycles.

**Figure 6 — Laboratory validation of MDP-derived sequences.** Panel A shows the 2-day collateral sensitivity matrix for the four-drug experimental subset (FOF, RIF, AMP, TGC). Panel B shows the steady-state drug distribution and a single MDP-derived sequence realization for $\gamma = 0.9$. Panels C–E show cumulative growth trajectories for single-drug, two-drug, four-drug, and MDP-derived protocols; transparent lines are individual replicates, thick lines are means. Panel F shows adaptation rates across all protocol types, with MDP sequences achieving significantly lower rates than all comparison groups.

## Open questions raised

- How general is the drug-class clustering structure in collateral profiles? Does it hold across different *E. faecalis* strains, across gram-positive species more broadly, or in clinical isolates?
- What are the molecular mechanisms underlying drug-class-specific collateral profiles? The paper identifies candidate genes (gyrA, rpsE, parC) but cannot resolve causal mechanisms from population sequencing alone.
- How do collateral effects evolve dynamically — do profiles change as resistance accumulates over multiple sequential drug exposures (time-varying collateral sensitivity)?
- How does epistasis between resistance mutations reshape collateral profiles, and can this be incorporated into the MDP model?
- Can the MDP approach be extended to incorporate fitness costs, drug-free "holidays," and population heterogeneity/clonal interference?
- How does the performance of MDP-optimized sequences hold up over longer timescales and larger drug panels than tested here?
- Can a similar approach be applied to cancer populations (non-small cell lung cancer) or other evolutionary systems beyond bacteria?
