# Four-ray quadratic completion: independent algebraic audit

## Verdict and scope

**PROVED.** The four-ray formulas proposed in this return give an exact presentation of all ordered two-ray completions. For every order-six complex Hadamard, each physical four-ray configuration has either no completion or exactly one unordered physical completion. A real rank test decides which case occurs. The physical uniqueness assertion follows from the three-support lemma in Section 8 and does not require Fourier-freeness.

**PROVED.** The same formulas preserve the full algebraic schemes, including nilpotents. If the common-ray algebra has length `n`, then the full ordered six-column companion algebra has length at most

    2 (n)_4 = 2 n(n-1)(n-2)(n-3).

The proof below does not infer a module-length bound merely from a count of geometric points. It exhibits a quadratic algebra over a quotient of each local four-ray algebra.

**NOT ESTABLISHED.** These facts do not classify all Fourier-edge triples, exclude a compact Fourier-free component, or prove F or F'. They provide a smaller exact algebra for the remaining problem. No absolute novelty claim is made.

The universal formulas in Sections 1–5 need no Fourier-free hypothesis. Algebraic finiteness rules out the all-zero coefficient branch at every complex four-ray point in Sections 6–7, including nonphysical points; this is needed for the full scheme-length bound. Section 8 rules out that branch on the physical locus for every H by a different argument.

## 1. Normalization and the four-ray algebra

Let `H` be an order-six raw complex Hadamard and put `C=H/sqrt(6)`. Its complex conjugate transpose is denoted `C*`; the transpose without conjugation is `C^T`.

A raw dephased common ray is a column `x` with `x_0=1`. In the auxiliary complex algebra put `w_i=x_i^{-1}`. Its equations are

    x_i w_i = 1,
    (C* x)_j (C^T w)_j = 1.

On the physical locus `w=conj(x)`, these say that `x/sqrt(6)` is unbiased to both the coordinate and C bases. Equivalently, using raw H, the second equation is

    (H* x)_j (H^T w)_j = 6.

Let `X,W` be six-by-four matrices of four such columns, with every ordered reciprocal orthogonality equation imposed. Thus

    W^T X = 6 I_4,
    X_{0r}=W_{0r}=1.

Every assertion through Section 5 is valid over a commutative complex coefficient algebra. This includes nonreduced algebras. Let `A_4` denote the quotient of four copies of the common-ray algebra by these twelve ordered off-diagonal orthogonality equations.

## 2. The rank-two complement and a canonical rank-one matrix

Define

    E = I_6 - X W^T/6,
    s = 6 E e_0,
    t^T = 6 e_0^T E,
    Delta = 12 E - s t^T.

Here `e_0` is the first coordinate column. Directly from `W^T X=6I_4` and the native/transform flatness equations,

    E^2=E,
    E X=0,  W^T E=0,
    E_{ii}=1/3,
    (C* E C)_{jj}=1/3.

Consequently,

    s_0=t_0=2,
    t^T s=12,
    E s=s,  t^T E=t^T,
    Delta e_0=0,  e_0^T Delta=0,
    Delta s=0,  t^T Delta=0,
    Delta^2=12 Delta,
    tr(Delta)=12,
    Delta_{ii}=4-s_i t_i.

In particular the five pivot charts `Delta_{jj} != 0`, for `1<=j<=5`, cover every geometric point. The zeroth row and column of Delta vanish, and its diagonal sum is 12, so no omitted pivot stratum remains.

### Ring-level rank-one factorization

The assertion that Delta has rank one can be made exact over nonreduced rings. Put

    A = [X,s],
    B = [W^T/6; t^T/12].

Then `BA=I_5` and

    P = I_6-AB = Delta/12.

On a chart where `P_{jj}` is invertible, set

    p=P e_j,
    q^T=e_j^T P/P_{jj}.

One has `Bp=0`, `q^T A=0`, and `q^T p=1`. Hence the square matrices `[A,p]` and `[B;q^T]` multiply in one order to `I_6`. Over a commutative ring, a square matrix with a left inverse is invertible: their determinant product is one, and the adjugate formula supplies the inverse. They therefore multiply in the other order to `I_6`. It follows that `P=pq^T`, and hence

    Delta = Delta_{:j} Delta_{j:}/Delta_{jj}.       (2.1)

