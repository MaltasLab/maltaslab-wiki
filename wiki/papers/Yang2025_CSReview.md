---
title: "Collateral sensitivity and genetic vulnerability of antibiotic resistance"
authors: [Yang K, Rasouly A, Nudler E]
year: 2025
venue: "Trends in Microbiology"
doi: "[VERIFY]"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control, genetic-epistasis]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

This 2025 review in Trends in Microbiology synthesizes recent progress on collateral sensitivity (CS) and introduces differential genetic vulnerability mapping as a complementary framework for exploiting the fitness cost of antibiotic resistance. The paper identifies three barriers to clinical implementation of CS — high variation in CS profiles within a resistance allele class, erosion of CS by compensatory mutations in clinical isolates, and absence of CS to any approved antibiotic in many resistant strains — then reviews how deep mutagenesis, chemogenomic, and natural product screening approaches overcome coverage limitations. The bulk of the review introduces genetic vulnerability mapping (using transposon sequencing and CRISPRi) to identify cost-mitigating and cost-compounding genes that define synthetic lethal and extended CS targets. A final section covers genetic epistasis over resistance — genes required for the phenotypic expression of a resistance allele — as a distinct target class enabling suppression of resistance without requiring bacteria to lose the resistance gene.

## Conceptual contribution

The paper establishes a three-lens framework for exploiting the fitness cost of antibiotic resistance. The first lens — CS — asks which antibiotics are directly active against resistant strains due to physiological trade-offs. The second — differential genetic vulnerability — asks which genes resistant strains specifically depend on for growth (cost-mitigating and cost-compounding genes), creating synthetic lethal and extended CS opportunities even in strains showing no antibiotic-to-antibiotic CS. The third — genetic epistasis over resistance — asks which genes are required for the resistance phenotype to be expressed at all; inhibiting these "epistatic factors" (e.g., TolC for efflux-dependent TET resistance, DsbAB for β-lactamase activity) can negate resistance without the bacterium losing its resistance allele. These three lenses are orthogonal: a resistant strain with no CS to any approved antibiotic may still be vulnerable via genetic vulnerability or epistatic factor inhibition.

A key conceptual refinement is the identification of **within-class CS** — arising from mutually exclusive substrate specificity at antibiotic binding sites — as clinically more robust than between-class CS. Because within-class CS depends on binding site sequence conservation rather than systemic physiological trade-offs, it is more likely to be cross-species consistent. This distinguishes a subset of CS interactions that may be more reliably translatable to clinical settings than the majority characterized in lab evolution studies.

The review also frames cost-compounding and cost-mitigating genes as hotspots for compensatory mutations in clinical isolates, explaining why CS erodes over time: organisms evolve to neutralize their own vulnerabilities, and these evolutionary trajectories can be prospectively tracked via GWAS and dN/dS analysis to predict when CS will weaken — a form of evolutionary forecasting applied to clinical pathogen surveillance.

## Key findings

- Three barriers to CS clinical implementation: (1) high variation in CS/XR profiles within a resistance allele class (makes the dominant mutation hard to predict, but also implies richer CS discovery space); (2) erosion of CS by compensatory mutations (cost-mitigating and cost-compounding genes as evolutionary hotspots); (3) absence of any CS to clinical antibiotics in many resistant strains
- Within-class CS from deep mutagenesis of CTX-M-15 β-lactamase: the single-amino-acid substitution N135D confers 50-fold MIC increase to mecillinam at the expense of cefotaxime resistance; S133G and G239S confer resistance to piperacillin–tazobactam while losing cefotaxime coverage; the MEC/CEF combination inhibits mixed WT/mutant populations
- AmpC (blaampC) deep mutagenesis: no single mutant confers high-level resistance to all three of piperacillin, aztreonam, and cefepime; mutants with increased aztreonam resistance are more sensitive to piperacillin and cefepime; escape mutants (Y150A, N346W) resistant to aztreonam–avibactam combination found, but all mutants remain sensitive to other β-lactam–inhibitor combinations
- Deep mutagenesis of RIF-resistance determining regions (760 *E. coli* rpoB nonsynonymous mutants): a cluster with 10-fold CS to 5-fluorouracil identified via MAGE-seq; mechanism: "fast RNAP" elongation depletes pyrimidine ribonucleotide pools → reduced dTTP → thymineless death at lower 5FU concentrations; CS strong enough to select against H526Y in mixed populations
- Chemical genetics approach (Sakenova et al. 2025, *Nat. Microbiol.*): systematic CS/XR discovery by leveraging published susceptibility profiles of the *E. coli* Keio knockout collection against 40 antibiotics; LPS biosynthesis genes drive TET–AZI CS; efflux pump induction drives TET–AZI XR; provides molecular basis for each interaction type
- Differential genetic vulnerability in *E. coli* rpoB H526Y: upp (uracil phosphoribosyl transferase) is cost-compounding (fuels fast RNAP with UTP/CTP via uracil salvage; confirmed by NET-seq showing increased pause frequency in upp background); cell-wall biosynthesis/division genes MepM and ZapA are cost-mitigating; synthetic lethality of H526Y with yebAzapA double KO confirmed; CS to mecillinam (A22) and 5FU validated; slowing transcription elongation (ppGpp signaling) rescues CS
- CRISPRi mapping in *M. tuberculosis* rpoB S450L: NusG identified as cost-mitigating (transcription–translation coupling via RNAP–ribosome bridging compensates for S450L pausing/termination tendency); clinical GWAS of thousands of MDR isolates shows diversifying selection (elevated dN/dS) in nusG, specifically in residues mediating pro-pausing activity; compensatory nusG mutations improve fitness in competition experiments but mostly incompletely, suggesting CS may persist
- INH-resistant katG hypomorphs (*M. tuberculosis*): CRISPRi screen shows vulnerability to respiration depletion (atpD repression is bactericidal vs. bacteriostatic in drug-sensitive strain); CS to bedaquiline (BDQ, ATP synthase inhibitor) confirmed in clinical MDR isolates (downward shift in BDQ MIC distribution); mechanistically driven by elevated ROS and over-expression of Rv3160c and kmtR transcription factors in katG background sensitizing cells to BDQ independently of ROS
- VIM-2 metallo-β-lactamase (*E. coli*): zinc-depletion causes periplasmic VIM-2 misfolding → activates extracytosolic unfolded protein stress response (DegP, RseP, DegS); cost-mitigating genes include degP, rseP, degS; VIM-2 expression sensitizes bacteria to inhibitors of RseP and DegS; CS to azithromycin via enhanced OM permeability validated in mouse infection model for both *K. pneumoniae* and *P. aeruginosa*; blaOXA-48 (zinc-independent carbapenemase) also confers CS to AZI and COL
- Genetic epistasis over resistance: tolC KO completely prevents TET resistance evolution in *E. coli* (TolC is the OM receptor for most efflux systems; mutations in lon, marR, acrR that normally drive TET resistance all require TolC for efflux activity); dsbAB knockouts reduce activity of β-lactamases in *A. baumannii* (disulfide bond formation required for optimal enzyme activity); these epistatic factors are targets whose inhibition negates resistance expression

