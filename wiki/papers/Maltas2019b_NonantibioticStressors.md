---
title: "Using Selection by Nonantibiotic Stressors to Sensitize Bacteria to Antibiotics"
authors: [Maltas J, Krasnick B, Wood KB]
year: 2019
venue: "Molecular Biology and Evolution"
doi: "10.1093/molbev/msz303"
arxiv: ""
topics: [collateral-sensitivity, evolution-in-fluctuating-environments]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Maltas, Krasnick, and Wood extend the lab's collateral sensitivity framework from antibiotic-only environments to a broad panel of 13 selecting conditions in *E. faecalis* V583, including biocides (CHX, TCS), preservatives (NaBz), extreme pH, and osmotic stress (NaCl, KCl), alongside six antibiotics spanning multiple classes. They find that collateral sensitivity and cross-resistance between antibiotic and nonantibiotic conditions are surprisingly common — altered sensitivity in 62% of condition-mutant pairs — and that resistance profiles selected by different conditions are positively correlated more often than negatively. Whole-genome sequencing of evolved populations identifies candidate mutations, including hits in known antibiotic resistance genes (marR, efflux pumps, penicillin-binding proteins) in populations selected by nonantibiotic stressors. Finally, sequential evolution through LZD followed by NaBz sensitizes populations to more conditions (~6) than either single-environment selection (~4), demonstrating that orthogonal nonantibiotic stressors can be used to compound sensitizing effects beyond what any single agent achieves.

## Conceptual contribution

The paper establishes a systems-level view of evolutionary trade-offs that extends across the antibiotic/nonantibiotic boundary. The dominant framing before this work was that collateral sensitivity was an antibiotic-to-antibiotic phenomenon; the implicit assumption was that nonantibiotic stressors might induce cross-resistance to antibiotics (a public health concern) but were unlikely to sensitize. This paper inverts that assumption: collateral sensitivity is as common — or more common than cross-resistance — even when evolving to nonantibiotic selective pressures. More than half (58%) of observed collateral effects are sensitivities rather than resistances.

The second conceptual advance is demonstrating that **sequential selection through orthogonally sensitizing environments can compound sensitivities beyond what any single environment achieves**. The LZD→NaBz experiment is a proof-of-principle for an "evolutionary steering" strategy using nondrug environments: because LZD and NaBz induce largely nonoverlapping sets of sensitivities, sequential exposure additively (and experimentally verifiably) accumulates sensitivity to more conditions. This is the same logic as the MDP-based multi-drug cycling approach of [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], but extended to include the possibility that nondrug environments in a patient's ecology — food preservatives, osmotic stress, biocides in healthcare settings — may be potential tools for steering populations toward increased drug susceptibility.

The additive null model used to select the LZD–NaBz pair is another conceptual contribution: a simple predictive framework that, while acknowledged to ignore epistasis, performs surprisingly well in practice and provides a practical first-pass screen for identifying productive environmental sequences without requiring exhaustive experimental testing.

## Key findings

- Collateral sensitivity is common across antibiotic and nonantibiotic stressor pairs: 58% of collateral effects (53/91) confer sensitivity rather than resistance; all 13 isolates exhibit both collateral sensitivity and cross-resistance to at least two conditions
- 62% (104/169) of all condition-mutant pairs showed altered sensitivity; 58% of these were collateral effects (modulated resistance to a non-selecting condition)
- Resistance profiles selected by different conditions are positively correlated more often (62/78 pairs) than negatively, suggesting shared molecular mechanisms (e.g., efflux pumps) across chemically diverse stressors
- TCS and CHX replicate experiments (32 populations each): 25/32 TCS isolates and 15/32 CHX isolates exhibit sensitivity to at least one antibiotic; all 32 CHX isolates show strong sensitivity to TCS; TCS-selected variability ($\langle d_p \rangle = 2.2$) and CHX-selected variability ($\langle d_p \rangle = 1.6$) are considerably smaller than across-condition variability ($\langle d_p \rangle = 5.2$)
- Whole-genome sequencing (54 mutations at >30% frequency across 13 populations): nonantibiotic-selected populations harbor mutations in known antibiotic resistance genes — e.g., NaCl/KCl populations carry marR mutations (multidrug efflux regulator) and galU mutations; CHX population carries EF\_2227 (ABC transporter) and EF\_1608 (cardiolipin synthetase); NaBz population carries EF\_1148 (penicillin-binding protein)
- Population and clonal sequences are highly concordant: every clonal mutation appears at ≥68% frequency in the corresponding population sample; strong agreement validates single-colony phenotyping as representative
- Additive null model correctly identifies LZD–NaBz as a productive sequential pair; predicted profiles match experimental mean profiles surprisingly well for a model that ignores epistasis
- Sequential LZD→NaBz evolution induces sensitivity to ~6 conditions on average (some isolates to 8), compared to ~4 for either single-environment selection — a statistically significant increase (Wilcoxon rank sum, $p < 0.01$)
- NaCl and KCl selection produces only modest resistance, consistent with *E. faecalis*'s natural tolerance to osmotic stress, and requires up to 60 days (~450 generations) to achieve comparable resistance levels to antibiotics (8 days, ~60 generations)

