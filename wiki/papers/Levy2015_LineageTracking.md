---
title: "Quantitative evolutionary dynamics using high-resolution lineage tracking"
authors: [Levy SF, Blundell JR, Venkataram S, Petrov DA, Fisher DS, Sherlock G]
year: 2015
venue: "Nature"
doi: "10.1038/nature14279"
arxiv: ""
topics: [dna-barcoding-lineage-tracking, distribution-of-fitness-effects]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Levy et al. construct a high-resolution barcode lineage tracking system in *Saccharomyces cerevisiae* capable of monitoring ~500,000 independent lineages simultaneously. Using Cre-loxP-mediated site-specific integration of a random 20-nt barcode library, they barcode a clonal yeast ancestor and evolve two replicate populations (~10^8 cells) for ~168 generations in serial batch culture on glucose-limited minimal medium. By sequencing barcode frequencies at multiple time points, they identify ~25,000 lineages that acquired beneficial mutations, inferring each mutation's fitness effect $s$ and establishment time $\tau$ using a Bayesian trajectory analysis. The central findings are: (1) the spectrum of beneficial mutation rates $\mu(s)$ is non-exponential and non-monotonic — contradicting extreme value theory predictions; (2) early adaptation ($t < 72$ gen) is strikingly reproducible across replicates, driven by many moderate-effect mutations (2% < $s$ < 5%), while late adaptation is dominated by rare high-effect mutations ($s > 10$%) whose stochastic establishment times cause inter-replicate divergence; (3) massive clonal interference underlies the entire trajectory.

## Conceptual contribution

The paper's primary conceptual contribution is demonstrating that the spectrum of beneficial mutations is **structured**, not randomly distributed, and that its structure directly governs the determinism vs. stochasticity of evolutionary dynamics.

Prior theoretical work, grounded in extreme value theory, predicted that the distribution of beneficial fitness effects should be approximately exponential — many small-effect mutations, exponentially fewer as fitness effect increases. Levy2015 shows this is wrong, at least in this system: most beneficial mutations cluster in a narrow moderate-effect class (2–5%), with a relatively flat distribution above 5% punctuated by peaks at 7–8% and 10–11% that correspond to target sizes of single loss-of-function genes. This bimodal structure is not merely a statistical curiosity — it determines the two-phase dynamics of adaptation: the high-rate moderate-effect class makes early adaptation nearly deterministic (the same mutations arise and establish in both replicates), while the low-rate high-effect class stochastically governs late adaptation and produces replicate divergence.

The second major contribution is establishing that **preexisting variation is a predictable, quantifiable feature** of large populations. ~6,000 beneficial mutations were shared between the two replicates because they arose during the ~48 generations of common growth before barcoding. These are not experimental artifacts but a general expectation for large clonal populations: mutation rate × population size × time generates substantial standing variation even before any selection begins. This connects directly to the lab's interest in preexisting resistance — the framework for measuring and predicting preexisting variation is the same whether the selective agent is glucose limitation or an antibiotic.

A third contribution is methodological: the barcode system achieves ~10^-5 frequency resolution, five orders of magnitude better than whole-genome sequencing. This enables detection of adaptive lineages that never exceed a population frequency of ~10^-5 — lineages that are invisible to any other current method but may nonetheless shape population dynamics through clonal interference.

## Key findings

- The beneficial mutation rate spectrum $\mu(s)$ in *S. cerevisiae* evolving in glucose-limited serial batch culture is not exponential: most mutations cluster at 2% < $s$ < 5% with mutation rate ~50× higher than larger fitness effects; above $s = 5\%$, the distribution is relatively flat with slight peaks at 7–8% and 10–11% corresponding to genomic target sizes consistent with single-gene loss-of-function (~300 bp)
- Early adaptation ($t < 72$ generations) is strikingly reproducible across replicates E1 and E2: mean fitness trajectories are nearly identical, driven by ~20,000 small-effect mutations in E1 and ~11,000 in E2
- Late adaptation ($t > 80$ generations) diverges between replicates as ~100 large-effect mutations ($s > 10$%) stochastically establish at different times; because these mutations are rare ($\sim$5,000 in E1, $\sim$3,000 in E2), their establishment times vary stochastically
- ~6,000 beneficial mutations established in both replicates from the common growth period ($\tau < 0$) — "preexisting" mutations that are a general expectation for large populations, not experimental artifacts
- Clonal interference is massive: ~25,000 beneficial mutations compete simultaneously throughout the trajectory; adaptive lineages' growth attenuates as population mean fitness increases
- A fundamental lower threshold for establishable fitness effects emerges from the dynamics: mutations with $s < 2$\% are extremely unlikely to establish because the mean population fitness surpasses their advantage before they can grow exponentially
- Bayesian fitness inference is validated against pairwise competition ($R^2 = 0.81$, $n = 33$ clones) and simulation with known ground truth ($R^2 = 0.88$ for $s$, $R^2 = 0.93$ for $\tau$); typical uncertainty is $\Delta s \pm 0.5\%$ and $\Delta \tau \pm 10$ generations
- Five orders of magnitude better frequency resolution than whole-genome sequencing: where this study detects ~25,000 adaptive lineages within 100 generations, population sequencing at 1% frequency threshold would have detected only ~15