This is an identity in the localized algebra, not only at its reduced points.

## 3. All candidate completing pairs on a pivot chart

Fix a pivot `delta=Delta_{jj}` and an invertible variable `u`. Set

    d_i = Delta_{ij}/u,
    e_i = Delta_{ji} u/delta,
    x_+ = (s+d)/2,       x_- = (s-d)/2,
    w_+ = (t+e)/2,       w_- = (t-e)/2.              (3.1)

Equation (2.1) gives `d e^T=Delta`. The identities in Section 2 imply

    t^T d=0,   e^T s=0,   e^T d=12,
    W^T d=W^T s=0,
    e^T X=t^T X=0.

Therefore the two new columns are reciprocal-orthogonal to all four original columns and to each other, and each has reciprocal norm six:

    w_alpha^T x_beta = 6 delta_{alpha,beta},
    W^T x_alpha=0,  w_alpha^T X=0.

Their zeroth coordinates all equal one. Their sum of outer products is

    x_+ w_+^T + x_- w_-^T = 6 E.                    (3.2)

Native reciprocal flatness of BOTH columns is equivalent to

    s_i e_i + t_i d_i = 0.                         (3.3)

Indeed `s_i t_i+d_i e_i=4`, and the left sides of `x_+i w_+i=1` and `x_-i w_-i=1` differ only in the sign of (3.3).

Let

    s' = C* s,          t' = C^T t,
    p' = C* Delta_{:j}, q' = C^T (Delta_{j:})^T.

The transformed common-ray conditions likewise reduce to

    s'_k q'_k u/delta + t'_k p'_k/u = 0.           (3.4)

This uses `(C* E C)_{kk}=1/3`; the sum of the two transformed diagonal contributions is already fixed. No transformed flatness condition is dropped.

## 4. The twelve quadratic equations

Define twelve coefficient pairs indexed by the six native and six transformed coordinates:

    a_i = s_i Delta_{ji},
    b_i = t_i delta Delta_{ij},                    (native)

    a'_k = s'_k q'_k,
    b'_k = t'_k delta p'_k.                        (transformed)

Then (3.1) gives a full ordered reciprocal common-ray completion if and only if

    a_l u^2 + b_l = 0                              (4.1)

for all twelve entries of the combined lists. The native zeroth equation is identically zero, but retaining it causes no problem.

Raw-H convention: one may replace `C*` and `C^T` in the transformed coefficient definitions by `H*` and `H^T`. Both `a'_k` and `b'_k` are then multiplied by six, so their zero equations, compatibility tests and nonvanishing tests are identical.

The diagonal reciprocal conditions in (4.1) imply that all recovered coordinates are units: `x_+i w_+i=x_-i w_-i=1`. No extra localization by recovered coordinates is needed.

## 5. Exhaustiveness and the scheme isomorphism

Conversely, suppose two dephased reciprocal common-ray columns complete the original four. Since all six columns are square and reciprocal-orthogonal, their outer products sum to `6I_6`. Thus (3.2) holds. Their zeroth coordinates and reciprocal zeroth coordinates are one, so

    s=x_++x_-,       t=w_++w_-.

Writing `d=x_+-x_-` and `e=w_+-w_-` yields

    Delta=d e^T.

On the pivot chart, `delta=d_j e_j` is invertible, so both `d_j` and `e_j` are invertible. Taking `u=e_j` recovers (3.1) exactly. This also proves uniqueness of the parameter for an ordered pair.

Consequently, if `P_H` denotes the complete six-column companion algebra, its presentation over the pivot localization of `A_4` is precisely

    A_4[delta^{-1}][u,u^{-1}] /
       (a_l u^2+b_l : all twelve l).              (5.1)

Both maps have been displayed. Thus (5.1) is a scheme isomorphism retaining nilpotents. Swapping the last two columns is exactly `u -> -u`.

## 6. Why finite common-ray algebra removes the exceptional branch

Now assume the fixed-H common-ray algebra is finite. This holds under the allowed theorem when all 400 middle minors of H are nonzero.

At a complex geometric point of the four-ray algebra, the twelve coefficient pairs cannot all vanish. If they did, every nonzero complex value of u would satisfy (4.1), giving a complete pair of reciprocal common rays. The recovered coordinate

    (x_+)_j = (s_j+delta/u)/2

