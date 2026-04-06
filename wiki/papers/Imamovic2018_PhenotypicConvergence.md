---
title: "Drug-Driven Phenotypic Convergence Supports Rational Treatment Strategies of Chronic Infections"
authors: [Imamovic L, Ellabaan MMH, Machado AMD, Citterio L, Wulff T, Molin S, Johansen HK, Sommer MOA]
year: 2018
venue: "Cell"
doi: "10.1016/j.cell.2017.12.012"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Imamovic et al. characterized the collateral sensitivity (CS) network of *Pseudomonas aeruginosa* PAO1 evolved against 24 clinically relevant antibiotics in synthetic cystic fibrosis medium (SCFM), finding that 75% of resistant strains are collaterally sensitive to at least one drug. Dimensionality reduction (PCA) revealed that resistance evolution converges toward four distinct phenotypic states regardless of the selecting drug, and that clinical DK2 isolates from different CF patients similarly converge toward these states. Mutations in *nfxB* — which represses MexCD-OprJ efflux — were identified as a genetic marker for CS in quinolone, macrolide, and tetracycline-resistant strains: nfxB mutants overexpress MexC and become collaterally sensitive to aminoglycosides, β-lactams, and colistin. Longitudinal analysis of clinical isolates from three CF patients over 30 years revealed oscillatory rather than monotonically increasing resistance dynamics. Critically, an nfxB-mutant subpopulation comprising 37.3% of quinolone-resistant cells before treatment was completely eradicated from the CF lung during 2-week intensive antibiotic therapy targeting CS vulnerabilities — providing the first in vivo confirmation that CS-predicted selective pressure eliminates resistant subpopulations in a human chronic infection.

## Conceptual contribution

This paper establishes two major conceptual advances.

**First, phenotypic convergence**: although resistance can evolve from diverse genetic backgrounds through diverse mutational paths, the resulting susceptibility phenotypes are not uniformly distributed — they cluster into a small number of attracting states. In PCA, 24 experimentally evolved resistant PAO1 strains cluster into 4 distinct regions, and clinical isolates from different patients independently shift toward these same states upon drug exposure. This dramatically simplifies the CS landscape: instead of modeling CS as a high-dimensional mapping from arbitrary genotypes to arbitrary susceptibility vectors, one can treat the landscape as having a small number of relevant states with associated CS profiles. Practically, this means that knowing the drug history of a chronic infection — without full genomic characterization — may be sufficient to anticipate the phenotypic state the population has converged toward and design treatment accordingly.

**Second, in vivo validation of CS-guided evolutionary control**: all prior evidence for CS-based treatment design in the wiki was derived from laboratory evolution or mathematical models. Imamovic2018 closes this gap by tracking a CF patient's *P. aeruginosa* population before, during, and after intensive antibiotic therapy and demonstrating that nfxB-mutant subpopulations — whose CS vulnerabilities were predicted in vitro — were selectively eliminated. This constitutes proof-of-concept that collateral sensitivity operates in vivo in chronic human infection under clinically realistic conditions. The finding also introduces the concept of genomic/proteomic biomarker-guided evolutionary control: if nfxB mutations or MexC protein abundance can be detected from patient sputum, they can prospectively identify CS-exploitable subpopulations before designing the treatment schedule.

A third, more speculative contribution is the oscillatory picture of chronic infection: the 30-year longitudinal data show susceptibility alternating rather than ratcheting upward — consistent with the collateral sensitivity framework, in which resistance to one drug creates vulnerability to another, which is then targeted by treatment, cycling the population between phenotypic states. This provides indirect clinical evidence that the conceptual basis for CS-cycling protocols reflects actual population dynamics in chronic infections.

## Key findings

