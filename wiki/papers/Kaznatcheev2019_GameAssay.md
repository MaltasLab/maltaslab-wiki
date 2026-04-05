---
title: "Fibroblasts and Alectinib switch the evolutionary games played by non-small cell lung cancer"
authors: [Kaznatcheev A, Peacock J, Basanta D, Marusyk A, Scott JG]
year: 2019
venue: "Nature Ecology & Evolution"
doi: "10.1038/s41559-018-0768-z"
arxiv: ""
topics: [frequency-dependent-selection, evolutionary-control]
lab_paper: false
canonical: true
relevance: high
ingested_by: "claude-sonnet-4-6"
---

## Summary

Kaznatcheev et al. (2019) develop a **game assay** for measuring effective evolutionary games from coculture time-lapse microscopy data and apply it to competition between Alectinib-sensitive (parental) and Alectinib-resistant H3122 NSCLC cells across four experimental conditions: drug-free (DMSO), DMSO + cancer-associated fibroblasts (CAFs), Alectinib, and Alectinib + CAFs. By measuring growth rates at 8 initial parental fractions across 6 replicates per condition and fitting linear fitness functions, the paper reads off 2×2 payoff matrices characterizing the evolutionary game in each environment. The key finding is that CAFs qualitatively switch the game from Deadlock (resistant always wins) to Leader (stable coexistence equilibrium), while Alectinib reverts the Leader to Deadlock. This provides empirical confirmation of a central theoretical postulate of evolutionary game theory in oncology: treatment can qualitatively change the *type* of game being played — "treating the game, not just the player."

## Conceptual contribution

This paper establishes two connected conceptual advances. The first is methodological: the **game assay** provides a rigorous, quantitative framework for measuring effective evolutionary games from coculture experiments without mechanistic assumptions. The assay operationalizes the effective game as an assayable hidden variable — the game whose replicator dynamics would reproduce observed frequency dynamics. The payoff matrix is read directly from $p = 0$ and $p = 1$ intercepts of linear fitness functions, making the method tractable with standard fluorescence imaging. By placing games in a 2D **game space** ($x = C - A$, $y = B - D$), the four qualitatively distinct game types (Leader, Deadlock, Snowdrift, Stag Hunt) are distinguishable by quadrant, with confidence intervals.

The second conceptual advance is empirical: **treatment can qualitatively switch game type**, not merely shift parameters within a game. In drug-free conditions with CAFs (closest analog to an untreated patient), ALK+ NSCLC plays a Leader game with a stable interior coexistence equilibrium. Removing CAFs or adding Alectinib each independently switch the system to Deadlock — where resistant cells dominate at every frequency. This "treat the game not the player" principle opens a new class of control strategies: environmental or pharmacological interventions that transform the structure of competition among cancer subpopulations rather than targeting cell killing efficiency directly. A tumor in the Leader game is dynamically stabilized around a heterogeneous fixed point; a Deadlock tumor evolves irreversibly toward resistance.

A third finding challenges a core assumption of evolutionary oncology models: **resistant cells are not selectively neutral in the absence of drug**. In drug-free monoculture, resistant and parental cells grow at similar rates — consistent with the classical model. In co-culture, however, resistant cells are consistently more fit at every proportion (Deadlock in DMSO). The cost or benefit of resistance is non-cell-autonomous and depends on the frequency composition of the population, making monoculture fitness measurements insufficient to predict competitive dynamics.

## Key findings

- In DMSO (drug-free, no CAFs): Deadlock game — resistant cells fitter than parental at all co-culture proportions; $x = C - A > 0$, $y = B - D < 0$ (lower-right quadrant of game space); no stable interior equilibrium
- In DMSO + CAF: Leader game — $x > 0$, $y > 0$ (upper-right quadrant); stable interior coexistence fixed point confirmed by experimental time series showing proportion convergence
- In Alectinib and Alectinib + CAF: Deadlock — resistant cells dominate at all proportions; CAFs provide partial rescue of parental growth but insufficient to flip game type
- Resistant cells appear growth-equivalent to parental cells in monotypic culture (DMSO), but consistently outcompete them at every frequency in co-culture — resistance fitness is non-cell-autonomous
- In DMSO + CAF, convergence toward the interior fixed point slows as the fixed point is approached (shrinking gain function magnitude), consistent with replicator dynamics near equilibrium
- Fitness functions are well described by linear models of growth rate vs. initial parental proportion (supplementary analysis shows nonlinear alternatives produce qualitatively identical game-type assignments)

## Methods

