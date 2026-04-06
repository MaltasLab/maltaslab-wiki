# Competitive Exclusion

**Competitive exclusion** is the ecological outcome in which one sub-population drives another to extinction through competition for shared resources, without any direct killing. In the context of drug resistance, competitive exclusion is the mechanism by which drug-sensitive cells can suppress or eliminate resistant cells (and vice versa), and is the ecological foundation of [[concepts/adaptive-therapy|adaptive therapy]] and competition-based containment strategies.

## The competitive exclusion condition

[[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] established the mathematical condition for competitive exclusion: the **gain function** — the difference between resistant and sensitive growth rates as a function of population frequency — must maintain the same sign across all frequencies. If the gain function changes sign at some frequency, a stable coexistence equilibrium exists and neither population is excluded.

Critically, this condition **cannot be verified from monoculture fitness measurements alone**. Frequency-dependent ecological interactions can ameliorate or exaggerate fitness differences at intermediate frequencies, making coculture measurements across a range of compositions necessary.

## Frequency dependence and ecological rescue

In PC9 NSCLC, a gefitinib-resistant clone with ~24% monoculture [[concepts/fitness-cost|fitness cost]] has its cost nearly completely ameliorated by ecological interactions when rare in a predominantly sensitive population — creating a potential stable coexistence fixed point near $p_R \approx 0$ [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]]. This "ecological rescue" means that even with a substantial fitness cost, resistant cells may be maintained at low frequency in the absence of drug.

Drug treatment inverts the competitive dynamics: at all tested gefitinib concentrations, the gain function becomes entirely negative (resistant excludes sensitive), with ecological interaction strength increasing with drug concentration [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]].

## Competition-based containment

[[papers/Hansen2020_ContainmentStrategy|Hansen2020]] demonstrated experimentally that maintaining large sensitive populations can delay competitive exclusion by resistant cells. In *E. coli* bioreactor experiments, mixed populations (90% sensitive, 10% resistant) maintained below a containment threshold for >18 hours, while resistant-only populations escaped in 6-9 hours. The competitive suppression effect is density-conditioned: it requires sufficiently high acceptable burden ($P_\text{max}$) for logistic competition to be strong enough to matter.

## Cooperative resistance and the snowdrift game

When resistance acts as a public good — as in $\beta$-lactamase-mediated ampicillin resistance — both sensitive and resistant cells can invade when rare, creating stable coexistence via a snowdrift game rather than competitive exclusion. [[papers/Yurtsev2013_BacterialCheating|Yurtsev2013]] showed that resistant *E. coli* degrade ampicillin extracellularly, protecting nearby sensitive "cheater" cells. The equilibrium resistant fraction $f_R \approx A_i / (V_{\max} N_i)$ is proportional to drug concentration and inversely proportional to cell density.

## Related concepts and pages

- [[concepts/adaptive-therapy|Adaptive therapy]] — exploits competitive exclusion of resistant cells by maintaining sensitive populations
- [[concepts/fitness-cost|Fitness cost]] — the biological basis for competitive disadvantage of resistant cells
- [[topics/frequency-dependent-selection/_hub|frequency-dependent-selection]] — competitive exclusion is frequency-dependent
- [[topics/evolutionary-control/_hub|evolutionary-control]] — competitive exclusion as a control mechanism
- [[papers/Farrokhian2022_CompetitiveExclusionNSCLC|Farrokhian2022]] — competitive exclusion condition and ecological rescue in NSCLC
- [[papers/Hansen2020_ContainmentStrategy|Hansen2020]] — competition-based containment in bacteria
- [[papers/Yurtsev2013_BacterialCheating|Yurtsev2013]] — cooperative resistance and snowdrift coexistence
