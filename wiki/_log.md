# Operation Log

Append-only log of all wiki operations. Never edit or delete entries.
Format: `## [YYYY-MM-DD] operation | identifier`

## [2026-04-05] ingest | Good2017_MolecularEvolutionLTEE

Ingested Good, McDonald, Barrick, Lenski & Desai 2017 (Nature 551:45–50), a canonical non-lab paper constructing a time-resolved molecular fossil record by whole-genome metagenomic sequencing of 1,431 samples at 500-generation intervals across 60,000 generations of all 12 LTEE *E. coli* populations. Key findings: fixation probability scales as $p_\text{fix}(f) \sim f$ (quasi-neutral limit) throughout — adaptation is never mutation-limited but always interference-dominated; 9/12 populations develop long-lived genetic coexistence via negative frequency-dependent selection, with within-clade fixations continuing at steady rates even when population-wide fixations cease; selection coefficients remain ~1% throughout 60K generations; ~16 "missed opportunities" (p~0.003) provide statistical evidence for potentiation-based historical contingency at scale. Note: source PDF named GoodLenski.pdf (two most prominent authors). Updated distribution-of-fitness-effects, genetic-epistasis, and fitness-landscapes topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Kaznatcheev2019_GameAssay

Ingested Kaznatcheev, Peacock, Basanta, Marusyk & Scott 2019 (Nat Ecol Evol 3:450–456), a canonical non-lab paper developing the game assay methodology for measuring effective evolutionary games from coculture time-lapse data and applying it to H3122 ALK+ NSCLC with Alectinib resistance. Key findings: DMSO + CAF → Leader game (stable coexistence fixed point); all other conditions → Deadlock (resistant always dominant); CAFs and Alectinib each independently switch game type; resistant cells non-cell-autonomously fitter than parental in drug-free co-culture despite apparent equal monoculture growth. Note: source PDF named ArtemGameAssay.pdf (first author Kaznatcheev); cite key Kaznatcheev2019 follows first-author convention; Basanta, Marusyk, and Scott are joint corresponding authors. Updated frequency-dependent-selection and evolutionary-control topic hubs with specific cited contributions and conceptual advances; updated lab/overview.md.

## [2026-04-05] ingest | Wood2012_MaximumEntropy

Ingested Wood, Nishida, Sontag & Cluzel 2012 (PNAS), a canonical non-lab paper establishing that bacterial growth responses to three- and four-drug combinations are dominated by pairwise drug interactions (~97% of correlations), with pure higher-order interactions contributing only ~3%; validated via maximum entropy framework across diverse drug classes in *E. coli* and *S. aureus*. Derived simple algebraic Isserlis-theorem formulas $g_{ijk} = g_i g_{jk} + g_j g_{ik} + g_k g_{ij} - 2g_i g_j g_k$ for mechanism-independent multidrug prediction. Note: Wood is first author on this paper but it is a Cluzel lab paper from Wood's postdoc at Harvard; cite key Wood2012 follows first-author convention. Updated evolution-in-multidrug-environments and fitness-landscapes topic hubs; updated lab/overview.md.

---

## [2026-04-05] ingest | Couce2024_ChangingFitnessEffects

Ingested Couce, Limdi, Magnan, Owen, Herren, Lenski, Tenaillon & Baym 2024 (Science 383:eadd1417), a canonical non-lab paper measuring genome-wide DFE evolution across 50,000 generations of *E. coli* LTEE using transposon insertion libraries (UMI-TnSeq and INSeq). Key findings: macroscopic DFE shape conserved (deleterious tail, mean); beneficial tail contracts from non-exponential (ancestor) to exponential (evolved clones) — reconciling EVT predictions with prior inconsistent evidence; sign epistasis is pervasive (>90% of beneficial mutations flip sign in 2000 generations); target size predicts early adaptive targets better than fitness effects (r = 0.71 vs. 0.26); ~17% of essential genes changed essentiality in parallel across independent lineages. Note: source PDF named baymlenski.pdf (corresponding authors Baym + Lenski); cite key Couce2024 follows first-author convention; equal co-first-authors Couce and Limdi; equal co-last-authors Tenaillon and Baym. Updated distribution-of-fitness-effects, genetic-epistasis, and fitness-landscapes topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Yurtsev2013_BacterialCheating

