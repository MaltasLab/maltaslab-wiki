---
title: "Adaptation in Tunably Rugged Fitness Landscapes: The Rough Mount Fuji Model"
authors: [Neidhart J, Szendro IG, Krug J]
year: 2014
venue: "Genetics"
doi: "10.1534/genetics.114.167668"
arxiv: ""
topics: [fitness-landscapes, genetic-epistasis]
lab_paper: false
canonical: false
relevance: medium
ingested_by: "claude"
---

## Summary

Neidhart2014 proposes a simplified single-parameter version of the rough Mount Fuji (RMF) fitness landscape model and provides a comprehensive mathematical analysis of its properties. The model superimposes an additive fitness gradient of slope $c$ toward a reference sequence $\sigma^*$ on i.i.d. random fitness contributions $\eta(\sigma)$, with landscape ruggedness governed by $\theta = c/\sqrt{\text{Var}(\eta)}$. The paper derives explicit formulas for the expected number of local fitness maxima, the location of the global maximum, and the fitness correlation function; analyzes adaptive walk statistics under SSWM dynamics via simulation; and applies the model to an empirical fitness landscape experiment with the microvirid bacteriophage ID11. The model is a simplified variant of the RMF landscape originally introduced by Aita et al. (2000) for protein evolution, and has become the standard mathematical framework for tunably rugged fitness landscape theory.

## Conceptual contribution

