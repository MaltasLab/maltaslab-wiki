# Distribution of Fitness Effects

## What this topic is about

The distribution of fitness effects (DFE) describes the spectrum of fitness consequences that arise from new mutations in a given environment. Most new mutations are deleterious; a small fraction are neutral; a smaller fraction still are beneficial. The shape of the DFE — particularly the tail describing beneficial mutations — has profound consequences for the rate of adaptation, the predictability of evolutionary trajectories, and the likelihood that any given mutation will fix in a population.

Understanding the DFE is foundational for predicting evolution: if the DFE is broad (many large-effect mutations available), adaptation can be rapid and repeatable; if it is narrow, evolution is slower and more stochastic. In the context of antibiotic resistance, the relevant DFE is the distribution of fitness effects of mutations in the presence of drug — which can differ substantially from the neutral DFE and depends on drug concentration, drug mechanism, and the genetic background of the organism.

A key challenge is that the DFE is not fixed: it depends on the current genetic state of the organism (epistasis), the environment (concentration, drug type), and the population size (which determines what portion of the DFE is accessible). This lab is interested in how the DFE shapes the dynamics of resistance evolution in structured and fluctuating environments.

An important conceptual extension introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] is the **distribution of ecological effects (DEE)**: the distribution of ecological interaction strengths (ecological fitness $f_e$) across the space of possible resistance mutations. The DEE is directly analogous to the DFE but describes how resistance mutations affect fitness in a frequency-dependent, co-culture context rather than in monoculture. Like the DFE, the DEE has never been empirically measured — but the theory developed in Maltas2024 is agnostic to the DEE's specific form, and the shape of the stationary distribution of observed mutants ($P(f_e) \propto \frac{f_e}{1-f_e}\rho_0(f_e)$) can be predicted for any assumed or measured DEE. Measuring the DEE empirically is an open priority.

The first high-resolution empirical measurement of the full beneficial mutation rate spectrum comes from [[papers/Levy2015_LineageTracking|Levy2015]], which used a 500,000-barcode lineage tracking system in *S. cerevisiae* to infer fitness effects and establishment times for ~25,000 adaptive lineages simultaneously. The central finding is that the beneficial $\mu(s)$ spectrum is **non-exponential and structured**: most beneficial mutations cluster at moderate effects (2% < $s$ < 5%) at a rate ~50× higher than larger-effect mutations, while above $s = 5\%$ the distribution is approximately flat with peaks at 7–8% and 10–11% corresponding to single-gene loss-of-function target sizes (~300 bp each). This directly contradicts the prediction of extreme value theory — which underlies most theoretical treatments of adaptation — that the beneficial DFE should be approximately exponential. The structured DFE has immediate consequences for evolutionary predictability: it creates two distinct phases of adaptation, with early dynamics governed deterministically by the abundant moderate-effect class and late dynamics governed stochastically by the rare high-effect class. This demonstrates that the shape of the DFE is not merely a statistical property but a mechanistic driver of evolutionary dynamics.

## Key papers

- Maltas2024 introduced the distribution of ecological effects (DEE) — the distribution of ecological fitness values $f_e$ across the space of possible resistance mutations — as the ecological analogue of the DFE, and derived a general expression for the stationary distribution of observed mutants as a function of any DEE $\rho_0(f_e)$: $P(f_e) \approx \frac{f_e\mu}{(1-f_e)}\rho_0(f_e)$ [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]

