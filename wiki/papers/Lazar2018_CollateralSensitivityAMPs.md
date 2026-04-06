---
title: "Antibiotic-resistant bacteria show widespread collateral sensitivity to antimicrobial peptides"
authors: [Lázár V, Martins A, Spohn R, Daruka L, Grézal G, Fekete G, Számel M, Jangir PK, Kintses B, Csörgő B, Nyerges Á, Györkei Á, Kincses A, Dér A, Walter FR, Deli MA, Urbán E, Hegedűs Z, Olajos G, Méhi O, Bálint B, Nagy I, Martinek TA, Papp B, Pál C]
year: 2018
venue: "Nature Microbiology"
doi: "10.1038/s41564-018-0164-0"
arxiv: ""
topics: [collateral-sensitivity, evolutionary-control]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Lázár et al. systematically measured susceptibilities of 60 antibiotic-resistant *Escherichia coli* strains — evolved against 12 clinically relevant antibiotics — to a panel of 24 antimicrobial peptides (AMPs) of diverse origin and mode of action. Strikingly, collateral sensitivity (CS) to AMPs occurs at nearly three times the rate of cross-resistance (31% vs. 12% of strain-peptide pairs), inverting the pattern seen for antibiotic-antibiotic interactions where cross-resistance predominates 2-3:1. The study identifies LPS composition changes — driven by regulatory mutations in marR, envZ/OmpR, and ompC — as the primary mechanistic driver of AMP-collateral sensitivity. The AMP PGLA shows CS in 82% of antibiotic-resistant strains; administered at subinhibitory concentrations as an adjuvant it re-sensitizes resistant bacteria by up to 30-fold and prevents de novo resistance evolution from exceeding EUCAST clinical breakpoints over 160 laboratory generations.

## Conceptual contribution

This paper expands the collateral sensitivity paradigm across a chemical and mechanistic boundary: CS is not a phenomenon restricted to antibiotic-antibiotic pairs but generalizes — and is in fact *more prevalent* — between conventional antibiotics and structurally distinct antimicrobial peptides. The finding is not merely empirical but mechanistically grounded: many canonical antibiotic-resistance mutations alter outer membrane lipopolysaccharide (LPS) composition in ways that increase the negative surface charge of the membrane, directly enhancing killing by cationic AMPs that act via electrostatic membrane interaction. The marR→WaaY pathway is demonstrated genetically and biochemically, making AMP-collateral sensitivity one of the best-characterized mechanistic explanations for any CS relationship in the literature.

A second conceptual contribution is positioning AMPs as adjuvants that exploit CS to achieve two control objectives simultaneously: (1) re-sensitizing already-resistant populations by compounding CS with resistance mutation-induced synergy, and (2) prophylactically preventing de novo resistance evolution by constraining the accessible mutations. The observation that a control experiment (tobramycin + BAC5, where BAC5 shows cross-resistance rather than CS to tobramycin-resistant strains) produced no reduction in resistance evolution rate confirms that the beneficial effect is specifically mechanistically tied to CS and is not a generic drug-combination effect. This sets a standard for demonstrating mechanistic specificity in adjuvant design.

## Key findings

- 31% of antibiotic-resistant strain × AMP pairs showed collateral sensitivity; only 12% showed cross-resistance — inverting the 2-3:1 cross-resistance advantage seen in antibiotic-antibiotic comparisons
- Three AMP clusters by CS/CR profile: P1 (pore-forming, low isoelectric point/hydropathicity, few interactions), P2 (proline-rich, intracellular targets — cross-resistance dominant, particularly in aminoglycoside-resistant strains via sbmA deletion), P3 (pore-forming, high hydropathicity — CS dominant)
- PGLA showed CS in 82% (49/60) of antibiotic-resistant strains tested
- Mechanism: marR mutations → upregulation of waaY (~3.9-fold, confirmed qRT-PCR) → increased LPS phosphorylation → elevated negative outer membrane charge → enhanced cationic AMP killing; confirmed by genetic epistasis (waaY deletion abolishes marR-mediated CS to P3 peptides) and zeta potential measurements
- ompC loss-of-function confers resistance to nitrofurantoin/cell-wall inhibitors and simultaneously increases sensitivity to multiple AMPs
- sbmA deletion (prevalent in aminoglycoside-resistant strains) confers cross-resistance to proline-rich P2 peptides via disrupted uptake
- PGLA at subinhibitory concentration caused up to 30-fold decrease in antibiotic resistance levels in laboratory-evolved and clinical resistant strains (ciprofloxacin-, nalidixic acid-, tetracycline-, doxycycline-resistant *E. coli*; also *K. pneumoniae* and *Shigella flexneri* isolates)
- Antibiotic-PGLA co-treatment slowed de novo resistance evolution: after 160 generations, resistance remained below EUCAST clinical breakpoints (vs. 40-fold for tetracycline and 390-fold for ciprofloxacin under single-drug treatment)
- Resistance-mutation-induced synergy: PGLA-antibiotic combinations are more synergistic in resistant strains than in wild-type, particularly for strains with marR, envZ, or ompF mutations affecting membrane permeability
- Reciprocal CS preliminary evidence: CAP18-resistant strains show CS to multiple antibiotics; antibiotic-resistant strains show CS to CAP18 — both selectively eradicated by deploying the collaterally sensitive partner

