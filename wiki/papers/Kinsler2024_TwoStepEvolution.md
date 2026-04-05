---
title: "A high-resolution two-step evolution experiment in yeast reveals a shift from pleiotropic to modular adaptation"
authors: [Kinsler G, Li Y, Sherlock G, Petrov DA]
year: 2024
venue: "PLOS Biology"
doi: "10.1371/journal.pbio.3002848"
arxiv: ""
topics: [fitness-landscapes, genetic-epistasis, distribution-of-fitness-effects, dna-barcoding-lineage-tracking]
lab_paper: false
canonical: false
relevance: high
ingested_by: "jamaltas"
---

## Summary

Kinsler et al. conducted barcoded second-step evolution experiments in *S. cerevisiae* under glucose limitation, building on a prior system in which 85% of first-step adaptive mutations pleiotropically improve both fermentation and respiration performance. They evolved 5 distinct first-step mutant strains (*IRA1-missense*, *IRA1-nonsense*, *CYR1*, *GPB2*, *TOR1*) for ~176 generations, isolated hundreds of second-step adaptive clones, measured performance across all relevant growth phases, and whole-genome-sequenced 324 adaptive mutants. They find that second-step mutations shift dramatically toward modular adaptation — primarily improving respiration performance alone, often at a cost to fermentation — rather than the pleiotropic adaptation characterizing the first step. Whole-genome sequencing reveals a parallel shift in molecular targets, from general signaling-pathway genes (Ras/PKA, TOR/Sch9) to genes involved in TCA cycle function, RTG pathway regulation, and mitochondrial biogenesis.

## Conceptual contribution

The central conceptual argument is that **pleiotropic adaptation is a transient, early-step phenomenon driven by the unique properties of cellular signaling pathways**. Signaling pathways such as Ras/PKA are pre-wired to coordinately control multiple downstream traits; mutations that modulate these pathways can therefore improve many fitness-relevant performances simultaneously — what the authors term "**coherent pleiotropy**." Because these pathways represent a small number of high-leverage genetic targets, they are rapidly exhausted in the first step of adaptation. Once depleted, evolution must engage performance-specific molecular modules (e.g., TCA cycle enzymes for respiration), producing modular rather than pleiotropic adaptation.

This challenges a naive view of pleiotropy as a generic, widespread property of mutations. Instead, adaptive pleiotropy may be a feature of specific regulatory architectures that have evolved to control multiple phenotypes coherently, rather than a general property of mutation per se. The shift from pleiotropic to modular adaptation does not reflect physiological limits or changed selection pressure — it reflects the depletion of a specific class of genetically accessible, coherently pleiotropic targets. The finding has parallels in cancer biology, where early oncogenic mutations (Ras pathway) are characteristically pleiotropic, and in bacteria, where early large-effect mutations often target global regulators (*spoT*, *topA*).

For fitness landscape thinking, this establishes that the accessible region of a multidimensional performance landscape is not fixed: the first adaptive step fills the pleiotropic corridor (Ras/PKA targets that improve the fermentation × respiration combination), and the second step occupies a structurally different region (respiration-specialist corridor). Longer adaptive walks may continue specializing, or may recombine modular improvements into collective pleiotropic gains via multiple mutations.

## Key findings

- 85% of first-step adaptive haploids improve both fermentation and respiration performance (pleiotropic adaptation); only 35% of second-step haploids from the same 2-Day environment do — a statistically significant shift (p < 0.001)
- 98% of second-step Evo2D mutants improve respiration performance; 61% do so at a cost to fermentation — modular adaptation toward respiration specialization dominates
- Adding stationary phase to selection (Evo3D) further suppresses adaptive pleiotropy: only 13% of Evo3D second-step mutants improve both fermentation and respiration; 79% improve stationary phase
- The shift is not due to changed selection pressure (partial correlation of respiration contribution to fitness: r = −0.02, p = 0.74) or physiological limits on fermentation (Evo1D second-step mutations exceed prior fermentation performance maxima of 5.7% per hour, reaching 6.7% per hour)
- Second-step mutations have smaller fitness effects than first-step (diminishing returns): large-benefit mutations ($s \geq 1.0$ per cycle) become rare; mean benefit ~82% per cycle relative to the first-step parental strain
- Molecular targets shift from Ras/PKA and TOR/Sch9 signaling genes to TCA cycle enzymes (*CIT1*, *KGD1*, *MDH1*, *MAE1*, *ALD5*), RTG pathway regulators (*MKS1*, *RTG2*), and mitochondrial biogenesis genes (*PUF3*, *PAB1*, *PAN1*, *PAN2*, *AIM17*)
- Auto-diploidization remains pleiotropically adaptive at the second step, improving both fermentation and respiration across all parental backgrounds
- Rare second-step clones showing adaptive pleiotropy have acquired 3–4 total adaptive mutations (each individually modular but collectively pleiotropic), demonstrating that simultaneous multi-trait improvement remains possible but requires multiple sequential steps after the first
- Second-step Ras/PKA mutations (primarily in the TOR1 background) retain adaptive pleiotropy, confirming that coherent pleiotropy is a property of signaling pathway targets, not a universal property of early-step mutations
- *MKT1* A89G (ancestral reversion) arises recurrently as a high-fitness respiration-only improver; all adaptive mutations at this gene hit the same nucleotide (89A → C, G, or T), consistent with a specific functional defect at that position