is a nonconstant, indeed injective, function of u because `delta != 0`. This would give infinitely many points of the fixed-H common-ray algebra, a contradiction.

This argument applies equally to nonphysical four-ray points, which is essential for the algebra-length bound. It does not use a physical point count in place of algebraic finiteness.

At a geometric point where some coefficient pair is nonzero, the equations in `v=u^2` are simultaneous linear equations. They therefore have either no invertible solution v or exactly one. In the latter case u has exactly two values, since the coefficient field has characteristic zero and v is nonzero. These values give the two orderings of one pair.

## 7. The full length bound, including nilpotents

Let `n=dim_C A_H`, and decompose the finite four-ray algebra into its Artin local factors. Fix one such factor R with maximal ideal m.

Choose a pivot whose residue is nonzero; that pivot is a unit in R. By Section 6, some coefficient has nonzero residue.

* If `a_l` is a unit and `b_l` lies in m, then `u^2=-b_l/a_l` would be nilpotent and invertible simultaneously. The completion algebra is zero.
* If `b_l` is a unit and `a_l` lies in m, the same argument applied to `u^{-2}=-a_l/b_l` makes the completion algebra zero.
* In a nonzero case, there is an index k for which both coefficients are units. Put `c=-b_k/a_k`, a unit of R.

The remaining equations are then base-only relations. Explicitly set

    R_good = R/(a_l c+b_l : all l).

The full completion algebra on this factor is

    R_good[u]/(u^2-c).                               (7.1)

The element c stays invertible in any nonzero quotient. The algebra (7.1) is free of rank two over `R_good`; its derivative `2u` is invertible, so it is also etale over that quotient. In particular,

    length(P_H on this factor)
        =2 length(R_good) <=2 length(R).

Summing factors proves

    length(P_H) <=2 length(A_4).                    (7.2)

For the stated falling-factorial bound, write the one-ray algebra as the product of local algebras of lengths `l_1,...,l_m`, with sum n. Its fourth tensor power decomposes by four-tuples of underlying ray points. A tuple repeating an underlying ray is killed by an ordered orthogonality equation: that pairing has residue six and is a unit on the tensor local factor. Quotienting can only decrease the lengths of the other factors. Hence

    length(A_4) <= sum_{i,j,k,l all distinct} l_i l_j l_k l_l
                <= n(n-1)(n-2)(n-3).               (7.3)

The last inequality has a direct finite counting proof: regard `l_i` as the number of tokens in group i. The first expression counts ordered choices of four tokens from distinct groups, a subset of all ordered choices of four distinct tokens from n tokens.

Combining (7.2)–(7.3) gives the asserted bound `2(n)_4`. This proof treats local multiplicities explicitly.

## 8. Physical rank test and automatic reality

At a physical four-ray point `W=conj(X)`, the matrix E is an orthogonal rank-two projection and `t=conj(s)`. The matrix Delta is Hermitian positive semidefinite of rank one: it is twelve times the projection in the E-plane orthogonal to s. At least one pivot satisfies `delta=Delta_{jj}>0`.

For the twelve complex coefficients above,

    b_l = delta conjugate(a_l).                     (8.1)

This identity holds in the transformed coordinates too, because C is unitary and the row and column used there are Hermitian conjugates.

If at least one `a_k != 0`, its quadratic equation forces

    u^2 = -delta conjugate(a_k)/a_k.                (8.2)

The right side has absolute value delta. Hence either square root satisfies `|u|^2=delta`. Formula (3.1) then gives `e=conj(d)` and therefore `w_+=conj(x_+)`, `w_-=conj(x_-)`. Thus an algebraically consistent parameter is automatically physical. No extra unit-circle root filter is needed at a physical four-ray input.

The remaining equations are equivalent to

    Im(a_l conjugate(a_m))=0  for every l,m.        (8.3)

Equivalently the real two-by-twelve matrix whose rows are `Re(a)` and `Im(a)` has rank at most one. Equivalently,

    (sum_l |a_l|^2)^2 - |sum_l a_l^2|^2 = 0.        (8.4)

