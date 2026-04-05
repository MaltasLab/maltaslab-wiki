---
title: "Bacterial cheating drives the population dynamics of cooperative antibiotic resistance plasmids"
authors: [Yurtsev EA, Chao HX, Datta MS, Artemova T, Gore J]
year: 2013
venue: "Molecular Systems Biology"
doi: "10.1038/msb.2013.39"
arxiv: ""
topics: [frequency-dependent-selection, evolutionary-control]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude Sonnet 4.6"
---

## Summary

Yurtsev et al. 2013 demonstrate that TEM-1 β-lactamase — the primary enzyme mediating ampicillin resistance in plasmid-carrying *E. coli* — is a cooperative (public goods) behavior: resistant cells inactivate ampicillin in the shared extracellular environment, protecting sensitive "cheater" cells that carry no resistance gene. Sensitive cells survive at ampicillin concentrations 50× above their monoculture MIC when co-cultured with resistant cells. A Michaelis-Menten model of antibiotic degradation predicts that the equilibrium resistant fraction is $f_R \approx A_i / (V_{\max} N_i)$, proportional to initial drug concentration and inversely proportional to initial cell density — a scaling validated over two orders of magnitude in density. Because each strain can invade when rare, the system exhibits stable coexistence via negative frequency-dependent selection analogous to the snowdrift game. A counterintuitive consequence: the β-lactamase inhibitor tazobactam increases the equilibrium resistant fraction by raising the effective $K_M$, an effect validated experimentally with inhibitor constant $K_I = 4.6$ ng/ml.

## Conceptual contribution

Yurtsev2013 reframes antibiotic resistance from an individual-level trait to a collective behavior. The key conceptual shift is that resistance mediated by extracellular drug inactivation is a public good — its benefits accrue to all neighboring cells regardless of their own genotype. This creates negative frequency-dependent selection (resistant cells benefit more when rare, since their drug-degrading capacity matters most in low-resistance environments) and stable coexistence rather than competitive exclusion. The paper provides the first mechanistic derivation of a stable resistance equilibrium directly from biochemical rate constants ($V_{\max}$, $K_M$, MIC), connecting enzyme kinetics to population genetics. The most clinically consequential implication is the **β-lactamase inhibitor paradox**: a drug designed to suppress resistance can paradoxically enrich the resistant subpopulation when resistance is cooperative, because the inhibitor raises $K_M$ and thereby requires *more* resistant cells to degrade the antibiotic to the MIC. This stands as a structural warning — not just an empirical curiosity — that the cooperative ecology of resistance can invert the effects of standard suppression strategies. The Michaelis-Menten framework also explains why the inoculum effect is expected in this system: at higher initial densities $N_i$, the equilibrium resistant fraction $f_R \sim 1/N_i$ decreases, because fewer cooperators are needed per cell to degrade the fixed antibiotic dose.

## Key findings

- Sensitive *E. coli* DH5α (no resistance plasmid) survive at 50× their monoculture MIC in co-culture with resistant cells (pFPV-mCherry, encoding TEM-1 β-lactamase + mCherry), directly demonstrating β-lactamase as an extracellular public good
- Equilibrium resistant fraction: $f_R \approx A_i / (V_{\max} N_i)$ (simple approximation); full Michaelis-Menten expression: $f_R \approx (A_i + K_M \ln(A_i/\text{MIC}) - \text{MIC}) / (V_{\max} N_i)$; data collapse over two orders of magnitude in initial cell density
- Competitive invasion assays confirm that both strains can invade when rare (each started at 1% frequency), establishing a snowdrift game with stable interior coexistence fixed point
- Difference equation maps (day-to-day f_R dynamics) reveal overshoot before steady state: f_R overshoots the equilibrium then relaxes
- Tazobactam (β-lactamase inhibitor) increases equilibrium f_R by raising effective $K_M$; fitted $K_I = 4.6$ ng/ml, within published literature range (3–11.4 ng/ml); effect validated experimentally
- Sulbactam (another β-lactamase inhibitor) similarly accelerates the spread of resistance in co-culture
- Equilibrium f_R increases proportionally with initial ampicillin concentration $A_i$ — higher antibiotic dose selects for higher resistant fraction at steady state
- Model is robust to: fitness cost of carrying the resistance plasmid (over a wide range); length of lag phase before ampicillin degradation begins

