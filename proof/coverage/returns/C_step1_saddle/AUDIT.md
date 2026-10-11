# Independent audit of the exact Step 1 certificate checker

## Verdict and scope

**No false algebraic acceptance or mathematical error was found in the
shipped certificates examined in this audit.** The complete ordinary-Python
replay accepted all **12 certificate files and 651 exact checks**. Fourteen
targeted malformed copies were rejected. An additional 13 exact
comparisons confirmed important source links between separately stored
certificate bundles.

This is an audit of the exact computational layer and its stated paper
implications. It is **not** a Lean compilation result, a formal verification
of the Python implementation, or a claim that a global Step 1 theorem has
already been checked by the Lean kernel. The actual compilation status is
reported in `STATUS.md`.

The auditor read the full `verify_certificates.py`, all twelve JSON
certificates, the interior and boundary notes, and the supplied boundary
reference. The source review was supplemented by exact arithmetic replays,
cross-file polynomial comparisons, and mutation probes. This was a bounded
targeted audit, not exhaustive fuzzing of every malformed JSON shape.

The checker source examined at the final audit replay had SHA-256

```text
c0ca1bc1a7870380570ff617736fcea203cd39805c504ac746857b8af0617198
```

The final replay required the frozen package manifest and checked the
complete certificate file set, hashes, kinds, and per-file claim counts.
Any later changes to the checker should be distinguished from the snapshot
above.

## 1. Full replay

| Certificate | Accepted exact checks |
|---|---:|
| `algebraic_numbers.json` | 11 |
| `boundary_core.json` | 36 |
| `boundary_curvature.json` | 8 |
| `boundary_edges.json` | 11 |
| `boundary_trace.json` | 3 |
| `coordinate_bridges.json` | 11 |
| `endpoint_identities.json` | 11 |
| `endpoints.json` | 464 |
| `interior_boundary.json` | 26 |
| `interior_core.json` | 40 |
| `interior_cusp.json` | 14 |
| `interior_geometry.json` | 16 |
| **Total** | **651** |

The measured full replay took exactly
`855744947/200000000` seconds according to the checker's integer
nanosecond timer. Timing is operational information, not an acceptance
condition.

This final replay used isolated Python with site initialization disabled:

```bash
python -I -S output/verify_certificates.py
```

All acceptance arithmetic in the checker uses integers and
`fractions.Fraction`. The imports do not include SymPy, python-flint, or
generation modules. JSON is parsed as data; no expression evaluation,
generated-code execution, CAS invocation, floating-point comparison, or
untrusted symbolic differentiation is used at acceptance time.

## 2. Arithmetic checker review

### Sparse polynomial operations

The polynomial representation assigns a rational coefficient to each
exponent tuple. Addition combines equal tuples and removes zero
coefficients. Multiplication convolves exponents and coefficients.
Nonnegative integer powers use repeated squaring. Definitions are expanded
with a cycle check, and variable/definition name collisions are rejected.
Equality is coefficient equality after exact normalization.

The differentiation implementation multiplies a coefficient by the
relevant exponent and lowers that exponent by one. All supplied derivative
orders are checked to be nonnegative. The endpoint Laurent derivatives are
handled separately through exact Fourier moments, as discussed below.

Polynomial substitution is simultaneous: each original monomial is
evaluated in the replacement polynomials. Replacement expressions are not
recursively substituted into themselves. Thus substitutions such as
\(c\mapsto-c,h\mapsto-h\), \(v\mapsto2x^2+d\), and
\(h\mapsto4c^3-3c\) have their intended meaning. Unknown substitution
variables are rejected.

The checker uses explicit exception-producing conditions rather than
Python `assert` for acceptance. A deliberately false derivative was also
rejected under `python -O`.

### Bernstein positivity and interval coverage

For every Bernstein record the checker verifies all of the following:

1. The endpoints are rational and satisfy \(a<b\).
2. The polynomial is univariate in the declared variable.
3. Every coefficient is at least the claimed strictly positive lower
   bound \(m\).
4. The exact identity
   \[
   p(a+(b-a)t)=\sum_{i=0}^{n}\beta_i\binom ni t^i(1-t)^{n-i}
   \]
   holds coefficient by coefficient.

The mathematical conclusion follows from nonnegativity and the
partition-of-unity property of the Bernstein basis on \([0,1]\):
\(p\ge m>0\). There is no sampling or approximate interval test.