The central contribution is establishing the simplified RMF model as a mathematically tractable tool for interpolating between the two limiting cases of fitness landscape theory: the maximally rugged house of cards (HoC) landscape and the completely additive landscape. Previous models with tunable ruggedness (notably Kauffman's NK model) are mathematically complex and resist closed-form analysis. Replacing locus-specific additive effects in Aita's original formulation with a single global parameter $c$ and i.i.d. random components yields a model whose topographic structure — number of maxima, location of global optimum, fitness correlations — can all be derived in closed form.

A key conceptual finding is that the importance of the additive gradient depends critically on the tail behavior (EVT class) of the random fitness distribution: for heavy-tailed (Fréchet class) distributions, the mean fitness gradient is **asymptotically irrelevant** and the number of maxima remains equal to the HoC value regardless of $c$, while for bounded (Weibull class) distributions even a small gradient dramatically reduces the number of maxima. The fitness correlation function $C_\text{RMF}(r)$ goes negative for $r > L/2$, uniquely reflecting the anisotropy of the RMF landscape — a property absent from the NK model and directly observable in principle from empirical fitness data.

The paper also documents a non-trivial decoupling: single-step adaptive walk statistics are largely unaffected by $c$ (well approximated by HoC predictions), while full walk length depends strongly on $c$ and the initial distance $d$ from the reference sequence. This distinction between single-step and multi-step behavior implies that short-timescale adaptation experiments may not detect landscape correlations that become apparent only over longer adaptive trajectories.

## Key findings

- **Model definition:** $F(\sigma) = -cD(\sigma, \sigma^*) + \eta(\sigma)$, where $c > 0$ is the additive slope, $D(\sigma, \sigma^*)$ is Hamming distance to reference sequence $\sigma^*$, and $\eta(\sigma)$ are i.i.d. random fitness contributions; for $c = 0$ reduces to HoC; ruggedness parameter $\theta = c/\sqrt{\text{Var}(\eta)}$ controls landscape topology
- **Number of local maxima (Gumbel, large $L$):** $\mathcal{M} \approx 2^L/(L\cosh(c) + 1)$, interpolating between $2^L/L$ (HoC) and 1 (additive); improved: $\mathcal{M}_\text{approx} = 1 + 2^L/(L\cosh(c)+1)$
- **EVT-class dependence of maxima:** For Fréchet-class (heavy-tailed) random components, $\mathcal{M} \to 2^L/L$ regardless of $c$ — the fitness gradient is asymptotically irrelevant; for Weibull-class (bounded), $\mathcal{M} \propto (2-c^{-1/\kappa})^L$, decaying exponentially in $L$ with small $c$
- **Location of global maximum (Gumbel):** $\mathbb{E}(d) = Le^{-c}/(1+e^{-c})$; $\text{Var}(d) = Le^{-c}/(1+e^{-c})^2$; mean distance from reference decays from $L/2$ (HoC) to 0 (additive)
- **Fitness correlation function:** $C_\text{RMF}(r) = [(\theta^2/4)(L-2r) + \delta_{r,0}]/[\theta^2 L/4 + 1]$; unlike the NK model, goes negative for $r > L/2$, reflecting landscape anisotropy; independent of EVT class
- **Single adaptive step statistics:** Mean and variance of post-step fitness rank are well approximated by the HoC/MLM formulas (Orr 2002; Joyce et al. 2008) for all tested values of $c$ and $\kappa$; adding a fitness gradient does not substantially alter single-step adaptation statistics
- **Adaptive walk length:** Scales as $\ell \approx [(1-\kappa)/(2-\kappa)]\log(r) + \alpha(c,\kappa)d + \beta(c,\kappa)$; strongly dependent on initial Hamming distance $d$ to reference sequence for $c > 0$; this linear dependence on $d$ is absent in the HoC model — distinguishes multi-step dynamics even when single-step statistics are indistinguishable
- **Application to phage ID11:** RMF model with $\theta \approx 1.4$–$1.7$ (for initial rank 1) explains the large number of beneficial second-step mutations (9) observed by Miller et al. (2011), which the HoC model cannot account for; estimate assumes Weibull-class EVT index $\kappa \approx -0.29$

## Methods

- Analytical derivations using order statistics (exact expressions for Gumbel and exponential distributions; approximations for general EVT classes)
- SSWM simulations generating mutational neighborhoods "on the fly" along adaptive trajectories; enables walks on landscapes with $L$ up to 2,000 loci without storing the full landscape
- Transition probability: $P_{i \to j} \propto F_j - F_i$ (proportional to selection coefficient; Gillespie SSWM)
- Model validated against empirical phage ID11 data (Miller et al. 2011): 9 beneficial second-step mutations on best first-step background, compared to HoC prediction of ≤3

## Relationship to existing wiki

- Provides the formal mathematical foundation for the RMF model used by [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]], which applies paired RMF landscapes with Gaussian noise ($\sigma = \sqrt{\text{Var}(\eta)}$ in Maltas2020 notation) to study adaptation under alternating environments. Maltas2020's ruggedness parameter $\sigma$ corresponds directly to $1/\theta$ in Neidhart2014's parameterization.
- Corrects the attribution of the RMF model in the wiki: the model was originally introduced by Aita et al. (2000) for protein evolution and simplified to a single global parameter by Neidhart et al. (2014). Previous wiki entries incorrectly attributed the RMF model to Maltas2020.
- Relevant to [[topics/fitness-landscapes/_hub|fitness-landscapes]] as the theoretical foundation of the landscape model central to several papers in the wiki.
- Relevant to [[topics/genetic-epistasis/_hub|genetic-epistasis]] as a formalization of epistasis as tunable landscape ruggedness; the number of local maxima formula quantifies how epistasis creates evolutionary dead ends.

## Open questions raised

- Can the ruggedness parameter $\theta$ of the RMF model be estimated from empirical antibiotic resistance fitness landscape data, and does it vary across drug classes or organisms?
- Does the EVT class of the random fitness component vary across types of empirical fitness landscapes — and does the heavy-tailed (Fréchet class) regime, in which the fitness gradient is irrelevant to ruggedness, occur for antibiotic resistance mutations under strong selection pressure?
- The fitness correlation function $C_\text{RMF}(r)$ goes negative for $r > L/2$ — is this property detectable in empirical fitness landscape datasets, and could it serve as a diagnostic for RMF vs. NK vs. HoC structure in real data?
- Given that single-step adaptive walk statistics are largely $c$-independent while multi-step statistics are not, what experimental timescale is needed to detect fitness landscape correlations in empirical evolution experiments?

## Conversion notes

Volume and page numbers not extracted from the converted markdown — only the DOI (10.1534/genetics.114.167668) and publication year (2014) are confirmed. [VERIFY] volume and pages from journal record.
