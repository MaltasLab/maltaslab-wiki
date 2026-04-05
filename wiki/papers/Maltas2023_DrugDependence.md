---
title: "Drug dependence in cancer is exploitable by optimally constructed treatment holidays"
authors: [Maltas J, Killarney ST, Singleton KR, Strobl MAR, Washart R, Wood KC, Wood KB]
year: 2023
venue: "Nature Ecology & Evolution"
doi: "10.1038/s41559-023-02255-x"
arxiv: ""
topics: [evolutionary-control, evolution-in-fluctuating-environments]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Maltas et al. characterize drug dependence — the phenomenon where MAPKi-resistant *BRAF*V600E melanoma cells proliferate faster *with* drug than without — across a panel of over 75 resistant clones from 7 cell lines. They show that the pre-treatment differentiation state of melanoma (melanocytic vs. dedifferentiated) is the primary predictor of whether drug dependence will emerge, and establish that adaptive loss of MITF during resistance drives the ERK2–JunB–p21 axis responsible for drug-removal-induced cell cycle arrest. Using a simple mathematical model of mixed sensitive and resistant subpopulations, they derive an analytically optimal drug holiday schedule and experimentally validate it. They further demonstrate that a "blind" adaptive therapy algorithm — which requires only total population size measurements — achieves near-optimal outcomes without knowledge of individual subpopulation growth rates. A spatial agent-based model confirms the simple model remains accurate at low densities and can be updated to account for spatial competition at high densities.

## Conceptual contribution

The paper establishes drug dependence as a quantitatively optimizable therapeutic lever, not merely a clinical curiosity. Three conceptual advances are bundled together:

**1. Predictability of drug dependence.** Drug dependence had been observed in specific resistant melanoma cell lines but not systematically understood. This paper shows it is not stochastic or resistance-mechanism-specific — it is determined by the pre-treatment transcriptional state. Melanocytic (MITFhigh) tumors are *primed* for addiction because MITF loss during resistance acquisition leaves cells molecularly unable to buffer ERK hyperactivation. Dedifferentiated tumors, whose JunB target genes are already highly expressed and which are already resistant to ERK–JunB–p21 signaling, do not develop dependence regardless of resistance mechanism. This transforms drug dependence from an unpredictable outcome into a patient-stratifiable prediction.

**2. Analytical optimality.** The optimal fraction of time on drug, $f_\text{on} = 1/(1+\gamma)$, is derived analytically from measurable growth rates alone, where $\gamma = (k_{1,\text{on}} - k_{2,\text{on}})/(k_{2,\text{off}} - k_{1,\text{off}})$ depends only on the four per-capita growth rates of the two subpopulations under drug-on and drug-off conditions. This is optimal in the long-time limit because it is the unique schedule that simultaneously satisfies two conditions: (a) maintains population heterogeneity (prevents either subpopulation from taking over) and (b) achieves lower total population growth than either static treatment. This schedule is robust to the presence of non-dependent resistant cells as long as the latter grow at similar rates in drug and drug-free conditions.

**3. Adaptive therapy as a practical bridge.** The optimal schedule requires measuring individual subpopulation growth rates — information unavailable in a clinical setting. The paper shows that a simple feedback algorithm — apply whichever condition currently produces the lower observed growth rate; switch when the alternative becomes better — converges to the optimal schedule given sufficiently frequent population-level measurements. This makes the mathematical framework clinically actionable: the required measurement (tumor burden) is increasingly accessible via circulating tumor DNA. The paper thus closes the loop from mathematical theory to clinical strategy.

Taken together, this work extends the lab's evolutionary control framework from antibiotic resistance (where collateral sensitivity profiles are the constraint being exploited) to cancer drug resistance (where drug dependence is the constraint). Both cases share the same conceptual architecture: exploiting a *cost of resistance* — a state in which the resistance mechanism itself creates vulnerability — to design treatment strategies that steer populations toward exploitable states.

## Key findings

