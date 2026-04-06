---
title: "Molecular mechanisms of collateral sensitivity to the antibiotic nitrofurantoin"
authors: [Roemhild R, Linkevicius M, Andersson DI]
year: 2020
venue: "PLoS Biology"
doi: "10.1371/journal.pbio.3000612"
arxiv: ""
topics: [collateral-sensitivity]
lab_paper: false
canonical: false
relevance: high
ingested_by: "Claude"
---

## Summary

Roemhild et al. dissected the molecular mechanisms by which resistance to diverse antibiotics produces collateral sensitivity (CS) to nitrofurantoin (NIT), using a functional genetics approach in *E. coli* and *Salmonella enterica*. Three single-step resistant mutants — a *lon* mutant (tigecycline-resistant, 16× CS to NIT), a *spoT* mutant (mecillinam-resistant, 3× CS), and a *hemL* mutant (protamine-resistant, 4× CS) — were characterized using qRT-PCR, quantitative proteomics, radiolabelled drug uptake, genetic deletion, and overexpression experiments. The study identifies three distinct mechanisms: (1) overexpression of the nitroreductase enzymes NfsA and NfsB (shared by all three mutants); (2) increased drug uptake (hemL mutant); and (3) incompatibility of the resistance mutation with the cellular drug-response system (lon mutant) — where NIT-induced SOS activation leads to Lon-irreversible SulA accumulation and sustained growth arrest. NIT is identified as a particularly strong and mechanistically robust drug-switch target due to consistently large CS effects across diverse resistance backgrounds and its low clinical resistance rate.

## Conceptual contribution

This paper establishes that CS is mechanistically plural: the same drug (NIT) can be a CS target from multiple distinct resistance backgrounds through different molecular pathways. This has two important implications. First, it means CS to a given drug is more robust than single-mechanism explanations would suggest — it is unlikely to disappear if a pathogen evolves resistance through an alternative route, because multiple different resistance mechanisms can independently produce CS to NIT. Second, it defines a new mechanistic category for CS: **drug-response incompatibility**. In the *lon* mutant, CS does not arise from altered drug pharmacokinetics (the drug enters at normal or even reduced rates), but because the cell's own protective response to the drug — the SOS-mediated SulA accumulation that normally pauses growth for repair — cannot be resolved when Lon protease is absent, converting a normally transient and recoverable growth arrest into sustained lethality. This is mechanistically distinct from all prior CS mechanisms (efflux pump impairment, altered uptake, increased drug activation), and potentially general: any resistance mutation that disables a protease involved in clearing drug-response effectors could produce CS through the same logic.

A secondary contribution is the resolution of the NfsA/NfsB redundancy: NfsB has the larger effect on killing rate but NfsA is critical for initial survival, explaining why nfsA mutations appear first in the mutational trajectory toward NIT resistance. This temporal ordering has implications for anticipating which combinations of nitroreductase mutations will produce high-level NIT resistance.

## Key findings

- *lon* mutant (IS186 insertion in Lon promoter region, tigecycline-resistant): 16–35× CS to NIT; mechanism = nitroreductase overexpression (nfsA 8×, nfsB 5× at transcript level; protein levels correlate, R² = 0.941) + SOS/SulA incompatibility; CS fully suppressed by ΔsulA double mutant; partially suppressed by non-inducible LexA1(Ind-) allele (MIC restored 6×, still 3× below WT); strong temperature dependence (CS suppressed at 43°C via ClpYQ-mediated SulA degradation); characteristic delayed-onset kinetics (growth diverges from WT 2–5 h after NIT addition)
- *spoT* mutant (S305P substitution, mecillinam-resistant): 3× CS to NIT; mechanism = nfsB overexpression (significant); no significant change in NIT uptake; canonical regulatory knockouts (marA, rob, soxS, oxyR, mprA, sdsN137) do not explain nitroreductase upregulation — regulation is polygenic or via unknown regulator
- *hemL* mutant (*S. enterica* T297P substitution, protamine-resistant, small-colony variant): 4× CS to NIT; mechanism = increased drug uptake (doubled intracellular [³H]-NIT accumulation at 20 min, directly measured) + nitroreductase overexpression (nfsA and nfsB significantly upregulated); immediate-onset inhibition (no gap time, consistent with uptake mechanism)
- Nitroreductase overexpression effect size: up to 4.2× MIC reduction in *S. enterica*, up to 1.4× in *E. coli* (measured via pBAD overexpression constructs); NfsB has larger effect on killing rate; NfsA critical for initial survival (time-kill experiments); double nfsA-nfsB deletion strongly promotes survival at 24 mg/l NIT
- lon mutant NIT uptake is actually *reduced* relative to WT — yet CS is 16×; this establishes that the SOS/SulA mechanism is the dominant driver, operating despite unfavorable uptake kinetics
- Canonical regulatory pathways of nfsA/nfsB (marA, rob, soxS, oxyR, mprA, sdsN137) do not explain nitroreductase upregulation in any of the three CS mutants — tested systematically through scar-free deletions in all mutant backgrounds
- NIT identified as a robust drug-switch target: CS magnitude is 3–35× (strongest reported for any CS interaction in a systematic study at the time), CS is mechanistically convergent across diverse resistance backgrounds, NIT shows high stability to further resistance evolution, and clinical resistance rates are low

