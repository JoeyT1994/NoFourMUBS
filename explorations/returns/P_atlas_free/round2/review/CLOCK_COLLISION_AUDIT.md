# Independent audit of the clock-collision theorem

## Verdict

**PROVED, subject to the explicitly allowed inputs:** the analytic argument in `algebra/CLOCK_COLLISION.md` establishes that a common-unbiased basis containing two distinct rays in one ternary-clock orbit is clock-invariant. Its subsequent canonical/product classification correctly uses the already supplied kernel-profile reconstruction and canonical membership in GM. No atlas input occurs.

**NOT ESTABLISHED:** existence or nonexistence of an unclassified six-clique selecting one ray from each of six distinct clock orbits. The theorem therefore gives a global restriction for subproblem A, not global A itself.

The finite arithmetic gate checks the displayed rigid matrices, but it does not replace the following branch argument. This audit reconstructed that argument independently in the real cube description below.

**CERTIFIED / REPLAYED.** The gate now packaged as `python3 -S verifiers/verify_clock_collision.py` returned PASS in this audit. It checks the two explicit monomial equivalences to Tao, all finite negative-dot sign families and antipodal pairs, the six rank-one qutrit rays and all their cross overlaps, the Fourier exchange, and the twelve exceptional parameter points. The output identifies its scope as finite arithmetic for the analytic theorem, not global A.

## 1. The exhaustive two-clock-column classification

After row phases remove the first column, the prescribed pair is the constant column and the column whose entries are the three cube roots, each twice. The complement is one fixed Fourier line plus the three-dimensional space of antisymmetric pairs.

For a remaining phase-flat column with a nonzero component along the Fourier line, remove its global phase. In orthonormal coordinates it has the form

    (c, t epsilon/sqrt(3)),
    c>0, t>=0, c^2+t^2=1, epsilon in {+1,-1}^3.

Columns with zero Fourier-line component are `(0,z/sqrt(3))`, where all three entries of z have modulus one. This keeps the zero branch separate; it is not lost by dividing by c.

If `t=0`, orthogonality makes every other remaining column have c zero. Thus exactly one column is nonzero in the Fourier-line coordinate and the other three form a three-by-three phase Hadamard in the antisymmetric space.

Otherwise, for two nonzero-line columns r,s, orthogonality gives

    c_r c_s + (t_r t_s/3) epsilon_r dot epsilon_s = 0.

All c and t are positive. The sign vectors consequently have negative dot product, equal to either -1 or -3. An antipodal pair excludes a third such sign vector, since no real vector has negative dot product with both epsilon and -epsilon.

Let k be the number of nonzero-line columns among the four remaining columns.

* `k=0` is impossible: four orthonormal columns would lie in a three-dimensional space.
* `k=1` forces `t=0`, as above, because the three zero-line columns span the antisymmetric space.
* `k=2` has two zero-line columns. They are orthogonal to both sign vectors. Two independent such columns can fit in the three-dimensional antisymmetric space only if the sign vectors are proportional. Their negative dot product makes them antipodal. The two zero-line columns are the two equilateral triples orthogonal to that sign vector and are related by the ternary clock.
* `k=3` has no antipodal pair, so every pairwise sign dot product is -1. Writing `rho_r=c_r/t_r` gives `3 rho_r rho_s=1`, hence every `rho_r=1/sqrt(3)`. The three sign vectors are three vertices of a regular tetrahedron in the cube and are linearly independent. No nonzero zero-line column can be orthogonal to all three, so k=3 is impossible.
* `k=4` again has four pairwise-dot-minus-one sign vectors. Up to coordinate sign changes these are `(+++)`, `(+--)`, `(-+-)`, `(--+)`. The same equations give `c=1/2` and `t=sqrt(3)/2`. The displayed resulting cube-root matrix is rigid and is checked by exact monomial equivalence to Tao.

These cases reproduce the main file's classification without assuming distinct sign patterns and without discarding repeated or antipodal cases. In every non-Tao case, at least two remaining rays are orthogonal to the entire initial clock orbit. In fact the two rays can also be seen directly to form a clock pair; the kernel-profile argument in the main file supplies the needed placement in the anchored Fourier construction.

## 2. The opposite-profile step

For raw common rays `v=(r,s)` and `w=(a,b)`, vanishing of all three overlaps with `v,Zv,Z^2v` is equivalent, by the invertible three-point Fourier transform, to

    conjugate(r_j) a_j + conjugate(s_j) b_j = 0

at every frequency. Since the native entries are unimodular, this gives

    b_j/a_j = -s_j/r_j.

Thus the entire orthogonal complement's common rays have precisely the opposite profile. This is a pointwise equivalence, not merely a necessary averaged condition.

The prior Fourier report proves exactly three rays in each admissible rank-two profile and exactly six in each rank-one profile. Its zero-free lemma covers the slope chart: no value `t_j=1` or `t_j=-1` has been omitted. Its rank-drop formula also shows that a profile is rank one precisely when the opposite profile is rank one.

The canonical GM-membership calculation in that report's Section 7 was also checked at the displayed block-identity level: the rebased transition has the form `[[A,B],[B*,-A*]]`, with circulant unit-modulus blocks; the companion frequency phases obey `lambda_j mu_j tau_j=-3i Im(r_j conjugate(s_j))`. The zero-free lemma makes this nonzero and identifies the required companion sign choices. Thus canonical membership does not assume global classification A.

At a rank-two profile the opposite rays are one clock orbit. At a rank-one profile the main file reduces the parameters to D=I by native pair swaps and an anchor-column shift. Those operations commute with the clock, so they preserve the orbit question.

## 3. Exceptional product cases

At D=I the rank-one profiles are the two qubit Y signs. Each carries the six qutrit rays in two clock orbits Q+ and Q-. Within one orbit the rays are orthogonal; between the two orbits their squared overlaps are 1/3. Hence any orthogonal pair in one profile belongs to a single clock orbit.

Choosing one orbit in each opposite profile gives four possibilities. The two choices with opposite qutrit orbit signs are the canonical skew-antiunitary completions. The two choices with the same qutrit orbit sign are the two displayed product bases. The product Fourier unitary interchanges the coordinate and Fourier anchors, preserves the qubit Y ray set, and exchanges Q+ with Q-, so the two product possibilities lie in the same isolated orbit.

The twelve exceptional parameter points are a covering of this reduction, not twelve additional unexamined boundary cases.

## 4. Four-ray uniqueness closes the argument

The original companion basis has the prescribed two rays from the first orbit. The non-Tao branch supplies two orthogonal rays in one opposite clock orbit. Completing both orbits gives another common-unbiased orthonormal basis that shares four rays with the original basis.

The independent three-support lemma proves unconditional uniqueness of a physical two-ray completion of four common rays in dimension six. Therefore the two bases coincide. This is the precise place where a previously local clock-symmetry observation becomes a global forcing theorem.

## 5. Necessary wording distinction

The conclusion is that an unclassified basis uses six distinct **clock-orbit labels**. It uses six distinct profile labels whenever all the relevant profiles have rank two. At the twelve exceptional parameters, one rank-one profile carries two different clock orbits, so repeated profile labels must still be allowed there.

This distinction was communicated to the author of the main proof and should be retained in the final reduction. Known classified triples may also appear as six distinct clock orbits under a particular anchored presentation; this residual condition does not itself characterize an unknown component.