- Melanocytic (MITFhigh, SOX10high, AXLlow) *BRAF*V600E cell lines (COLO679, SKMEL5, SKMEL28) consistently give rise to drug-dependent resistant clones across >65 individual clones; dedifferentiated lines (A375, UACC62) produce no drug-dependent clones despite harboring diverse resistance mechanisms
- Mechanism: MITF is lost during MAPKi resistance in melanocytic models via adaptive dedifferentiation; MITF loss removes a molecular buffer against ERK hyperactivation; upon drug withdrawal, ERK rebounds, driving JunB–p21 accumulation and G1 arrest; CRISPR knockout of JunB or ERK inhibition rescues proliferation
- MITF re-expression in MAPKi-resistant SKMEL28 models abolishes JunB–p21 induction and rescues proliferation upon drug withdrawal; SOX10 re-expression has no effect — MITF is specifically required
- Ectopic EGFR expression (which hyperactivates ERK) arrests melanocytic but not dedifferentiated lines; rescued by low-dose ERKi — confirming that dedifferentiated melanoma is intrinsically resistant to ERK hyperactivation, not just ERK reactivation per se
- DepMap analysis (63 BRAF/NRAS-mutant melanoma lines): melanocytic lines are significantly more dependent on PPP6C and DUSP4 — phosphatases that repress ERK — confirming broad ERK-hyperactivation sensitivity across the melanocytic class
- Optimal drug holiday formula (long-time limit): $f_\text{on} = \frac{1}{1+\gamma}$, where $\gamma \equiv \frac{k_{1,\text{on}} - k_{2,\text{on}}}{k_{2,\text{off}} - k_{1,\text{off}}}$; experimentally validated ($f_\text{on} \approx 0.29$ for SKMEL28, outperforming static drug and static drug-free in 9-day experiments)
- Finite-time correction: $f_\text{on}(T) = \frac{1}{1+\gamma} + \frac{1}{T}\log\left(\frac{n_1(k_{1,\text{off}}-k_{1,\text{on}})}{n_2(k_{2,\text{on}}-k_{2,\text{off}})}\right)$; predicts that static drug treatment is initially optimal and schedule with increasing drug holidays becomes optimal over longer timescales — confirmed experimentally over 30 days
- Non-dependent resistant cells do not change the identity of the optimal schedule but limit therapy utility when present in large proportions
- Blind adaptive therapy (48-day experiment): achieves GI50 values equivalent to a known 50:50 mixture of sensitive and resistant cells — demonstrating near-complete maintenance of population heterogeneity — while static treatments produced fully sensitive or fully resistant populations
- ABM: well-mixed model predictions are accurate at low density; at high density, spatial competition asymmetrically affects growth rates and shifts the optimal $f_\text{on}$; time-updating the optimal schedule from ABM-derived growth rates recovers ~8% lower tumor burden and ~8% longer time to escape compared with the static well-mixed optimum

## Methods

- *BRAF*V600E mutant melanoma cell lines: A375, COLO679, UACC62, WM793, HS294T, SKMEL5, SKMEL28; resistance derived by escalating dose or high-dose shock (PLX4720 BRAFi, AZD6244 MEKi, or combination)
- Drug dependence assay: crystal violet staining of parental and resistant lines; drug dependence defined as ≥2× proliferation rate with MAPKi vs. without
- Clonogenic growth assays: 1,000–5,000 cells per well, 14–21 day treatment with fresh media/drug every 72–96 h, crystal violet quantification via ImageJ ColonyArea plugin
- DepMap transcriptomic analyses: two-class comparison (addictive vs. non-addictive lines) using Expression Public 22Q4; GSEA with melanocytic/neural-crest-like/undifferentiated gene signatures; ssGSEA for JunB target gene scores and melanocytic classification across 63 BRAF/NRAS-mutant lines
- Mechanistic perturbations: lentiviral overexpression of MITF, SOX10, EGFR-ORF, JunB; CRISPR/Cas9 knockout of JunB (TKOv3-derived sgRNAs); western blot for ERK, p-ERK, JunB, FRA1, p21, MITF, SOX10, EGFR, AXL; cell cycle analysis by propidium iodide / flow cytometry
- Growth rate measurement: 6-day assays in 10 cm plates, cell count by Coulter counter, $\mu$ from $\ln N = \ln N_0 + \mu\tau$
- Mixed-population scheduling experiments: 9:1 or other specified ratios of resistant:parental cells; 5 different schedules compared; cells counted at endpoints
- Mathematical model: two-subpopulation exponential growth model; optimal $f_\text{on}$ derived analytically; blind adaptive therapy algorithm switches treatment condition based on observed growth rate comparison
- 2D on-lattice ABM: Hybrid Automata Library; 200×200 lattice, von Neumann neighborhood; constant birth rates (environment-dependent) and equal death rates; no cell migration; drug environment assumed homogeneous