The left side is `4 sum_{l<m} Im(a_l conjugate(a_m))^2`. Equation (8.4) is one nonnegative polynomial obstruction, retaining every native and transformed coordinate.

In fact the rank cannot be zero for any physical four-ray configuration in dimension six, even without the finiteness premise. Here is the separate argument, discovered by the parallel Fourier-classification analysis and independently checked in this audit.

### Three-support lemma

Let x have exactly three nonzero coordinates, all of modulus one. If `C* x` has at most three nonzero coordinates, it has exactly two, both of modulus `sqrt(3/2)`.

To prove this, apply row phases so that x is one on its support S. Select three zero coordinates of `C* x`. The corresponding three-by-three block B of H, on rows S, has each column summing to zero. A triple of unit phases with zero sum is a unit multiple of either

    u=(1,omega,omega^2) or conjugate(u).

Here `omega` is a primitive cube root of unity. If the column multiplicities are p and `3-p`, the nonzero eigenvalues of `BB*` are `3p` and `3(3-p)`. Since the full three-row strip has Gram `6I_3`, the bound `BB*<=6I_3` forces multiplicities two and one.

Let A be the complementary three-column block. Then `AA*=6I_3-BB*` has eigenvalues six on the constant Fourier line, zero on the twice-used chirp line, and three on the remaining chirp line. Orthogonality to the zero-eigenvalue chirp implies that every unit-modulus column of A is a phase multiple of either the constant vector or the remaining chirp. The eigenvalues force two constant columns and one chirp column. Therefore precisely two entries of `H* x` are nonzero, each of modulus three. Division by `sqrt(6)` proves the lemma.

In particular, an order-six flat unitary cannot carry a three-supported vector with equal nonzero moduli to another three-supported vector with the same nonzero moduli.

### Consequence for two-ray completions

Suppose two distinct unordered flat orthonormal pairs span the same two-dimensional subspace and are flat in both anchor coordinates. Let f,g be one pair. A ray in the other pair has a nontrivial combination `a f+b g` with both a and b nonzero. Its coordinate flatness implies

    Re(conjugate(a) b conjugate(f_i) g_i)=0

at every native coordinate, because f and g already have equal coordinate moduli. Thus `g_i/f_i` belongs to `{lambda,-lambda}` for one unit phase lambda; orthogonality forces three occurrences of each sign. The same calculation in C coordinates uses the same coefficients a,b and therefore the same lambda. Hence `f+lambda^{-1}g` is supported on three coordinates with equal nonzero moduli in both anchor descriptions. This contradicts the three-support lemma.

There is therefore at most one unordered physical completing pair for every H. If all twelve coefficients vanished, (3.1) would generate an entire physical circle `|u|^2=delta` of distinct pairs, which is impossible. Thus the coefficient matrix is always nonzero at a physical four-ray point. Such a four-tuple is completable exactly when its coefficient matrix has rank one, or equivalently when (8.4) vanishes. The pair is unique.

## 9. Consequence for the number of bases

Let N be a finite number of distinct physical common rays for a fixed H, and let b be the number of unordered companion bases. The common-ray algebra need not be finite for this purely physical counting statement, provided the physical ray set is finite.

Every basis has fifteen four-element subsets. By uniqueness, any physical orthogonal four-subset belongs to at most one basis. Thus

    15 b <= binom(N,4),
    b <= floor(binom(N,4)/15).

This improves the prior return's five-subset bound `b<=floor(binom(N,5)/6)`. It is a uniform combinatorial bound, not a proposed enumeration of all those subsets. Together with `N<=n=252-2Z_2(H)`, it applies throughout the permitted Fourier-free domain.

## 10. Audit of the brief's topology wording

The known component theorem for GM and rigidity of the isolated orbit give local B on those known classes. Calling global B closed before A is proved suppresses the possibility of an unknown Fourier-edge triple. With A, every point of V_F belongs to the known locus and the local conclusions cover V_F.

The useful A+B conclusion is

    closure(V minus V_F) intersect V_F = empty:

no Fourier-edge triple is approached by Fourier-free triples. The reverse sentence in the brief, 'no Fourier-free triple is a limit of Fourier-edge triples', already follows from V_F being closed and does not express the needed boundary exclusion.

Neither correction changes the intended A+C research target once the conditional role of A is kept explicit.
