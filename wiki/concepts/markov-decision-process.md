# Markov Decision Process

A **Markov decision process (MDP)** is a mathematical framework for sequential decision-making under uncertainty. It provides a principled way to find an optimal *policy* — a mapping from states to actions — that maximizes a cumulative reward over time.

## Formal definition

An MDP consists of:
- A finite set of **states** $S$
- A finite set of **actions** $A$
- **Transition probabilities** $P_a(s' | s, a)$: the probability of moving to state $s'$ given current state $s$ and action $a$
- An **instantaneous reward** $R_a(s)$ for each state–action pair
- A **discount factor** $\gamma \in [0, 1)$ that determines the relative weight of immediate versus future rewards

The goal is to find a policy $\pi(s): S \to A$ that maximizes the cumulative discounted reward:

$$R_c = \sum_{t=0}^{\infty} \gamma^t \langle R_{\pi}(s_t) \rangle$$

The optimal policy is found via **value iteration**, iterating:

$$V_{i+1}(s) = \max_{a} \left( R_a(s) + \gamma \sum_{s'} P(s'|s,a) V_i(s') \right)$$

until convergence.

## Role of the discount factor

The parameter $\gamma$ controls the optimization time horizon:
- $\gamma \approx 0$: greedy/short-sighted — maximize immediate reward only
- $\gamma \approx 1$: far-sighted — optimize over long timescales, tolerating short-term losses for long-term gain

In the context of antibiotic resistance, this corresponds to the difference between always using the most effective drug now ($\gamma \approx 0$) versus occasionally deploying less effective drugs to steer the population toward a more vulnerable future state ($\gamma \approx 1$).

## Application to evolutionary control

[[papers/Maltas2019a_CollateralSensitivity|Maltas2019a]] introduced the MDP framework for antibiotic drug cycling. In this application:

- **State** $s_t$: the resistance profile of the bacterial population at time $t$ — a vector of resistance levels to each available drug
- **Action** $a_t$: the drug applied at time $t$
- **Transition probabilities**: estimated from experimental collateral sensitivity profiles; applying drug $a$ shifts the resistance profile according to the measured collateral effects
- **Reward**: the negative of resistance to the currently applied drug (lower resistance = better reward)
- **Policy**: a mapping from resistance profile to optimal drug choice

The key finding is that the long-term optimal policy ($\gamma \approx 1$) outperforms intuitive cycling by tolerating transient high-resistance periods — applying a locally ineffective drug that steers the population toward collateral sensitivity to a future drug. This is the principle of **evolutionary steering**.

## Key properties in this context

- The optimal policy is **aperiodic**: it does not prescribe a fixed repeating cycle but adapts to the current resistance state
- The resulting resistance distribution is **bimodal**: the population alternates between very low resistance (effective drug) and occasionally very high resistance (steering drug), achieving lower *mean* resistance than intermediate strategies
- Collateral sensitivity is *mechanistically essential*: simulations with collateral sensitivity set to zero show rapid resistance saturation under the same policy

## Dynamic MDP (d-MDP): extending to time-varying collateral profiles

The static MDP assumes collateral profiles are constant throughout treatment — an assumption violated in practice, as collateral effects evolve over time. [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]] introduced the **dynamic MDP (d-MDP)** framework to address this.

The d-MDP solves a sequence of static MDPs, one per measured collateral profile epoch, in **reverse chronological order**. The key modification is to the reward function: rather than rewarding only the resistance to the currently applied drug, the reward at each time step also incorporates the **value of the resulting state in subsequent epochs** — computed by exhaustive simulation under the later-period optimal policy. The algorithm proceeds:

1. Solve the static MDP for the final collateral profile epoch; simulate exhaustively to compute state-value pairs
2. Solve the static MDP for the second-to-last epoch, using a composite reward that combines current drug resistance and future state value from step 1
3. Repeat backward in time until the initial epoch is reached

This backward-induction structure ensures that each period's policy "knows" what the collateral landscape will look like in future periods and can trade off current resistance for favorable positioning in the next regime. In simulations calibrated to experimental data, the d-MDP achieves **50% lower cumulative resistance** than the best static MDP derived from any single time point's collateral data [[papers/Maltas2025_DynamicCollateralSensitivity|Maltas2025]].

The framework generalizes: additional collateral profile epochs can be incorporated, reward objectives can be modified (e.g., minimize total resistance rather than maximize sensitivity to at least one drug), and the time scale of evolutionary transitions can be adjusted.

## Related concepts and pages

- [[topics/evolutionary-control/_hub|evolutionary-control]] — primary application domain
- [[topics/collateral-sensitivity/_hub|collateral-sensitivity]] — the empirical basis for MDP transition probabilities in this lab's work
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — MDP-optimized sequences are a form of sequential drug protocol