Ingested Yurtsev, Chao, Datta, Artemova & Gore 2013 (Molecular Systems Biology 9:683), a canonical non-lab paper demonstrating that TEM-1 β-lactamase is a cooperative (public goods) behavior in *E. coli*: resistant cells degrade ampicillin extracellularly, enabling sensitive "cheater" cells to survive at 50× their monoculture MIC. Key findings: equilibrium resistant fraction $f_R \approx A_i / (V_{\max} N_i)$ validated over two orders of magnitude in density; stable coexistence via snowdrift game dynamics (each strain invades when rare); β-lactamase inhibitor paradox — tazobactam and sulbactam increase equilibrium f_R by raising $K_M$. Note: source PDF named BacterialCheating.pdf; cite key Yurtsev2013 follows first-author convention (Gore is last/corresponding author). Updated frequency-dependent-selection and evolutionary-control topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Ardell2024_GlobalEpistasis

Ingested Ardell, Martsul, Johnson & Kryazhimskiy 2024 (Science 386:87–92), a canonical non-lab paper measuring fitness effects of ~100 barcoded insertion mutations across 42 *S. cerevisiae* strains in 6 environments. Key finding: global epistasis slopes are nearly environment-invariant (87% of pairwise comparisons statistically indistinguishable); the environment tunes only one effective parameter, the pivot growth rate $\bar{\lambda}_e$, yielding the generalized global epistasis equation $\Delta\lambda_{mge} = b_m(\lambda_{ge} - \bar{\lambda}_e) + \eta_{me} + \xi_{mge}$; DFE moments collapse onto universal environment-independent curves when adjusted for the pivot. No mutation was unconditionally beneficial or deleterious across 42 backgrounds and 6 environments. Note: source PDF named SergeyEpistasis.pdf (corresponding author Kryazhimskiy); cite key Ardell2024 follows first-author convention. Updated genetic-epistasis, distribution-of-fitness-effects, and fitness-landscapes topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Michel2008_MultidrugsResistance

Ingested Michel, Yeh, Chait, Moellering & Kishony 2008 (PNAS), a canonical non-lab paper extending the mutant selection window (MSW) concept to two-drug combinations in *S. aureus* via high-throughput scanner-based colony imaging and a mathematical model decomposing $F_{XY}(C_X, C_Y)$ into single-drug resistance frequencies, drug epistasis $\eta_{XY}$, and cross-resistance $\xi$ (one free parameter). Key theoretical result: MSW decreases monotonically from synergy to antagonism when cross-resistance is absent. The model's growth function $\eta(C_X/x, C_Y/y)$ is the exact geometric rescaling assumption later formalized by Dean2020 and Gjini2021. Note: source PDF named kishony2008combo.pdf (last author); cite key Michel2008 follows first-author convention; equal-contribution co-first-author Yeh listed second. Updated evolution-in-multidrug-environments, evolutionary-control, and genetic-epistasis topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Hegreness2008_AcceleratedResistance

Ingested Hegreness, Shoresh, Damian, Hartl & Kishony 2008 (PNAS), a canonical non-lab paper establishing experimentally that synergistic drug combinations accelerate resistance evolution in *E. coli* relative to individual drugs (ρ = 0.683 between Bliss synergy S and adaptation rate α across 116 combinations of four antibiotics), while antagonistic combinations depress adaptation. Introduces the geometric isobologram model of resistance mutations as effective concentration reductions — the conceptual precursor to the geometric rescaling framework formalized by Dean2020 and Gjini2021. Note: source PDF named Kishony2008accel.pdf (last author); cite key Hegreness2008 follows first-author convention. Updated evolution-in-multidrug-environments, fitness-landscapes, and evolutionary-control topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Levy2015_LineageTracking

Ingested Levy, Blundell, Venkataram, Petrov, Fisher & Sherlock 2015 (Nature), a canonical non-lab foundational paper constructing a 500,000-barcode Cre-loxP lineage tracking system in *S. cerevisiae* monitoring ~25,000 adaptive lineages across ~168 generations of serial batch evolution. Key findings: the beneficial mutation rate spectrum $\mu(s)$ is non-exponential and structured — concentrated at moderate effects (2–5%) with an approximately flat tail at higher effects — directly challenging extreme value theory predictions; this structure produces two-phase evolutionary dynamics (deterministic early phase driven by the abundant moderate-effect class, stochastic late phase governed by rare high-effect mutations); ~6,000 "preexisting" mutations shared between replicates quantify standing variation in large populations as a general expectation. Fully populated the dna-barcoding-lineage-tracking hub (first paper for this hub); updated distribution-of-fitness-effects hub and lab/overview.md.