An `interval_covers` record identifies the previously checked positivity
records, verifies that they concern the same polynomial and variable, sorts
their rational intervals, and checks that they cover the stated interval
without a gap. The checks remain sound even though the coverage loop is
evaluated before the positivity loop: the entire bundle is accepted only
after both loops succeed. Duplicate claim names are rejected at the end.

The actual coverage is complete:

* \(T\) is certified on the whole \([-1/2,1/2]\).
* \(F\) is certified on \([-1/2,0]\), \([0,1/4]\), and
  \([1/4,1/2]\); their union is checked exactly.
* The cusp cubic uses a single Bernstein interval containing the complete
  admissible real cusp segment.

The orthant records similarly check nonnegative rational coefficients and
reject any dependence on an undeclared orthant variable. Their theorem is
conditional on those variables being nonnegative; the strict terms and the
physical sign hypotheses are supplied by the paper argument and the Lean
sign lemmas, not silently assumed by the arithmetic checker.

### Algebraic root isolation

The algebraic-number checker accepts only linear or quadratic polynomials.
It computes the derivative at both rational interval endpoints. Since that
derivative is affine, its endpoint bounds certify strict monotonicity on
the entire interval. Strict opposite endpoint signs then imply existence
and uniqueness of a real root there by continuity.

Both increasing and decreasing cases are handled. In particular,
\(r^2-625r+3125\) is strictly decreasing on the stated interval \([5,6]\);
the checker does not accidentally apply an increasing-root test to it.

These records certify isolated roots. They do not by themselves prove that
an arbitrary physical root has entered the isolating interval, nor do they
implement a general irreducibility test. The physical-root capture needed
here is checked and justified separately below. None of the downstream
arguments requires a general minimal-polynomial irreducibility oracle.

## 3. The physical transverse root is captured, not merely isolated

The boundary argument gives

\[
f(y)=4y^2+6y+1=0,\qquad y=2c^2-1\ge-1.
\]

Let \(a=-49/256\) and \(b=-3/16\). The certificate contains

\[
f(y)-f(a)=(y-a)\,[4(y+a)+6],
\]

and the exact endpoint evaluations

\[
f(a)=-31/16384<0,\qquad f(b)=1/64>0.
\]

For every \(y\ge-1\), the secant factor at \(a\) is at least
\(79/64>0\), and the secant factor at \(b\) is at least \(5/4>0\).
Putting \(f(y)=0\) therefore forces \(a<y<b\).

This is a global capture argument over the entire physical range
\(y\ge-1\). It excludes the other quadratic root without relying on a
plot, a chosen square-root sign, or an unstated root-selection assumption.
The certified linear identity then gives

\[
660(46y+9)-\frac{4125}{32}
=30360\left(y+\frac{49}{256}\right)>0.
\]

The positive-curvature exclusion is consequently justified for every
physical point on the remaining boundary critical branch.

## 4. Endpoint field arithmetic, derivatives, and distinctness

The endpoint checker constructs the original Laurent invariant internally
from its stated structural quantities. It does not simply trust an
uploaded Fourier coefficient table. It independently constructs the
normalized compact quantities and checks the transformed structural
\(g,\eta,\chi\) against them.

The field representation is a pair \((a,b)\) for \(a+bT\), with
\(T^2=-15\). The endpoint is

\[
q=\frac{1+T}{4},\qquad \bar q=\frac{1-T}{4},\qquad q\bar q=1.
\]

Each stored positive or negative field power is recomputed exactly by
repeated squaring, using \(q\) or \(\bar q\), respectively. All required
powers must be present. Under the embedding
\(T=i\sqrt{15}\), the field-pair representation is injective: equality
of complex values implies equality of their real parts and, since
\(\sqrt{15}>0\), equality of the rational imaginary coefficients.

The checker regenerates all 144 dephased seed transformations, checks their
integer matrices and unimodularity, and verifies Laurent invariance under
each transformation. For all 18 orbit entries it verifies the value,
stationarity, Hessian, and alternating signs of the leading principal
minors.

The derivative conventions are correct. For a Laurent monomial
\(e^{i m\cdot\theta}\), the first derivative is
\(i m_j e^{i m\cdot\theta}\); the checker verifies that the corresponding
unmultiplied moment vanishes. A second derivative contributes
\(-m_jm_k e^{i m\cdot\theta}\), which is the sign used in the constructed
real Hessian. The Hessian is symmetric by this construction, so the stated
Sylvester sign test is applicable.

