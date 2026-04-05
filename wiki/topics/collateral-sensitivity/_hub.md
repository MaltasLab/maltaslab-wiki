# Collateral Sensitivity

## What this topic is about

Collateral sensitivity refers to the phenomenon where a population that has evolved resistance to one drug becomes more sensitive — not just equally sensitive — to a different drug. This is distinct from cross-resistance, where resistance to one drug confers resistance to another. Collateral sensitivity arises because the mutations that confer resistance often impose fitness costs or alter cellular physiology in ways that create new vulnerabilities.

The central question in this area is whether collateral effects are predictable and exploitable. Early work established that collateral effects exist and are common. A key conceptual resolution introduced by [[papers/Maltas2019_CollateralSensitivity|Maltas2019]] is that individual-level unpredictability and population-level tractability can coexist: collateral profiles are highly heterogeneous across independently evolved mutants, yet they cluster into statistically coherent groups defined by drug class. This shifts the problem from "can we predict which mutant will be collaterally sensitive?" to "can we characterize the distribution of collateral effects well enough to design rational policies?" The answer — at least in *E. faecalis* — is yes.

A further conceptual advance from this work is that the right unit of analysis for treatment design is not the individual mutant but the *population-level distribution* of collateral profiles. The stochasticity of individual evolutionary outcomes is not an obstacle but an input to a probabilistic control framework. This reframing from deterministic profile exploitation to stochastic policy optimization represents a significant maturation of the field.

## Key papers

- Maltas2019 showed that collateral effects are pervasive across 900 mutant–drug combinations in *E. faecalis* V583 (~73% of combinations show statistically significant changes in IC50) but highly heterogeneous, with profiles for parallel populations evolved to the same drug sometimes differing qualitatively [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that despite individual-level heterogeneity, collateral sensitivity profiles cluster by drug class: hierarchical clustering partitions 52 evolved mutants into 7 groups corresponding exactly to known drug classes (cell wall inhibitors, tetracyclines, lipopeptides, oxazolidinones, fluoroquinolones, aminocyclitols, antimycobacterials) [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 documented that DAP cross-resistance is surprisingly common (64% of all lineages evolved to other drugs), and that LZD selection can drive higher CHL resistance than direct CHL selection by steering populations across a fitness valley [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 found a strong, repeatable collateral sensitivity to rifampicin (RIF) when populations are evolved to cell wall synthesis inhibitors — an effect not previously reported in *E. faecalis* [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

- Maltas2019 showed that variability in collateral profiles between parallel replicates correlates with the degree of resistance to the selecting drug (Spearman $\rho = 0.82$, $p < 10^{-3}$ excluding SPT), indicating that some drugs are more reliable for establishing robust cycling protocols than others [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

## Key concepts and methods

- [[concepts/markov-decision-process|Markov decision process (MDP)]] — framework for designing optimal drug-cycling policies from collateral sensitivity data
- **IC50 measurement via Hill-like dose-response fitting** — $f(x) = (1 + (x/K)^h)^{-1}$; used to quantify resistance as $C \equiv \log_2(\text{IC}_{50,\text{Mut}} / \text{IC}_{50,\text{WT}})$
- **Serial-passage laboratory evolution** — 8-day protocol with daily 200-fold dilutions and escalating drug concentrations; 4 replicate populations per drug
- **Hierarchical clustering on collateral profile vectors** — correlation metric distance; reveals drug-class structure in phenotypic space

## Open questions

- How conserved are collateral sensitivity profiles across closely related species or strains? Recent work suggests conservation across *E. coli* isolates [[papers/Maltas2019_CollateralSensitivity|Maltas2019]] cites; needs direct testing in *E. faecalis* clinical isolates.
- How much do collateral effects depend on the mechanism of resistance (target modification vs. efflux vs. enzymatic inactivation)? Genome sequencing identifies candidate genes but cannot resolve mechanisms [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].
- Can collateral sensitivity be maintained over multiple rounds of drug cycling, or do populations evolve cross-resistance to all drugs in the cycle? The MDP experiments run for 20 days but longer-term dynamics remain unknown [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].
- How do collateral profiles change dynamically as resistance accumulates (time-varying collateral sensitivity)? The current model assumes static profiles [[papers/Maltas2019_CollateralSensitivity|Maltas2019]].
- Does epistasis between resistance mutations reshape collateral profiles in ways that undermine the static MDP model? [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Definition and phenomenology | developing | Maltas2019 provides extensive *E. faecalis* data; need gram-negative and clinical comparisons |
| Mechanistic basis of collateral effects | thin | Candidate genes identified but mechanisms not resolved |
| Population-level statistical structure and drug-class clustering | developing | Maltas2019 establishes this in *E. faecalis*; generality across systems needed |
| Experimental measurement methods (IC50, dose-response, serial passage) | strong | Maltas2019 provides a detailed methodological blueprint |
| Fitness costs of resistance and their relationship to collateral sensitivity | developing | Maltas2019 measures growth costs; mechanistic link to collateral effects not established |
| Implications for treatment design | developing | Maltas2019 is the key entry point; broader clinical translation thin |
| Cross-organism and cross-drug generality | thin | A critical gap; no papers yet beyond the single study |

## Cross-topic connections

- [[topics/evolutionary-control/_hub|evolutionary-control]] — collateral sensitivity is the primary mechanism exploited in the MDP-based drug cycling framework introduced by [[papers/Maltas2019_CollateralSensitivity|Maltas2019]]
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — sequential drug protocols that exploit collateral effects are the experimental setting for testing control strategies
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — collateral effects reflect the structure of the resistance fitness landscape across drug environments; LZD→CHL cross-resistance illustrates fitness valley crossing
- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis between resistance mutations can reshape collateral profiles over time
