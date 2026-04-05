---
title: "Accelerated evolution of resistance in multidrug environments"
authors: [Hegreness M, Shoresh N, Damian D, Hartl D, Kishony R]
year: 2008
venue: "PNAS"
doi: "10.1073/pnas.0805965105"
arxiv: ""
topics: [evolution-in-multidrug-environments, fitness-landscapes, evolutionary-control]
lab_paper: false
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

Hegreness et al. develop an automated 2D drug gradient assay monitoring parallel evolution of hundreds of *E. coli* populations across combinations of four antibiotics (doxycycline, erythromycin, ciprofloxacin, amikacin) over ~150 generations. Tracking growth rate increases daily, they define the rate of adaptation $\alpha \equiv (\Delta r / 2)/t_\text{adapt}$ for each population. Across 116 drug combinations from 4 drug pairs, the rate of adaptation correlates positively with the degree of Bliss synergy ($\rho = 0.683$, $P < 0.001$): synergistic combinations (ERY-DOX) produce faster resistance evolution than either drug alone, while antagonistic combinations (CIP-DOX) can depress adaptation below single-drug rates. A geometric model based on isobologram analysis explains the mechanism: resistance mutations modeled as effective drug concentration reductions achieve different fitness gains depending on landscape curvature, with synergistic landscapes amplifying the benefit of single-drug resistance mutations.

## Conceptual contribution

This paper establishes the foundational empirical and mechanistic link between drug interaction type and the rate of resistance evolution. The central finding — that synergistic drug combinations, clinically preferred for greater immediate bacterial inhibition, can simultaneously *accelerate* resistance evolution — directly challenges a core assumption in combination therapy design. The paper frames this explicitly as a **tradeoff between immediate efficacy and long-term resistance forestalling**: synergy maximizes immediate kill but lowers the barrier to resistance; antagonism provides less immediate inhibition but may be more effective at forestalling resistance at sub-MIC concentrations where resistance evolution is most likely.

The geometric model introduced here is the embryonic form of the geometric rescaling framework later formalized by Dean2020 and Gjini2021. The key insight is that resistance mutations — modeled as effective drug concentration reductions — achieve different fitness gains depending on the shape of the isobologram. In synergistic environments, removing one drug's effect also removes its enhancement of the other, so the mutation crosses more isoboles (more fitness contour lines) than in additive or antagonistic environments. In antagonistic environments, removing one drug's suppression partially reveals the other drug's inhibitory effect, partially canceling the fitness gain. This explains mechanistically why the same mutation is more valuable to a bacterium in a synergistic environment, and why synergy accelerates resistance beyond what either drug alone produces. The model also predicts that antagonism generates sign epistasis between single-resistance mutations — resistance to drug A can be deleterious in the presence of drug B when B partially antagonizes A — thereby limiting accessible evolutionary pathways.

## Key findings

- Synergy and adaptation rate are positively correlated: $\rho = 0.683$ ($P < 0.001$) across 116 data points from 4 drug pairs; partial correlation controlling for drug-pair membership = 0.533 ($P < 0.001$); the correlation persists after controlling for initial inhibition level
- ERY-DOX (synergistic): combination conditions produce faster adaptation than either drug alone — combination adaptation is accelerated rather than intermediate
- CIP-DOX (antagonistic): combination conditions depress adaptation rate below single-drug rates in some concentration regions
- Geometric model: a resistance mutation reducing effective concentration of drug A crosses more fitness isoboles in a synergistic environment than in additive or antagonistic environments; in synergy, removing A's effect also removes A's enhancement of B; in antagonism, removing A's effect reveals B's previously suppressed inhibitory effect
- Treatment design implication: synergy and antagonism represent two ends of a tradeoff — greater immediate inhibition (synergy) vs. slower resistance evolution (antagonism); antagonistic combinations may be preferable at sub-MIC concentrations where resistance is most likely to evolve
- Sign epistasis under antagonism: resistance mutations conferring partial resistance to one drug of an antagonistic pair can be deleterious in the combined environment (previously observed experimentally for hyperantagonistic pairs), which limits accessible evolutionary pathways

## Methods

