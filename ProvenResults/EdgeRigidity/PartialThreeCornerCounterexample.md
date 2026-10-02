# An orthogonal 2-by-3 restriction does not force a zero 3-minor (control)

**Statement.** An exact physical order-six Hadamard over Q(i,sqrt3) and one cubic extension has two rows orthogonal on three columns, is not Tao, and has all 400 ordinary 3-minors nonzero.

**Status.** Exact certificate (refuted statement / control). Physicality and the 400 minors are verified directly for the constructed matrix; the formulas that produce it come from the archive reconstruction, but its correctness does not depend on them.

**Dependencies.** None. Used as the sparse-kernel control in [BalancedRankTwoRigidity.md](BalancedRankTwoRigidity.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/global_rigidity_2026_09_08/PARTIAL_THREE_CORNER_COUNTEREXAMPLE.md`, `verify_partial_three_corner.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# One orthogonal three-column restriction is insufficient

9 September 2026. This is a stopped shortcut, not a triangle exclusion.

**Refuted statement:** an order-six complex Hadamard having two rows
orthogonal on three selected columns must have a singular ordinary
three-minor (or be Tao).

**Certified computation:** the exact product reconstruction at

    a=omega, b=omega^2, c=d=i,   omega=(-1+i sqrt(3))/2,
    u=(44-117i)/125

gives a physical Hadamard with all thirteen reconstruction guards nonzero
and all 400 ordinary three-minors nonzero. Its leading two rows restricted
to the first three columns are (1,1,1) and (1,omega,omega^2), hence orthogonal.
It is not Tao: the ratio of these two complete rows takes six distinct values,
whereas every row quotient of a Tao-equivalent matrix takes three values.

There is **no full mate assertion** for this particular matrix. This does
not refute the campaign's triangle forcing target, let alone construct a
quartet. Nor does an orthogonal 2-by-3 restriction mean a full 3-by-3
Hadamard block; the latter has a different accepted classification.

## Exact construction

Use the actual (archive `03_algebraic/core/RECONSTRUCTION.md`) reconstruction, not a Gram-only
relaxation. The horizontal trace s is zero. Put

    q=(3-4i)(sqrt(3)+i)/10,   x_j=q omega^j,   j=0,1,2.

Then q^3=u and all x_j are unit phases. The horizontal companion formula
gives y_j=-A_h(x_j)/B_h(x_j). Retain their displayed ordering.

The matched vertical product is

    m=(30+2 sqrt(3)+i(12 sqrt(3)-5))/37.

Let S=-(1+omega+i). The bottom rows are evaluated at all three roots of

    f(p)=p^3-S p^2+m conjugate(S) p-m.

The vertical companion is its unique quadratic representative gamma(p)
of -A_v(p)/B_v(p). Thus the left part of a bottom row is (1,p,gamma(p));
the right part is given by -C E* (6I-EE*)^{-1} B. This specifies the whole
matrix independently of any numerical choice of roots.

## Physicality and guards

All arithmetic is in Q(i,sqrt(3)) and its three-dimensional quotient by f.
After p=(1+it)/(1-it), the homogeneous cubic has a common complex phase.
Removing it gives a real cubic with positive discriminant. The verifier
proves the sign exactly by a rational comparison for n+l sqrt(3), not a
floating-point tolerance. Its leading coefficient is nonzero. Consequently
all three p-roots are distinct unit phases and none is the omitted point -1.

Each bottom entry R_j(p) satisfies R_j(p) conjugate(R_j(p))=1 modulo f;
conjugation uses conjugate(p)=1/p. All 36 full column-Gram identities are
checked by taking traces in this quotient. The top entries are also checked
to be unit phases. This proves H*H=6I and entry flatness on every ordering.

The four seed guards delta_h,delta_v,c6_h,c6_v are checked explicitly.
The two companion multiplication operators are invertible. Both cubics
have distinct roots. The required five corner/complement determinant guards
follow from the nonzero three-minors below and physical conjugation. These
are all thirteen guards; no failed-frame locus is being discarded.

## Exhaustive three-minor verification

Write the top three rows as T_0,T_1,T_2 and a bottom row as

    R(p)=W_0+p W_1+p^2 W_2.

For every choice J of three columns, classify a minor by its number of
bottom rows. The four cases cover 20,180,180,20 minors respectively.

- Zero bottom rows: check det(T_0,T_1,T_2)_J directly.
- One bottom row: for each pair of top rows, take the determinant polynomial
  in p. Its multiplication determinant in Q(i,sqrt(3))[p]/(f) is nonzero,
  so it is nonzero at every p-root.
- Two bottom rows p_1,p_2: divide the determinant by p_2-p_1. For its one
  top row T, the resulting expression is

      d01+(p_1+p_2)d02+p_1 p_2 d12,
      dij=det(T,W_i,W_j)_J.

  With p the remaining root, substitute p_1+p_2=S-p and p_1 p_2=m/p.
  The same exact multiplication-determinant test excludes every root.
- Three bottom rows: their determinant is the nonzero Vandermonde of the
  three roots times det(W_0,W_1,W_2)_J, which is checked nonzero.

This covers all 400 minors, without choosing approximate algebraic roots.
In particular this matrix has no antipodal row or column pair, since one
would give a zero three-minor.

The six values in the first two-row quotient are {1,omega,omega^2} and
{q,q omega,q omega^2}. They are disjoint since q^3=u is not 1. Therefore the
earlier actual THREE-valued quotient theorem does not apply.

## Replay and consequence

```sh
python3 verify.py   # sub-check balanced_rank_two runs partial_three_corner.py
```

The [verifier](partial_three_corner.py) output is pinned in `data/expected_results.json`.
It imports only the small field implementation `compatibility.py`.

**Open:** whether full triangle compatibility forces a sufficient structural
edge. A partial orthogonality condition on one carrier alone cannot replace
the complete mate equations. The original global goal is not achieved here.
