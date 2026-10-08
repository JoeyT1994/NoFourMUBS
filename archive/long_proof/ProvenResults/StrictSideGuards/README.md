# Strict-side denominator and phase identities

**Status: proved, unconditional.** This is a partial removal of reconstruction
input 4, not a reconstruction or coverage theorem.

## Statement and scope

Let G be any Hermitian 3 by 3 matrix with diagonal 3 and off-diagonals
G21=s, G31=t, G32=r. Define X,Y,Z,p,J,W,g,eta,chi,R and P0,P1,P2,c0,c1,c2
exactly as in MinimalConstruction/RECONSTRUCTION.md (indices there are
zero-based for P and c). Assume R>0. Then

    g != 0,  eta > 0,
    |P_j|^2 = g^2 + c_j chi + c_j^2 eta
            = eta (c_j + chi/(2 eta))^2 + R/(4 eta) > 0.       (1)

For either z=(chi +/- i sqrt(R))/(2g),

    |g+c_j conjugate(z)|^2 = |P_j|^2,
    lambda_j = (g+c_j conjugate(z))/conjugate(P_j),
    |lambda_j|=1,   |1/P_j| <= 2 sqrt(eta/R).                 (2)

If G is positive semidefinite (in particular if it is either side Gram of
an actual order-six Hadamard corner), then G is positive definite, g>0,
X,Y,Z<9, and n=1-X/9>0. On this physical domain, either square root of

    (g/27) lambda0 conjugate(lambda1) conjugate(lambda2)

is nonzero and has modulus sqrt(g/27).

## Proof

Write A=r s^2, B=conjugate(r)t^2, C=(3-Z)st. Expanding |A+B+C|^2 gives

    |P0|^2 = Z X^2 + Z Y^2 + (3-Z)^2 XY
              + J^2 - 2XYZ + (3-Z)(X+Y)J.                   (3)

For example A conjugate(B)=(r s conjugate(t))^2, whose real double
part is J^2-2XYZ. Substitution of the scalar definitions into (3) gives
g^2+(9-Z)chi+(9-Z)^2 eta. The cyclic substitutions
(s,t,r) -> (conjugate(s),r,t) and
(s,t,r) -> (conjugate(t),conjugate(r),s) give P1 and P2 respectively;
they preserve p,J,W and give c1=9-Y, c2=9-X. The verifier independently
checks all three identities in six formal variables for s,t,r and their
conjugates, as well as g=det(G).

If g=0, R=-chi^2 cannot be positive. Thus g!=0 and
eta=(R+chi^2)/(4g^2)>0. Completing the square proves (1). The definitions
give z+conjugate(z)=chi/g and |z|^2=eta. Consequently
|g+c_j conjugate(z)|^2=g^2+c_j chi+c_j^2 eta, proving (2).

If G is positive semidefinite its determinant g is nonnegative, hence
positive by R>0. All its eigenvalues are then positive. Its two by two
principal minors are 9-X,9-Y,9-Z and are strictly positive. This proves
n>0. The radicand modulus follows from (2) and g>0.

For a physical corner H=[E B; C D], row orthogonality gives
Gh=6I-EE*=BB*, and column orthogonality gives Gv=(C*C)^T. Both are
positive semidefinite. This supplies the physical hypothesis without
any reconstruction theorem.

## What remains assumed

No strict-corner existence, side exhaustion, matched-completion flatness,
positive-sheet coverage, classification theorem or accepted side identity
is used. This does not prove that dF is real, rho>0, xi is a unit phase,
or S is flat with its prescribed Gram. It gives no uniform bound as R
approaches zero. On a validated box with R>=r0>0 and eta<=e0 the bound
|P_j|>=sqrt(r0/(4e0)) is directly usable with outward intervals.

## Replay

`python3 ProvenResults/StrictSideGuards/verify.py`

Registered as `strict_side_guards` in the root runner. The universal
inequalities follow from the written proof; the replay verifies the
polynomial identities exactly over the rationals using SymPy.