**Torus-point distinctness is checked in the algebraic field, not inferred
only from integer exponent-vector distinctness.** The supplied coordinates
must equal the verified powers of \(q\), and their 18 exact coordinate
tuples must be distinct. This resolves the potential ambiguity that
different exponent vectors could evaluate to the same torus point.

The complete repeated-root lift set is regenerated from both orientations
and all permutations. The checked inverse formula is

\[
(a,b,c,d)=(e_1/o_2,\ o_1/e_3,\ o_1/e_2,\ e_1/o_3).
\]

Omitting a lift is rejected. Common cubic rotation of both triples cancels
in this inverse formula, so it does not require extra seed points beyond
the enumerated lifts.

### Resolved metadata issue

During the initial source review, the `field_modulus` and `field_embedding`
strings were descriptive fields while arithmetic was hardcoded to the
stated field. Their actual values were correct, so no shipped numerical
claim was affected. The root integrator added exact validation of both
strings. A mutation to `T^2+14` is now rejected explicitly before endpoint
arithmetic. This resolved a source-description ambiguity.

## 5. Cross-file source linkage

In addition to replaying every supplied claim, the audit made 13 exact
comparisons or evaluations:

| Comparison | Verdict |
|---|---|
| Trace expansion \(u\) equals boundary-core \(u\). | Pass |
| Trace expansion \(v\) equals boundary-core \(v\). | Pass |
| Trace expansion \(w\) equals boundary-core \(w\). | Pass |
| Boundary-core \(R\) equals the edge bundle's \(R\). | Pass |
| Geometry's general real \(A,B\) formula, restricted to real positive \(B\), equals the interior polynomial with \(v=B^2\). | Pass |
| Geometry's ambient formula with \(A=U+V,B=U-V\) equals the transverse bundle's ambient polynomial. | Pass |
| Interior cusp invariant equals the transverse cusp factor with \(b_2=y^2\). | Pass |
| Smooth-boundary \(\Delta\) equals cusp \(\Delta\) after coordinate renaming. | Pass |
| Geometry \(\Delta\) equals cusp \(\Delta\) after coordinate renaming. | Pass |
| Curvature's quadratic relation equals the secant-capture polynomial. | Pass |
| The isolated \(y\)-polynomial equals that capture polynomial. | Pass |
| The optional negative-Hessian SOS polynomial equals the computed base negative Hessian after division by \(59049/2048\). | Pass |
| The endpoint satisfies \(2q^2-q+2=0\) in the exact field. | Pass |

The key global anchor is the endpoint checker's independently constructed
structural-to-compact equality. The other bundles specialize that compact
formula in the coordinate charts described in the notes. Their derivative
and substitution records tie the subsidiary expressions to the source
polynomials rather than checking unrelated numerically convenient
formulas.

The generic polynomial checker validates identities relative to their
declared definitions; it is not a theorem assembler that automatically
connects all geometric meanings across files. The comparisons above and
the explicit blueprint document those links. The Lean analysis layer must
eventually instantiate the corresponding definitions and lemmas to turn
them into a single kernel-checked theorem.

## 6. Topological and geometric audit of the implication to (W)

### Pullback and open-quotient descent

Let \(X_1\) be the compact space of ordered unit-product triples and
\(X=X_1\times X_1\). The displayed map \(\Psi:X\to\mathbb T^4\) is
continuous and surjective. For arbitrary input triples, putting
\(\rho=e_1o_1\) gives \(abcd=\rho^3\), and the normalized triples of
the resulting seed are exactly the original ones. For a given seed,
choosing a cube root of \(abcd\) provides an input triple pair.

A seed local maximum pulls back through \(\Psi\) by continuity. The trace
of a unit-product triple determines its unordered roots through

\[
t^3-Ut^2+\overline U t-1.
\]

Thus the trace fibers are exactly the \(S_3\)-orbits. The induced compact
quotient-to-Hausdorff-space bijection is a homeomorphism. The group quotient
is open, since the saturation of an open set is the union of its finitely
many translates. It follows that local maximality descends to the product
trace domain, even at repeated roots and cusps.

This argument is sound and requires no local inverse or differential
lifting theorem for \(\Psi\). Once maximality has descended, the
transverse splitting curve only needs to stay in the actual trace domain,
which its explicit unit-product-root representation guarantees.

### Exact identification of the deltoid boundary

The discriminant classification gives
\(\mathcal D=\{\Delta\le0\}\). One further bridge should be stated
explicitly: this equality alone does not imply
\(\partial\mathcal D=\{\Delta=0\}\).

At any repeated-root trace \(U=2z+z^{-2}\), consider

