# Triple-conjecture test across the atlas (exploratory, NUMERICAL)

**Not part of the proof.** It tests the MUB-triple conjecture (Matolcsi–Matszangosz–Varga–Weiner; draft paper,
Conjecture 1): every MUB triple in C⁶ is equivalent to the isolated Fourier triple, or to a triple of the continuous
construction. In the continuous construction, two transitions are of Fourier type (F6⁽²⁾ or its transpose) and the
third is in the two-circulant family X⁽²⁾.

For every one of the 12,021 atlas Record centres H, `triples.py` does the following:

1. Finds all unbiased vectors of {I, H/√6}: Stage C bins at radius 0 (`stagec.bins`), refined by Newton (48–72 per
   centre).
2. Takes as starts up to 64 six-sets of them that are closest to orthonormal: all 6-cliques of the graph
   |⟨x,y⟩|/6 ≤ δ₃ + 0.2, ordered by their worst overlap.
3. Solves the full triple equations by Levenberg–Marquardt, moving both H and the third basis K. It works in the
   dephased chart of 2C (25 + 30 phases, 96 residuals: orthogonality of H and K and |H†K|² = 6). A start counts as a
   triple when the residual is below 1e-11.
4. Classifies each triple by its transitions T₁ = H, T₂ = K and T₃ = H†K/√6, using three equivalence invariants:
   - f6, the distance of the Haagerup invariants to the sixth roots of unity (0 for F6);
   - d₃, the least defect of a 3×3 Hadamard block (0 for Fourier type);
   - x2, the least residual of the X⁽²⁾ seed relation (θ₁, θ₂, θ₁ − θ₂, θ₁) over every ordered dephased 3×3
     corner of T, conj T, Tᵀ and conj Tᵀ.

   The classes are:
   - `isolated_fourier`: all three transitions have f6 ≈ 0.
   - `continuous`: at least two transitions are Fourier type, and the third is Fourier type or satisfies the X⁽²⁾
     relation.
   - `unexplained`: anything else, a candidate counterexample.

```bash
python3 explorations/triple_test/triples.py --validate                     # product triple, 2C bicirculant triple
python3 explorations/triple_test/triples.py out.jsonl 877 11344 100         # some Records (about 1-30 s each)
sbatch explorations/triple_test/run_rusty.sh                               # all 12,021 on one rusty node
python3 explorations/triple_test/summarize.py <results dir> [--csv file]   # report (SUMMARY.md) and CSV
```

Validation: the product triple (F₂⊗F₃, D₂F₂⊗D₃F₃) classifies as `isolated_fourier`, and 2C's bicirculant triple,
(b, c, e, f) = (i, i, 1, −1), classifies as `continuous`. A perturbed copy of the bicirculant triple re-solves to a
`continuous` triple.

## Result: the whole atlas (`results/full/`)

Run on rusty: job 7250026, one ccq node, 22 minutes. Every Record was processed with no errors. Per-Record rows are in
`results/full/per_record.csv.gz` and the report is `results/full/SUMMARY.md`. The full per-triple output (36 MB) is
kept outside the repository in `~/Data/NoFourMUBs/triple_test/triples_all.jsonl.gz`, and on rusty in
`results/full/w*.jsonl`.

| | |
|---|---|
| starts | 615,734 |
| converged to a triple | 381,890 (the rest are LM failures and carry no information) |
| distinct triples (by chart coordinates, not equivalence classes) | 379,944 |
| `continuous` | 377,214 |
| `isolated_fourier` | 2,730 (found from 2,712 Records) |
| **`unexplained`** | **0** |
| Records with at least one triple | 12,021 / 12,021 |

**Every triple found is of a conjectured form.** The classification has wide margins.

| Check | Result |
|---|---|
| Fourier-type transitions, d₃ | ≤ 1.3e-10 (threshold 1e-6) |
| Third transition of a continuous triple, x2 | ≤ 8e-13 |
| Isolated triples, f6 | ≤ 4e-14 |
| Continuous triples, max f6 | ≥ 7e-5 (separated from the isolated class) |
| Triple residuals | ≤ 9.5e-12 |
| Negative control (40 arbitrary atlas-centre pairs) | all `unexplained` |

The continuous triples have the expected shape: exactly two Fourier-type transitions and one X⁽²⁾ transition,
except 75 triples near F6 where all three are of Fourier type.

**Distance to the triple locus.** The nearest triple found moved H by a median of 0.92 in Frobenius norm. It is
0.03 for the 233 centres with δ₃ < 0.01, and grows with δ₃ (0.28, 0.64, 0.98 and 1.5 across the bins in
`SUMMARY.md`). So δ₃ from the survey is a good proxy for the distance to T₃.

## What this does and does not show

- **It is a dense search, not an exhaustive one.** Starts are seeded at every atlas centre, so the search samples
  all of X at the atlas resolution. But a triple is found only if LM converges to it from one of these starts.
  Triples far from every start, or in basins LM does not reach, could be missed. A null result here is evidence, not
  proof.
- **The classification uses necessary signatures, not full membership.** "Fourier type" means a 3×3 Hadamard block,
  and "X⁽²⁾" means a dephased corner with the X⁽²⁾ seed relation. Neither the orientation of the Fourier-type
  transitions (F6⁽²⁾ versus its transpose) nor their joint parameters are checked against the construction. By
  Theorem 1.3 (uniqueness of the matched completion) and Theorem A (a non-matched strict corner forces Tao), a strict
  X⁽²⁾-type corner does determine the class of the transition, so the x2 test is close to membership.
- "Distinct triples" are distinct in the chart. Many are equivalent copies of the same triple class.