## Methods

Review article synthesizing the following experimental approaches across multiple studies:
- **Deep mutagenesis with MAGE-seq** — multiplex automated genome engineering with sequencing; used to construct and screen near-complete libraries of resistance-determining region variants
- **Transposon sequencing (Tn-seq)** — genome-wide differential fitness mapping to identify cost-mitigating and cost-compounding genes in resistant backgrounds
- **CRISPRi** — dCas9-mediated transcriptional repression for functional depletion screening in *M. tuberculosis*
- **GWAS / dN/dS analysis** — clinical isolate population genomics to identify compensatory mutations under diversifying selection
- **Chemical genetics / chemogenomics** — susceptibility profiling of the *E. coli* Keio knockout collection; computational model for CS/XR discovery from gene knock-out fitness scores
- **Natural product screening** — testing thousands of Actinobacteria/Burkholderia extracts against isogenic resistant *E. coli* panels
- **Mouse infection models** — in vivo validation of AZI CS in VIM-2-expressing *K. pneumoniae* and *P. aeruginosa*
- Primary organisms: *E. coli*, *M. tuberculosis*, *P. aeruginosa*, *K. pneumoniae*, *A. baumannii*, *S. aureus*

## Relationship to existing wiki

- Extends [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] by synthesizing barriers to clinical translation; the three-barrier framework parallels observations in [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]] (rare clinical CS, erosion) but adds the genetic vulnerability lens for strains with no detectable CS
- Within-class CS is conceptually distinct from the between-class CS characterized in most existing wiki papers; the cross-species conservation argument is relevant to the open question about lab-to-clinic translation gaps in [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]]
- Genetic epistasis over resistance is a form of epistasis not previously covered in [[topics/genetic-epistasis/_hub|genetic-epistasis]]; all existing papers there concern epistasis between mutations affecting fitness; here epistasis is between a resistance allele and the background genome in terms of phenotype expression
- Cost-mitigating/cost-compounding gene framework connects to [[concepts/fitness-cost|fitness-cost]] concept page; compensatory mutation tracking extends open questions in [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] about CS erosion
- Genetic vulnerability → synthetic lethality → selective elimination of resistant strains is a form of [[topics/evolutionary-control/_hub|evolutionary-control]] orthogonal to drug cycling and collateral sensitivity cycling
- The TEC-coupling vulnerability of rpoB S450L and the bedaquiline CS in katG hypomorphs exemplify how mechanistic knowledge of resistance fitness cost can be translated into rational combination therapy design — connecting to the fitness landscape framework in [[topics/fitness-landscapes/_hub|fitness-landscapes]]

## Open questions raised

- Can differential genetic vulnerability targets (cost-mitigating and cost-compounding genes) be pharmacologically inhibited with sufficient selectivity to avoid toxicity, and do any current approved compounds inhibit them?
- What fraction of clinical resistant isolates lack CS to any approved antibiotic — and for that population, how tractable is systematic genetic vulnerability mapping within a clinical timeframe?
- Does within-class CS from β-lactamase binding site mutagenesis translate to clinical isolates with naturally occurring resistance mutations, or is coverage limited to engineered mutant libraries with artificially complete sequence sampling?
- Are the compensatory nusG mutations identified in clinical *M. tuberculosis* MDR isolates (in pro-pausing residues) the primary drivers of CS erosion to BDQ-based regimens, and can they be detected prospectively from clinical sequencing to guide BDQ combination therapy?
- Does the genetic landscape of compensatory mutations (the "secondary mutation landscape") differ systematically between organisms and resistance mechanisms in ways that would allow predicting the half-life of any given CS interaction in clinical settings?
- Do escape mutants (e.g., Y150A, N346W circumventing aztreonam–avibactam combinations) arise at predictable frequencies under clinical treatment, and can their existence be used to rationally design combination therapies that cover all escape routes simultaneously?
