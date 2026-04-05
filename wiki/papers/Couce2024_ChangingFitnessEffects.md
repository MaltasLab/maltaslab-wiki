---
title: "Changing fitness effects of mutations through long-term bacterial evolution"
authors: [Couce A, Limdi A, Magnan M, Owen SV, Herren CM, Lenski RE, Tenaillon O, Baym M]
year: 2024
venue: "Science"
doi: "10.1126/science.add1417"
arxiv: ""
topics: [distribution-of-fitness-effects, genetic-epistasis, fitness-landscapes]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude Sonnet 4.6"
---

## Summary

Couce, Limdi et al. 2024 use *E. coli* lineages from the Long-Term Evolution Experiment (LTEE) — 12 populations evolved for 50,000 generations in glucose-limited minimal medium — to characterize how the distribution of fitness effects (DFE) of new mutations changes over the course of long-term adaptation. Genome-wide transposon insertion libraries are constructed in ancestral and evolved strains, and fitness effects are quantified in bulk competitions by tracking allele frequencies via sequencing. The paper's central finding is that the DFE is simultaneously **macroscopically stable** (deleterious tail and mean unchanged) and **microscopically dynamic** (beneficial tail rapidly contracts; fitness effects of specific mutations and gene essentiality frequently change, often in parallel across independent lineages). The beneficial tail transitions from a non-exponential form in the ancestor to an approximately exponential distribution in evolved clones, as predicted by Extreme Value Theory for well-adapted populations. Sign epistasis is so pervasive among beneficial mutations that >90% of ancestral beneficial mutations are neutral or deleterious just 2000 generations later. Despite this, early adaptive evolution is predictable because loss-of-function mutations dominate and mutational target size (gene length × opportunity for inactivation) outperforms fitness effects as a predictor of which genes contribute to adaptation.

## Conceptual contribution

Couce2024 provides the most temporally resolved empirical portrait of DFE evolution to date, resolving a long-standing controversy: prior studies gave inconsistent results about whether the DFE changes during adaptation, partly because the degree of adaptation of the test populations was unknown. The paper delivers two independent conceptual advances.

The first is a **two-level resolution of DFE dynamics**: the statistical architecture of the DFE (macroscopic form: mean, deleterious tail, robustness) is conserved over 50,000 generations — mutational robustness as measured by the overall DFE mean is not under directional selection. But the microscopic content of the DFE (which specific mutations are beneficial, gene essentiality) is in constant flux. Sign epistasis is so pervasive among beneficial mutations that the accessible beneficial landscape is effectively completely renewed on the timescale of thousands of generations. This makes the DFE simultaneously tractable (statistical architecture stable) and unpredictable at the local level.

The second is a **reconciliation of EVT** with empirical data: the theory predicts that well-adapted populations should have exponentially distributed beneficial tails, but many studies found non-exponential forms. Couce2024 shows that both are correct at different points in evolutionary time — non-exponential forms reflect early-stage adaptation to a new environment (the ancestral *E. coli* DFE), while exponential forms emerge as populations approach a fitness peak (the 15K-generation DFE). This provides the temporal framework missing from all prior comparisons.

A third contribution is the **coupon-collecting model** of early adaptation: the best predictor of which genes accumulate beneficial mutations in the LTEE is not the fitness effect of mutations in those genes (r = 0.26) but their mutational target size — the gene's length and the probability of generating a beneficial loss-of-function allele by chance (r = 0.71). Early adaptive evolution is therefore less about selecting the best mutations and more about collecting enough different loss-of-function alleles across a set of functionally important targets, with redundancy within targets causing parallelism and masking the role of effect size.

Taken together, Couce2024 establishes that the DFE is simultaneously a **stable statistical object** (predictable in its high-level form) and a **dynamically renewed local landscape** (unpredictable in its specific content). This is the bacterial long-term complement to the Ardell2024 finding that global epistasis slopes are environment-invariant — extending the picture from "DFE shape is environment-invariant" to "DFE shape is also largely time-invariant, but DFE content is not."

## Key findings

- **DFE macroscopic stability**: no systematic change in deleterious tail or mean DFE over 50,000 generations across 10 LTEE populations; fraction of deleterious mutations constant (~20.5% ancestor vs. ~20-21% evolved); mutational robustness not under directional selection
- **Beneficial tail contracts rapidly**: fraction of beneficial mutations (s > 0.03) falls from 6.8% in ancestor to 4.3% (2K generations) and 3.2% (15K generations) in population Ara+2; similar patterns in Ara−1
- **Beneficial tail becomes exponential**: exponential distribution fits evolved backgrounds (P = 0.571 and 0.852 for 2K and 15K) but is decisively rejected for the ancestor (P < 0.001); ancestor fits Weibull/gamma better — consistent with early-adaptation non-exponential forms seen in other systems
- **Sign epistasis pervasive in beneficial tail**: only 5.9% of ancestral beneficial mutations still beneficial at 2000 generations; 76.9% became neutral, 17.2% became deleterious; pattern holds in reverse and between 2K → 15K comparisons
- **Regression to the mean**: DFE of ancestrally-beneficial mutations in evolved backgrounds is statistically indistinguishable from a random draw from the parent DFE — no residual positive tendency; complete landscape renewal
- **Gene essentiality is fluid**: ~17% of ancestral essential genes changed essentiality in at least one 50K-generation lineage; both nonessential→essential (~77 genes) and essential→nonessential (~97 genes) transitions; nonessential→essential was more common excluding Ara−6 (which had large duplications)
- **Parallel changes in fitness effects and essentiality**: 3-6% of mutations per evolved strain had significantly changed effects; 13% changed in at least one lineage; both types of transitions occurred in parallel more than expected by chance (shuffling null)
- **Target size vs. effect size**: r = 0.26 for correlation between ancestral fitness effects and mutation prevalence in metagenomic LTEE data; r = 0.71 for target size; best linear model includes target size as the dominant explanatory variable
- **Ancestral DFE predictive power decays in ~15,000 generations** in evolving lineages (or through 50K in non-mutator lineages); early adaptation is predictable from the ancestral DFE; late adaptation increasingly unpredictable
- **Loss-of-function dominance**: >50% of early adaptive mutations in LTEE are putative loss-of-function (nonsense, frameshift, deletions, insertions); declining to ~25% at late timepoints; coupon-collecting model explains high parallelism early