## Methods

- *E. faecalis* V583 (vancomycin-resistant clinical isolate); 13 selecting conditions spanning antibiotics (AMP, DOX, SPT, LZD, CIP, NIT), biocides (CHX, TCS), preservative (NaBz), extreme pH (acid pH 1.5, base pH >10.5), and osmotic stress (KCl, NaCl)
- Serial-passage laboratory evolution: 30–60 days (~170–450 generations) for nonantibiotic stressors; 8 days (~60 generations) for antibiotics; selection in 96-well plates with sub- and super-inhibitory concentrations; single colony isolation on final day
- IC50 measurement: 6–10 concentration gradient; Hill-like dose-response fitting $f(x) = (1+(x/K)^h)^{-1}$; collateral effect $c \equiv \log_2(\text{IC}_{50,\text{Mut}}/\text{IC}_{50,\text{WT}})$; threshold at $|c| > 3\sigma_\text{WT}$; replicates of 3 (mutants) and 8 (wild-type)
- TCS and CHX replicate evolution: 32 independent populations per condition; 22 days (~170 generations)
- Whole-genome sequencing: single-isolate (Illumina MiSeq, U Michigan) and population-level (NextSeq 550, MiGS/U Pittsburgh) sequencing; breseq pipeline aligned to V583 reference (AE016830–AE016833); variant frequency cutoff >30%; Sanger confirmation of selected variants
- Sequential selection experiment: LZD selection (10 days, ~70–80 generations) followed by NaBz selection (10 days, ~70–80 generations); 8 replicate populations per condition
- Additive null model for sequential selection: expected resistance profile of sequential pair computed as element-wise sum of single-environment profiles (on log IC50 scale); predicted ensemble generated by pairwise averaging across replicate profiles

## Relationship to existing wiki

This paper is a direct companion to [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], sharing the *E. faecalis* V583 system, IC50 measurement protocol, and breseq sequencing pipeline. The antibiotic-selected populations and sequencing data from Maltas2019a are explicitly reused here as a comparison set. Where Maltas2019a mapped antibiotic-to-antibiotic collateral profiles and used them to design MDP-optimal cycling strategies, this paper extends the phenotypic map to include nonantibiotic stressors and uses sequential selection to experimentally demonstrate compounded sensitization.

The sequential LZD→NaBz experiment is a proof-of-concept for ideas closely related to [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — specifically the notion that sequential exposure to environments with orthogonal sensitizing effects can trap populations in states vulnerable to more agents. This is the ecological/nondrug analog of the multi-drug cycling strategies in Maltas2019a.

The finding that nonantibiotic-adapted populations carry mutations in known antibiotic resistance genes connects directly to [[topics/genetic-epistasis/_hub|genetic-epistasis]]: efflux pump mutations induced by CHX or osmotic stress produce unexpected collateral profiles because epistasis and genetic background modulate which phenotype a given mutation produces.

## Open questions raised

- Are the collateral sensitivities induced by nonantibiotic stressors stable over multiple rounds of selection, or do populations rapidly evolve to escape? Temporal stability was not tested in this study.
- What are the molecular mechanisms by which nonantibiotic selection (e.g., osmotic stress, low pH) induces antibiotic sensitivity? The marR-efflux hypothesis explains some results but not all.
- Do nonantibiotic stressors commonly encountered in clinical environments (hand sanitizers, food preservatives, hospital disinfectants) produce collateral sensitivity profiles that could inform treatment sequencing in patients?
- How well does the additive null model perform when epistasis is strong? The paper notes the model ignores epistasis and will fail when epistatic effects are large — when would a more sophisticated model be needed?
- Does the LZD→NaBz sensitization strategy generalize to three or more sequential steps, and can the additive model be iterated to design longer sequences?
- How do these results change in clinical *E. faecalis* isolates that may differ substantially from V583 in background mutations and resistance determinants?

## Conversion notes

Figures not extracted. Key figures:
- Fig. 1 (p. 2–3): 13×13 collateral profile matrix (selecting × testing conditions); pie chart breakdown of sensitivity/resistance fractions
- Fig. 2 (p. 4): Pearson correlation matrices between selecting-condition profiles and testing-condition profiles; significant pairwise scatter plots
- Fig. 3 (p. 7): TCS and CHX replicate evolution (32 populations each); variability histograms; correlation heatmaps
- Fig. 4 (p. 8): Additive null model heatmap predicting optimal pairs; experimental LZD/NaBz/sequential profiles; quantitative comparison and accuracy assessment
- Table 1 (p. 4–5): Full mutation table for all 13 evolved populations
- Table 2 (p. 6): Selecting conditions with class and mechanism