## Methods

- **Strains:** *E. coli* DH5α; resistant strain: pFPV-mCherry plasmid (TEM-1 β-lactamase + mCherry fluorescent marker); sensitive strain: isogenic without the plasmid
- **Tracking:** flow cytometry on mCherry fluorescence to quantify resistant and sensitive fractions in co-culture
- **Passaging:** daily serial dilution at 1:100 into fresh LB medium with ampicillin; growth tracked by OD600
- **Invasion assays:** competitive invasion experiments starting each strain at 1% frequency in a background of the opposite strain, monitoring f_R over multiple days
- **Michaelis-Menten degradation model:** $dA/dt = -V_{\max} n_R A / (K_M + A)$; equilibrium derived by solving for the resistant fraction $n_R / N_i$ needed to degrade ampicillin from $A_i$ to the sensitive-cell MIC by the end of exponential growth
- **Inhibitor experiments:** tazobactam and sulbactam added at defined concentrations; $K_I$ estimated from competitive inhibition correction to $K_M$
- **Difference equations:** discrete-time map of f_R constructed from single-passage measurements to predict multi-passage trajectories

## Relationship to existing wiki

- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]]: provides the mechanistic model underlying positive ecological interactions between resistant and sensitive cells — the biochemical explanation for why $f_e > 1$ can arise; the Michaelis-Menten framework connects directly to the ecological fitness concept in [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- [[topics/evolutionary-control/_hub|evolutionary-control]]: β-lactamase inhibitor paradox has direct treatment design implications — standard suppression strategies can backfire when resistance is a public good; connects to density-dependent inoculum effect characterized in [[papers/Karslake2016_InoculumEffect|Karslake2016]]
- [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]: Yurtsev2013 provides a concrete biochemical mechanism by which sensitive cheater cells achieve $f_e > 1$ — they grow faster when rare in resistant populations because the resistant public good is more abundant per cell when resistance is common
- [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]: both papers study ecological interactions between resistant and sensitive sub-populations; Yurtsev2013 provides the mechanistic public-goods model while Farrokhian2022 provides an empirical evolutionary game assay in NSCLC

## Open questions raised

- Does the public goods / cooperative structure of β-lactamase resistance generalize to other extracellularly acting resistance mechanisms (e.g., aminoglycoside-modifying enzymes secreted into the medium), or is the snowdrift game equilibrium specific to β-lactam/β-lactamase chemistry?
- Can the β-lactamase inhibitor paradox be circumvented by dosing protocols accounting for Michaelis-Menten dynamics — for example, using inhibitor concentrations that drive $K_M$ above the ampicillin concentration, eliminating cooperative degradation entirely?
- How does spatial structure (biofilm, colonization gradients) alter the cooperative dynamics — does spatial heterogeneity disrupt or reinforce the snowdrift equilibrium, and does $f_R \approx A_i / (V_{\max} N_i)$ hold under drug gradients?
- How does the $N_i$ dependence of equilibrium f_R interact with the inoculum effect measured in [[papers/Karslake2016_InoculumEffect|Karslake2016]]? Both papers predict that denser infections have qualitatively different treatment outcomes.
- How does plasmid loss (reversion to resistance-free genotype at some rate) alter the stability of the coexistence equilibrium — does the plasmid system maintain the snowdrift game over longer evolutionary time, or does cheating evolve away from the resistant allele entirely?

## Conversion notes

Source PDF named BacterialCheating.pdf; cite key Yurtsev2013 follows first-author convention (Yurtsev listed first; Gore is last/corresponding author). No conversion issues noted.