- **Cell lines:** H3122 ALK+ NSCLC; Alectinib-resistant H3122 derivative obtained via escalating inhibitor concentration protocol; stable GFP (resistant) and mCherry (parental) labeling via lentiviral transduction
- **CAFs:** Primary lung cancer-associated fibroblasts (500 cells/well) alongside 2,000 H3122 cells; 384-well plates; Alectinib at 500 nM or DMSO vehicle
- **Imaging:** Incucyte Zoom time-lapse microscopy; phase-contrast and fluorescent channels every 4 hours; 8 initial parental fractions (0, 1/10, 1/5, 2/5, 3/5, 4/5, 9/10, 1); 6 replicates per condition
- **Growth rate estimation:** Theil-Sen estimator on log population size time series during first 5 days (exponential phase); GFP/mCherry fluorescent area converted to common cell-number units (CNU) via learned linear transform
- **Fitness functions:** Linear least-squares regression of growth rate vs. initial parental proportion $p$, weighted by inverse measurement error; intercepts at $p = 0$ and $p = 1$ give payoff matrix entries (A, B, C, D)
- **Game space representation:** $x := C - A$ (relative fitness of resistant invader in parental monotypic), $y := B - D$ (relative fitness of parental invader in resistant monotypic); error propagated from fitness function fits; quadrant determines game type

## Relationship to existing wiki

- **Methodological foundation for [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]:** Kaznatcheev2019 is the originator of the game assay that Farrokhian2022 adapts for PC9 EGFR-mutant NSCLC; both use time-lapse fluorescence coculture at multiple initial fractions and fit payoff matrices from linear fitness functions at $p = 0$ and $p = 1$ intercepts
- **Connects to [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]:** The stable interior fixed point of the DMSO + CAF Leader game is the empirical instantiation of the Maltas2024 theoretical prediction that positive ecological interactions ($f_e > 1$) produce a stable coexistence equilibrium that can dramatically extend preexisting resistance lifetimes; Kaznatcheev2019 shows this game type is environmentally contingent rather than intrinsic
- **Extends [[wiki/topics/evolutionary-control/_hub|evolutionary-control]]:** Establishes "treat the game not the player" as a conceptual complement to collateral sensitivity, drug dependence, and MDP-based cycling; introduces microenvironmental intervention (CAF targeting) as a distinct control lever
- **Connects to [[wiki/topics/frequency-dependent-selection/_hub|frequency-dependent-selection]]:** Provides the game assay methodology and game-type vocabulary (Leader, Deadlock, game space) used throughout the frequency-dependent-selection literature in this area

## Open questions raised

- Do Leader and Deadlock game types in H3122 ALK+ NSCLC generalize to other NSCLC subtypes, other cancer types, or tumors in vivo with intact stromal environments?
- Can CAF-targeting therapies (stromal disruption) be combined with Alectinib to jointly control game type, and would game-switching produce therapeutic outcomes superior to either intervention alone?
- What molecular mechanisms underlie the commensalism of resistant and parental cells in drug-free co-culture (Deadlock)? Is it resource modification, paracrine signaling, or contact-mediated effects?
- Does the stable interior fixed point in the DMSO + CAF Leader game actually maintain measurable heterogeneity in patient tumors over clinically relevant timescales?
- How does game type evolve over extended evolutionary timescales under treatment — does chronic Alectinib exposure eventually shift the game further, and can game transitions be predicted?
- Is the non-cell-autonomous fitness advantage of resistant cells a general property of drug-resistance mechanisms, or specific to ALK TKI resistance in H3122?

## Key figures

**Figure 1** (monotypic growth rates): Parental (cyan) and resistant (magenta) cell growth rates across four conditions in monotypic culture. Alectinib strongly inhibits parental growth; CAFs partially rescue this; resistant cells unaffected by Alectinib.

**Figure 2** (coculture growth rates): Each replicate plotted as (parental growth rate, resistant growth rate) with opacity representing initial parental fraction. Dotted diagonal = equal fitness. Resistant cells consistently above diagonal in DMSO co-culture despite similar monotypic rates.

**Figure 3** (fitness functions): Growth rate vs. initial parental proportion $p$ for both cell types, all four conditions. Linear fits (dotted lines) used to parameterize payoff matrices. Gain function (black dotted) visible only in non-Alectinib conditions; frequency dependence of resistant cells apparent as increasing growth rate with $p$ in DMSO.

**Figure 4** (measured games): (a) Replicator dynamics model and payoff matrix notation. (b) Game space map with four measured games as points with error bars; DMSO + CAF in upper-right (Leader); DMSO, Alectinib, Alectinib + CAF in lower-right (Deadlock). (c) Experimental proportion dynamics in DMSO + CAF showing convergence toward interior fixed point. (d) Alectinib + CAF showing no convergence.
