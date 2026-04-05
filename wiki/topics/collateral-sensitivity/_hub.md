# Collateral Sensitivity

## What this topic is about

Collateral sensitivity refers to the phenomenon where a population that has evolved resistance to one drug becomes more sensitive — not just equally sensitive — to a different drug. This is distinct from cross-resistance, where resistance to one drug confers resistance to another. Collateral sensitivity arises because the mutations that confer resistance often impose fitness costs or alter cellular physiology in ways that create new vulnerabilities.

The central question in this area is whether collateral effects are predictable and exploitable. Early work established that collateral effects exist and are common. A key conceptual resolution introduced by [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] is that individual-level unpredictability and population-level tractability can coexist: collateral profiles are highly heterogeneous across independently evolved mutants, yet they cluster into statistically coherent groups defined by drug class. This shifts the problem from "can we predict which mutant will be collaterally sensitive?" to "can we characterize the distribution of collateral effects well enough to design rational policies?" The answer — at least in *E. faecalis* — is yes.

A further conceptual advance from this work is that the right unit of analysis for treatment design is not the individual mutant but the *population-level distribution* of collateral profiles. The stochasticity of individual evolutionary outcomes is not an obstacle but an input to a probabilistic control framework. This reframing from deterministic profile exploitation to stochastic policy optimization represents a significant maturation of the field.

A complementary extension, introduced by [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]], is that collateral effects are not confined to antibiotic-antibiotic pairs — they are a general feature of bacterial adaptation spanning chemically diverse stressors, including biocides, preservatives, extreme pH, and osmotic stress. Collateral sensitivity to antibiotics is common even after selection by entirely non-drug agents: more than half (58%) of collateral effects in nonantibiotic-selected *E. faecalis* populations are sensitivities rather than resistances. Crucially, because different nonantibiotic stressors sensitize bacteria to different antibiotics, sequential exposure to orthogonally sensitizing environments can compound vulnerabilities beyond what any single stressor achieves. This raises the possibility that nonantibiotic agents in the patient environment — hand sanitizers, food preservatives, hospital disinfectants — could be leveraged (or avoided) as evolutionary levers.

A closely related extension, introduced by [[papers/Dean2020_DrugComboEvolution|Dean2020]], shows that **simultaneous two-drug environments modulate and can eliminate the collateral effects that single-drug selection produces**. When *E. faecalis* evolves resistance to CRO alone, the resulting population shows CIP collateral sensitivity; when it evolves resistance to CIP alone, it shows CRO collateral sensitivity. But when populations evolve in a CRO-CIP combination, these collateral sensitivities are absent: the combination selects for resistance profiles that avoid the collateral costs that single-drug selection imposes. Similarly, combinations can shift resistance profiles away from the endpoints that produce maximal collateral effects and toward intermediate profiles that balance the two. This means that the collateral landscape — not just the resistance level — depends on the pharmacological context in which resistance evolves, with implications for how collateral effects can be exploited in sequential (post-combination) treatment protocols.

A fourth conceptual layer, introduced by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]], is that even the population-level collateral profile is not a fixed object — it evolves over time as resistance accumulates. Early adaptation is dominated by broad collateral resistance (over 91% of instantaneous effects in the first two days of selection), plausibly driven by nonspecific efflux or stress responses that confer low-level multi-drug resistance. As the population is forced to acquire more targeted resistance mutations under escalating drug pressure, the landscape shifts toward collateral sensitivity. This temporal arc creates transient windows during which collateral sensitivity to a second drug is maximized — windows that must be precisely timed to exploit. The implication for treatment design is significant: static characterization of collateral profiles (as in endpoint measurements) captures only a snapshot of a moving target. Optimal drug scheduling requires knowledge of *when* collateral sensitivity occurs, not just *whether* it occurs.

## Key papers

