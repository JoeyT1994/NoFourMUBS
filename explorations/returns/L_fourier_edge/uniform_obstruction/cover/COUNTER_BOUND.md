# Unsigned counter bounds for the completed tube cover

This supplements `ARITHMETIC_AND_COVER_SOUNDNESS.md` without changing the
frozen source or arithmetic proof. It applies to `d0_tube_cover.cpp`,
SHA-256 `520dfcb7213bf3a7f73ab09ad8f3f8ea151d4e7ff9c23649febe42d0b42625f8`,
and the completed run in `full_tube_r1e4/`.

## An a priori bound on branch depth

Measure each coordinate width in integer grid ticks. For a nonnegative
integer width define

\[
p(w)=\begin{cases}
0,&w=0,\\
\lceil\log_2 w\rceil,&w\ge1,
\end{cases}
\qquad P(X)=\sum_{i=1}^5p(w_i(X)).
\]

Each initial width is \(2\,\mathrm{PI\_HI}<2^{47}\), so
\(P(X_0)\le5\cdot47=235\).

Intersecting a box with its necessary-set enclosure cannot increase any
width, hence cannot increase \(P\). A successful split chooses a coordinate
of width \(w\ge2\) and cuts at its integer midpoint. Its two closed children
have widths \(\lfloor w/2\rfloor\) and \(\lceil w/2\rceil\) in that
coordinate. For \(w\ge2\),

\[
p(\lceil w/2\rceil)=p(w)-1.
\]

The other coordinates do not enlarge. Thus each child has potential at
least one smaller than its parent before contraction. Along every branch,
depth plus potential is at most 235. In particular,

\[
\mathrm{depth}\le235<2^{32}.
\]

The program's unsigned depth field therefore cannot wrap. This conclusion
does not depend on the reported processed-box count. The actual minimum
split-width guard is stronger than the condition \(w\ge2\) used here.

## Bound on every successful-run counter

Because the depth field and its maximum are exact, the recorded maximum
depth 41 is the actual maximum depth of the processed binary tree. A binary
tree of depth at most 41 has at most

\[
1+2+\cdots+2^{41}=2^{42}-1<2^{64}
\]

nodes. Every processed box is one such node. Each of the unsigned 64-bit
counters for processed nodes, splits, contractions, range exclusions,
Krawczyk exclusions and template acceptances increments at most once per
processed node. Hence none can wrap in this completed execution. The
arithmetic in the final tree-count identities is also below \(2^{64}\).

The reported 5,066,657 processed nodes and the other diagnostic counts are
therefore exact integers. The argument uses the independently bounded depth
and the observed completed-tree depth; it does not infer absence of wrap
merely from the small printed node count. No additional search execution is
needed for this deduction.
