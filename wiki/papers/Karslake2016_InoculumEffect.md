---
title: "Population Density Modulates Drug Inhibition and Gives Rise to Potential Bistability of Treatment Outcomes for Bacterial Infections"
authors: [Karslake J, Maltas J, Brumm P, Wood KB]
year: 2016
venue: "PLOS Computational Biology"
doi: "10.1371/journal.pcbi.1005098"
arxiv: ""
topics: [evolutionary-control]
lab_paper: true
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Karslake, Maltas, Brumm & Wood (2016) directly measure per capita growth rate of *E. faecalis* as an explicit function of population density and drug concentration using custom computer-automated turbidostats — overcoming the classical limitation that inoculum effect (IE) measurements yield only a binary survival/death outcome as density varies. They find that density-dependent drug inhibition is pervasive across nine antibiotics, with most drugs showing decreased inhibitory activity at higher densities and ampicillin showing the opposite. For several drugs, the density dependence is driven by community-level pH changes during growth. Incorporating these empirical relationships into logistic population growth and pharmacokinetic/pharmacodynamic (PK/PD) models, they show that density dependence can induce **bistability** in treatment outcomes — high-density infections may fail to clear even at drug doses more than 1000× the MIC — and that optimal step-like dosing protocols can partially mitigate these effects.

## Conceptual contribution

This paper establishes that **population density is a primary determinant of antibiotic efficacy** in ways that classical MIC-based measurements fundamentally cannot capture. The IE is typically quantified by measuring MIC as a function of initial inoculum size — a binary outcome that conflates density-dependent effects with time-varying dynamics. By holding populations at fixed densities using continuous culture, this paper provides the functional relationship $g(D, n)$ directly, and parameterizes it with a single phenomenological rate constant $\varepsilon$ that quantifies how effectively cell density reduces (or increases) the effective drug concentration: $\dot{D} = -\varepsilon D n^j$.

The key conceptual advance is the **bistability of treatment outcomes**. When $\varepsilon > 0$ (decreasing drug efficacy with density), the PK/PD model reveals a regime of intermediate drug concentrations where treatment outcome depends on initial infection density: populations below a critical density are cleared, while denser populations survive indefinitely. The bistable region can span doses from $K_0 \gamma(0)$ to $K_0 \gamma(C)$ — potentially hundreds or thousands of times the MIC. This means that standard MIC-based dosing recommendations, derived from low-density in vitro measurements, may systematically fail for dense infections. The critical density for treatment failure is analytically derivable from common pharmacological parameters ($g_\text{min}$, $h$, $k_d$, $T$, $\varepsilon$), making the framework predictive.

The paper also identifies a previously unreported mechanism for the IE: **community-driven pH changes during exponential growth**. For tigecycline and ampicillin, buffering the media nearly eliminates density dependence and direct pH modulation at low density recapitulates it — establishing extracellular pH as a collective property of the population that feeds back on drug efficacy even during exponential phase. This expands the known mechanisms of the IE beyond enzymatic degradation and efflux to include community-level physiology.

Finally, the discussion explicitly connects density dependence to evolutionary dynamics: because antibiotic efficacy depends on total population density, the relative fitness advantage of drug-resistant cells is not fixed but depends on the composition of the surrounding community — a density-mediated version of the frequency-dependent selection that shapes evolutionary game dynamics. The paper positions this as an open research direction.

## Key findings

- Density-dependent drug inhibition is pervasive in *E. faecalis* V583: 7 of 9 tested antibiotics show decreased inhibition at higher densities; ampicillin is the notable exception, showing *increased* inhibition at high density; ceftriaxone shows minimal density dependence
- The IC$_{50}$ ($K$) can increase by a factor of three or more over a density range of 0.2–0.8 OD — a relatively narrow window within exponential phase
- For tigecycline and ampicillin, density dependence is almost completely eliminated in highly buffered media; recapitulated by external pH modulation at low density — establishing community-driven pH change as the dominant mechanism for these drugs
- Ciprofloxacin and spectinomycin show persistent (though reduced) density dependence in buffered media, indicating additional mechanisms dominate (heat-shock bistability is known for spectinomycin)
- Density dependence approximately doubles growth rate to threshold (OD 0.2 → 0.8) for tigecycline relative to a density-independent model — confirmed experimentally; buffering eliminates the difference
- Optimal step-like dosing (front-load drug at high concentration, then switch off) reduces final population size by >25% relative to naive constant dosing for drugs with strong density dependence ($\varepsilon = 0.9$), with maximum benefit near $\langle D \rangle \approx K_0$
- PK/PD model analytically predicts bistability when $\varepsilon > 0$: a bistable regime exists for drug concentrations $K_0 \gamma(0) < D_0 < K_0 \gamma(C)$; high-density infections in this range survive indefinitely despite drug doses up to 1000× MIC
- Bistability is strongest at low maximum kill rates ($|g_\text{min}|$ small), which characterizes many antibiotics against *E. faecalis* in vitro

