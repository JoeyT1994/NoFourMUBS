# Independent audit of the approximate-residual tube map

## Scope

This audit addresses the mathematical reduction and search operations in
`../cover/d0_tube_cover.cpp`, with the exact input/header bindings checked
by `verify_tube_graph_binding.py`. The full run subsequently completed with
exit zero, as recorded in `../cover/full_tube_r1e4/RUN_RECEIPT.json`.
Its 5,066,657 processed boxes, tree counts, and frozen-file hashes have been
checked. The finite-width trigonometric error and native-integer overflow
bounds are supplied by the separate `ARITHMETIC_AND_COVER_SOUNDNESS.md`.
An independent reasoned review confirmed its endpoint-product and five-term
sum bounds, Horner error recurrence, and quarter-turn error estimate.

## 1. Near-anchor rays satisfy the enlarged fixed-anchor equations

For raw unit-modulus \(H\) with
\(\max|H_{ij}-D_{ij}|\le\epsilon\), and a dephased raw ray \(x\) unbiased
to \(H/\sqrt6\), the overlap difference is at most \(6\epsilon\).
Since the exact \(H\)-overlap has modulus \(\sqrt6\),

\[
\bigl||D_j^\dagger x|^2-6\bigr|
\le12\sqrt6\epsilon+36\epsilon^2
<30\epsilon+36\epsilon^2.
\]

There is no dephasing restriction on \(H\). Normalizing the ray's first
coordinate changes none of these magnitudes. The program uses columns
0 through 4, which is sufficient: a genuine candidate satisfies all six
inequalities, so discarding one only enlarges the retained set.

The input coefficient for indices \(r<s\) in column \(j\) is
\(\gamma=\arg(\overline D_{rj}D_{sj})\). Thus the implemented term
\(2\cos(\theta_r-\theta_s+\gamma)\) has the correct orientation, and the
derivative signs are \(-2\sin\) for \(\theta_r\) and \(+2\sin\) for
\(\theta_s\). Gaussian-integer multiplication and rational bounds on \(\pi\)
check every one of the 75 terms; no approximate Hadamard coefficients enter.

## 2. The Krawczyk expression is necessary for sublevel points

Let \(B\) be a current real phase box, \(m\) its midpoint, and \(C\) any
finite rational matrix chosen by the floating-point preconditioner proposal.
For a point \(x\in B\) with \(y=F_D(x)\in[-\eta,\eta]^5\), the integral
mean-value identity gives

\[
F_D(x)-F_D(m)=A_x(x-m),
\qquad
A_x=\int_0^1 DF_D(m+t(x-m))\,dt.
\]

Consequently

\[
x=m-C(F_D(m)-y)+(I-CA_x)(x-m).
\tag{1}
\]

The interval Jacobian encloses \(A_x\), because the segment stays in the
convex box. Expanding the center residual by the symmetric interval
\([-\eta,\eta]^5\), **before multiplying by \(C\)**, encloses
\(F_D(m)-y\). The program does exactly this. The coordinate spreads bound
the remaining matrix product by the sum of absolute interval coefficients
times the midpoint radii. Thus every sublevel point lies in the computed
image \(K(B)\).

No invertibility of \(C\), contraction bound below one, fixed-point
existence theorem, or simple-root hypothesis is required for (1). An
unsuccessful inverse proposal merely causes the program to split the box.

## 3. Each search operation preserves the required set

A range rejection requires one interval residual to be strictly outside
\([-\eta,\eta]\). A disjoint \(B\) and \(K(B)\) rejects a box with no
sublevel points. Replacing \(B\) by \(B\cap K(B)\) retains every such
point. If either \(B\) or \(K(B)\) lies in a retained template box, every
sublevel point under consideration is covered by that template. In
particular, the latter acceptance need not mean the entire original box
is contained in the template.

The floating relative-volume calculation selects whether to contract; it
does not determine an exclusion or an interval endpoint. Longest-coordinate
splitting uses two closed children sharing their exact integer midpoint,
so no boundary is omitted. The initial cube extends from
\(-\pi_{\rm hi}+1/8\) to \(\pi_{\rm hi}+1/8\) in every coordinate and
contains a full representative of the phase torus. Its slightly enlarged
width is conservative.

Conditional on the validated interval arithmetic and an observed exhaustive
completion, these operations establish the required global containment.
They remain valid for nonzero residuals, multiple roots, colliding branches,
and positive-dimensional sublevel components. Local root certificates are
unnecessary for this implication.

## 4. Binding to the graph uses the actual rounded boxes

The program's template halfwidth is \(\lceil Q/100\rceil/Q\), not exactly
\(0.01\). Its centers also differ from the original numerical angle
proposals by rounding and possible full turns. The binder directly checks
the complex phases of the integer centers against the rational graph
templates, with chordal error below \(10^{-9}\). It then verifies

\[
\frac{\lceil Q/100\rceil}{Q}+10^{-9}<\frac{10001}{10^6}.
\]

This proves the exact association used by the graph and leaves no
uncontrolled angle-rounding assumption. The header is regenerated
byte-for-byte from the validated input, and the input's source digest must
match the independently reviewed source. Search completion, executable
provenance, and the arithmetic proof remain separate, explicit dependencies.