- Organism: fluorescently labeled *E. coli* MC4100 (not preadapted to experimental conditions)
- Drugs: DOX (tetracycline; 30S ribosomal A-site inhibitor), ERY (macrolide; 50S ribosomal inhibitor), CIP (fluoroquinolone; DNA gyrase inhibitor), AMI (aminoglycoside; protein synthesis inhibitor)
- 2D drug gradient: 96-well plates (150 µL/well); concentrations from 0 to above MIC for each drug; all four pairwise combinations (CIP-DOX, ERY-DOX, CIP-AMI, AMI-DOX); master deep-well plate stocks stored at −20°C to ensure constant drug conditions
- Automated robotic system: Staccato Sciclone Cell Station with Liconic LPX40 plate shaker and Victor3 plate reader (Perkin-Elmer); constant temperature 30°C; humidity 70%
- Serial transfer: daily 96-pin replicator transfer (~0.04 µL per pin, ~3,300-fold dilution, ~11.7 generations/day); 15 days total (~150 generations)
- Growth rate measurement: logistic curve fit $\text{OD}(t) = a + b/[1 + c \cdot \exp(-rt)]$; measurement error ≈ 0.06/h
- Adaptation rate: $\alpha = (\Delta r / 2)/t_\text{adapt}$; $t_\text{adapt}$ = interpolated time to half-maximal growth rate increase; populations with $\Delta r > 0.2/\text{h}$ analyzed ($n = 116$)
- Synergy measure: Bliss independence $S = (f_{x0}/f_{00})(f_{0y}/f_{00}) - f_{xy}/f_{00}$; positive $S$ = synergy, negative = antagonism; measured from day-1 (ancestral) growth rates

## Relationship to existing wiki

The geometric isobologram model here — resistance mutations as effective concentration reductions applied to 2D fitness contour maps — is the conceptual precursor to the geometric rescaling framework of [[papers/Dean2020_DrugComboEvolution|Dean2020]] and the Price equation / gradient dynamics framework of [[papers/Gjini2021_PriceEquationMultidrug|Gjini2021]]. Dean2020 validates and extends Hegreness2008's central synergy-accelerates-resistance finding in *E. faecalis* with full characterization of 4 drug pairs spanning synergistic to suppressive interactions. The two core empirical results of Dean2020 — synergistic CRO-AMP accelerates adaptation, suppressive TGC-CIP eliminates CIP resistance — are mechanistically explained by the same geometric framework Hegreness2008 introduced.

The treatment design implication (antagonism forestalls resistance) connects to [[topics/evolutionary-control/_hub|evolutionary-control]], where drug interaction type becomes a design parameter for combination therapy strategies aimed at slowing resistance. The isobologram geometric model connects to [[topics/fitness-landscapes/_hub|fitness-landscapes]] — the curvature of the fitness landscape (shaped by drug interaction) determines which mutations are most advantageous and thus which evolutionary trajectories are most likely.

The sign epistasis generated by antagonism connects to [[topics/genetic-epistasis/_hub|genetic-epistasis]]: whether resistance to drug A is beneficial or deleterious in a drug combination depends on the drug interaction type, making epistasis environment-dependent in a way that is geometrically predictable.

## Open questions raised

- Does the synergy-accelerates-adaptation principle generalize from *E. coli* to clinical pathogens like *E. faecalis*, *S. aureus*, or *M. tuberculosis*? Dean2020 partially addresses this for *E. faecalis* [[papers/Dean2020_DrugComboEvolution|Dean2020]]
- Can the Bliss synergy measure S be used prospectively to predict adaptation rates for new drug pairs before running evolution experiments, independent of drug pair identity?
- What mutations specifically underlie accelerated adaptation in ERY-DOX synergistic conditions — are they single-resistance mutations as the geometric model predicts, or do dual-resistance mutations dominate?
- Does the tradeoff between immediate inhibition (synergy) and resistance forestalling (antagonism) hold at concentrations well above the MIC, or only in the sub-MIC regime where resistance is most likely to evolve?
- How effectively does sign epistasis under antagonism limit accessible evolutionary pathways in practice — does it create evolutionary dead ends or merely slow adaptation?

## Conversion notes

Conversion is clean. Paper is 3 pages (PNAS format). Figures were not extracted but are described from captions. Figure 1 (page 1): isobolograms for three interaction types (synergistic drug B, additive drug C, antagonistic drug D) with arrows of identical length (same resistance mutation) crossing different numbers of fitness contour lines — greatest crossing in synergistic case. Figure 2 (page 2): example of OD time series, daily growth rate increase, and definition of $\alpha = (\Delta r/2)/t_\text{adapt}$. Figure 3 (page 2): 2D heatmaps of adaptation rates for ERY-DOX (synergistic, showing acceleration in combination) and CIP-DOX (antagonistic, showing depression). Figure 4 (page 3): scatter plot of $S$ vs. $\alpha$ for all 116 data points across 4 drug pairs with linear regression. Source PDF named Kishony2008accel.pdf (last author); cite key Hegreness2008 follows first-author convention, consistent with Gjini2021 and Karslake2016 naming.