\[
U(r)=(r+r^{-1})z+z^{-2},\qquad r>0,\ r\ne1.
\]

Its root triple is \((rz,r^{-1}z,z^{-2})\). The already-certified
nonunimodular discriminant formula gives \(\Delta(U(r))>0\), while
\(U(r)\to U\) as \(r\to1\). Therefore every zero-discriminant trace is
approached from outside \(\mathcal D\), including at a cusp. Conversely,
distinct unit roots have \(\Delta<0\), hence an open neighborhood inside
\(\mathcal D\). This supplies the missing explanatory step in the
boundary identification without invoking a Jordan-curve theorem.

### Positive components and maxima

For a positive connected component \(C\subset\{R>0\}\) in the seed
torus, the required assumptions are all satisfied:

* The torus is compact and locally connected.
* \(R\) is continuous, so \(\{R>0\}\) is open.
* Components of this open set are open, by local connectedness, and are
  closed relative to \(\{R>0\}\).
* The closure \(\overline C\) is compact, and every point of
  \(\overline C\setminus C\) has \(R=0\).

A maximum of \(R\) on \(\overline C\) has positive value because
\(C\) contains a positive point. It lies in \(C\), which is open, and
therefore is a local maximum on the full torus. The local-maximum
classification places it in the finite orbit. This proves the desired
component intersection (W) once the analytic classification lemmas are
assembled. It does not require connectedness of \(\{R>0\}\), path
lifting, or a component-preserving inverse of \(\Psi\).

## 7. Mutation probes

The reusable supplementary script `audit_checks.py` reproduces the same
fourteen mutation probes and thirteen source comparisons:

```bash
python -I -S output/audit_checks.py
```

It resolves inputs relative to its own location, uses disposable temporary
directories for altered copies, and writes the compact result to
`logs/audit_checks.json`. Its successful status is
`SUPPLEMENTARY_AUDIT_PASS`; it is not the default acceptance command and
does not alter the frozen certificates or checker.

All probes used copies in a separate temporary scratch directory, leaving
the shipped certificates unchanged. Their directories deliberately omitted
the final manifest so that rejection exercised the arithmetic and census
checks rather than merely a hash mismatch. After the integrator made the
manifest mandatory by default, **all fourteen probes were rerun** with the
explicit development flag:

```bash
python output/verify_certificates.py --algebra-only --certificate-dir MUTATION_DIRECTORY
```

That flag preserves the individual arithmetic checks but does not claim
package completeness; a successful development replay is labeled
`PARTIAL_ALGEBRA_PASS`. The normal full-package command requires the
manifest. The altered copies below all failed, as intended.

| Mutation | Observed rejection |
|---|---|
| Add 1 to the normalized-eliminant identity's right side. | Polynomial identity failure. |
| Add 1 to the horizontal-edge derivative result. | Derivative failure. |
| Change the horizontal-edge substitution from \(h=1\) to \(h=0\). | Substitution failure. |
| Change one Bernstein coefficient while leaving the polynomial fixed. | Bernstein identity failure. |
| Increase the Bernstein lower bound above a coefficient. | Bernstein coefficient-bound failure. |
| Omit the middle interval from the \(F\) cover. | Gap in interval cover. |
| Mix \(T\) and \(F\) in one coverage record. | Mixed-polynomial coverage failure. |
| Reverse the derivative sign in the \(y\)-root isolation. | Monotonic-isolation failure. |
| Change the stated value of \(f\) at the lower \(y\)-endpoint. | Endpoint-evaluation failure. |
| Change a compact \(\chi\) coefficient by 2. | Structural-to-compact source equality failure. |
| Change one algebraic field power. | Field-power failure. |
| Replace an orbit coordinate tuple by another orbit entry's tuple. | Coordinate-to-exponent equality failure. |
| Remove one repeated-root lift. | Complete lift-to-orbit equality failure. |
| Change the field metadata to `T^2+14`. | Field specification failure. |

All fourteen altered copies returned nonzero exit status. The false
derivative also returned nonzero under optimized Python.

## Remaining status boundary

The audit found no remaining gap in the finite arithmetic or the stated
paper route after the explicit root-capture and boundary-approach bridges
are included. The finite checks are reproducible and source-linked.

The ordinary-analysis and topology lemmas still need to be connected to
the generated algebraic lemmas in the Lean development, and the Lean files
must be compiled in the declared toolchain before any kernel-checked
completion claim. JSON acceptance, mutation rejection, and this audit do
not substitute for that compilation and theorem assembly.
