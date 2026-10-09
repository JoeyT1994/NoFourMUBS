# Operator identities and explicit conditioning bounds

This note is independent of an atlas. It assumes the exact strict-side determinant identity from the main proof when using a strict corner, and it assumes the main rank theorem when asserting the global constant. The universal operator identities need neither input.

## 1. Cross-ratio unitary and all equivalences

For an order-n complex Hadamard H, index a complex n² by n² matrix by cells and set

K[(a,j),(b,k)] = H_aj conjugate(H_bj) H_bk conjugate(H_ak).

Then K is complex symmetric, and K K* = n² I. Indeed, the ((a,j),(c,l)) entry of K K* is

H_aj conjugate(H_cl) (sum_b conjugate(H_bj) H_bl) (sum_k conjugate(H_ak) H_ck),

which is n² delta_ac delta_jl by row and column orthogonality. Write K = T + iS with T,S real. Symmetry and unitarity give

[T,S] = 0,   T² + S² = n² I.

Consequently T and S are simultaneously diagonalizable by a real orthogonal matrix. Every joint eigenvalue is n(cos theta, sin theta).

On the full real phase space let A = (H circle u)H*. The derivative of HH* is i(A-A*). Its diagonal is zero, and the output norm retaining one complex coordinate for each unordered row pair satisfies

||J_full u||² = (1/2)||A-A*||_F²
              = n||u||² - Re tr(A²).

Thus

J_full^T J_full = nI - T.

In particular every singular value is at most sqrt(2n). The row-plus-column gauge space, of dimension 2n-1, lies in ker J_full, equivalently K acts as nI on it. Removing that orthogonal summand gives precisely the horizontal singular spectrum.

This structure alone does not prove a gap below the +n eigenspace of T. In order six, the desired lower bound sqrt(3) is exactly the additional spectral-hole assertion that T has no eigenvalue in (3,6).

For transposition invariance, let Z = i H circle u. The row and column Gram derivatives are

Q = ZH* + HZ*,    Qc = H*Z + Z*H = H*QH/n.

Because H/sqrt(n) is unitary, ||Qc||_F = ||Q||_F. Both diagonals vanish. Consequently the row and column versions of J have exactly the same quadratic form on corresponding phase variables. Transposition is an isometry of the horizontal space. Row or column permutations similarly permute phase coordinates, diagonal unitary equivalences rotate complex output coordinates, and conjugation preserves their real norms. Hence all singular values are invariant under the equivalences specified in PROMPT.md, including conjugation and transposition.

## 2. A strict-corner quantitative bound

Dephase H and partition it into 3 by 3 blocks

H = [[E,B],[C,D]],

so that the first row of B and the first column of C consist of ones. Let g = det(BB*) and let R>0 be the strict discriminant of this corner. We use the exact strict-side lemma

|det A_B|² = |det A_(C^T)|² = R/64,

where A_B is the real 6 by 6 derivative of the three complex off-diagonal entries of BB*, in the six phase variables in the last two rows of B.

### 2.1 Side inverse

Writing B's last two rows as x_j,y_j, the side map is, up to complex conjugation of output coordinates,

(sum_j x_j, sum_j y_j, sum_j y_j conjugate(x_j)).

Every column of its six-phase derivative has squared norm two. Hence ||A_B||_F²=12. If its singular values are s_1,...,s_6, arithmetic-geometric mean applied to the five largest squared singular values gives

s_1 ... s_5 <= (12/5)^(5/2).

Therefore

||A_B^(-1)|| <= 8(12/5)^(5/2)/sqrt(R) < 72/sqrt(R) =: alpha.

The same bound applies to A_(C^T).

Since tr(BB*)=9, the product of the largest two eigenvalues of BB* is at most (9/2)². It follows that

||B^(-1)|| <= 9/(2 sqrt(g)) =: beta.

### 2.2 Complete derivative

Let V be the 21-dimensional subspace of dephased phase directions whose four seed phases in E vanish. For u in V write h=||J_full u||. The three top-row Gram constraints and the three left-column Gram constraints give

||u_B|| <= alpha h,      ||u_C|| <= alpha h.

The column constraint vector has the same norm as the row constraint vector by the identity in section 1, so no extra normalization factor is present.

The cross-block row constraint reads

Q_cross = E delta(C)* + delta(B)D* + B delta(D)*,

where delta(X)=i X circle u_X and delta(E)=0. The cross-block contains nine distinct unordered row pairs, so ||Q_cross||_F<=h. Also every 3 by 3 submatrix of H has operator norm at most sqrt(6). Hence

||u_D|| = ||delta(D)||_F
        <= beta(1 + 2 sqrt(6) alpha) h.

Thus

||u||² <= [2 alpha² + beta²(1+2 sqrt(6) alpha)²] ||J_full u||².

Let P_h be horizontal projection. Its restriction to V is injective: a dephased row-plus-column gauge direction is zero. It also contracts norm and J_full P_h u=J_full u. Therefore the same lower bound holds on the 21-dimensional horizontal subspace P_h V. Courant-Fischer proves

sigma_21(J_H) >= [10368/R + (81/(4g))(1+144 sqrt(6)/sqrt(R))²]^(-1/2).        (2.1)

Here singular values are ordered from largest to smallest. This proves an explicit bound for every strict physical corner, including at Tao; equality of rank with 21 is not needed for this estimate.