## Methods

- Barcoded second-step evolution experiments using 5 first-step mutant strains (*CYR1*, *GPB2*, *TOR1*, *IRA1-missense*, *IRA1-nonsense*) in 2-Day transfer glucose-limited serial batch culture (~176 generations, 22 transfers) and 3-Day transfer condition (~168 generations, 21 transfers)
- Pooled fitness measurement across 1-, 2-, 3-, and 5-Day transfer intervals in barcoded populations using the Levy et al. 2015 system; ancestral strain comprising >90% of the measurement pool to establish the selection environment
- Growth phase performance calculated from fitness differences across transfer lengths: respiration performance per hour = (2-Day fitness − 1-Day fitness) / 24h; fermentation performance inferred from 1-Day fitness; stationary performance = (5-Day − 3-Day) / 48h
- Benomyl ploidy assay on solid medium to distinguish haploid from diploid clones; barcode identification via Metagrid combinatorial multiplexed sequencing
- Whole-genome sequencing (Illumina) of 324 adaptive mutants; genes hit >3 times across all mutants and replicated across parental backgrounds designated putatively causal
- Fit-Mut1 software for DFE inference from barcode frequency time series
- Frequency-dependent fitness effects avoided by using only early time points where ancestor dominates (>80% of population)

## Relationship to existing wiki

This paper uses the [[papers/Levy2015_LineageTracking|Levy2015]] barcoded pooled fitness assay system (see [[topics/dna-barcoding-lineage-tracking/_hub|dna-barcoding-lineage-tracking]]). It builds on Aggeli et al. 2022 (second-step analysis for *CYR1*, *GPB2*, *TOR1*; not yet ingested) and Li et al. 2019 (first-step performance characterization; not yet ingested). The diminishing returns between steps is consistent with the rule of declining adaptability from [[papers/Kryazhimskiy2014_GlobalEpistasis|Kryazhimskiy2014]] and the environment-invariant global epistasis slopes of [[papers/Ardell2024_GlobalEpistasis|Ardell2024]]; this paper extends that picture by mapping DFE changes onto a structural shift in accessible performance space. The concept of pleiotropic vs. modular adaptation is connected to the fitness landscape framework (see [[topics/fitness-landscapes/_hub|fitness-landscapes]]) and to epistatic constraints on adaptive walks (see [[topics/genetic-epistasis/_hub|genetic-epistasis]]). The DFE shift between steps connects to [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]].

## Open questions raised

- Does coherent pleiotropy of signaling pathways generalize to antibiotic resistance contexts — do early resistance mutations in global regulators (MarR, RpoB, topoisomerases) provide coherently pleiotropic cross-drug fitness gains that become depleted, forcing later adaptation to become drug-specific?
- What determines whether an adaptive walk, after depleting pleiotropic first-step targets, proceeds via specialization (respiration only) vs. stepwise generalism (sequential modular improvements that collectively restore pleiotropy)?
- Can the shift from pleiotropic to modular adaptation be predicted quantitatively from knowledge of signaling network topology — e.g., from the number of downstream traits controlled by a given pathway and the number of accessible loss-of-function sites?
- At what adaptive step do auto-diploidization's pleiotropic benefits deplete, and does diploidization rate decline as epistatic background makes it less beneficial?
- Is the "coherent pleiotropy" concept formalized anywhere as a theoretical epistasis model, and does it make predictions about target size scaling with step number?

## Key figures

*Figure 1*: Theoretical illustration of the two possible outcomes of a two-step adaptive walk: either continued pleiotropic adaptation (panel B) or a shift to modular adaptation (panel C). Results support panel C.

*Figure 2*: Fitness effect distributions (DFE) for second-step adaptive mutants relative to their first-step parental strains, showing diminishing returns and classification by ploidy. Mean second-step benefit ~82% per cycle above parental.

*Figure 3*: Fermentation vs. respiration performance scatter plots for first- and second-step mutants, separated by parental background. First-step mutations cluster in the upper-right quadrant (both improved); second-step mutations cluster in the upper-left (respiration only). 85% → 35% pleiotropic fraction shift shown clearly.

*Figure 5*: Heatmap of putative adaptive mutations by gene, parental strain, and evolution condition. Shows molecular target shift from signaling genes (first step) to TCA cycle, RTG, and mitochondrial biogenesis genes (second step). *KSP1* mutations particularly prevalent in *IRA1-nonsense* backgrounds.

*Figure 6*: Performance-space trajectories colored by mutation category. TCA/RTG/mitochondrial mutants (green/brown/orange) cluster in the respiration-improvement/fermentation-cost quadrant; rare Ras/PKA second-step mutants (blue) remain in the pleiotropic quadrant. Multi-mutation clones (red arrows) achieve adaptive pleiotropy via stepwise modular gains.