## Methods

- **System**: *E. coli* K-12 (REL606, REL607 LTEE ancestors) and evolved clones from 12 populations at 50,000 generations; for early-adaptation analysis, clones from Ara+2 and Ara−1 at 2,000 and 15,000 generations
- **UMI-TnSeq**: mariner transposon insertion libraries (pSC189 plasmid, kanamycin resistance); tagmentation-based library prep; unique molecular identifiers (UMIs) to control PCR bias; used for ancestor + all 50K-generation clones; insertions cover >78% of genes
- **INSeq**: MmeI restriction site-based approach; each locus divided into 5 sub-genic segments of equal length; used for ancestor + 2K + 15K clones from two populations; enables detection of polar effects and regulatory intergenic mutations
- **Fitness estimation**: bulk competitions for 4-8 days in DM25 (LTEE medium); allele frequencies tracked by high-throughput sequencing; fitness effects (selection coefficients) by linear regression of ln(frequency) vs. time; neutral loci insertions as internal reference
- **Gene essentiality**: defined by s < -0.3 threshold (from simulation: below this magnitude, growth defects cannot be reliably distinguished from lethality); insertions absent from the library before competition also flagged
- **Structural variant analysis**: high-coverage sequencing (>60-fold) to identify large deletions and duplications; RNA-Seq data for gene expression comparisons
- **Metagenomic comparison**: whole-population LTEE metagenomic data (60,000 generations, 12 populations) used to assess which genes accumulated beneficial mutations during actual LTEE evolution

## Relationship to existing wiki

- [[topics/distribution-of-fitness-effects/_hub|distribution-of-fitness-effects]]: directly extends the DFE framework — Couce2024 is the temporal complement to Ardell2024 (environment-invariance of slopes) and Levy2015 (non-exponential spectrum); provides the bacterial long-term picture
- [[topics/genetic-epistasis/_hub|genetic-epistasis]]: provides the most direct empirical evidence for the pervasiveness of sign epistasis over evolutionary time, and for parallel epistatic changes across independent lineages; complements the theoretical treatment in Maltas2020 and the environment-invariance result in Ardell2024
- [[topics/fitness-landscapes/_hub|fitness-landscapes]]: shows that the landscape is macroscopically conserved but locally dynamic; beneficial portion of the landscape is completely renewed on the timescale of ~2000 generations; provides the temporal dynamics missing from single-timepoint landscape measurements
- [[papers/Levy2015_LineageTracking|Levy2015]]: both papers measure the beneficial DFE in evolving microbial populations; Levy2015 finds a non-exponential structured DFE in *S. cerevisiae* adapting to glucose limitation; Couce2024 shows that this non-exponential form is specifically characteristic of early-adaptation stages, retroactively contextualizing the Levy2015 result
- [[papers/Ardell2024_GlobalEpistasis|Ardell2024]]: Ardell2024 shows global epistasis slopes are environment-invariant; Couce2024 shows they are time-varying — the beneficial landscape changes substantially as populations accumulate adaptive mutations, even as the macroscopic DFE statistics remain stable

## Open questions raised

- Does the macroscopic DFE stability over 50K generations of neutral-environment adaptation hold for DFEs measured under direct antibiotic stress — where resistance-conferring mutations may follow mechanistically constrained pathways with different epistatic architectures?
- At what timescale does sign epistasis renew the beneficial landscape in *E. faecalis* antibiotic resistance evolution — faster (resistance is strongly constrained by mechanism) or slower (fewer epistatic interactions among resistance mutations)?
- Can the non-exponential → exponential transition in the beneficial DFE serve as an empirical readout of "distance to fitness peak" in antibiotic resistance contexts — providing a way to predict when resistance evolution will plateau and further treatment-resistance-arms-race dynamics will slow?
- Does the coupon-collecting model apply to antibiotic resistance, where early adaptation may be dominated by loss-of-function mutations (efflux pump upregulation, target gene disruptions) in specific mechanistic modules — or are resistance mutations too constrained to fit the target-size prediction?
- Does gene essentiality change in parallel across *E. faecalis* populations evolving resistance to different drugs, as it does in the LTEE — and if so, do parallel essentiality changes identify genetic vulnerabilities that could be exploited therapeutically?

## Conversion notes

Source PDF named baymlenski.pdf (named after equal-contribution corresponding authors Baym and Lenski); cite key Couce2024 follows first-author convention (Couce listed first; equal co-first-author Limdi listed second; equal co-last-authors Tenaillon and Baym listed last). No conversion issues, though image references in the converted markdown were discarded per wiki convention.
