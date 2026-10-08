# Exactly which order-six Hadamards contain an F3 block

**Proved structural statement.** An order-six complex Hadamard contains a 3-by-3 complex Hadamard submatrix if and only if it is equivalent to a member of the two-parameter Fourier family, its transpose family, or Tao's matrix.

This statement classifies a block **once it exists**. It does **not** prove that a compatible MUB triple must contain such a block in any transition matrix.

## 1. Explicit formulation and initial reduction

Put omega=exp(2 pi i/3), F=(omega^(ij)) for 0<=i,j<3, and

    N(p,q) = [[F, diag(1,p,q) F],
              [F,-diag(1,p,q) F]],       |p|=|q|=1.

The two continuous alternatives are N(p,q) and its transpose, up to equivalence. This formulation avoids differing conventions for naming the Fourier family and the transposed Fourier family.

Move the assumed Hadamard block to the upper left, H=[[E,B],[C,D]]. The block Gram equations imply that all four blocks are order-three Hadamards. Uniqueness of the order-three Hadamard, together with block-preserving row and column monomial operations, gives

    E=F,   B=diag(v) F,   C=F diag(w),
    v=(1,p,q),   w=(1,r,s),
    D=-F diag(w) F* diag(v) F /3.

Here * is Hermitian adjoint. Every permutation of three Fourier labels is affine and is absorbed by a monomial operation on the other side, so these three normalizations can be imposed simultaneously.

This reduction and the factorization below are already proved in the protected classification source, [supp_body.tex](../../ClassificationPaper/source/supp_body.tex), subsection `Proof of Proposition ... Fourier-block alternative` (starting at line 804). No changes to that source are needed. The finite last step here sharpens its conclusion from Karlsson-or-Tao to Fourier-or-transpose-or-Tao.

## 2. Only two continuous branches and a finite residue

Indices below are modulo three; hats denote the unnormalized three-point Fourier transform. Define

    A_k = vhat_k conjugate(vhat_(k-1)),
    alpha_m = w_m conjugate(w_(m+1)).

For a fixed column k of D, the three entries before the factor -1/3 are the Fourier transform of

    z_m^(k) = w_m vhat_(k-m).

The squared Fourier magnitudes are equal exactly when the nonzero cyclic autocorrelations vanish. Parseval makes their common magnitude 3, as required. Thus D is flat exactly when alpha*A=0, where * now denotes cyclic convolution. Fourier transformation gives

    alphahat_j Ahat_j=0,       j=0,1,2.

Since Ahat_0=0 identically, only two products remain:

    alphahat_1 Ahat_1=0,       alphahat_2 Ahat_2=0.

There are four allocations of the vanishing factors.

- If Ahat_1=Ahat_2=0, then A=0, so at most one coordinate of vhat is nonzero. Hence v is a Fourier row. A right-column permutation makes B=F and D=-C, giving N(r,s)^T.
- If alphahat_1=alphahat_2=0, then alpha is constant. Its coordinate product is 1, so w is a Fourier row. A bottom-row permutation makes C=F and D=-B, giving N(p,q).
- In either mixed allocation, p,q,r,s are all cube roots of unity. Indeed, the two nonconstant coefficients of A, up to order, are

      3(q+omega/p+omega^2 p/q),
      3(p+omega q/p+omega^2/q),

  while those of alpha are

      1/r+omega r/s+omega^2 s,
      1/r+omega^2 r/s+omega s.

  Each vanishing parenthesis is a sum of three phases whose product is 1. Such a triple must be a rotation of (1,omega,omega^2); its product makes that rotation a cube root. The displayed terms then force all four parameters to be cube roots.

There are therefore only 3^4=81 finite parameter choices beyond the two continuous descriptions. This exhausts the alternatives, including overlaps and zero Fourier coefficients; no denominator or genericity assumption was used.

## 3. Exact finite residue: eighteen Tao certificates

Write p=omega^P, q=omega^Q, r=omega^R, s=omega^S, with exponents in {0,1,2}. The [standalone verifier](FourierBlockClassification.py) checks all 81 choices using integer arithmetic in Z[omega]. It finds:

| Choices | Classification |
|---:|---|
| 45 | Flat, already on a pure Fourier or transpose branch |
| 18 | Flat, off both pure branches; all permutation-equivalent to Tao |
| 18 | Nonflat |

The 18 mixed flat cases are exactly

    (P,Q) in {(0,1),(1,0),(2,2)},
    (R,S) in {(0,2),(1,1),(2,0)},

or with the two sets exchanged. The [receipt](FourierBlockClassification.json) includes every case, all exact lower-right block entries, and an explicit row/column permutation to Tao for each of these 18 cases.

For example, the (P,Q,R,S)=(0,1,0,2) completion is the standard Tao matrix with columns ordered (0,3,5,1,2,4), keeping its rows in their original order. The other 17 permutation certificates are checked entry by entry.

The converse is immediate: N and N^T contain F in their leading blocks, while Tao contains F on rows (0,1,2) and columns (0,3,5) in the representative stored in the verifier. This completes the structural classification.

## 4. Equivalent saturation target after excluding Tao

For any raw Hadamard X and distinct rows r,s, put

    u_j=X_rj conjugate(X_sj),
    Delta_rs(X)=36-|sum_j u_j^2|^2
               =sum_(j<k) |u_j^2-u_k^2|^2 >=0.

Delta_rs=0 exactly when all u_j^2 coincide. Hence u_j=+z or -z. Row orthogonality forces three of each sign. This is exactly a rank-one 2-by-3 submatrix on those rows. Conversely, a rank-one 2-by-3 submatrix makes three u_j equal; the triangle equality in the remaining three terms makes them all the opposite value, so Delta_rs=0.

A rank-one 2-by-3 submatrix gives the N family: dephase its two rows to (1,1,1,1,1,1) and (1,1,1,-1,-1,-1); orthogonality makes each remaining row split into two zero-sum phase triples, hence Fourier triples, and their orthogonality gives N up to monomial operations. The transposed argument gives N^T from a column-pair saturation.

Consequently, for a non-Tao matrix, existence of an F3 submatrix is equivalent to at least one of its 15 row-pair or 15 column-pair Delta values vanishing. For the three transitions H,K,H* K/sqrt(6) of a complete MUB triple, that is a union of 90 explicitly defined saturation conditions. **Forcing one of those conditions from compatibility remains unproved here.**
