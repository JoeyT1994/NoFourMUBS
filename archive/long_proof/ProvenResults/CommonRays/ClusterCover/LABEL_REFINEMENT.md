# Refining labels without refining the phase cover

The [cover theorem](PROOF.md) requires coverage, capacity one, certified
pair enclosures and exhaustive graph exclusion. It does **not** require
each connected component of the unexcluded phase boxes to have one label.

Given the finite list of retained boxes, partition their indices into
groups. For every group construct a lifted bounding box. Check each input
box's containment using `label_contains`, and check capacity one for the
bounding box. These labels cover all common rays, because every retained
box belongs to a group. The groups need not define disjoint phase sets.
Overlap of labels is permitted by the assignment argument in PROOF.md §1.
The same exhaustive graph certificate can therefore use these labels.

The bounded `PartitionLabels(radius,cap)` experiment starts from the
existing connected components and repeatedly cuts an oversized group by
the median box centre along its widest coordinate. Its two child index
lists partition the parent list. It accepts a group only after both its
requested radius test and `certified_box_capacity` pass. If the label cap
is exceeded, or a singleton is too large, it returns the entire box list
as unresolved. This only requests further phase refinement; it certifies
nothing. The outer certifier still checks every member's containment.

## Tighter pair enclosures

For two label centres a,b and radii r,s the exact coordinate difference
lies in `D_k=(b_k−a_k)+[−r_k−s_k,r_k+s_k]`. For any real rotation γ,

    6 exp(−iγ) x†y ∈ exp(−iγ) + Σ exp(i(D_k−γ)).

Sum the outward cosine and sine ranges independently to obtain a complex
rectangle `R+iI`. Then `(R²+I²)/36` contains every overlap probability.
Intersect this with the original centre-plus-radius enclosure before
deciding the O and U edges. Both intervals contain every overlap, so the
intersection cannot delete a true edge. A floating choice of γ only
selects a coordinate frame; the rotation itself is evaluated by outward
interval arithmetic. The zero and 1/6 tests remain rigorous.

These operations change how the cover is represented and tested. They
do not remove any unexcluded phase box or assert that any box has a root.
Their value is measured by whether the graph can exclude before the
expensive phase search goes to the next width.
