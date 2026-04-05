# Distribution of Fitness Effects

## What this topic is about

The distribution of fitness effects (DFE) describes the spectrum of fitness consequences that arise from new mutations in a given environment. Most new mutations are deleterious; a small fraction are neutral; a smaller fraction still are beneficial. The shape of the DFE — particularly the tail describing beneficial mutations — has profound consequences for the rate of adaptation, the predictability of evolutionary trajectories, and the likelihood that any given mutation will fix in a population.

Understanding the DFE is foundational for predicting evolution: if the DFE is broad (many large-effect mutations available), adaptation can be rapid and repeatable; if it is narrow, evolution is slower and more stochastic. In the context of antibiotic resistance, the relevant DFE is the distribution of fitness effects of mutations in the presence of drug — which can differ substantially from the neutral DFE and depends on drug concentration, drug mechanism, and the genetic background of the organism.

A key challenge is that the DFE is not fixed: it depends on the current genetic state of the organism (epistasis), the environment (concentration, drug type), and the population size (which determines what portion of the DFE is accessible). This lab is interested in how the DFE shapes the dynamics of resistance evolution in structured and fluctuating environments.

An important conceptual extension introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] is the **distribution of ecological effects (DEE)**: the distribution of ecological interaction strengths (ecological fitness $f_e$) across the space of possible resistance mutations. The DEE is directly analogous to the DFE but describes how resistance mutations affect fitness in a frequency-dependent, co-culture context rather than in monoculture. Like the DFE, the DEE has never been empirically measured — but the theory developed in Maltas2024 is agnostic to the DEE's specific form, and the shape of the stationary distribution of observed mutants ($P(f_e) \propto \frac{f_e}{1-f_e}\rho_0(f_e)$) can be predicted for any assumed or measured DEE. Measuring the DEE empirically is an open priority.

## Key papers

- Maltas2024 introduced the distribution of ecological effects (DEE) — the distribution of ecological fitness values $f_e$ across the space of possible resistance mutations — as the ecological analogue of the DFE, and derived a general expression for the stationary distribution of observed mutants as a function of any DEE $\rho_0(f_e)$: $P(f_e) \approx \frac{f_e\mu}{(1-f_e)}\rho_0(f_e)$ [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

## Key concepts and methods

- **Distribution of ecological effects (DEE):** ecological analogue of the DFE; distribution of $f_e$ values across resistance mutations; introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], not yet empirically measured in any system

## Open questions

- What does the DEE look like empirically? This is the primary unmeasured quantity required to make quantitative predictions from the Maltas2024 framework [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- How does the DFE for antibiotic resistance mutations change as a function of drug concentration?
- How does epistasis between resistance mutations reshape the DFE over the course of adaptation?
- What is the relationship between the DFE and the rate of resistance evolution in clinical populations?
- Is there a correlation between a mutation's DFE value (intrinsic fitness effect) and its DEE value (ecological fitness)? If so, what does it imply for which mutations dominate resistance evolution? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory: extreme value theory and the DFE tail | thin | No papers yet |
| Empirical measurement of the DFE | thin | No papers yet |
| Environment-dependence of the DFE | thin | No papers yet |
| DFE and epistasis | thin | No papers yet |
| DFE implications for resistance evolution prediction | thin | No papers yet |
| Distribution of ecological effects (DEE): theory | developing | Maltas2024 introduces the concept and derives general framework |
| DEE: empirical measurement | thin | Critical gap; no measurements exist yet |

## Cross-topic connections

- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — the DEE introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] is the ecological complement to the DFE; the two distributions jointly determine resistance evolution dynamics
- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis reshapes the DFE over the course of adaptation
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — the DFE is a local property of the fitness landscape
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — drug combinations alter the DFE for resistance