## Methods

- *E. coli* K12 BW25113 as wild-type; 60 laboratory-evolved resistant strains (5 lines per antibiotic × 12 antibiotics) from prior work (Lázár et al. 2013, Nyerges et al.)
- 24 AMPs of diverse origin: magainin-family (PGLA), defensins (HBD3), cathelicidins (LL-37), proline-rich peptides (AP, PR-39, BAC5, BAC7), pore-formers (protamine, indolicidin, pleurocidin), etc.
- High-throughput susceptibility screen: 96-well microtiter plates, OD600 at 24h; inhibition score (IS) calculated from replicate growth arrest measurements; validated by standard MIC measurements (AUC = 0.89-0.93 for ROC curves)
- Whole-transcriptome sequencing (RNA-Seq) of 24 antibiotic-resistant strains in antibiotic-free medium; differential expression analysis via edgeR/limma; GO enrichment for LPS/phospholipid-related genes
- Chemogenomic screen: pooled ASKA ORF overexpression library in *E. coli*; deep sequencing readout; identified 624 CAP18-sensitizing genes (LPS biosynthesis genes enriched, odds ratio = 4.4)
- Allele replacement to introduce single mutations (envZ, ompC, marR, trkH); sbmA deletion from KEIO collection
- Zeta potential measurements to confirm outer membrane charge changes
- Kill curve assays at lethal AMP concentrations; colony counting
- Laboratory evolution: 10 parallel lines × 8 drug conditions × 160 generations (tetracycline, ciprofloxacin, with/without PGLA); resistance tracked by MIC

## Relationship to existing wiki

This paper is the strongest mechanistic characterization of CS in the wiki. While [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] established statistical structure of antibiotic-antibiotic CS in *E. faecalis* and [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]] documented that clinical CS prevalence is low, Lazar2018 provides the clearest mechanistic explanation for why CS arises — grounded in outer membrane biochemistry rather than correlative mutation cataloging. The marR→WaaY→LPS charge pathway parallels the note in [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]] that marR mutations appear in nonantibiotic-selected populations, extending the relevance of this gene as a cross-domain vulnerability generator.

The PGLA adjuvant strategy is structurally analogous to the MDP-based CS cycling in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] and the d-MDP framework in [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]], but operates via a fundamentally different mechanism — exploiting AMP-antibiotic synergy at fixed dosing rather than temporal drug sequencing. This complements [[topics/evolutionary-control/_hub|evolutionary-control]] strategies based on antibiotic sequencing.

The finding that CS to AMPs is more prevalent than antibiotic-antibiotic CS is relevant to [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]]'s concern about lab-to-clinic translation: if AMP-CS is mechanism-linked (LPS charge) rather than trajectory-dependent, it may be more reliably conserved across clinical isolates than antibiotic-antibiotic CS pairs.

## Open questions raised

- Does the LPS-modification mechanism of AMP-CS make it more conserved across clinical isolates than antibiotic-antibiotic CS, which often lacks a clear mechanism?
- Can PGLA-like adjuvant strategies be generalized to other AMP-antibiotic pairs beyond those tested here, and is there a design principle (AMP physicochemical properties, target mechanism) that predicts which combinations will show resistance mutation-induced synergy?
- Does PGLA co-treatment maintain its effectiveness over longer evolutionary timescales (>160 generations), or do escape mutations eventually decouple AMP sensitivity from antibiotic resistance?
- Is reciprocal CS between antibiotics and AMPs sufficient to support a full collateral sensitivity cycling protocol (antibiotic → select CS to AMP → switch to AMP → select CS back to antibiotic)?
- Do clinical isolates — which evolve resistance through diverse mechanisms — retain AMP-CS profiles consistent with laboratory-evolved strains, given that [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]] shows mechanism-diversity reduces CS conservation in clinical populations?

## Conversion notes

Six figure image files were generated by marker but not included here per wiki convention. Key figures: Figure 1 (cross-resistance/CS heatmap of 60 strains × 24 peptides with strain clustering into S1-S4 groups and peptide clustering into P1-P3 groups); Figure 3 (transcriptome and LPS gene enrichment data supporting membrane composition mechanism); Figure 5 (PGLA adjuvant data — MIC fold-changes in resistant strains); Figure 6 (de novo resistance evolution time courses with and without PGLA). Figures are on PDF pages 25, 27, 28, 30, 31, 33.