- 75% of resistant PAO1 strains collaterally sensitive to at least one drug across 24 antibiotics (SCFM medium); CS magnitudes up to 8.5-fold (CIP resistance → AMP) and 32-fold (CIP or AZY resistance → colistin) for clinical isolates
- 5 CS cycling opportunities identified among EUCAST-defined anti-pseudomonal antibiotics; 51 three-drug cycling options when all 24 antibiotics considered
- PCA of susceptibility profiles: 24 resistant strains cluster into 4 distinct regions (aminoglycoside-resistant → region I; quinolone/macrolide/tetracycline-resistant → region II; β-lactam → region III; colistin-resistant → region IV)
- CS from different drug classes is correlated: quinolone-, macrolide-, and tetracycline-resistant strains have strongly correlated susceptibility profiles ($r = 0.84$–$0.97$, $p < 0.0001$, all mapping to region II); colistin and β-lactam-resistant strains have anticorrelated profiles ($r = -0.74$ for colistin vs. ceftazidime, $p < 0.0001$)
- Five clinical DK2 isolates from diverse backgrounds: all showed CS upon drug exposure; CIP resistance consistently associated with aminoglycoside CS across all backgrounds; 80% of AZY- and TOB-resistant DK2 strains increased correlation to respective PAO1 strains
- *nfxB* mutations found in all quinolone-, macrolide-, and tetracycline-resistant strains; nfxB encodes the transcriptional repressor of MexCD-OprJ; mutations produce truncated, non-functional NfxB → MexC overexpression (MexC $t$-ratio = 4.2 for CIP and 6.2 for AZY resistant strains, $p < 0.01$, proteomics)
- Competition experiment: WT outcompetes nfxB 119C>T mutant when treated with the CS drug AMI; nfxB mutant outcompetes WT when treated with AZY (collateral resistance) — directional selection confirmed
- *nfxB* mutations appear late in resistance evolution: in CIP-selected populations, gyrA mutation first (day 6, 12% frequency) then three nfxB mutations (day 8, 99.2% gyrA + three nfxB alleles); in AZY-selected populations, nfxB115A>C reached 50% by day 8
- Longitudinal clinical isolates (patients 173, 211, 333) over 30 years: oscillatory susceptibility dynamics; patient 333's last isolate (333-2007c) more susceptible to 14 drugs than the first isolate from 15 years earlier; earlier isolates associated with sub-lineage extinction had reduced MICs to aminoglycosides, quinolones, and tetracyclines
- In vivo experiment: 626 isolates from CF patient before (t1), during (t2), and after (t3) 2-week intensive therapy; phenotypic diversity decreased 7-fold by end of treatment ($p = 6.125 \times 10^{-12}$); population converged to region II of PCA (uniformly colistin-susceptible)
- 37.3% of quinolone-resistant t1-b subpopulation harbored nfxB245G>T mutation; this mutation was absent in all isolates at t2 and t3; 92.3% of t3 SNPs shared with t1-b (not the nfxB-carrying fraction), confirming that nfxB mutants were specifically eliminated
- TMS-exposed PAO1 becomes CS to aminoglycosides, polymyxin, and several β-lactams while gaining resistance to quinolones and tetracyclines — suggesting that treatment of co-infecting *S. aureus* with TMS creates exploitable CS vulnerabilities in *P. aeruginosa*

## Methods

- *P. aeruginosa* PAO1 evolved in SCFM (synthetic CF medium; Palmer et al. 2007) for 10 days against 24 antibiotics; WT adapted to SCFM without antibiotics (WTE) as baseline; 5 replicate dose-response curves per strain per drug
- Clinical isolates: DK2 transmissible lineage from Danish CF registry, 5 strains from patients 173, 211, 333 with common ancestor 30-1979 (Yang et al. 2011, Marvig et al. 2013); longitudinal coverage: 30-year sampling span, >200,000 generations
- MIC determination: hierarchical clustering on normalized susceptibility profiles; Spearman correlation analysis ($\rho$, two-tailed significance, Table S3)
- PCA: applied to WTE-normalized susceptibility data to identify phenotypic state clusters
- Competition experiments: co-culture of PAO1 WT vs. nfxB 119C>T mutant; frequency tracked over time under amikacin (CS drug) or azithromycin (CR drug)
- Proteomics: iTRAQ-based relative protein quantification (NanoUPLC-MS$^E$ on Xevo G2 Q-TOF); MexC identified as most upregulated protein in CIP- and AZY-resistant strains
- Amplicon sequencing: population-level tracking of nfxB and gyrA mutations at days 3, 6, 8 of adaptive evolution
- In vivo study: 626 isolates from single CF patient; 275 pre-treatment (t1), [N] during treatment (t2), [N] post-treatment (t3); phenotyped for 6 antibiotics (CIP, AZT, AMI, TOB, COL, LEV); whole-genome sequencing of 9 selected isolates; population sequencing of t1-a, t1-b, t2, t3 subpopulations (Table S8)
- Genome sequencing of 24 experimentally evolved PAO1 strains; mutations in 7/9 known pathoadaptive resistance genes confirmed

