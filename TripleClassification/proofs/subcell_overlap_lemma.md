# The overlap lemma: identifying a sub-cell's branch with its ball's

This lemma identifies the reconstruction branch of a sub-cell record with that of the original ball, as Methods
requires of every retained cell. It rests on the whole-ball completion theorem that gives the enclosure of H,
[`THEOREM.md`](../../proof/theorems/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md). The certifier
checks its sufficient condition for every retained cell
([`overlap.py`](../certifier/certifier/overlap.py)).

## Statement

Let p and c denote parent and child records with successfully certified
enclosures. Use the horizontal phase space V and the seed extraction
map L of the SM (𝓗 and L in the supplied theorem). Write

    Q_i(w) = p_i(w) + X_i z_i(w),
    p_i(w) = Q0_i + U_i w + (1/2) H2_i[w,w],
    ||w|| <= r_i,  ||z_i(w)|| <= tau_i,
    L Q_i(w) = theta_i + M_i w,

for `i in {p,c}`. Require the following existing conclusions of the enclosure:

1. Every Q_i and p_i is horizontal. If a theorem is stored in a dephased
   gauge instead, horizontalize it first, consistently with L and X.
2. X_i is an isomorphism onto `V intersect ker L`.
3. Q_i is continuous on the closed ball and real analytic on its interior,
   and `Phi(Q_i(w))=0` there.
4. For every fixed parent w, the parent projected equation

       G_p(w,z) = W_p Phi(p_p(w)+X_p z) = 0

   has exactly one solution in `||z|| <= tau_p`, namely z_p(w).

Let Pi be a **matrix row/column permutation action**, not an arbitrary
permutation of 36 phases. In the application it independently permutes the
last three rows and last three columns, fixing rows and columns 0,1,2.
Consequently it preserves V and satisfies `L Pi=L`, and exponentiating it
preserves the Hadamard equations and triple equivalence.

Let N be a fixed integer phase matrix, and define `n=L N in Z^4`.
The usual choice is a dephased integer matrix, so n consists of its four
seed entries. Let `h` be the horizontal projector. Then

    L h(N) = n.

Work on the common **lifted** seed coordinate theta, with

    w_p(theta) = M_p^-1 (theta-theta_p),
    w_c(theta) = M_c^-1 (theta-theta_c-2 pi n).

Thus the aligned child phase is

    Qtilde_c(theta) = Pi Q_c(w_c(theta)) + 2 pi h(N),
    L Qtilde_c(theta) = theta = L Q_p(w_p(theta)).

Define the exact left inverse

    X_p^+ = (X_p^T X_p)^-1 X_p^T.

Choose one theta-star satisfying the strict interior tests

    ||w_p(theta-star)|| < r_p,
    ||w_c(theta-star)|| < r_c.

If an outward upper bound eta verifies

    eta = || X_p^+ [Pi p_c(w_c(theta-star))
                     + 2 pi h(N) - p_p(w_p(theta-star))] ||
          + ||X_p^+ Pi X_c|| tau_c
          < tau_p,

then

    Q_p(w_p(theta)) = Pi Q_c(w_c(theta)) + 2 pi h(N)

throughout the intersection of the two closed lifted seed ellipsoids.

In particular the parent and child matrices there differ only by the fixed
row/column permutation and phase gauges. A universal all-K classification
or emptiness certificate for the child's ball therefore applies to every
parent matrix whose seed belongs to that common domain. If the separately
checked cell containment puts the parent cell in the child seed ball,
this gives the transfer from seed containment to matrix-family containment
for that cell.

## Proof

At theta-star the aligned child's actual phase difference from the parent
predictor is

    d = Pi p_c(w_c) + 2 pi h(N) - p_p(w_p) + Pi X_c z_c(w_c).

It is horizontal, and exact seed equality gives `L d=0`. Since X_p maps
onto that subspace, there is a unique xi with `d=X_p xi`, and it equals
`X_p^+ d`. The displayed inequality yields

    ||xi|| <= eta < tau_p.

The aligned child remains an exact Hadamard phase point. Row and column
permutations preserve Hadamardness. Adding `2 pi h(N)` does too: since N
has integer entries,

    exp(2 pi i h(N)_(r,s))
      = exp(-2 pi i rowmean(N)_r)
        exp(-2 pi i colmean(N)_s)
        exp(2 pi i grandmean(N)),