- Levy2015 provided the first high-resolution empirical measurement of the beneficial mutation rate spectrum $\mu(s)$ in any organism, showing it is non-exponential and structured — concentrated at moderate effects (2–5%) with a ~50× higher mutation rate than at larger effects, and approximately flat above 5% with peaks consistent with single-gene loss-of-function targets; this directly falsifies the extreme value theory prediction of an exponential beneficial DFE [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 demonstrated that the structured $\mu(s)$ spectrum directly controls the determinism vs. stochasticity of evolutionary dynamics: the abundant moderate-effect class makes early adaptation nearly perfectly reproducible across replicate populations, while the rare high-effect class makes late adaptation stochastic — showing that DFE shape has observable dynamical consequences beyond setting the rate of adaptation [[papers/Levy2015_LineageTracking|Levy2015]]

- Levy2015 quantified standing variation in large clonal populations as a predictable, measurable quantity: ~6,000 beneficial mutations shared between replicate populations arose from ~48 generations of common growth, establishing that mutation supply rate × population size × time is a reliable predictor of preexisting variation before any selection begins — with direct relevance to preexisting antibiotic resistance [[papers/Levy2015_LineageTracking|Levy2015]]

## Key concepts and methods

- **Distribution of ecological effects (DEE):** ecological analogue of the DFE; distribution of $f_e$ values across resistance mutations; introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]], not yet empirically measured in any system
- **Beneficial mutation rate spectrum $\mu(s)$:** rate density of beneficial mutations as a function of fitness effect $s$; first high-resolution empirical measurement in [[papers/Levy2015_LineageTracking|Levy2015]]; revealed to be non-exponential with structured peaks violating extreme value theory predictions
- **Extreme value theory (EVT) prediction:** theoretical expectation, widely used in population genetics, that the beneficial DFE tail should be approximately exponential (Gumbel domain); falsified in the *S. cerevisiae* glucose system by [[papers/Levy2015_LineageTracking|Levy2015]]
- **Bayesian fitness inference:** probabilistic framework for estimating $s$ and $\tau$ from barcode frequency trajectories; enables genome-wide DFE measurement without phenotyping individual clones; described in [[papers/Levy2015_LineageTracking|Levy2015]]

## Open questions

- What does the DEE look like empirically? This is the primary unmeasured quantity required to make quantitative predictions from the Maltas2024 framework [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]].
- Does the non-exponential, structured beneficial $\mu(s)$ spectrum observed in glucose-limited *S. cerevisiae* generalize to antibiotic resistance mutations in *E. faecalis* — or does antibiotic-specific selection pressure produce a qualitatively different DFE structure? [[papers/Levy2015_LineageTracking|Levy2015]]
- How does the DFE for antibiotic resistance mutations change as a function of drug concentration?
- How does epistasis between resistance mutations reshape the DFE over the course of adaptation?
- What is the relationship between the DFE and the rate of resistance evolution in clinical populations?
- Is there a correlation between a mutation's DFE value (intrinsic fitness effect) and its DEE value (ecological fitness)? If so, what does it imply for which mutations dominate resistance evolution? [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]]
- The Levy2015 DFE was measured in a single environment (glucose-limited serial batch); how does the $\mu(s)$ spectrum change under different selective environments, and does the structured non-exponential form persist across conditions?

## Review article outline

| Section | Coverage | Notes |
|---|---|---|
| Theory: extreme value theory and the DFE tail | developing | Levy2015 directly falsifies the EVT prediction; need broader survey of EVT-based models |
| Empirical measurement of the DFE | developing | Levy2015 provides first high-resolution $\mu(s)$ measurement via lineage tracking; bacterial DFE needed |
| Environment-dependence of the DFE | thin | No papers yet; key question for antibiotic contexts |
| DFE and epistasis | thin | No papers yet |
| DFE implications for resistance evolution prediction | developing | Levy2015 shows DFE shape directly determines determinism vs. stochasticity; connection to two-phase dynamics |
| Standing variation and preexisting mutations | developing | Levy2015 quantifies preexisting mutations from mutation supply rate; connection to clinical preexisting resistance |
| Distribution of ecological effects (DEE): theory | developing | Maltas2024 introduces the concept and derives general framework |
| DEE: empirical measurement | thin | Critical gap; no measurements exist yet |

## Cross-topic connections

- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — the DEE introduced by [[papers/Maltas2024_FrequencyDependentPreexistence|Maltas2024]] is the ecological complement to the DFE; the two distributions jointly determine resistance evolution dynamics
- [[topics/genetic-epistasis/_hub|genetic-epistasis]] — epistasis reshapes the DFE over the course of adaptation
- [[topics/fitness-landscapes/_hub|fitness-landscapes]] — the DFE is a local property of the fitness landscape
- [[topics/evolution-in-multidrug-environments/_hub|evolution-in-multidrug-environments]] — drug combinations alter the DFE for resistance
