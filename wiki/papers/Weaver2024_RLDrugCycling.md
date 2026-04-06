---
title: "Reinforcement learning informs optimal treatment strategies to limit antibiotic resistance"
authors: [Weaver DT, King ES, Maltas J, Scott JG]
year: 2024
venue: "Proceedings of the National Academy of Sciences"
doi: "10.1073/pnas.2303165121"
arxiv: ""
topics: [evolutionary-control, fitness-landscapes]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Weaver, King, Maltas, and Scott demonstrate that reinforcement learning (RL) agents — specifically deep Q-networks — can learn effective drug-cycling policies for antibiotic resistance control without knowledge of the underlying evolutionary model. Using empirically measured fitness landscapes for *E. coli* β-lactamase across 16 genotypes and 15 β-lactam antibiotics, the authors train two RL agents: RL-genotype (which observes the current genotype distribution) and RL-fit (which observes only current population fitness and the previous drug selected). Both agents are trained against an SSWM Markov chain evolutionary model and compared to a perfect-information MDP baseline and random drug cycling. RL-genotype approaches MDP-level performance ($r = 0.96$); RL-fit, which requires only a single measurable quantity, outperforms random drug cycling in 98/100 replicates and outperforms all two-drug cycling strategies. The framework is robust to heavy measurement noise and scales to 1,024 genotypes via state aggregation.

## Conceptual contribution

The paper's central contribution is demonstrating that effective evolutionary control does not require complete knowledge of the evolutionary system. Prior work in this lab and others framed optimal evolutionary control as an MDP problem requiring full knowledge of transition probabilities between resistance states — effectively, a perfect model of the fitness landscape. RL dissolves this requirement: an agent that observes only current population fitness (a single scalar measurement available in any clinical or laboratory setting) can learn a policy that substantially outperforms random cycling and all naive two-drug protocols without knowing the resistance genotype, the landscape, or the transition model. This is the strongest argument to date that **AI-based evolutionary control is clinically feasible** — the informational gap between what a model requires and what can actually be measured in a patient may be bridgeable by learning.

A second conceptual contribution is the **opportunity landscape**: for each genotype, the minimum fitness (minimum over all available drugs) defines an "opportunity" — the best drug available for that state. Averaging over genotypes yields the mean opportunity fitness, a landscape-level summary that captures the extent to which a drug set forces the evolving population into fitness valleys regardless of its current state. CTX (cefotaxime) is the dominant driver of opportunity in this landscape: 15 of 16 genotypes have lowest fitness under CTX, making it the strongest evolutionary brake in the panel. This concept provides a design criterion for drug panel selection that is distinct from MIC or collateral sensitivity profiles alone.

A third contribution is validating RL as an approach to evolutionary control in a setting where the fitness landscape has been empirically measured rather than theoretically generated. The [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]] *E. coli* β-lactamase landscapes — derived from combinatorial mutagenesis of TEM-1 β-lactamase across 15 β-lactam antibiotics — provide an empirically constrained substrate that is more realistic than random landscape models. This establishes that RL-based control is not merely a theoretical proof of concept but is grounded in experimentally characterized evolutionary dynamics.

## Key findings

- RL-genotype, trained with full genotype-distribution information, achieves terminal fitness $r = 0.96$ with the perfect-information MDP baseline; RL-fit, trained with only current fitness and previous drug, outperforms random in 98/100 replicates and outperforms all two-drug cycling protocols
- RL-fit is robust to heavy measurement noise: at $\sigma_\text{modifier} = 40$ (signal-to-noise ratio typical of turbidostat measurements), RL-fit achieves mean terminal fitness 1.41 vs. 1.88 for random cycling (lower is better — fitness here measures resistance level)
- The opportunity landscape identifies CTX (cefotaxime) as uniquely powerful: 15/16 genotypes have minimum fitness under CTX, meaning it is the drug most likely to trap the evolving population in a low-fitness state regardless of current genotype; RL agents preferentially select CTX
- Both RL agents preferentially exploit CTX to lower population fitness and drive populations toward genotypes vulnerable to other drugs — emergent behavior not specified in training
- RL framework scales to 1,024-genotype fitness landscapes via genotype aggregation (grouping by number of resistance alleles), demonstrating that the approach is not limited to exhaustively characterized small genotype spaces
- RL policies generalize across evolutionary trajectories: agents trained on one set of random initial conditions perform well on held-out trajectories, suggesting they learn a general policy structure rather than memorizing specific paths
- Simulated MDP (perfect information) outperforms all RL agents, confirming that complete landscape knowledge still provides an upper bound — but RL-fit substantially closes the gap relative to random or naive cycling, using only clinically tractable information