## [2026-04-05] lint | concept pages and open question annotations

Created 4 concept pages: geometric-rescaling, price-equation, sswm, adaptive-therapy. Annotated 3 open questions as partially addressed: (1) MDP policy robustness to misspecification → partially addressed by Weaver2024 RL approach (evolutionary-control hub); (2) shared maxima reconciliation with MDP success → addressed by Maltas2020 population-level argument (fitness-landscapes hub); (3) long-term maintenance of collateral sensitivity under cycling → partially addressed by Maltas2020 theoretical warning (collateral-sensitivity hub). Added wikilinks for new concept pages in evolution-in-multidrug-environments, fitness-landscapes, and evolutionary-control hubs.

## [2026-04-05] ingest | Gjini2021_PriceEquationMultidrug

Ingested Gjini & Wood 2021 (eLife), a canonical lab paper providing the formal population dynamics foundation for the geometric rescaling framework introduced empirically in Dean2020. Applies the Price equation to the 2D rescaling model ($g_i = G(\alpha_i x, \beta_i y)$) to show that resistance evolution is governed by Cov(α, g) and Cov(β, g); in the monomorphic limit reduces to weighted gradient dynamics Σ∇G, making explicit that drug interaction determines the fitness landscape shape and collateral effects constrain the direction of motion. Note: source PDF named WoodElife.pdf (PI name); cite key Gjini2021 follows first-author convention. Updated evolution-in-multidrug-environments, collateral-sensitivity, and evolutionary-control topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Weaver2024_RLDrugCycling

Ingested Weaver, King, Maltas & Scott 2024 (PNAS), a canonical lab paper demonstrating that deep Q-network RL agents can learn effective drug-cycling policies for antibiotic resistance control without knowledge of the underlying fitness landscape or evolutionary model. RL-fit (observing only current population fitness and previous drug) outperforms random cycling in 98/100 replicates and all two-drug protocols; RL-genotype approaches MDP (perfect-information) performance at r=0.96. Introduces the "opportunity landscape" concept. Model system: E. coli β-lactamase Mira et al. 2015 landscapes (16 genotypes × 15 β-lactam antibiotics). Note: source PDF filename WeaverRLDrug.pdf (no year); cite key Weaver2024 follows first-author convention. Updated evolutionary-control and fitness-landscapes topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Karslake2016_InoculumEffect

Ingested Karslake, Maltas, Brumm & Wood 2016 (PLoS Comput Biol), a canonical lab paper directly measuring per capita growth of E. faecalis V583 as a function of population density using custom turbidostats, establishing that density-dependent drug inhibition is pervasive and mediated in part by community-driven pH changes, and showing that this density dependence induces bistability of treatment outcomes in a PK/PD model. Note: source PDF is named Wood2016IE.pdf (PI name) but cite key is Karslake2016 (first author convention). Updated evolutionary-control hub with specific cited contributions; updated lab/overview.md.

## [2026-04-05] ingest | Dean2020_DrugComboEvolution

Ingested Dean, Maltas & Wood 2020 (PLoS Pathogens), a canonical lab paper characterizing how four two-drug antibiotic combinations spanning synergistic to suppressive interactions shape evolution of resistance in E. faecalis V583. Introduced the geometric rescaling framework linking resistance evolution to the ancestral 2D growth response surface, showing that synergistic combinations can accelerate resistance, suppressive combinations eliminate resistance to one drug entirely, and resistance profiles are nearly growth-optimized along contours connecting single-drug endpoints. First paper to populate the evolution-in-multidrug-environments hub; updated collateral-sensitivity hub with combination-therapy modulation of cross-resistance profiles; updated lab/overview.md.

## [2026-04-05] ingest | Farrokhian2022_CompetitiveExclusionNSCLC

Ingested Farrokhian, Maltas et al. 2022 (Science Advances), a canonical lab paper (equal-contribution first authorship with Jeff Maltas) measuring frequency-dependent ecological interactions between gefitinib-resistant and sensitive PC9 NSCLC cells via the evolutionary game assay. Established that monoculture fitness cost cannot predict competitive exclusion, that drug treatment flips competitive exclusion from resistant-to-sensitive to sensitive-to-resistant, and that lower drug doses may better control long-term tumor burden by maintaining competitive suppression. Note: source PDF filename misspelled as Farrhokian.pdf; wiki page and cite key use correct spelling Farrokhian2022. Updated frequency-dependent-selection and evolutionary-control topic hubs; updated lab/overview.md.