- Maltas2019a showed that collateral effects are pervasive across 900 mutant–drug combinations in *E. faecalis* V583 (~73% of combinations show statistically significant changes in IC50) but highly heterogeneous, with profiles for parallel populations evolved to the same drug sometimes differing qualitatively [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a showed that despite individual-level heterogeneity, collateral sensitivity profiles cluster by drug class: hierarchical clustering partitions 52 evolved mutants into 7 groups corresponding exactly to known drug classes (cell wall inhibitors, tetracyclines, lipopeptides, oxazolidinones, fluoroquinolones, aminocyclitols, antimycobacterials) [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a documented that DAP cross-resistance is surprisingly common (64% of all lineages evolved to other drugs), and that LZD selection can drive higher CHL resistance than direct CHL selection by steering populations across a fitness valley [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a found a strong, repeatable collateral sensitivity to rifampicin (RIF) when populations are evolved to cell wall synthesis inhibitors — an effect not previously reported in *E. faecalis* [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2019a showed that variability in collateral profiles between parallel replicates correlates with the degree of resistance to the selecting drug (Spearman $\rho = 0.82$, $p < 10^{-3}$ excluding SPT), indicating that some drugs are more reliable for establishing robust cycling protocols than others [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]

- Maltas2025 showed that collateral effects are temporally dynamic in *E. faecalis* V583: early adaptation (days 0–2) confers collateral resistance in 91.25% of instantaneous effects, while subsequent 2-day windows show 33–39% collateral resistance and 52–57% collateral sensitivity — a global shift that is statistically significant but does not overcome the initial resistance burst in cumulative terms [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2025 showed that collateral profiles at any single time point correctly predict only ~37–41% of profiles at the next time point (2 days later), indicating near-chance predictability at the individual drug-pair level despite the clear global trend [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2025 identified time-dependent dosing windows where collateral sensitivity is maximized: in a 14-day CRO-selection experiment, DOX collateral sensitivity peaks during a 6-day window (days 8–13) confirmed by one-way ANOVA and post-hoc pairwise comparisons; switching before or after this window produces different average sensitivities and, in some populations, collateral resistance [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

- Maltas2019b showed that collateral sensitivity to antibiotics is common in *E. faecalis* evolved to nonantibiotic stressors (biocides CHX and TCS, preservative NaBz, osmotic stress NaCl/KCl, extreme pH): 58% of collateral effects are sensitivities, not resistances, across 170 condition-mutant combinations [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]

- Maltas2019b demonstrated that sequential LZD→NaBz selection induces sensitivity to ~6 conditions on average — significantly more than LZD alone (~4) or NaBz alone (~4) — confirming that orthogonal environmental sequences can compound sensitizing effects; an additive null model successfully identified this pair as optimal and its predicted profiles matched experimental results [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]

- Maltas2019b identified mutations in known antibiotic resistance genes in nonantibiotic-selected populations (e.g., marR efflux regulator in osmotic-stress-adapted populations; penicillin-binding protein EF\_1148 in NaBz-adapted populations), providing candidate mechanisms for cross-environment collateral effects while noting that phenotype-genotype relationships are complicated by epistasis and genetic background [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]

- Dean2020 showed that collateral sensitivities observed under single-drug selection can be eliminated by combination therapy: CRO-selected populations show CIP collateral sensitivity, and CIP-selected populations show CRO collateral sensitivity, but populations evolved in CRO-CIP combinations display neither collateral effect — the combination selects for profiles that avoid the collateral costs of single-drug resistance [[papers/Dean2020_DrugComboEvolution|Dean2020]]

- Dean2020 showed that resistance profiles selected under antagonistic drug combinations (AMP-STR, CRO-CIP) are nearly growth-optimized along contours in resistance space connecting the profiles of single-drug-selected populations, suggesting that selection efficiently moves populations toward the best accessible collateral trade-off under each dosage condition [[papers/Dean2020_DrugComboEvolution|Dean2020]]

- Maltas2025 reported that no evolved strain became collaterally sensitive to LZD at any time point, and DAP collateral sensitivity was rare throughout — notable because these are last-resort antibiotics for MDR gram-positive infections and their collateral profiles appear stable across the evolutionary trajectory [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — framework for designing optimal drug-cycling policies from collateral sensitivity data
- **IC50 measurement via Hill-like dose-response fitting** — $f(x) = (1 + (x/K)^h)^{-1}$; used to quantify resistance as $C \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$
- **Serial-passage laboratory evolution** — 8-day protocol with daily 200-fold dilutions and escalating drug concentrations; 4 replicate populations per drug
- **Hierarchical clustering on collateral profile vectors** — correlation metric distance; reveals drug-class structure in phenotypic space

## Open questions

- How conserved are collateral sensitivity profiles across closely related species or strains? Recent work suggests conservation across *E. coli* isolates [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] cites; needs direct testing in *E. faecalis* clinical isolates.
- How much do collateral effects depend on the mechanism of resistance (target modification vs. efflux vs. enzymatic inactivation)? Genome sequencing identifies candidate genes but cannot resolve mechanisms [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]].
- Can collateral sensitivity be maintained over multiple rounds of drug cycling, or do populations evolve cross-resistance to all drugs in the cycle? The MDP experiments run for 20 days but longer-term dynamics remain unknown [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]].
- ~~How do collateral profiles change dynamically as resistance accumulates?~~ **Addressed by [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]]**: early adaptation strongly favors collateral resistance; later stages shift toward sensitivity; but individual drug-pair dynamics are idiosyncratic and near-unpredictable between time steps. New open question: what molecular mechanisms drive this global temporal shift, and how conserved is it across species and drug panels?
- What are the molecular mechanisms driving the temporal shift from collateral resistance to sensitivity? Early efflux/stress-response resistance is a plausible hypothesis for the initial collateral resistance burst, but genotypic data are not reported in [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]].
- How wide are transient collateral sensitivity windows for drug pairs beyond CRO→DOX, and can window timing and width be predicted from early-timepoint collateral data?
- Do nonantibiotic stressors encountered in clinical settings (biocides, preservatives, osmotic environments) systematically shift bacterial populations toward antibiotic sensitivity, resistance, or neither? [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]] shows this is measurable in laboratory evolution but clinical relevance needs direct study.
- Can sequential nonantibiotic→antibiotic or nonantibiotic→nonantibiotic selection strategies be extended beyond two steps using the additive model as a guide, and how does epistasis accumulate across longer sequences? [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]]
- How reliably can the collateral effects produced by single-drug selection be exploited in sequential protocols when prior combination therapy has already eliminated those collateral sensitivities? [[papers/Dean2020_DrugComboEvolution|Dean2020]] shows that combination selection removes the collateral sensitivities that single-drug selection produces, raising the question of whether clinical patients who received combination therapy have a different collateral sensitivity landscape than those who received single drugs.
- Does epistasis between resistance mutations reshape collateral profiles in ways that undermine the static MDP model? [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] A theoretical study of paired fitness landscapes [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]] shows that even anticorrelated landscape pairs (the model of mutual collateral sensitivity) can generate shared fitness maxima under sufficient ruggedness, implying that cycling drugs with mutual collateral sensitivity may still produce cross-resistance — a warning that the benefit of collateral sensitivity cycling depends on the epistatic structure of the resistance landscape.

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Definition and phenomenology | developing | Maltas2019a and Maltas2019b provide extensive *E. faecalis* data across antibiotic and nonantibiotic stressors; need gram-negative and clinical comparisons |
| Collateral effects across antibiotic/nonantibiotic boundary | developing | Maltas2019b establishes prevalence and sequential compounding in *E. faecalis*; clinical relevance and generalization to other species needed |
| Modulation of collateral effects by combination therapy | developing | Dean2020 shows combination environments eliminate single-drug collateral sensitivities; broader characterization needed |
| Mechanistic basis of collateral effects | thin | Candidate genes identified but mechanisms not resolved |
| Temporal dynamics of collateral profiles | developing | Maltas2025 establishes global temporal trends in *E. faecalis*; mechanistic basis and cross-system generality needed |
| Population-level statistical structure and drug-class clustering | developing | Maltas2019a establishes this in *E. faecalis*; generality across systems needed |
| Experimental measurement methods (IC50, dose-response, serial passage) | strong | Maltas2019a and Maltas2025 provide a detailed methodological blueprint |
| Transient dosing windows and drug-switch timing | developing | Maltas2025 establishes the concept with CRO/DOX; needs characterization across drug pairs |
| Fitness costs of resistance and their relationship to collateral sensitivity | developing | Maltas2019a measures growth costs; mechanistic link to collateral effects not established |
| Implications for treatment design | developing | Maltas2019a and Maltas2025 are the key entry points; broader clinical translation thin |
| Cross-organism and cross-drug generality | thin | A critical gap; only *E. faecalis* V583 characterized in depth |

## Cross-topic connections

- [[topics/evolutionary-control/_hub|evolutionary-control]] — collateral sensitivity is the primary mechanism exploited in the MDP-based drug cycling framework introduced by [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]]
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential drug protocols that exploit collateral effects are the experimental setting for testing control strategies
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — collateral effects reflect the structure of the resistance fitness landscape across drug environments; LZD→CHL cross-resistance illustrates fitness valley crossing
- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis between resistance mutations can reshape collateral profiles over time