## Methods

- **Fitness landscape**: empirical *E. coli* β-lactamase landscapes from [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]]; 16 genotypes (4 binary resistance alleles: M69L, E104K, G238S, N276D in TEM-1 β-lactamase); 15 β-lactam antibiotics; fitness measured as growth rate in drug
- **Evolutionary model**: SSWM (Strong Selection Weak Mutation) Markov chain; population state = probability distribution over 16 genotypes; transition matrix $T_{ij}$ derived from fitness differences under the current drug; each step applies one drug for one passage
- **RL framework**: deep Q-network (DQN) with experience replay and target network; state space = current genotype distribution (for RL-genotype) or [current mean fitness, previous drug] (for RL-fit); action space = 15 drugs; reward = negative change in mean population fitness (minimize resistance); trained over $10^5$ episodes of 200 drug selections each
- **Noise model**: Gaussian noise on fitness observations with $\sigma = \sigma_\text{modifier} \times \sigma_\text{landscape}$ where $\sigma_\text{landscape}$ is derived from experimental measurement variability in the [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]] data; tested at $\sigma_\text{modifier} \in \{0, 5, 10, 20, 40\}$
- **Scaling**: for 1,024-genotype landscapes (10-locus binary), genotypes aggregated by resistance allele count into 11 bins; RL-fit operates on binned mean fitness; RL-genotype operates on binned distribution
- **Baselines**: (1) random drug selection; (2) all 105 two-drug cycling protocols; (3) MDP solved via value iteration with full landscape knowledge and perfect SSWM transition model; 100 replicate evolutionary trajectories per comparison
- **Opportunity landscape**: for each genotype $g$, opportunity = $\min_d f(g, d)$ over all drugs $d$; mean opportunity landscape = average over genotypes weighted by current population distribution

## Relationship to existing wiki

This paper extends the MDP framework introduced in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and advanced as the d-MDP in [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] by removing the requirement for a known evolutionary model. Both MDP approaches require measured transition probabilities (or collateral sensitivity profiles) as inputs; RL replaces the transition model with trial-and-error learning from observed outcomes. The result is a lower-information-requirement framework for evolutionary control — the d-MDP is more powerful when collateral profiles can be measured; RL is more accessible when only population-level fitness is measurable.

The paper uses a different model organism (*E. coli* with the [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]] β-lactamase landscapes) than the lab's experimental antibiotic work (*E. faecalis*). The β-lactamase system was chosen because it is one of the few settings where an empirical fitness landscape is fully characterized across a panel of antibiotics — enabling quantitative RL benchmarking against a known MDP solution. This connects directly to the open questions in [[topics/fitness-landscapes/_hub|fitness-landscapes]] about whether empirical landscape data is sufficient to support control design, and to the observation in [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] that landscape topology (shared maxima, ruggedness) determines which evolutionary trajectories are accessible under alternating environments.

The opportunity landscape concept is a new addition to the landscape-theoretic toolkit relevant to [[topics/fitness-landscapes/_hub|fitness-landscapes]] — it reframes landscape analysis from "what fitness does each drug achieve?" to "what is the minimum fitness any drug can achieve for each genotype?" — a worst-case-optimal framing that naturally aligns with adversarial evolutionary thinking.

## Open questions raised

- Can RL agents trained on *E. coli* β-lactamase landscapes generalize to empirical collateral sensitivity landscapes in *E. faecalis* — i.e., is the learned policy structure transferable across organisms and drug classes, or must agents be retrained from scratch for each system?
- What is the minimum number of measurable quantities (beyond current fitness) needed for RL-fit performance to approach RL-genotype performance? Is there a principled trade-off between information cost and policy quality?
- Can the opportunity landscape concept be used as a criterion for drug panel design — selecting a set of drugs that maximizes mean opportunity fitness across genotypes — and does this panel selection problem have a tractable solution for large genotype spaces?
- Do RL agents discover interpretable policies (e.g., recognizable cycling rules, state-conditioned switching) that could be understood and implemented by clinicians without running the algorithm online?
- How does RL performance scale with the length of the treatment horizon — the 200-step episodes tested here are longer than typical clinical treatment courses; is performance maintained at clinically relevant timescales?
- Can RL be extended from single-pathogen scenarios to polymicrobial infections or heterogeneous tumor cell populations where multiple species/clones evolve simultaneously?

## Conversion notes

Source PDF filename is WeaverRLDrug.pdf (no year in filename; named after content rather than author-year convention). Cite key Weaver2024 follows first-author convention. Conversion was largely clean; tables in supplementary materials were not fully captured. Key figures reconstructed from captions and surrounding text in methods and results sections.
