# Exact integer packing of a Laurent-polynomial certificate

## 1. The separating-integer lemma

Let

\[
p(X)=\sum_{j=0}^{m}c_jX^j\in\mathbb Z[X],
\qquad B\ge2,\qquad |c_j|<B.
\]

Then

\[
\boxed{p(B)=0\ \Longrightarrow\ p=0.}
\]

**Proof.** If the polynomial is nonzero, let k be the least index with
c_k nonzero. Divide the equality p(B)=0 by B^k and reduce modulo B. It
follows that B divides c_k, contradicting 0<|c_k|<B. Equivalently, first
force the constant coefficient to be zero by reducing modulo B, divide
out X, and continue by induction. Negative coefficients are allowed.

This lemma requires an explicit coefficient bound. A point evaluation
without that bound would not certify a polynomial identity.

## 2. A collision-free substitution for Laurent polynomials

Suppose

\[
P=\sum_{e\in\mathbb Z^4}c_ea^{e_0}b^{e_1}c^{e_2}d^{e_3}
\]

has support in the box ell_i<=e_i<=u_i, and

\[
\sum_e|c_e|\le N.
\]

Set n_i=u_i-ell_i+1 and use mixed-radix weights

\[
w=(1,n_0,n_0n_1,n_0n_1n_2).
\]

The map

\[
e\longmapsto \sum_i(e_i-\ell_i)w_i
\]

is injective on the support box. This is uniqueness of mixed-radix
expansion with digits 0,...,n_i-1. Hence the normalized univariate
polynomial

\[
\widehat P(X)
=X^{-\sum_i\ell_iw_i}
P(X^{w_0},X^{w_1},X^{w_2},X^{w_3})
\in\mathbb Z[X]
\]

has exactly the coefficients of P, with zeros inserted at unused exponents.
In particular, every coefficient has absolute value at most N.

Choose B=2^k>N. The separating-integer lemma gives

\[
\boxed{\widehat P(B)=0\ \Longrightarrow\ P=0.}
\]

The substitution is formal Laurent arithmetic. The four positive integer
values are not physical phase seeds. The conjugation operation in the
source formulas has already been implemented as reciprocal substitution
in the four formal phase variables.

## 3. Bounds are proved from the arithmetic circuit

Each node represents an integer Laurent polynomial. Nodes contain only
monomials, addition, or multiplication. A monomial node with coefficient
c and exponent vector e has bounds ell=u=e and N=|c|. The checker
propagates bounds by the following elementary rules:

| Operation | Lower exponent bound | Upper exponent bound | Coefficient l1 bound |
|---|---|---|---|
| P+Q | componentwise min(ell_P,ell_Q) | componentwise max(u_P,u_Q) | N_P+N_Q |
| PQ | ell_P+ell_Q | u_P+u_Q | N_P N_Q |

The multiplication norm bound follows from the convolution formula and
the triangle inequality. These are upper bounds; cancellations may make
the true support and norm smaller. The checker does not assume those
cancellations.

The source builder implements formal conjugation by recursively negating
monomial exponents. The serialized certificate has no opaque conjugation,
division, factorization, or algebra-system nodes.

## 4. Evaluation with local monomial shifts

For a node j with polynomial P_j and propagated lower exponent bound ell_j,
let sigma_j=ell_j dot w. Its stored integer is

\[
v_j=B^{-\sigma_j}P_j(B^{w_0},B^{w_1},B^{w_2},B^{w_3}).
\]

This is an integer even when P_j is Laurent. The evaluator uses:

- For a monomial, v_j is its integer coefficient.
- For a product j=pq, sigma_j=sigma_p+sigma_q, so v_j=v_p v_q.
- For a sum j=p+q,
  v_j=B^(sigma_p-sigma_j)v_p+B^(sigma_q-sigma_j)v_q.

The addition shifts are nonnegative because the lower bound is a
componentwise minimum and the weights are positive. Since B is a power of
two, multiplication by these powers is an exact bit shift.

Only root-level exponent injectivity is required. Intermediate expressions
may have exponent collisions; each intermediate integer is still the exact
evaluation of its polynomial. Values are discarded after their final use
to bound memory.

The independent checker uses unconditional failures for malformed nodes,
invalid shifts, and a nonzero final integer. It performs arbitrary-precision
integer arithmetic without floating point or modular sampling.

## 5. The actual R2 certificate

The 542-node file `certificate/packed_circuit.json` shares subexpressions
across the two cross-side residuals and the three invariant equalities.
The cross-side bounds are:

| Target | Lower exponent vector | Upper exponent vector | l1 bound N | Base B |
|---|---|---|---:|---:|
| F1 | (-5,-6,-6,-7) | (8,8,7,7) | 94,964,510,263,680 | 2^47 |
| F0 | (-7,-8,-8,-9) | (10,10,9,9) | 543,610,329,879,553,920 | 2^59 |

For F1 the weights are (1,14,210,2940); for F0 they are
(1,18,342,6156). In each case N<B and the independent exact final
integer is zero. These facts prove F1=F0=0 as universal Laurent
polynomial identities.

The three additional roots check g_h-g_v, eta_h-eta_v, and chi_h-chi_v.
Their bases are 2^9, 2^8, and 2^14, respectively. Their exact evaluations
also vanish, with the same bound-and-injectivity argument.

`verification/verify_target_binding.py` reconstructs the corner, both
complementary Grams, the scaled third moments, U, and both residuals from
their mathematical definitions. It compares the full resulting circuit
with the stored data. The independent checker then reads that data and
recomputes its bounds and integer values. Thus a zero circuit unrelated
to the stated target would fail target binding.

## 6. Scope of the computational proof

The argument certifies exact polynomial identities, not an error-tolerant
numerical result. It applies to every strict seed after specialization at
the already justified denominators. It supplies no new excluded locus.

The paper proof of the packing lemma, the target derivation, and the exact
integer computations together give a replayable computational certificate.
They have not been translated into compiled Lean declarations. A Lean
integration must prove the circuit interpretation, bounds, injectivity,
and exact evaluations under the project's normal trust requirements.
