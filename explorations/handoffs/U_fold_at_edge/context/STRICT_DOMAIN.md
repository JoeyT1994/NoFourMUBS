# Strict-domain positivity and the first side denominators

Status: proved for every unit seed with R > 0. This establishes part of
the side-validity input; it does not claim the complete constructor theorem.
All notation is exactly that of RECONSTRUCTION.md §§1–2.

## Theorem

Let a,b,c,d have modulus one and E=[[1,1,1],[1,a,b],[1,c,d]].
For either G=6I-EE† or G=6I-Eᵀ conjugate(E), assume its R>0.
Then G is positive definite, g>0, eta>0, p<9, and X,Y,Z<9.
Consequently n=1-X/9>0. For j=0,1,2,

    |P_j|² = g²+c_j chi+c_j² eta
           = eta (c_j+chi/(2 eta))² + R/(4 eta) > 0.

For either z=(chi ± i sqrt(R))/(2g), the quantities lambda_j in the
specified recipe have modulus one. Both roots delta are nonzero, with
|delta|²=g/27. These conclusions require no product-regularity hypothesis,
no assumed physical completion, and no strict-corner coverage theorem.

The horizontal and vertical g,eta,chi agree: substitute the four independent
unit variables into the two Gram definitions and cancel the resulting
Laurent polynomials. The local verifier performs each of these three exact
identities. Equality of R follows from its definition. Thus the single
strict-seed condition supplies positivity in both directions.

## Proof of positive definiteness on the entire strict seed domain

Write G=[[3,conjugate(s),conjugate(t)],
         [s,3,conjugate(r)],[t,r,3]].
Expansion of the determinant gives

    det G=27-3p+J=g,
    det(6I-G)=27-3p-J,
    eta + det(6I-G)=36-4p,
    g=eta+2(9-p).

The matrix 6I-G is EE† (or Eᵀ conjugate(E)), so its determinant is
|det E|²>=0. First R>0 implies g!=0, since otherwise R=-chi²<=0.
It then implies eta=(R+chi²)/(4g²)>0. The third identity above gives

    4p=36-eta-|det E|² < 36.

Thus p<9, and the last identity gives g>eta>0. Since X,Y,Z are
nonnegative and sum to p, each is less than 9. The leading principal
minors of G are 3, 9-X, and g, all positive. Sylvester's criterion
therefore gives G>0. The same proof applies to Eᵀ.

In particular this is stronger than assuming G is already positive
semidefinite because a physical carrier exists. It supplies positivity
directly from the seed hypothesis used by the constructor.

## Proof of the P, lambda and delta claims

The following argument also appears in the existing StrictSideGuards
module; it is included here with an independent local identity verifier.
Set A=r s², B=conjugate(r)t² and C=(3-Z)st. Direct expansion gives

    |A+B+C|² = Z X²+Z Y²+(3-Z)²XY
                 +J²-2XYZ+(3-Z)(X+Y)J
             = g²+(9-Z)chi+(9-Z)²eta.

The substitutions (s,t,r) -> (conjugate(s),r,t) and
(s,t,r) -> (conjugate(t),conjugate(r),s) give the P1 and P2
identities. Each preserves p,J,W. Completing the square proves strict
positivity of all three |P_j|².

By definition z+conjugate(z)=chi/g and |z|²=eta. Therefore

    |g+c_j conjugate(z)|²=g²+c_j chi+c_j²eta=|P_j|²,

and lambda_j=(g+c_j conjugate(z))/conjugate(P_j) is a unit phase.
The prescribed square-root radicand has modulus g/27>0; hence each
square root is nonzero and has squared modulus g/27.

## Remaining divisors and obligations

The statements above prove nonvanishing of g, P_j, |P_j|², n and delta
where these occur. To finish the exact side-formula theorem one must also
prove that dF is real and the remaining side identities hold. Once dF is
real and its prescribed sign is chosen, rho=(n+dF)/2>=n/2>0 follows.
To justify the subsequent cubic stage one must prove |sigma|²=rho, hence
|xi|=1 and sigma!=0, and prove flatness and the Gram identity for S.
These remaining claims are not inferred from regression tests.

Replay: `python3 MinimalConstruction/Proofs/verify_invariants.py`.

## Subsequent completion of the side theorem

[SIDE_FIBER.md](SIDE_FIBER.md) supplies the remaining claims listed above,
including real dF, rho and sigma nonvanishing, flatness, the Gram identity,
and exactly two permutation orbits on every strict seed. No extra guard
is added. The earlier list records the scope of this positivity lemma.

## The seed and all four completion blocks are invertible

There is also no det E=0 stratum inside the strict domain. An elementary
fact about a singular 3 by 3 phase matrix proves this. Such a matrix
has either two proportional rows or two proportional columns. For rank
at most one this is immediate. At rank two, take two independent rows
as a basis. If the third row is proportional to one of them, the claim
holds. Otherwise write it as alpha times the first plus beta times the
second, with alpha beta!=0. The three phase ratios u_j of the basis
rows satisfy

    |alpha+beta u_j|=1, |u_j|=1.

Squaring gives a nonconstant real linear constraint on u_j, namely
2 Re(conjugate(alpha) beta u_j)=1-|alpha|²-|beta|². A line meets the
unit circle in at most two points. Two of the three u_j therefore
coincide, and the corresponding columns of the entire matrix are
proportional. This proves the fact.

For the present E, two proportional rows would make one off-diagonal
correlation of Gh have modulus 3, contrary to X,Y,Z<9. Two proportional
columns give the same contradiction for Gv. Thus det E!=0. This is a
consequence of R>0, not an additional guard.

The sides B,C already have determinant squared modulus g>0. For any
of the four forced completions D=-C E† Gh^(-1) B,

    |det D|²=|det C|² |det E|² |det B|²/g²=|det E|²>0.

Hence all four blocks are invertible at every strict seed, irrespective
of whether the selected pairing is flat. This permits use of the
paper's four-invertible-block lemmas without leaving an unhandled
singular-seed case.
