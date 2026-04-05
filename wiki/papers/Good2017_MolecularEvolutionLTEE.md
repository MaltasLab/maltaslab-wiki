---
title: "The dynamics of molecular evolution over 60,000 generations"
authors: [Good BH, McDonald MJ, Barrick JE, Lenski RE, Desai MM]
year: 2017
venue: "Nature"
doi: "10.1038/nature24287"
arxiv: ""
topics: [distribution-of-fitness-effects, genetic-epistasis, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Good et al. (2017) construct a time-resolved "molecular fossil record" by performing whole-genome metagenomic sequencing at 500-generation intervals across 60,000 generations of all 12 LTEE *E. coli* populations (1,431 samples total, ~50× median coverage). Direct observation of allele frequency trajectories throughout the experiment reveals four major findings: adaptation is dominated by clonal interference and genetic draft throughout, with fixation probability scaling as the quasi-neutral limit $p_\text{fix}(f) \sim f$; 9/12 populations spontaneously develop long-lived genetic coexistence via negative frequency-dependent selection, with within-clade evolution continuing as inter-clade fixations cease; transit times remain broad (selection coefficients ~1%) even at 50,000 generations despite declining fitness gains; and the targets of selection change over time through a mixture of coupon-collecting (early depletion of strongly beneficial targets) and historical contingency (~16 "missed opportunities" from potentiation-dependent adaptive paths).

## Conceptual contribution

Three connected conceptual advances, each with implications beyond the LTEE.

**Quasi-neutral adaptation as the rule in long-term evolution.** The finding that fixation probability scales as $p_\text{fix}(f) \sim f$ throughout 60,000 generations — a signature of strong clonal interference — establishes that the "periodic selection" model (discrete sweeps of single driver mutations) is wrong as a general description of long-term adaptation. Even strongly selected mutations compete with other beneficial mutations and are frequently eliminated by clonal interference rather than by genetic drift alone. The evolutionary process is irreducibly stochastic, and understanding outcomes requires models that account for competition between simultaneously segregating beneficial variants, not just drift barriers.

**Eco-evolutionary feedbacks restructure long-term adaptive landscapes.** 9/12 LTEE populations spontaneously develop genetic coexistence maintained by negative frequency-dependent selection. This challenges the "constant environment" assumption: even without any change in the external environment, ecological diversification arises within ~10,000 generations and fundamentally alters the selective landscape experienced by each subpopulation. Each clade's adaptive trajectory is shaped by the other's frequency; within-clade evolution continues at steady rates while population-wide fixation events cease for thousands of generations. The effective fitness landscape is not the ancestral landscape but a dynamically restructuring surface shaped jointly by mutations already fixed and ecological interactions that have emerged.

**Historical contingency progressively restructures the accessible landscape.** Direct evidence that earlier mutations open or close later adaptive paths — at scale, across many genes and 12 replicate populations — establishes potentiation as a general mechanism of evolutionary contingency rather than a curiosity confined to rare innovations. The "missed opportunities" analysis provides statistical evidence for this contingency without requiring identification of specific potentiating mutations. Together with the coupon-collecting depletion of early targets, this shows the accessible adaptive landscape is continuously restructured by evolution itself: earlier gains change the set of available later gains. The fitness landscape at generation 50,000 is not the same as at generation 0.

## Key findings

- Fixation probability scales as $p_\text{fix}(f) \sim f$ (quasi-neutral limit) throughout 60,000 generations, even when restricted to mutations arising after generation 20,000 — adaptation is never mutation-limited
- Selection coefficients remain broad throughout: transit times show a wide distribution at all timepoints, with some mutations at 50,000 generations fixing nearly as rapidly as those in the first 5,000 (selection ~1%)
- 9/12 LTEE populations develop coexisting genetic clades (>10,000 generations of coexistence); 6/12 maintain coexistence through generation 60,000; clade frequencies shift ≥10-fold during coexistence periods
- Fixations accumulate within each clade at steady rates even when population-wide fixation events have ceased — within-clade evolution continues in parallel with clade coexistence
- Rate of molecular evolution in nonmutators declines modestly from ~20 mutations per 10,000 generations early to ~10 per 10,000 late, while fitness gains decline more steeply
- dN/dS > 1 in detected mutations of nonmutator populations, confirming pervasive positive selection; dN/dS ≲ 1 in mutators (dominated by passenger mutations hitchhiking with elevated mutation rate)
- Gene multiplicity (parallelism) positively correlated with conditional fixation probability in nonmutators (p~0.001) — parallelism is driven by selection, not mutation rate alone
- Temporal bias in gene mutation appearance: some genes (e.g., *hslU*) mutated preferentially early; others (e.g., *atoS*) preferentially late; globally significant non-random timing (p<0.001)
- ~16 "missed opportunities" (populations expected but failing to acquire mutations in target genes due to lack of potentiating mutations) — statistically significant (p~0.003); pattern consistent with increasing historical contingency over time
- Six populations evolved mutator phenotypes causing a sudden acceleration of molecular evolution; some subsequently evolved antimutator alleles

## Methods

- Whole-genome metagenomic sequencing of 1,431 mixed-population samples at 500-generation intervals; median ~50× coverage; all 12 LTEE *E. coli* K-12 (REL606/REL607) populations
- Mutation identification pipeline leveraging temporal correlations to distinguish true trajectories from sequencing errors; identifies mutations reaching ~10% frequency in ≥2 timepoints
- Hidden Markov Model (HMM) for estimating fixation times from allele frequency trajectories; extended to clade-aware HMM assigning mutations to basal, major, or minor clades and inferring clade frequencies
- Total derived allele frequency $M_p(t) = \sum_m f_{p,m}(t)$: approximates expected number of mutations per individual; tracks rate of molecular evolution
- Conditional fixation probability estimation as a function of within-clade frequency, using sliding frequency windows; compared to quasi-neutral and hitchhiking null models
- Effective gene multiplicity $m_i$ = observed nonsynonymous changes / gene length (normalized by null expectation); measures parallelism beyond chance
- Permutation tests for temporal bias in gene mutation appearance times; "missed opportunities" analysis via null model permutation of appearance times across target genes

## Relationship to existing wiki

- **Companion to [[papers/Couce2024_ChangingFitnessEffects|Couce2024]]:** both use the LTEE to study long-term evolutionary dynamics; Good2017 reveals the population-level dynamics (clonal interference, eco-evolutionary coexistence, historical contingency) while Couce2024 reveals DFE dynamics (what mutations are available and how they change); together they provide complementary views — the dynamics of who wins when, and the dynamics of what mutations are available
- **Connects to [[wiki/topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]]:** the quasi-neutral limit shows that the effective DFE for beneficial mutations remains broad throughout 60K generations; the declining rate of molecular evolution tracks (but exceeds) the declining fitness gains, suggesting ongoing beneficial mutation supply consistent with Couce2024's DFE renewal findings
- **Connects to [[wiki/topics/genetic-epistasis/_hub|genetic-epistasis]]:** direct evidence for changing targets of selection via coupon-collecting and historical contingency; potentiation creates missed opportunities; eco-evolutionary feedbacks add an ecological epistasis layer
- **Connects to [[wiki/topics/fitness-landscapes/_hub|fitness-landscapes]]:** eco-evolutionary coexistence in 9/12 populations shows the effective fitness landscape acquires a frequency-dependent ecological dimension that is not present in the ancestral landscape; the landscape is dynamically restructured by both genetic and ecological processes

## Open questions raised

- What ecological mechanisms maintain clade coexistence in the 8 non-Ara–2 populations? Do they all exploit glucose/acetate cross-feeding, or has ecological diversification occurred via independent mechanisms?
- What are the specific potentiating mutations behind the ~16 "missed opportunities"? Can they be identified from the existing sequence data by looking for mutations shared in populations that acquired the contingent gene but absent in those that did not?
- Does the quasi-neutral limit (clonal interference dominated) persist indefinitely, or is there a transition to a mutation-limited regime at longer timescales (>100,000 gen) as the beneficial tail contracts to near zero?
- How does the eco-evolutionary coexistence alter the long-term fitness trajectory — do populations with clade coexistence ultimately reach higher or lower fitness than those without?
- Does the mixture of coupon-collecting and historical contingency apply to antibiotic resistance evolution, where target genes are mechanistically constrained — or does the constraint produce clearer coupon-collecting with less potentiation?

## Key figures

**Figure 1** (allele frequency trajectories): All detected mutation trajectories across 12 LTEE populations — the "molecular fossil record." Shows wide variation in dynamics: coexisting clades in some populations, cohort sweeps, mutations at long-lived intermediate frequencies, and frequent extinctions due to clonal interference.

**Figure 2** (rates of molecular evolution): (a) Fitness over time; (b) total derived allele frequency $M_p(t)$ — rapid ongoing accumulation with mutator jumps; (c) declining rate in nonmutators from ~20 to ~10 mutations/10,000 gen; (d) fixed mutations vs. $M_p(t)$ — "missing" fixations in coexistence populations.

**Figure 3** (long-term coexistence): (a) Clade HMM output for Ara–6 showing major/minor/basal clade assignment; (b) clade frequencies for all 12 populations — 9/12 show >10,000-generation coexistence.

**Figure 4** (within-clade dynamics): (a) Within-clade fixations accumulating at steady pace; (b) transit time distribution (broad throughout); (c,d) fixation probability as a function of frequency — consistent with quasi-neutral limit $p_\text{fix}(f) \sim f$.

**Figure 5** (parallelism): Mutation type distributions, dN/dS, conditional fixation probability vs. gene multiplicity.

**Figure 6** (epistasis and contingency): Gene appearance time distributions; dispersion analysis (under-dispersion indicating contingency; over-dispersion indicating coupon-collecting); temporal shift toward contingency at later timepoints.
