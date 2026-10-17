# The completed known locus and the corrected boundary reduction

**Status: PROVED, conditional only on the supplied return-L component
theorem where explicitly invoked.** No atlas assertion or global
classification is used.

Let \(V\subset\mathbb T^{55}\) be the full compact triple space, let
\(O=G M\) be the equivalence orbit of the supplied bicirculant companion
surface, and let \(Q=G\{q_0\}\) be the exceptional product orbit certified
in `LOCAL_ISOLATION.md`.

## 1. The entire known triple locus is clopen

The supplied component theorem proves that \(O\) is open and closed in
\(V\). Its image in \(V/G\) is one connected component. This does not by
itself say that the entire labeled set \(O\) is connected; finite images
of a connected surface can form several disjoint labeled components.

The new isolation theorem proves that \(Q\) is a finite open-and-closed
subset of \(V\), disjoint from \(O\). Therefore

\[
Z=O\sqcup Q
\tag{1}
\]

is open and closed in \(V\). Its image in the equivalence quotient is
precisely two connected components: the continuous component and the
isolated exceptional class.

All members of \(O\) have at least two Fourier edges by the supplied
theorem; all members of \(Q\) have three by the new exact check. Hence
\(Z\subseteq V_F\).

In particular, any additional triple belongs to the disjoint compact
complement

\[
W=V\setminus Z.
\tag{2}
\]

No continuous path through exact triples can connect either known locus
to \(W\). More strongly, for any fixed compatible metric on the compact
ambient torus, if \(W\ne\varnothing\) then

\[
\operatorname{dist}(Z,W)>0.
\tag{3}
\]

Indeed, both are compact and disjoint, and the continuous distance
function attains its strictly positive minimum on their product. This
is an existence result for a separation constant, not a numerical
certificate for the distance from the entire orbit \(Z\).

Every compact semialgebraic set has finitely many connected components.
In particular \(V\), defined by the phase-circle equations and the
polynomial MUB constraints, has finitely many connected components.
The remaining work therefore concerns finitely many possible unknown
components; the argument supplies neither a useful component count nor
sample points on them.

## 2. With A, B is now automatic

Subproblem A asks, in the strongest proposed form, to prove that every
Fourier-edge triple belongs to \(Z\). Because the reverse inclusion is
already proved, this would give

\[
\boxed{V_F=Z.}
\tag{4}
\]

The right side is already clopen. Thus the full local-completeness
condition B follows immediately from A: every point of \(V_F\) has a
relative neighborhood in \(V\) contained in \(V_F\).

Equivalently, all the local work needed for the two classes predicted by
A is now complete. A can still discover further Fourier-edge classes;
if it does, those classes would require additional local analysis.

The remaining sufficient targets reduce to:

- **A:** there are no further Fourier-edge triples;
- **C:** there is no connected component of \(V\) wholly contained in
  \(V\setminus V_F\).

Under A, every component either lies in \(V_F\) or lies in its complement,
so C is equivalent to global F. Hence **A + C implies F** with no further
independent B obligation for the stated classification.

Under A, if the Fourier-free complement is nonempty, it is compact and
the defining nonnegative polynomial \(\Pi\) has a strictly positive
minimum on it. Thus there is one uniform \(\delta>0\) such that
\(\Pi\ge\delta\) on the entire Fourier-free complement, not merely a
possibly different bound for each component. This compactness statement
does not evaluate \(\delta\) and supplies no contradiction.

## 3. Correct the direction of the limiting statement

The brief's phrase “no Fourier-free triple is a limit of Fourier-edge
triples” is automatic: \(V_F=\{\Pi=0\}\) is closed. It does not express
the missing boundary theorem.

The substantive local-completeness statement is

\[
\boxed{\overline{V\setminus V_F}\cap V_F=\varnothing,}
\tag{5}
\]

namely **no Fourier-edge triple is a limit of Fourier-free triples**.
It says that \(V_F\) is also open in \(V\). Equation (5) holds along
\(Z\) by the supplied component theorem and the new isolation theorem.
Its extension to every point of \(V_F\) remains dependent on A or an
alternative local theorem for any additional Fourier-edge triples.

There is also an elementary connected-component fact underlying the
brief's Case B/Case C split. If \(U\) is a connected component of
\(V\setminus V_F\) and its closure in \(V\) avoids \(V_F\), then
\(U\) is a connected component of \(V\). One proof uses local
connectedness of semialgebraic sets: components of the open subspace
\(V\setminus V_F\) are open there; the closure hypothesis then makes
\(U\) both open and closed in \(V\). Its connectedness makes it one
whole connected component. Conversely, any component \(U\) that is not
already a component of \(V\) must approach the Fourier locus.

The new result rules out approach to both known parts of that locus,
but it does not rule out unknown Fourier-edge boundary points.

## 4. Implications for the proposed maximum argument

The rank-55 calculation supplies a useful caution: the full triple
space really does have a zero-dimensional component. Thus no universal
claim that every triple has a two-dimensional tangent space, or that
every triple component has dimension at least two, can be valid.

A lower bound restricted to *Fourier-free* triples could still be true,
but it would require a new proof. The known rank-53 and rank-51 behavior
on \(O\) gives no such bound on \(W\). Also, a positive-dimensional
Zariski tangent space does not by itself establish a positive-dimensional
real solution germ at a singular point. A maximum principle must address
the actual local real geometry or stratification of a hypothetical
unknown component.

## 5. Quartet consequence

Assuming the supplied Fourier-edge quartet exclusion E, a hypothetical
quartet cannot contain any triple face in \(Z\), since every member of
\(Z\) has a Fourier edge. Thus all four faces would lie in \(W\).

More generally E itself forces every face of any hypothetical quartet
to be Fourier-free, regardless of A. The additional contribution of
(1)–(3) is the rigorous disconnection and positive separation of those
faces from both known triple loci. The conditions do not yet exclude
four compatible unknown faces, and no assertion of global F or F′ is
made here.