## Relationship to existing wiki

This paper extends the lab's evolutionary control framework from antibiotic resistance (*E. faecalis*) to cancer (BRAF melanoma), using a structurally analogous approach: identify an evolutionary constraint (here, drug dependence rather than collateral sensitivity), characterize its predictability and mechanism, and derive an optimal control strategy from a mathematical model. The analytical approach mirrors [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] — both derive optimal treatment policies from measurable biological parameters — but the mechanism exploited is distinct.

The "blind" adaptive therapy algorithm in this paper is also conceptually related to the MDP framework in [[concepts/markov-decision-process|Markov decision process]] and [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]: all three approaches design treatment policies that optimize long-term population control by accounting for evolutionary dynamics. Drug holidays represent a different operational setting (drug-on/off alternation) from the multi-drug cycling of the MDP work, but the underlying logic — exploit an evolutionary trade-off via scheduled treatment switching — is shared.

The patient stratification finding (differentiation state predicts drug dependence) connects to clinical translation questions raised in [[topics/evolutionary-control/_hub|evolutionary-control]] hub. The ABM validates spatial robustness of simple models — relevant to [[topics/fitness-landscapes/_hub|fitness-landscapes]] and the broader question of when well-mixed population models are sufficient approximations.

## Open questions raised

- Can pre-treatment biopsy transcriptomics (melanocytic vs. dedifferentiated classification) prospectively identify patients whose tumors will become MAPKi-dependent — and is this achievable from liquid biopsy alone?
- Does the drug dependence phenotype persist through multiple rounds of treatment switching, or do populations eventually evolve resistance to the holiday schedule itself?
- The ABM predicts an ~8% improvement from spatially updated schedules — what additional spatial structure (gradients, necrotic cores, vasculature) would further shift the optimum, and how can this be incorporated into a clinically actionable monitoring strategy?
- How do de novo mutations — ignored in the current model — interact with the drug holiday schedule? Does the holiday create windows of elevated mutational risk that could seed new resistance lineages?
- Does drug dependence arise in other targeted therapy systems (e.g., EGFR inhibition in NSCLC) and is the melanocytic differentiation-state logic generalizable to other lineage-defining transcription factors?
- The clinical trial of intermittent BRAF/MEK inhibition failed — the paper argues suboptimal scheduling and lack of patient stratification are responsible. Can the analytical framework presented here be prospectively tested in a trial that incorporates differentiation-state screening and model-guided schedule optimization?

## Conversion notes

Figures are not extracted. Key figures based on captions and context:
- Fig. 1: Drug dependence panel across cell lines; clonal analysis; DepMap DEG comparison and GSEA establishing melanocytic enrichment
- Fig. 2: Mechanistic western blots; EGFR ectopic expression experiments; DepMap DUSP4/PPP6C dependency analysis
- Fig. 3: MITF manipulation experiments; JunB overexpression clonogenic assays
- Fig. 4: Drug scheduling experiments; model-predicted vs. experimental optimal $f_\text{on}$; long-term population tracking via EGFR surface marker
- Fig. 5: Blind adaptive therapy experiment (48-day); GI50 endpoint comparison; non-dependent resistant cell fraction experiments
- Fig. 6: ABM representative simulations; well-mixed vs. spatial optimum comparison; tumor burden and escape time metrics