## Methods

- **Strain:** *Enterococcus faecalis* V583 (fully sequenced vancomycin-resistant clinical isolate; grown in BHI at 30°C)
- **Drugs:** 9 antibiotics including tigecycline, spectinomycin, daptomycin, nitrofurantoin, ciprofloxacin, linezolid, ampicillin, ceftriaxone, doxycycline
- **Custom turbidostats:** multiplexed computer-automated continuous culture devices (up to 18 simultaneous); IR LED/photodiode density monitoring; peristaltic pump feedback control via custom MATLAB software; per capita growth rate estimated from pump dilution rate $g = F/V$; densities held in range OD 0.2–0.8
- **pH experiments:** highly buffered BHI (50 mM sodium phosphate); external pH modulation with HCl to match pH values at different densities
- **Mathematical models:** density-dependent turbidostat model; logistic growth + density-dependent drug decay model; PK/PD model with periodic dosing and linear stability analysis for phase diagram derivation; all parameterized from experimental $\varepsilon$ estimates (Table B in S1)
- **Dose-response:** Hill-like function $g(D) = (1 + (D/K_0)^h)^{-1}$ fit by nonlinear least squares; parameters estimated from sub-MIC growth curves in early exponential phase

## Relationship to existing wiki

- Directly connects to [[topics/evolutionary-control/_hub|evolutionary-control]]: the paper derives optimal step-like dosing protocols, demonstrates treatment bistability, and argues that density-dependent efficacy must be incorporated into treatment design — adding a distinct mechanism (population density effects) to the lab's portfolio of control-relevant findings alongside collateral sensitivity and drug dependence.
- The custom turbidostat methodology used here represents a distinct experimental platform from the 96-well plate evolution experiments used in [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]], [[papers/Maltas2019b_NonantibioticStressors|Maltas2019b]], [[papers/Dean2020_DrugComboEvolution|Dean2020]] — it provides real-time per capita growth rate rather than endpoint measurements.
- Referenced in [[papers/Dean2020_DrugComboEvolution|Dean2020]] (as ref. [8] in that paper) in the context of population density modulating drug inhibition in *E. faecalis*, indicating it is foundational for the lab's work on this organism.
- The bistability concept is distinct from but complementary to the drug dependence bistability framework of [[papers/Maltas2023_DrugDependence|Maltas2023]]: in both cases, the system can reach two stable states depending on initial conditions, but the mechanism differs (density-dependent drug efficacy vs. growth dependence on drug presence).
- The density-as-effective-fitness-modifier framing in the discussion foreshadows the frequency-dependent selection work developed more formally in [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] and [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]].

## Open questions raised

- Do the density-dependent effects observed in the OD 0.2–0.8 range extend to lower densities (e.g., early infection)? If density dependence spans many orders of magnitude as classical IE suggests, the bistability region would be dramatically larger than estimated here.
- What are the molecular mechanisms driving density dependence for drugs where pH does not explain the effect (ciprofloxacin, spectinomycin, ceftriaxone)?
- How does density-dependent drug efficacy interact with resistance evolution? The discussion notes that density modulates the relative fitness advantage of resistant cells — can this be formalized as a frequency-dependent evolutionary game?
- Can the parameter $\varepsilon$ be estimated clinically from patient data (e.g., serial drug concentration and bacterial burden measurements), making the bistability predictions actionable in clinical settings?
- How does spatial structure (biofilm, tissue, abscess) alter the effective density experienced by the population, and how does this shift the bistability boundary?

## Conversion notes

Source PDF filename is `Wood2016IE.pdf` (PI name, not first author). Correct cite key is `Karslake2016` per first-author convention. Several figure image files not extracted by converter. Figure captions captured in text.