### 2.3 A bound using only R

For a physical side G=BB*, one has 0<=G<=6I and tr G=9. Put S0=G-3I. Then tr S0=0, its eigenvalues lie in [-3,3], and in the notation of RECONSTRUCTION.md,

p = tr(S0²)/2,    J = det S0,    eta=9-p+J.

We have J<=p. It is immediate if det S0<=0. Otherwise its eigenvalues can be written x+y,-x,-y with x,y>0 and x+y<=3; then

J=xy(x+y)<=3xy<=x²+xy+y²=p.

Thus eta<=9 and

R=4g² eta-chi² <=36g²,    g>=sqrt(R)/6.

The side determinant lemma and ||A_B||_F²=12 also give det(A_B)²<=2^6 and hence R<=4096. Substituting these bounds into (2.1), and using sqrt(6)<49/20, gives the convenient, weaker formula

sigma_21(J_H) >= R^(3/4)/4700.                                           (2.2)

For clarity, the exact scalar comparison is

2*72²*64 + (243/2)*(64+144*(49/20))² < 4700².

These bounds are global on a strict chart, with explicit dependence on its discriminant. They do not give a fixed useful positive constant as the best corner degenerates toward the Fourier class.

## 3. Explicit uniform constant from the rank theorem

Assume the main theorem that every non-Tao order-six Hadamard has horizontal rank 21. Tao has rank 25 by its exact spectrum. The following argument then supplies a uniform positive constant with no covering computation.

### 3.1 Integer polynomial encoding

Dephase the first row and column. The remaining entries are x_aj+i y_aj, with 1<=a,j<=5, giving 50 real variables. The Hadamard set T is cut out by 25 unit-circle equations and the real and imaginary parts of the 15 row orthogonality equations: 55 integer polynomial equations of degree at most two and coefficient absolute value at most one. It is compact.

Define a real symmetric 25 by 25 polynomial matrix M using those 25 cells as indices:

- M[ii]=5;
- M[(a,j),(b,k)]=-1 if the cells are distinct and either a=b or j=k;
- otherwise M[(a,j),(b,k)]=-Re(H_aj conjugate(H_bj) H_bk conjugate(H_ak)).

It is important to use these reduced diagonal and same-row/same-column polynomial entries. On the Hadamard set, M is exactly A^T A for the full Jacobian restricted to the dephased coordinate subspace. Every entry has degree at most four and coefficient l1 norm at most eight.

Let p=e_21(M), the sum of its 21 by 21 principal minors. On the Hadamard set p>0, since rank A is 21 or 25. As an integer polynomial, p has degree at most 84 and coefficient l1 norm at most

binomial(25,21) * 21! * 8^21 < 2^143.

The estimate follows by applying the triangle inequality to each determinant's 21! terms. No determinant expansion or numerical positivity check is needed.

### 3.2 Effective lower bound

Apply Theorem 1 of Gabriela Jeronimo, Daniel Perrucci and Elias Tsigaridas, “On the minimum of a polynomial function on a basic closed semialgebraic set and applications,” SIAM J. Optim. 23 (2013), 241–255, DOI 10.1137/110857751. Primary open text: https://arxiv.org/html/1112.0544v1 .

The theorem states that a nonzero minimum of an integer polynomial of degree at most an even d and coefficient height at most H on a compact connected component of a basic closed semialgebraic set in n variables, cut out by m integer polynomials with the same bounds, has absolute value at least

(2^(4-n/2) max(H,2n+2m) d^n)^(-n 2^n d^n).

Use n=50, m=55, d=84 and H=2^143. Every component has a positive minimum, with the same lower bound, so p is bounded below on all of T. The base is

2^122 * 84^50 < 2^442,

and the exponent is

50 * 2^50 * 84^50 = 50*168^50.

Consequently

p >= 2^(-22100*168^50).

At every non-Tao matrix, M has exactly 21 positive eigenvalues. Each is at most 12, by the full Gram identity and restriction to a coordinate subspace. Therefore

p <= 12^20 lambda_21(M).

The 21st singular value of a restriction cannot exceed the 21st singular value of the full operator, whose positive spectrum equals the horizontal spectrum. Taking square roots, and using 12^10<2^36, yields

sigma_min^+(J_H) >= 2^(-N),
N = 11050*168^50 + 36.                                                   (3.1)

At Tao, sigma_min=3/sqrt(2), so the same bound is immediate. Thus (3.1) holds for every order-six Hadamard, conditional only on the imported rank theorem and the stated external effective-positivity theorem.

This constant is mathematically explicit but computationally useless: N is approximately 2.03623*10^115. It does not approach the proposed sharp sqrt(3) bound and does not explain a practical fixed atlas radius.

## 4. Verification and limitations

`verify_operator_bounds.py` checks all scalar coefficient and exponent inequalities with exact integer/rational arithmetic. It also checks the complex symmetric-unitary identities and gauge kernel exactly at Fourier and Tao, with entries encoded in Q(sqrt(-3)); these are normalization checks, not a proof of the universal statements, whose proofs are above.

Established here: universal Gram and unitary identities, all listed invariances, the explicit strict-corner bounds (2.1) and (2.2), and the explicit positive uniform bound (3.1) conditional on the rank theorem. Not established here: the sharp sqrt(3) inequality, any classification of all its equality cases, or a new proof of the strict-side determinant identity itself.
