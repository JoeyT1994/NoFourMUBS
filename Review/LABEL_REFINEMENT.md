# Referee note: LABEL_REFINEMENT.md

**Verdict: confirmed for the supplied PartitionLabels builder.**

Partitioning the indices of retained boxes preserves their union. The
parent groups cover all indices; each median cut gives disjoint child
index lists whose union is its parent; accepted groups plus pending
groups maintain that invariant. The final independent containment check
is essential because the proposed bounding boxes and periodic lifts use
floating arithmetic. Their construction need not itself be certified if
every proposed containment is subsequently verified.

PartitionLabels checks capacity before accepting a group. If a singleton
cannot be accepted or its cap is exceeded, it returns all indices as
unresolved, so the outer search cannot interpret a partial collection as
a certificate. The production builder does not discard retained boxes.

For a pair of labels the exact coordinate differences lie in the printed
D_k intervals. Summing outward cosines and sines after any rotation gives
a rectangle containing the rotated overlap. Squaring and dividing by 36
encloses the probability. Its intersection with another valid enclosure
remains valid. The code's test against an interval containing 1/6 safely
retains necessary U edges. Overlap between labels is harmless by the
injective-assignment proof in CLUSTER_COVER.md.

The 11 supplied partition/containment controls passed, as did the 6+6
positive graph control with the tighter pair bounds enabled. This does
not certify arbitrary user-supplied label-builder callbacks.
