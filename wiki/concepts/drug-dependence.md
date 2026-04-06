# Drug Dependence

**Drug dependence** (also called **drug addiction**) is the phenomenon where drug-resistant cells proliferate faster *in the presence* of the drug they are resistant to than in its absence. This inverts the standard assumption that drug withdrawal always benefits resistant cells, and creates a therapeutically exploitable vulnerability: removing drug causes growth arrest or death of dependent-resistant cells.

## Mechanism in BRAF V600E melanoma

The molecular mechanism was characterized by [[papers/Maltas2023_DrugDependence|Maltas2023]] in MAPKi-resistant BRAF V600E melanoma:

1. During resistance acquisition, melanocytic (MITFhigh) tumors lose MITF expression through adaptive dedifferentiation
2. MITF normally buffers against ERK hyperactivation; its loss leaves cells unable to tolerate high ERK signaling
3. Under drug (MAPKi), ERK is suppressed and cells proliferate normally
4. Upon drug withdrawal, ERK rebounds to high levels, driving JunB accumulation and p21-mediated G1 cell cycle arrest
5. Dedifferentiated (MITFlow) tumors do not develop dependence because they are intrinsically resistant to ERK hyperactivation via already-high JunB target gene expression

## Predictability

Drug dependence is not stochastic — it is determined by the **pre-treatment transcriptional state** of the tumor. Melanocytic (MITFhigh, SOX10high, AXLlow) cell lines consistently produce dependent clones; dedifferentiated lines do not, regardless of resistance mechanism. This makes drug dependence a patient-stratifiable prediction: pre-treatment biopsy classification can identify candidates for dependence-exploiting therapy [[papers/Maltas2023_DrugDependence|Maltas2023]].

## Optimal exploitation

Given measurable per-capita growth rates of sensitive ($k_1$) and resistant ($k_2$) subpopulations under drug-on and drug-off conditions, the optimal fraction of time on drug is:

$$f_\text{on} = \frac{1}{1+\gamma}, \quad \text{where } \gamma = \frac{k_{1,\text{on}} - k_{2,\text{on}}}{k_{2,\text{off}} - k_{1,\text{off}}}$$

This schedule uniquely maintains population heterogeneity and achieves lower total growth than either static drug or drug-free treatment. Experimentally validated in SKMEL28 melanoma over 9-day and 48-day experiments [[papers/Maltas2023_DrugDependence|Maltas2023]].

## Relationship to other concepts

Drug dependence is conceptually distinct from [[concepts/fitness-cost|fitness cost]]: a fitness cost means $r_R < r_S$ in drug-free conditions (resistant cells grow slower than sensitive); drug dependence means $r_{R,\text{on}} > r_{R,\text{off}}$ (resistant cells grow faster with drug than without). The two can co-occur — a dependent clone may still grow slower than its sensitive ancestor without drug — but dependence creates an additional vulnerability not captured by fitness cost alone.

Drug dependence is also distinct from collateral sensitivity: collateral sensitivity describes increased sensitivity to a *different* drug, while dependence describes increased vulnerability to withdrawal of the *same* drug.

## Related concepts and pages

- [[concepts/adaptive-therapy|Adaptive therapy]] — drug holiday optimization is a form of adaptive therapy
- [[concepts/fitness-cost|Fitness cost]] — related but distinct concept
- [[topics/evolutionary-control/_hub|evolutionary-control]] — drug dependence as a control mechanism
- [[topics/evolution-in-fluctuating-environments/_hub|evolution-in-fluctuating-environments]] — drug holidays are a form of alternating environment
- [[papers/Maltas2023_DrugDependence|Maltas2023]] — primary reference
