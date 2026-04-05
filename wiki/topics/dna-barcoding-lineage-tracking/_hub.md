# DNA Barcoding and Lineage Tracking

## What this topic is about

DNA barcoding and lineage tracking refer to a suite of experimental methods that use short, unique DNA sequences — barcodes — to tag individual cells or lineages at the start of an experiment. As the population evolves, the relative abundance of barcodes can be tracked over time by sequencing, giving a dynamic picture of which lineages are expanding, contracting, or going extinct. This transforms bulk population measurements into lineage-resolved trajectories, enabling direct observation of evolutionary dynamics at a resolution that was previously inaccessible. Instead of inferring population structure from endpoint genotyping, researchers can watch in real time as beneficial mutations arise and sweep through the population, as clonal interference occurs between competing lineages, and as neutral drift shapes the distribution of lineage sizes.

The foundational demonstration of what high-resolution barcoding can reveal comes from [[papers/Levy2015_LineageTracking|Levy2015]], which constructed a ~500,000-barcode system in *Saccharomyces cerevisiae* using Cre-loxP-mediated site-specific integration of a random 20-nt barcode library into a genomic "landing pad." Unique molecular identifiers (UMIs) added during PCR amplification allowed detection and removal of PCR duplicates, achieving ~$10^{-5}$ frequency resolution — five orders of magnitude better than whole-genome sequencing. Across ~168 generations of serial batch evolution, ~25,000 adaptive lineages were identified in two replicate populations, and for each lineage, a fitness effect $s$ and establishment time $\tau$ were inferred via Bayesian trajectory analysis. The central finding is that the beneficial mutation rate spectrum $\mu(s)$ is not exponential as extreme value theory predicts, but structured: most beneficial mutations cluster at moderate effects (2–5%) with a ~50× higher rate than larger-effect mutations, while above 5% the distribution is approximately flat with slight peaks at 7–8% and 10–11% corresponding to single-gene loss-of-function target sizes. This structure directly governs evolutionary predictability: the abundant moderate-effect class makes early adaptation (before ~72 generations) nearly deterministic and reproduced across replicates, while the rare high-effect class makes late adaptation stochastic and replicates diverge. The study also established that ~6,000 beneficial mutations shared between replicates arise from the common growth period before selection begins — demonstrating that preexisting standing variation is a predictable, quantifiable feature of large populations, not an experimental artifact.

For this lab, lineage tracking methods are important because they allow direct measurement of frequency-dependent dynamics and the competitive fitness of sub-populations. Barcoded populations can be used to ask whether collateral effects are consistent across independently evolved lineages, to track the dynamics of resistance evolution under combination therapy, and to test theoretical predictions about fixation times and clonal interference. The framework developed in Levy2015 for measuring mutation supply and standing variation is directly relevant to the lab's interest in preexisting resistance: the mathematics of how preexisting mutations accumulate before drug selection (mutation rate × population size × time) is the same whether the selective agent is glucose limitation or an antibiotic.

## Key papers