which is a product of row and column phases. It follows that

    G_p(w_p,xi)=0.

Uniqueness of the parent projected zero in its tau_p ball identifies xi
with z_p(w_p). Therefore the aligned child equals the parent at theta-star.

There is a neighborhood of theta-star in the common interior where the
same conclusion holds. One direct justification uses continuity of the
child solution and the strict inequality `||xi||<tau_p`: the aligned
child remains in the parent's tube for all seeds sufficiently close to
theta-star, and the same projected uniqueness applies at each seed.
The strict interior tests ensure this neighborhood is open in R^4.

The common interior is the intersection of two open ellipsoids, one
translated by the fixed `2 pi n`. It is convex and hence connected. Both
aligned phase functions are real analytic there. Their 36 coordinate
differences vanish on the nonempty open neighborhood just obtained, so
the real-analytic identity theorem makes them vanish throughout that
intersection. The enclosure theorem supplies continuity on the closed
balls. Every point of their closed intersection is approached by common
interior points along its segment toward theta-star. Convexity and the
strict interior position of theta-star ensure these intervening points
are interior to both ellipsoids. Taking the limit proves the boundary
statement.

Finally, if `H_p = Drow Prow H_c Pcol Dcol` after exponentiation, a completing
basis K_p is taken to a completing basis for H_c by the inverse common row
operation, together with the harmless coordinate-ray permutation. This
is a bijection of completing bases as ray sets. Thus both universal
classification and emptiness transport. No global uniqueness theorem for
same-seed side factors is used. QED.

## Minimal certificate check

The following is schematic, using exact model definitions and outward
interval enclosures for every matrix, inverse and norm:

    assert parent_normal_form_passed and child_normal_form_passed
    assert Pi_is_peripheral_row_column_permutation
    assert N_has_exact_integer_entries
    n = L(N)
    wp = inverse(Mp) * (theta_star - theta_p)
    wc = inverse(Mc) * (theta_star - theta_c - 2*pi*n)
    require(norm_upper(wp) < rp)
    require(norm_upper(wc) < rc)
    Xplus = inverse(transpose(Xp)*Xp) * transpose(Xp)
    offset = Pi*predictor_child(wc) + 2*pi*h(N) - predictor_parent(wp)
    eta = norm_upper(Xplus*offset) + opnorm_upper(Xplus*Pi*Xc)*tau_c
    require(eta < tau_p)

Identity of the seed maps and horizontal gauges should be established
algebraically from the construction of the enclosure. Numerically checking
that their residuals are small does not replace these identities.

## Limits and implementation cautions

- This is a **sufficient** check. Failure to fit the whole child remainder
  bound inside the parent tube proves neither a different branch nor an
  incorrect record. One may sharpen the child value enclosure at
  theta-star, recenter an enclosure, subdivide, or certify a chain of
  overlapping tubes.
- The proof needs just one successful overlap witness per parent–child
  pair, not an overlap calculation on every point of the cell.
- The chosen theta-star need not lie in the dyadic cell. It only needs to
  belong strictly to the balls of both enclosures. The identity theorem then
  covers their full overlap, including the cell.
- A common interior point and a fixed lifted winding are essential to
  this proof. Equality at a tangency point of two domains with no common
  interior would not by itself provide the analytic-continuation step.
- The frozen geometry test strictly places the entire closed cell inside
  the child ball. If that cell meets the parent ball, a common interior
  point does exist: move a meeting point slightly toward the parent's
  center while staying inside the open child ball. Finding and certifying
  such a point is a separate finite task.
- Different parent/child frames M are allowed by the lemma. The present
  tree code already requires equal M, which simplifies coordinate work.
- If a more general permutation changes L, explicitly transform the seed
  map as well. The formula written here assumes `L Pi=L`.
- The enclosures need not have identical X matrices. Only their stated
  exact ranges and the certified cross-operator norm are required.
- If code stores nonhorizontal centers, use a consistently horizontal
  predictor. Otherwise the inference `d in range(Xp)` can fail even when
  the physical matrices are equivalent.
- For performance, theta-star can be proposed numerically. Acceptance
  must enclose the coordinates defined by the exact equations above,
  including the exact multiple of pi, and certify the strict inequalities.
