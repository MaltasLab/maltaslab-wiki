---
title: "Tuning Spatial Profiles of Selection Pressure to Modulate the Evolution of Drug Resistance"
authors: [De Jong MG, Wood KB]
year: 2018
venue: "Physical Review Letters"
doi: "10.1103/PhysRevLett.120.238102"
arxiv: ""
topics: [evolutionary-control, fitness-landscapes]
lab_paper: true
canonical: true
relevance: high
ingested_by: "Claude"
---

## Summary

De Jong & Wood use a stochastic Moran-like meta-population model with M=3 spatially connected microhabitats to investigate how the spatial distribution of selection pressure — the drug concentration profile across space — affects the mean first passage time (MFPT) to full resistance fixation. Using adjoint equations of the master equation to compute MFPTs from arbitrary initial states, they identify a three-regime phase diagram in (migration rate β, mutation rate μ) space: in the low-migration limit (β ≪ μ), spatial heterogeneity slows resistance evolution; in the high-migration limit (β ≫ μ), it accelerates evolution; in an intermediate regime, heterogeneity can do either depending on the specific spatial profile. Crucially, for existing resistant subpopulations, the optimal spatial dosing strategy is qualitatively different — and counterintuitive — in the two regimes. The results lay groundwork for spatially optimized drug dosing strategies and specifically predict that non-motile organisms such as *E. faecalis* are in the regime where spatial heterogeneity slows resistance, opposite to the acceleration observed experimentally in *E. coli*.

## Conceptual contribution

This paper introduces the **spatial dimension** to evolutionary control of drug resistance. All prior work on evolutionary control — optimal drug sequencing (Maltas2019a), time-varying collateral profiles (Maltas2025), model-free RL (Weaver2024) — addresses the temporal question: when to change drugs. DeJong2018 addresses an orthogonal question: *where* to concentrate drug in a spatially structured system, holding the spatial average selection pressure constant.

The central conceptual result is that the effect of spatial heterogeneity on resistance fixation is not monotonic — it is governed by the ratio of migration to mutation rate. This produces three qualitatively distinct regimes. In the low-migration regime (β ≪ μ), habitats effectively fix independently; the habitat with the lowest selection pressure (smallest drug dose) limits overall fixation like a weakest-link bottleneck. Introducing heterogeneity necessarily creates a low-dose habitat, slowing the slowest-fixing habitat and thereby delaying total fixation. In the high-migration regime (β ≫ μ), the first habitat to fix drives all others via migration; heterogeneity creates a high-dose habitat that fixes first, accelerating total fixation. This phase structure is surprising: the same qualitative intervention (adding spatial variation) has opposite effects in different regions of parameter space.

A second conceptual contribution is the **optimization of spatial dosing for existing resistant subpopulations**. Once resistance has emerged at a specific location, the optimal strategy shifts. In the high-migration regime, the counterintuitive optimal strategy is to concentrate drug *away from* the resistant cells — maximizing selection pressure in the locations currently free of resistance — because this reduces migration of resistant cells into drug-free refugia and thereby extends containment. This inversion of intuition ("treat the locations that don't yet have resistance") is analogous to the population-level counterintuition in adaptive therapy ("reduce drug when burden is low") and establishes that evolutionary control in space requires the same kind of non-greedy thinking as evolutionary control in time.

From a methodological standpoint, the MFPT approach via adjoint equations is a principled alternative to simulation for arbitrary spatial profiles and initial conditions, yielding linear systems tractable at any M. This represents the lab's direct application of statistical physics tools — master equations, MFPT, Moran models — to evolutionary biology problems.

## Key findings

- Stochastic Moran-like model: M=3 microhabitats, each with N total cells; WT fitness $r_0(x_i) \leq 1$, resistant fitness $r^* = 1$ (no fitness cost for resistance); migration rate β between connected habitats; mutation rate μ (WT → resistant only)
- Spatial profile parameterized as symmetric peak/valley: background selection pressure $s_0$ in edge habitats, deviation $\delta s$ in center; spatially averaged selection $\langle s \rangle = s_0 + \delta s/M$ held constant across comparisons
- MFPT computed exactly via adjoint equations of the $(N^M \times N^M)$ master equation; provides fixation times from all initial states simultaneously
- **Three-regime phase diagram** in (β, μ) space:
  - Low migration (β ≪ μ): homogeneous landscape minimizes $\tau_f$; heterogeneity slows fixation; mechanism: independent-habitat bottleneck — the slowest habitat determines fixation
  - High migration (β ≫ μ): homogeneous landscape maximizes $\tau_f$; heterogeneity accelerates fixation; mechanism: first-to-fix drives migration — heterogeneity creates a fast-fixing high-dose habitat
  - Intermediate regime: fixation time is not extremized at homogeneous profile; effect of heterogeneity is modest but can go either way
- Analytical approximations: low-migration limit gives $\tau_f \approx \tau_{max}$ (expected maximum of three independent exponential processes); $(\partial^2 \tau_{max}/\partial \delta s^2)|_{\delta s=0} > 0$ analytically confirms homogeneous landscape minimizes $\tau_f$. High-migration limit gives $\tau_f \approx \tau_{min}$, maximized at $\delta s = 0$
- For **existing resistant subpopulation** (N/2 mutants in center habitat): two distinct dosing regimes:
  - High mutation relative to migration: maximize drug at resistant location ($\delta s_\text{opt}$ maximized; concentrate drug where mutants are)
  - High migration relative to mutation: maximize drug at resistant-free locations ($\delta s_\text{opt}$ minimized; drug-free resistance refugia are the bottleneck)
  - Fixation time is *never* maximized at the homogeneous profile in the presence of initial resistance — contrast with de novo case