- Levy2015 constructed a 500,000-barcode Cre-loxP lineage tracking system in *S. cerevisiae* achieving ~$10^{-5}$ frequency resolution — five orders of magnitude better than whole-genome sequencing — enabling simultaneous monitoring of ~25,000 adaptive lineages across 168 generations of serial batch evolution [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 demonstrated that the beneficial mutation rate spectrum $\mu(s)$ is non-exponential and non-monotonic: mutations cluster at moderate fitness effects (2% < $s$ < 5%) at a rate ~50× higher than larger-effect mutations, with an approximately flat tail at $s > 5$\% punctuated by peaks at 7–8% and 10–11% corresponding to single-gene loss-of-function target sizes (~300 bp each) — directly contradicting extreme value theory predictions of an exponential beneficial DFE [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 showed that the structured DFE produces two-phase evolutionary dynamics: early adaptation ($t < 72$ generations) is highly reproducible across replicates because it is dominated by ~20,000 moderate-effect mutations in the abundant 2–5% class, while late adaptation ($t > 80$ generations) diverges stochastically between replicates as ~100 rare high-effect mutations ($s > 10\%$) establish at different times [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 quantified that ~6,000 preexisting beneficial mutations were shared between two replicate populations, arising from ~48 generations of common growth before barcoding — establishing that standing variation is a predictable, quantifiable feature of large populations (rate ≈ $N\mu$) rather than an experimental artifact, with direct implications for preexisting antibiotic resistance in clinical contexts [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 demonstrated that a fundamental lower fitness threshold for establishment emerges from clonal interference dynamics: mutations with $s < 2\%$ are extremely unlikely to fix because the rising population mean fitness outpaces their advantage before they can grow exponentially; this threshold arises from the interplay between population size, mutation supply, and the background rate of fitness increase [[papers/Levy2015_LineageTracking|Levy2015]]

## Key concepts and methods

- **Cre-loxP landing pad integration:** a genomic locus engineered with partially crippled loxP* sites that completes a selectable marker (URA3) only upon site-specific integration of the barcode-containing plasmid; ensures single-copy, genome-integrated barcodes in a defined location; used in [[papers/Levy2015_LineageTracking|Levy2015]]
- **Unique molecular identifiers (UMIs):** short random sequences inserted during early PCR cycles to tag individual template molecules; PCR duplicates carrying identical UMIs are detected and collapsed, eliminating amplification bias from barcode frequency estimates; used in [[papers/Levy2015_LineageTracking|Levy2015]]
- **Bayesian fitness inference:** probabilistic framework that evaluates, for each lineage's frequency trajectory, the posterior probability of a beneficial mutation with fitness effect $s$ and establishment time $\tau$; uses a noise model derived from observed neutral lineage distributions; produces estimates with typical uncertainty $\Delta s \pm 0.5\%$ and $\Delta \tau \pm 10$ generations; used in [[papers/Levy2015_LineageTracking|Levy2015]]
- **Beneficial mutation rate spectrum $\mu(s)$:** the rate density of beneficial mutations as a function of fitness effect $s$; estimated from single-replicate adaptive lineages (to exclude preexisting variants) by dividing total cell number in each $s$ class by population size and time; revealed to be non-exponential in [[papers/Levy2015_LineageTracking|Levy2015]]
- **Clonal interference:** competition among simultaneously expanding beneficial lineages; all lineages experience the same rising population mean fitness, which attenuates their growth; creates a lower threshold for establishment and produces the two-phase dynamics observed in [[papers/Levy2015_LineageTracking|Levy2015]]

## Open questions

- Does the non-exponential, bimodal beneficial mutation rate spectrum observed in glucose-limited *S. cerevisiae* generalize to antibiotic resistance mutations in *E. faecalis* — does antibiotic-specific selection produce a qualitatively different DFE structure? [[papers/Levy2015_LineageTracking|Levy2015]]
- Can the barcode lineage tracking approach be adapted to bacterial systems (e.g., *E. faecalis*) to directly measure clonal interference and fitness effects during resistance evolution, rather than inferring them from IC50 changes? [[papers/Levy2015_LineageTracking|Levy2015]]
- What barcode library sizes are needed to achieve sufficient resolution for measuring clonal interference in bacterial populations, which have faster mutation rates and shorter generation times than yeast?
- How do sequencing depth and barcode dropout affect the reliability of lineage frequency estimates, particularly for low-frequency adaptive lineages near the $10^{-5}$ detection threshold?
- The paper identifies ~6,000 preexisting mutations from common growth; in clinical settings, how do we estimate standing variation of resistant mutants that accumulates before any drug selection? [[papers/Levy2015_LineageTracking|Levy2015]]
- What determines the transition time from deterministic (moderate-effect class dominated) to stochastic (high-effect class dominated) evolutionary dynamics — is it analytically predictable from the rate spectrum and population size? [[papers/Levy2015_LineageTracking|Levy2015]]
- Could weaker-effect mutations ($s < 2\%$) below the establishment threshold become relevant under slower fitness background increases (e.g., fixed sub-inhibitory drug concentrations rather than serial batch) where the clonal interference threshold shifts? [[papers/Levy2015_LineageTracking|Levy2015]]
- Can barcoding approaches be adapted to track resistance evolution in clinical samples?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Barcode library design and insertion | developing | Levy2015 Cre-loxP landing pad; UMI implementation; ~500,000 variant libraries |
| Sequencing and frequency estimation | developing | Levy2015 two-step PCR + UMI deduplication; ~10^-5 resolution; noise model from neutral lineages |
| Bayesian fitness inference | developing | Levy2015 posterior over (s, τ); validated against pairwise competition (R²=0.81) and simulation (R²=0.88, 0.93) |
| Clonal interference and adaptive dynamics | developing | Levy2015 establishes two-phase dynamics; establishment threshold; massive clonal interference in large populations |
| Beneficial mutation rate spectrum | developing | Levy2015 non-exponential μ(s); challenges extreme value theory; application to other organisms needed |
| Preexisting variation and standing selection | developing | Levy2015 ~6,000 shared mutations; connects to clinical preexisting resistance |
| Applications to experimental evolution | developing | Levy2015 yeast serial batch; extension to bacteria and clinical contexts needed |
| Clinical and in vivo applications | thin | No papers yet; conceptual connection to preexisting resistance in Maltas2024 |

## Cross-topic connections

- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — barcoding enables direct measurement of frequency-dependent fitness; clonal interference is a form of frequency-dependent competition
- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]] — lineage tracking gives the most direct empirical access to the beneficial DFE; Levy2015's non-exponential μ(s) is the central finding for this connection
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — SSWM regime breaks down when $N\mu > 1$; Levy2015 demonstrates the large-$N\mu$ regime directly, where clonal interference dominates
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — barcoded populations can track lineage dynamics under cycling protocols; the preexisting variation framework connects to resistance evolution before drug selection begins