## Methods

- **Barcode integration:** random 20-nt barcodes cloned into a plasmid library (~500,000 variants); inserted into a "landing pad" locus in the genome via Cre-loxP site-specific recombination (partially crippled loxP* sites; integration completes a URA3 selectable marker interrupted by an artificial intron containing the barcode); ~48 generations of growth from a single ancestor to produce the barcoded library
- **Evolution:** two replicate serial batch cultures (E1, E2) for ~168 generations; glucose-limited minimal medium; 1:250 dilution every ~8 generations; bottleneck size $N_\text{bot} \approx 7 \times 10^7$; populations share ~48 generations of common growth before splitting
- **Sequencing:** genomic DNA extracted before each bottleneck; lineage barcodes amplified by two-step PCR; unique molecular identifiers (UMIs) inserted in early PCR cycles to tag individual template molecules; PCR duplicates detected and excluded; amplicons sequenced; relative barcode frequencies computed
- **Inference:** for each lineage, Bayesian framework evaluates probability that trajectory is explained by a beneficial mutation with fitness effect $s$ and establishment time $\tau$ under a uniform prior in $\tau$ and exponential prior in $s$; lineage classified as adaptive if this probability exceeds the null probability; peak of posterior is best estimate of $(s, \tau)$; noise model characterizing drift and sampling errors derived from observed neutral lineage distribution
- **Beneficial mutation rate spectrum:** restricted to lineages adaptive in only one replicate (unlikely to be preexisting); total cell number with each $s$ yields mutation rate density $\mu(s)$; spontaneous mutation rate estimated by fluctuation test at $\approx 4 \times 10^{-10}$ per nucleotide per generation
- **Validation:** 33 clones from generation 88 picked and subjected to pairwise competition assays in the fluorescence-based fitness assay; barcode-inferred $s$ vs. competition-measured $s$ compared ($R^2 = 0.81$); simulation with known $(s, \tau)$ values compared to inferred values ($R^2 = 0.88$ and $0.93$)

## Relationship to existing wiki

This paper provides the foundational technical and conceptual framework for the [[topics/dna-barcoding-lineage-tracking/_hub|dna-barcoding-lineage-tracking]] topic. The lab's interest in *S. cerevisiae* as an experimental system is grounded in this approach — barcoded populations in yeast can directly measure fitness effects, clonal interference dynamics, and the beneficial mutation rate spectrum with resolution inaccessible by other means.

The finding that the beneficial mutation rate spectrum is non-exponential directly informs the [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] topic. Specifically, it challenges the extreme value theory baseline that the DFE review outline lists as "thin" coverage, and establishes that the DFE can be non-monotonic and bimodally structured in a way that creates distinct evolutionary phases.

The concept of preexisting beneficial mutations (~6,000 shared between replicates) connects to [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], which frames preexisting *resistance* as determined by both the mutation supply rate and the ecological interaction between resistant and sensitive cells. Levy2015 provides the tools to measure mutation supply directly.

The clonal interference dynamics revealed here — where many simultaneously competing lineages interact primarily via competition against the mean fitness — is the large-population analogue of the clonal interference that shapes resistance evolution in dense bacterial populations, connecting to [[topics/fitness-landscapes/_hub|fitness-landscapes]] (SSWM breaks down when $N\mu > 1$) and [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] (the DFE spectrum determines which fitness classes dominate at each time).

## Open questions raised

- Does the non-exponential, bimodal beneficial mutation rate spectrum generalize beyond glucose-limited *S. cerevisiae* — in particular, does the DFE for antibiotic resistance mutations in *E. faecalis* share this structure, or does antibiotic-specific selection produce a qualitatively different spectrum?
- Can the barcode lineage tracking approach be adapted to bacterial systems (e.g., *E. faecalis*) to directly measure clonal interference and fitness effects during resistance evolution, rather than inferring them indirectly from IC50 changes?
- What determines the transition time from deterministic (moderate-effect class dominated) to stochastic (high-effect class dominated) evolutionary dynamics — is it predictable from the rate spectrum and population size alone, or does it depend on ecological interactions between lineages?
- The ~6,000 preexisting mutations shared between replicates arise from the common growth period; in clinical settings, how do we estimate the standing variation of resistant mutants that arises before any drug selection is applied?
- The paper finds that weaker-effect mutations (s < 2%) are too slow to establish before being outcompeted — but could these mutations become relevant under slower-changing environments (continuous selection at fixed sub-inhibitory concentrations) where the fitness threshold for establishment shifts?

## Conversion notes

Conversion was clean. Source PDF filename matches cite key (Levy2015.pdf). Figure captions were partially extracted; key figures described from context. The methods section is in supplementary material not included in the main PDF, so the methods description here is drawn from the main text.
