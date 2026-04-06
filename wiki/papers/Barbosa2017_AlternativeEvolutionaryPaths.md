---
title: "Alternative Evolutionary Paths to Bacterial Antibiotic Resistance Cause Distinct Collateral Effects"
authors: [Barbosa C, Trebosc V, Kemmer C, Rosenstiel P, Beardmore R, Schulenburg H, Jansen G]
year: 2017
venue: "Molecular Biology and Evolution"
doi: "10.1093/molbev/msx158"
arxiv: ""
topics: [collateral-sensitivity]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Barbosa et al. evolved 160 independent *Pseudomonas aeruginosa* PA14 populations against eight antibiotics (CIP, GEN, STR, PIT, CAR, DOR, IMI, CEF) for 24 days in M9 minimal medium, then measured collateral effects across the full drug panel by AUC-based dose-response assays and performed whole-genome sequencing on 81 populations. Cross-resistance was generally more common than collateral sensitivity (CS), but substantial CS was identified. CS patterns in *P. aeruginosa* differ qualitatively from those reported in *E. coli*: aminoglycoside resistance leads predominantly to penicillin CS (not broad multi-drug CS), and CIP resistance produces widespread hypersensitivity (versus cross-resistance in *E. coli*). Critically, within a single drug treatment, different replicate populations evolved CS or cross-resistance toward the same second drug, reflecting distinct resistance mutations being selected in each replicate. Genomic clustering linked these contrasting collateral phenotypes to mutations in regulatory genes: nalC deletion in β-lactam-adapted populations drives aminoglycoside CS; mexZ truncation in STR-adapted populations drives penicillin CS; pmrB point mutations in GEN-adapted populations drive penicillin CS. All three relationships were validated by introducing the mutations into the ancestral PA14. Chemical similarity (Jaccard's index on chemical fingerprints) significantly predicts cross-resistance frequency.

## Conceptual contribution

This paper makes two major conceptual contributions to the CS literature.

**First, interspecies variation in CS networks**: the direction and specificity of collateral effects are not conserved across bacterial species. Key examples: aminoglycoside resistance in *E. coli* drives broad multi-drug hypersensitivity (via TrkH/PMF mechanism), but in *P. aeruginosa* PA14 it predominantly drives CS specifically to penicillins; CIP resistance in *E. coli* typically produces cross-resistance, but in *P. aeruginosa* it produces broad hypersensitivity. This has direct implications for treatment design: CS-based protocols developed for one organism cannot be assumed to transfer to another, and systematic characterization in each target pathogen is essential.

**Second, within-treatment variation from alternative evolutionary paths**: different replicate populations evolving against the same drug can acquire distinct resistance mutations, and these distinct mutations determine whether the population becomes CS or cross-resistant to second drugs. This is different from the heterogeneity described in *E. coli* and *E. faecalis* studies (where parallel replicates to the same drug tend to land in correlated phenotypic states) — in PA14, the within-treatment variation is sufficient to produce outright qualitative reversals (CS versus cross-resistance) in individual drug pairs. The underlying cause is the plasticity of *P. aeruginosa*'s resistance mechanisms: different mutations in the same gene category (e.g., two TetR-like repressors nalC vs. mexZ) produce completely opposite CS directionality. This complicates population-level treatment design, because a policy optimized for one resistance mechanism may be counterproductive for another that has been selected in a subpopulation.

A more technical contribution is the demonstration that chemical similarity (Jaccard's index on molecular fingerprints) provides a significant predictor of cross-resistance frequency — offering a structure-based screening criterion for anticipating pleiotropic consequences before evolution experiments are conducted.

## Key findings

- 160 *P. aeruginosa* PA14 populations evolved for 24 days (~58 generations) against 8 antibiotics; reached ≥32× IC90 for most drugs; substantial within-drug variation in resistance trajectory and level
- Fitness costs: 90% showed longer lag phases; 49% showed reduced maximum yield; 36% showed reduced growth rate; stronger growth rate reductions correlated with higher mutation counts but not with resistance level — indicating mechanism-dependence of fitness cost
- CS network overview: cross-resistance more common than CS; 5 main patterns: (i) within-class cross-resistance for aminoglycosides and β-lactams; (ii) resistance to most drugs → aminoglycoside CS; aminoglycoside resistance → penicillin CS only; (iii) CIP or DOR resistance → broad hypersensitivity (unidirectional — other drugs rarely become CIP-resistant indirectly); (iv) CEF cross-resistance is common upon resistance to all other drugs; (v) substantial within-treatment variation, with qualitative reversals in some drug pairs
- Contrast with *E. coli*: aminoglycoside resistance in *E. coli* → broad multi-drug hypersensitivity; in PA14 → primarily penicillin CS. CIP resistance in *E. coli* → broad cross-resistance; in PA14 → broad hypersensitivity
- Within-treatment variation example: of 10 CEF-adapted populations, 5 showed aminoglycoside CS and 3 showed cross-resistance; of 10 GEN-adapted populations, 3 showed penicillin CS and others showed resistance — contrasting phenotypes within same drug treatment
- Chemical similarity predicts cross-resistance: Jaccard's index on molecular fingerprints significantly correlates with frequency of collateral resistance (FCR) across all drug pairs (Spearman rank correlation); chemically similar drugs share cross-resistance even with different cellular targets (but similar-target, dissimilar-chemistry drugs do not reliably cross-resist)
- Average 10.5 genes mutated per antibiotic environment; 89% of mutations in coding regions; 83% of coding mutations cause partial/complete loss of function; >50% of variants fixed at ≥40% population frequency
- Mechanistic clusters:
  - GEN-adapted: pmrB mutations → penicillin CS; pmrB controls outer membrane lipid A remodeling via PhoP-PhoQ and PmrB-PmrA systems → reduces negative membrane charge → enhanced β-lactam sensitivity
  - STR-adapted: mexZ mutations → penicillin CS; mexZ is a TetR-like repressor of MexXY-OprM; loss of function → MexXY-OprM overexpression → aminoglycoside extrusion, but MexXY-OprM also extrudes most penicillins → unexpected penicillin CS through pump saturation or competition [VERIFY mechanism]
  - CAR/PIT-adapted: nalC deletion → aminoglycoside CS; nalC is a TetR-like repressor of MexAB-OprM; loss → MexAB-OprM overexpression; when MexAB and MexXY are both overexpressed, antagonistic interaction between pumps produces aminoglycoside CS (consistent with known MexCD/MexAB antagonism)
- Genetic validation: nalC deletion, mexZ Q95stop, pmrB P254L, pmrB V136E each introduced into ancestral PA14; all four constructs replicated the collateral phenotypes of the evolved populations (increased resistance to the selecting drug + significant CS to the second drug; confirmed by GLM + Tukey's HSD)
- Two TetR-like regulators with opposite CS directionality: nalC LOF → aminoglycoside CS in β-lactam-adapted strains; mexZ LOF → penicillin CS in aminoglycoside-adapted strains — same repressor family, opposite CS directions, likely due to pump competition between MexAB-OprM and MexXY-OprM

## Methods

- *P. aeruginosa* PA14 in M9 minimal medium + 0.2% glucose + 0.1% casamino acids; 37°C; 96-well plates; 12 h serial transfers; initial IC90 concentration; 1.5× concentration increase every 4 transfers
- Collateral assay: 10 concentrations × 3 replicates per drug per population; AUC comparison (evolved vs. ancestor, normalized to no-drug controls to correct for fitness differences); Wilcoxon rank test with FDR correction
- Fitness: "grofit" R package; growth rate, lag time, max yield; standardized relative to evolved media-only controls
- WGS: Illumina HiSeq paired-end, 150 bp insert, 300× coverage; alignment to PA14 reference (NC_008463); SNP/SV calling with SNVer + VarScan + Pindel + CNVnator; variants filtered against evolved controls; annotation via DAVID + Pseudomonas Database; data deposited NCBI SRA BioProject PRJNA355367
- Genomic clustering: Euclidean distance on sensitivity profiles; Ward's minimum variance + bootstrapping for cluster stability
- Chemical similarity: Jaccard's index on molecular fingerprints; correlated to FCR = $(R_{A→B} + R_{B→A}) / L_{AB}$ via Spearman rank correlation
- Genome editing: two-step recombination method (Trebosc et al. 2016); introduced nalC 500 bp deletion, mexZ Q95stop, pmrB P254L and V136E into ancestral PA14

## Relationship to existing wiki

This paper extends the CS characterization in *P. aeruginosa* initiated by [[papers/Imamovic2018_PhenotypicConvergence|Imamovic2018]] in a different strain (PA14 vs. PAO1), medium (M9 vs. SCFM), and drug panel (8 vs. 24 drugs), and with a different emphasis (within-treatment variation and mechanism vs. phenotypic convergence and in vivo dynamics). Together, these two papers constitute the wiki's coverage of *P. aeruginosa* CS: Imamovic2018 establishes convergence to stable phenotypic states and in vivo validation; Barbosa2017 establishes the importance of within-treatment variation and efflux regulatory mechanisms. The nalC/mexZ/pmrB mechanisms identified here are distinct from the nfxB/MexCD-OprJ mechanism identified in Imamovic2018, highlighting that CS in *P. aeruginosa* is mechanistically plural — multiple efflux regulatory systems can independently drive CS, with different downstream directionality.

The interspecies comparison with *E. coli* directly connects to [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] (aminoglycoside-induced multi-drug CS via TrkH/PMF in *E. coli*) and [[papers/Oz2014_SelectionPressure|Oz2014]] (TrkH confirmation in another *E. coli* strain). Barbosa2017 shows that the aminoglycoside CS in *P. aeruginosa* is more restricted (penicillin-specific, via pmrB/mexZ rather than TrkH/PMF), suggesting that the TrkH/PMF mechanism is an *E. coli*-specific route. This is mechanistically consistent with known differences in efflux pump architecture between the two species.

The within-treatment variation finding creates tension with the phenotypic convergence result of [[papers/Imamovic2018_PhenotypicConvergence|Imamovic2018]]. In Imamovic2018, resistance from different genetic backgrounds converges toward the same phenotypic state for a given drug. In Barbosa2017, resistance to the same drug in independent PA14 replicates diverges into qualitatively different CS/cross-resistance states. These findings are not necessarily contradictory — convergence operates at the level of drug *class* averages, while within-treatment variation operates at the mechanistic level for specific drug pairs. But the tension highlights that "phenotypic convergence" may be stronger for some drug-organism combinations than others.

The chemical similarity → cross-resistance relationship is consistent with the observation in [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] that CS is absent between same-target antibiotics ($p = 0.013$) and depleted between chemogenomically similar pairs — the converse of the Barbosa2017 finding that chemically similar drugs show elevated cross-resistance.

## Open questions raised

- Is within-treatment variation in collateral phenotypes (producing qualitative CS vs. cross-resistance reversals) a general feature of *P. aeruginosa*, or is it specific to PA14 in minimal media — does it also occur in PAO1, in SCFM, or in clinical isolates?
- Can the chemical similarity criterion be combined with mechanism-based CS predictions to design drug panels that simultaneously minimize cross-resistance (avoid chemically similar pairs) and maximize CS exploitation (target mechanistically linked pairs)?
- When a population is heterogeneous — containing both CS-conferring and cross-resistance-conferring subpopulations — does treatment with the CS-targeting second drug selectively eliminate the CS-subpopulation while enriching the cross-resistant one? What determines the long-term evolutionary outcome of cycling in the presence of such within-treatment variation?
- Do the nalC/mexZ/pmrB efflux regulatory CS mechanisms identified in PA14 generalize to clinical *P. aeruginosa* isolates, including cystic fibrosis pathoadaptive lineages such as DK2, where nfxB mutations play a major role?
- How does the interspecies variation in CS network topology inform the transferability of MDP/RL-derived drug cycling policies — if policies trained on *E. faecalis* or *E. coli* CS profiles are applied to *P. aeruginosa* infections, what failure modes arise from the qualitative CS direction differences?

## Conversion notes

Figure images were not extracted per wiki convention. Key figures: Fig. 1 (experimental design schematic; dose-response curves and IC90 fold changes for 10 populations per drug); Fig. 2 (fitness costs: growth rate, lag time, max yield relative to evolved controls for all 80 resistant populations); Fig. 3 (CS/cross-resistance matrix for 8×8 drug combinations — the central collateral profile heatmap; direct and indirect adaptation counts); Fig. 4 (chemical similarity vs. frequency of cross-resistance scatter plot; significant Spearman correlation); Fig. 5 (genomic overview: mutations per drug environment, mutation type distribution, allele frequency distribution, functional annotation heat map); Fig. 6 (hierarchical clustering dendrograms linking collateral phenotype clusters to genomic clusters for GEN/STR/PIT/CAR); Fig. 7 (functional validation: dose-response curves for ancestral, evolved, and genetically reconstructed mutants for nalC, mexZ, pmrB). Conversion quality was good; Table 2 (oligonucleotides) fully rendered. DOI not extracted from conversion — requires manual lookup [VERIFY].