- Results qualitatively robust to: N (10–40), ⟨s⟩ (varied), permuted selection profiles, globally coupled profiles, monotonic (gradient) profiles
- Biological predictions: *E. coli* (high motility → high β) in acceleration regime — consistent with experimental results [Zhang et al. 2011, Baym et al. 2016]; *E. faecalis* (low motility → low β, ref 49 in paper) predicted in deceleration regime — heterogeneity would slow resistance, opposite to *E. coli*; currently untested experimentally

## Methods

- Stochastic Moran process: at each step, one cell chosen for reproduction (proportional to fitness) and one for death (uniformly); repeated N times per unit time; mutation of WT → resistant at rate μ; migration at rate β
- Continuous-time master equation: $dP_m/dt = \sum_{m'} \Omega_{mm'} P_{m'}$ where Ω is $N^M \times N^M$ transition rate matrix with entries depending on $r_0(x_i)$ at each location
- MFPT via adjoint equation: $-1 = \sum_{m' \neq m_f} T(m_f | m') \Omega_{m', m_i}$; solved as a linear system for all initial states simultaneously; fully resistant state is the unique absorbing state
- Analytical approximation: fixation rate per habitat $\lambda(s, n_\text{fix}) = N(\mu + \beta n_\text{fix}) P_\text{fix}(s)$ where $P_\text{fix}(s) = s(1-(1-s)^N)^{-1}$; combined using expected max/min of exponential processes depending on regime
- Parameters explored: N = 25 (primary); β ∈ $[10^{-5}, 10^{-1}]$; μ ∈ $[10^{-5}, 10^{-2}]$; δs ∈ [−0.2, 0.5]; supplementary analysis across N = 10–40, varied ⟨s⟩, permuted and globally coupled profiles

## Relationship to existing wiki

This paper extends the lab's evolutionary control program into the spatial domain. The temporal control work — [[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] (MDP for when to switch drugs), [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] (d-MDP for time-varying collateral profiles), [[papers/Weaver2024_RLDrugCycling|Weaver2024]] (RL for model-free control) — all optimize over treatment time sequences. DeJong2018 is orthogonal: it optimizes over spatial drug distribution at a given instant, establishing a spatial analog to the temporal MDP problem.

The MFPT and Moran model framework here is methodologically related to [[papers/Maltas2020_TunableFitnessLandscapes|Maltas2020]], which also analyzes adaptive dynamics using SSWM Markov chains on structured landscapes. Both papers use statistical physics machinery to understand how population structure shapes evolutionary trajectories. The phase diagram (three regimes as a function of migration/mutation ratio) is conceptually related to the timescale analysis in [[papers/Cvijovic2015_MutationFluctuating|Cvijovic2015]], which shows that the ratio of selection strength to switching rate determines the regime of fixation dynamics in temporally fluctuating environments.

The explicit prediction that *E. faecalis* (the lab's primary bacterial system, cited in the paper) is in the low-migration regime — where spatial heterogeneity slows resistance evolution — creates a direct experimental prediction testable using the turbidostat infrastructure of [[papers/Karslake2016_InoculumEffect|Karslake2016]] extended to multi-compartment spatial formats. This prediction is currently unvalidated.

The result that no fitness cost is required for spatial profiles to slow resistance evolution is directly relevant to the broader lab theme that collateral sensitivity cycling also works in the absence of fitness costs (as demonstrated by [[papers/Imamovic2013_CollateralSensitivityCycling|Imamovic2013]]).

## Open questions raised

- Can spatial drug dosing optimization and temporal cycling (MDP/RL) be combined into a joint spatiotemporal control framework — simultaneously optimizing the sequence of drugs and their spatial distribution at each step?
- The *E. faecalis* low-migration prediction awaits experimental validation. Can multi-compartment turbidostat experiments test whether spatial drug heterogeneity slows resistance fixation in *E. faecalis* as predicted?
- The model uses a binary resistance phenotype. How do results generalize to multi-step resistance landscapes (e.g., the 16-genotype TEM β-lactamase landscape of [[papers/Mira2015_RationalAntibioticTreatment|Mira2015]]) where resistance is acquired in multiple steps and intermediate genotypes have intermediate fitness?
- Does introducing a fitness cost for resistance enlarge the low-migration (deceleration) regime? If so, fitness costs and spatial heterogeneity may act synergistically to slow resistance.
- In clinical settings, spatial drug gradients arise from imperfect drug penetration (biofilm, tumor cores). Are these gradients typically in the acceleration or deceleration regime for clinically relevant pathogens and mutation/migration rates? Can the phase diagram be parameterized from measurable clinical quantities?
- The optimal spatial strategy for an existing resistant subpopulation (in the high-migration regime, concentrate drug *away* from resistant cells) is counterintuitive. Are there clinical scenarios — e.g., spatially resolved biopsy data identifying resistant foci in tumors — where this strategy would be applicable?

## Conversion notes

Conversion quality was good. Full paper text captured including abstract, main text, figure captions, and references. Three main figures described in captions: Fig. 1 (model schematic and example fixation time vs. δs plot), Fig. 2 (phase diagram in β-μ space + sample fixation curves + state-resolved MFPT), Fig. 3 (spatial optimization for existing resistant subpopulation + optimal δs map + strategy comparison). Mathematical expressions, transition rates, and analytical approximations captured accurately. DOI confirmed from paper header.