## Relationship to existing wiki

This paper is the most clinically translated CS paper in the wiki. It complements [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] (foundational *E. coli* CS network) and [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] (CS in *E. faecalis* + MDP framework) by establishing the CS landscape for *P. aeruginosa* — the dominant pathogen in CF, and a clinically critical Gram-negative organism absent from prior wiki papers.

The phenotypic convergence finding deepens the conceptual resolution introduced by [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]: where Maltas2019a showed that individual-level heterogeneity coexists with drug-class-level clustering, Imamovic2018 shows that the convergence operates at an even coarser level — not just drug-class structure but organism-wide convergence to just 4 phenotypic states. This is consistent with but more extreme than the clustering described in *E. faecalis*.

The oscillatory dynamics in longitudinal clinical isolates align with the temporal dynamics framework of [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]], which showed that CS profiles change over evolutionary time in *E. faecalis*. Imamovic2018 provides clinical-scale (decades) confirmation that susceptibility oscillates rather than ratchets, consistent with CS trade-offs constraining chronic resistance accumulation.

The nfxB/MexC biomarker concept connects to the goal of individualized evolutionary control articulated in the [[topics/evolutionary-control/_hub|evolutionary-control hub]] and represents a concrete step toward clinical implementation of MDP-like strategies. The clinical biomarker approach is the analogue of the "current genotype distribution" information used by the RL-genotype agent in [[papers/Weaver2024_RLDrugCycling|Weaver2024]] — both use molecular information about the current resistance state to inform drug selection.

The TMS→*P. aeruginosa* CS finding (treatment of co-infecting *S. aureus* creates CS vulnerabilities in *P. aeruginosa*) extends the logic of [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]] to a polymicrobial setting: the CS landscape of a target pathogen can be shaped by drug treatments directed at entirely different organisms in the same infection.

The in vivo validation connects directly to open questions raised by [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]] about whether lab-identified CS pairs operate clinically — Imamovic2018 provides a positive example (nfxB-mediated CS in *P. aeruginosa*) that supports mechanism-linked CS as the clinically actionable class.

## Open questions raised

- Can nfxB mutations and MexC protein abundance be detected reliably from sputum samples in routine clinical monitoring, and can biomarker-guided CS cycling be validated in a prospective clinical trial in CF?
- Are there analogous "CS-conferring pathoadaptive" gene mutations in other clinically important pathogens (*E. faecalis*, *S. aureus*, *K. pneumoniae*, *A. baumannii*) that could enable similar biomarker-guided evolutionary control in other chronic infections?
- Does phenotypic convergence in *P. aeruginosa* (4 PCA states) extend to other organisms — and is the number of convergent states a property of the organism, the drug panel, or the selective environment?
- How do co-infecting organisms' treatment histories alter the CS landscape of *P. aeruginosa* in polymicrobial CF infections — does TMS exposure of *S. aureus* reliably translate to aminoglycoside CS in *P. aeruginosa* in actual patients?
- Can the phenotypic convergence principle be used to design drug schedules that steer resistant *P. aeruginosa* toward a specific convergent state with maximum CS vulnerabilities — effectively a state-targeting version of the MDP framework?

## Conversion notes

Figure images were not extracted per wiki convention. Key figures: Fig. 1 (CS heatmap for 24 evolved PAO1 strains against 24 antibiotics; collateral sensitivity network sub-graph for anti-pseudomonal drugs; number of CS cycling opportunities); Fig. 2 (PCA clustering of phenotypic states; correlation analysis for PAO1 vs. DK2 susceptibility profiles; PCA shifts for CIP- and AZT-resistant DK2 strains); Fig. 3 (competition experiments; MexC proteomics; temporal evolution of nfxB and gyrA mutations in CIP/AZY populations; susceptibility shifts in clinical isolate 173-2005 upon further resistance development); Fig. 4 (oscillatory susceptibility dynamics in 30-year longitudinal DK2 isolates; Spearman correlation matrix between clinical isolates and evolved PAO1 strains); Fig. 5 (in vivo phenotypic convergence: colony recovery, phenotypic diversity over treatment, susceptibility heatmaps at t1/t2/t3, PCA plots); Fig. 6 (population sequencing: shared mutations among t1-a/b, t2, t3; phylogenetic clustering; nfxB mutation frequency; loss of nfxB mutants during treatment). Conversion quality was good. Some figure captions were partially separated from their corresponding images; reconstructed from context.
