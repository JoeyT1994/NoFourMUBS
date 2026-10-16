# The 673 hard Records (exploratory, floats)

**Not part of the proof.** The atlas survey (`../atlas_survey/`) found 673 Records (5.6%, all near the triple locus,
δ₃ ≤ 0.16) whose kernel-checker labels admit two cliques even with the support and joint edge tests. certify.py
(Arb) passes all of them. This folder finds out why, and what the kernel checker (`kernel_atlas/`) needs so that it
settles them too.

**Answer: the atlas does not need to change.** The gap is the kernel's tangent test (Lemma 6.3, Lean `tangB`), which
was simplified for cheap exact arithmetic. An Arb-faithful tangent test with a least-squares direction settles all of
them.

## Why the kernel fails where Arb passes

Both run the same Stage C on the same radii (the kernel normal bound reproduces Arb's rcol, rF, rH and n exactly), and
cluster with the same greedy rule. The difference is the bin tree. On Record 146:

| | Arb (certify.py) | kernel |
|---|---|---|
| survivors at M = 96 | 8,076 | 11,065 |
| labels | 123 | 133 |
| joint graph (O, U edges) | 1,260 / 3,476 | 1,501 / 4,374 |
| two cliques excluded? | yes | no |

The kernel's direct test is Arb's Lemma 6.2 without the scalar test (6.12). Its tangent test makes these
simplifications (`kernel_atlas/docs/KERNEL_TANGENT.md`):

- the direction is fixed, y = c, instead of Arb's per-bin least-squares y;
- N_y ≤ ‖S∘y‖;
- only one branch of each remainder minimum: the K‖S∘y‖IX form of the pure-x term, and the Frobenius forms of the
  cross and δ² terms with ‖S∘y‖₂.

`variants.py` reruns Stage C in floats with each of these switched on or off. Its model of the kernel (`kern`)
reproduces the kernel exactly: 11,065 bins and 133 labels on Record 146, and 11,451 and 134 on Record 276.

## Results (`results/variants.jsonl.gz`)

The table counts hard Records settled, out of 673. The variants are defined in `VARIANTS` in `variants.py`.

| variant | settled |
|---|---|
| `kern`: the kernel today | **0** |
| `kern_menu`: best of y ∈ {c, e₁, …, e₆} | 11 |
| `kern_pure` / `kern_cd`: one remainder branch restored | 18 / 35 |
| `kern_ny`: exact N_y | 100 |
| `kern_rem`: Arb's full remainder, y = c | 137 |
| **`kern_ls`: least-squares y** | **475** |
| `kern_ny_ls`: least-squares y, exact N_y | 592 |
| `kern_ny_cd_ls`: + per-column cross and δ² branches | 659 |
| `kern_cs_ls`: least-squares y, N_y merged into one square root by Cauchy–Schwarz | 574 |
| `kern_cs_diag`: diagonal approximation c_i / G_ii of the least-squares y | 212 |
| **`full`: Arb's tangent test, no scalar test** | **671** |
| `full_q8` / `full_q4`: the same, y rounded to 8 / 4 bits | 668 / 634 |
| `arb`: certify.py (adds the scalar test) | 673 |

On a random sample of 320 Records that the survey passes, `full` settles 319.

What follows for the kernel checker:

1. **The least-squares direction is the essential change** (0 → 475). It has to be a real solve of the 6×6 system:
   the diagonal approximation recovers only 212. The direction need not be exact, because every y gives a valid test.
   With 8-bit rounding (|y_i| ≤ 256) it settles 668 Records against 671 for the exact direction. So the kernel can
   compute y by fixed-point integer elimination with no accuracy proof, or read it from a per-bin hint, and then check
   the inequality exactly for that y.
2. **Then restore the remainder branches.** Exact N_y, and the per-column forms of the cross and δ² terms, take it
   from 475 to 659; the G_y form of the pure-x term takes it to 671. The square roots involved are what the current
   checker avoids. Integer square roots by Newton from a fixed starting point avoid `Nat.log2`, the cost found in
   KERNEL_TANGENT.md, and so does an upper bound s with s² ≥ X supplied as a hint. Merging N_y into one square root
   by Cauchy–Schwarz is cheaper but loses about 20 Records.
3. **The last three** (9157, 11260, 11355) need the scalar test (6.12) as well, as certify.py runs it. It is linear
   per column and cheap to add to the direct test.
4. **Cost estimate.** Building the 6×6 system needs the 36 J̃ and 24 B̃ lanes per column, plus about 300 integer
   operations, roughly 1 ms per tangent test on top of 1.35 ms. The sharper test leaves about a third fewer survivors
   (median 5.5k against 8.5k on these Records), so the total bin-tree time should stay about the same. A cheaper
   schedule runs the y = c test first and the least-squares test only on bins that survive it.

A side observation: label clustering is sensitive. The float model of today's kernel settles only 286 of the 320
sample Records, which the survey passes with the exact kernel survivors. The survivor sets differ only at rounding
margins, which changes the greedy labels. A less order-dependent clustering may be worth trying alongside.

```bash
python3 explorations/hard_records/variants.py [--only=v1,v2] out.jsonl 146 276 ...   # about 0.3 s per variant per Record
```
