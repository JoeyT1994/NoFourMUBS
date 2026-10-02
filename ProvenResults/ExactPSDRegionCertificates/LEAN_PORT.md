# Proposed formalization boundary

This document is an interface specification, not a Lean implementation or
claim of compatibility with Lean 4.33.0-rc2 / Mathlib 51e6992e.

## The small algebraic kernel

Work in a commutative ordered real algebra. Let t,R,b0,b1,b2,eps be real,
let e=t*t-R and g=1-R, and define

```
m = -(b0+eps)*(1-t)^2 - 2*(b1+eps)*t*(1-t) - (b2+eps)*t^2
```

Prove by polynomial normalization:

```
-(1+t)^2*m-eps =
  b0*g^2 + 2*b1*t*(1+t)*g + b2*t^2*(1+t)^2 + eps*t*(2+t)
  + e*(b0*(e-2*g)-2*b1*t*(1+t))
```

Assume b0,b1,b2>=0, eps>0, t>=0, R<=1, e=0. Ordered-ring
reasoning proves m<0. In the application m is the scaled minor, the b_i
in this snippet are beta_i, and eps=delta^2/8.

## Exact certificate layer

The seed multipliers are polynomial circuits, obtained by (9) in PROOF.md,
not expanded coefficient lists. Formalize polynomial circuit evaluation
and positivity of Delta. The unscaled rational circuit is bounded only
after all three P norms have been separated on the full region.

The integer interval kernel represents endpoints by integers times 2^-80.
Formalize floor/ceiling multiplication and reciprocal inclusion, complex
norm inversion, and the derivative recurrences. The only analytical
coefficient-enclosure theorem is the integral second-order Taylor bound
on a convex four-dimensional box. Full Hessians, including all six mixed
terms, are stored and recomputed.

For angular coverage, either port the rational sine/cosine Taylor remainder
proofs or change the source geometry to exact Cayley coordinates upstream.
No transcendental evaluation is required to verify a region once defined
by its exact rational anchors and Cayley radii; it is required only for the
current angular-leaf inclusion step.

## Physical interface

Import or prove the following named mathematical statements, without
replacing them by numerical predicates:

1. A strict-D0 completion gives PSD of both signed-corner pencils.
2. Strict side exhaustion and its symmetric moment formulas.
3. Fixed-corner non-Tao matching has opposite horizontal/transposed side signs.
4. Every dephased Tao corner has cube-root entries.

The physical interface is independent of the exact interval and polynomial
checking kernel. Global strict-corner existence, MUB completion/balance,
projector tubes and the full global no-four-MUB campaign are not needed by
this local theorem.

## Finite data

Use rational numbers from JSON, or translate them once to exact integer
numerator/denominator literals. Verify both matched branches for each of
the 14 regions. Verify root-key/path decoding, inclusion, and R<2/3 for
all 7,553 listed leaves against the 79 R models. Do not treat a source
`[+/- ...]` string or `status: PASS` field as a theorem.