## [2026-04-05] ingest | Maltas2023_DrugDependence

Ingested Maltas et al. 2023 (Nat Ecol Evol), a canonical lab paper characterizing drug dependence in BRAF V600E melanoma, establishing that melanocytic differentiation state predicts drug dependence, identifying the MITF-loss/ERK-JunB-p21 mechanism, and deriving an analytically optimal drug holiday schedule validated experimentally and via ABM. Updated evolutionary-control and evolution-in-fluctuating-environments topic hubs with specific cited contributions and conceptual advances. Updated lab/overview.md to reflect BRAF melanoma as a model system, drug dependence as a research theme, and adaptive therapy as an experimental and theoretical approach.

## [2026-04-05] ingest | Maltas2019b_NonantibioticStressors

Ingested Maltas, Krasnick & Wood 2019 (Mol Biol Evol), a canonical lab paper extending collateral sensitivity mapping to 13 selecting conditions including nonantibiotic stressors (biocides, preservatives, pH, osmotic stress) in E. faecalis. NOTE: cite key disambiguation applied retroactively — Maltas & Wood 2019 (PLoS Biol) renamed to Maltas2019a; this paper assigned Maltas2019b. Updated collateral-sensitivity and evolution-in-fluctuating-environments topic hubs with specific cited contributions; updated lab/overview.md.

## [2026-04-05] ingest | Maltas2025_DynamicCollateralSensitivity

Ingested Maltas, Huynh & Wood 2025 (PLoS Biol), a canonical lab paper characterizing how collateral sensitivity profiles evolve over time in *E. faecalis* and introducing the dynamic MDP (d-MDP) framework for optimal drug scheduling under time-varying collateral landscapes. Updated collateral-sensitivity, evolutionary-control, and evolution-in-fluctuating-environments topic hubs with specific cited contributions and conceptual advances; updated evolutionary-control and collateral-sensitivity hubs to reflect that temporal dynamics of collateral profiles are now a central empirical finding rather than an open question; extended the MDP concept page with the d-MDP framework; updated lab/overview.md to reflect this extension of the lab's evolutionary steering research.

## [2026-04-05] ingest | Maltas2020_TunableFitnessLandscapes

Ingested Maltas, McNally & Wood 2020 (Evolution), a canonical lab paper developing a Markov chain model of asexual evolution in paired fitness landscapes with tunable interlandscape correlations. NOTE: PDF title not captured by converter — flagged [VERIFY] throughout. Updated fitness-landscapes, evolution-in-fluctuating-environments, and genetic-epistasis topic hubs with specific cited contributions and conceptual advances. Updated lab/overview.md to reflect fitness landscape theory as a core theoretical tool. NOTE: paper DOI and exact title require verification from original PDF page 1.

## [2026-04-05] ingest | Maltas2024_FrequencyDependentPreexistence

Ingested Maltas et al. 2024 (PRX Life), a canonical lab paper developing a mathematical framework for frequency-dependent ecological interactions and preexisting drug resistance, validated experimentally in NSCLC. Updated frequency-dependent-selection and distribution-of-fitness-effects topic hubs with specific cited contributions and conceptual advances. Updated lab/overview.md to reflect NSCLC as an experimental system and the eco-evolutionary framing of the lab's work.

## [2026-04-05] ingest | Maltas2019_CollateralSensitivity

Ingested Maltas & Wood 2019 (PLoS Biol), a canonical lab paper characterizing collateral sensitivity in *E. faecalis* across 900 mutant–drug combinations and introducing an MDP framework for optimal drug cycling. Updated topic hubs for collateral-sensitivity, evolutionary-control, and evolution-in-fluctuating-environments with specific cited contributions and conceptual advances. Created concept page for markov-decision-process. Updated lab/overview.md to reflect the lab's experimental system, methods, and research framing from this foundational paper.

## [2026-04-04] init | wiki scaffold

Initialized wiki directory structure, all topic hubs, index, log, and lab overview.
No papers ingested. Quartz publishing infrastructure installed and connected to GitHub.