## Methods

- *E. coli* K-12 MG1655 and *S. enterica* serovar Typhimurium LT2; Müller-Hinton media for susceptibility testing; tryptone broth for growth rate measurements
- MIC measurement: Etest strips at standard (10⁶ cfu/ml) and high (10⁸ cfu/ml) inoculum densities; high inoculum reveals heteroresistance subpopulations
- Radiolabelled drug uptake: [³H]-NIT at 100 nCi/ml; timed sampling (0, 5, 10, 20, 60 min); cell pellet washes; scintillation counting normalized to OD600
- Global proteomics: TMT-labelled mass spectrometry; 2,390 proteins (*E. coli*) and 2,665 (*S. enterica*) quantified; nitroreductase protein abundance correlated with qRT-PCR (R² = 0.941)
- Nitroreductase overexpression: pBAD18 plasmid constructs; single and dual expression of nfsA, nfsB; 0.2% arabinose induction; validated by Etest MIC, exponential growth rate at 1-4 mg/l NIT, and time-kill at 24 mg/l NIT
- Genetic epistasis: 33 scar-free deletion/substitution strains constructed by duplication-insertion recombineering; P1/P22 transduction; verified by Sanger sequencing
- SOS response characterization: LexA1(Ind-) allele transferred by P1 transduction; temperature-dependence at 30°C, 37°C, 43°C; growth kinetics on Bioscreen C with 4-min OD600 interval; sliding-window analysis for onset of growth rate divergence

## Relationship to existing wiki

This paper provides the deepest mechanistic characterization of CS in the wiki. It directly extends and confirms the PMF/AcrAB mechanism characterized by [[papers/Lazar2013_AntibioticHypersensitivity|Lazar2013]] — Roemhild2020 cites that work as the "best studied example" of CS and uses radiolabelled uptake to provide the direct drug accumulation measurement that Lazar2013 was unable to perform for [³H]-NIT. The marR regulon connections systematically ruled out here also connect to [[papers/Lazar2018_CollateralSensitivityAMPs|Lazar2018]], which identified marR→WaaY as driving AMP-CS — but Roemhild2020 shows marR-pathway knockouts do not explain NIT-CS, clarifying that CS to NIT uses different regulatory routes.

The drug-response incompatibility mechanism (SOS/SulA) is conceptually distinct from all mechanisms characterized in other wiki papers and represents the most genuinely novel finding here. It suggests that CS cataloguing efforts should consider not just the resistance mechanism but also the drug-response systems activated by the target drug and whether resistance mutations disrupt those responses.

The confirmation of NIT as a strong CS target across diverse resistance backgrounds supports the clinical translation perspective of [[papers/Tandar2026_ClinicalCollateralSensitivity|Tandar2026]], which highlighted mechanism-linked CS as the most clinically actionable subclass. NIT-CS may qualify as mechanism-linked (via nitroreductase overexpression as a convergent pathway) in a way that many antibiotic-antibiotic CS pairs do not.

## Open questions raised

- What polygenic interactions or unknown regulators drive nitroreductase overexpression in the three CS mutants? Canonical regulatory networks (marA, soxS, rob, oxyR, mprA, sdsN137) were all ruled out; the upregulation appears to be polygenic.
- Is drug-response incompatibility a general CS mechanism applicable to other drug-response systems beyond the SOS response — e.g., heat shock, oxidative stress response, cell wall stress? If resistance mutations commonly disable proteases or response regulators, this mechanism category may be widespread.
- Are the three CS mechanisms characterized here specific to NIT (due to its nitroreductase-activation requirement and SOS induction), or are analogous mechanisms identifiable for other antibiotic-antibiotic CS pairs?
- What is the clinical prevalence of *lon*, *spoT*, and *hemL* mutations in pathogens isolated from UTI patients treated with mecillinam, tigecycline, or antimicrobial peptides — does mechanism-linked CS to NIT hold in clinical isolates?
- Can the delayed-onset kinetics of the *lon* mutant's CS be exploited to distinguish mechanism types in clinical or experimental settings without detailed molecular characterization?

## Conversion notes

Several figure images were not extracted per wiki convention. Key figures: Fig. 1 (MIC fold-changes for three CS mutants against their selecting drug and NIT); Fig. 2 (uptake dynamics and nitroreductase expression data panels); Fig. 3 (nitroreductase overexpression experiments — MIC, growth rate, time-kill); Fig. 4 (regulatory knockouts); Fig. 5 (SOS/SulA mechanism — model, SulA protein levels, temperature dependence, epistasis); Fig. 6 (delayed-onset growth kinetics in lon mutant). Conversion quality was good.
