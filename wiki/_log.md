# Operation Log

Append-only log of all wiki operations. Never edit or delete entries.
Format: `## [YYYY-MM-DD] operation | identifier`

---

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
