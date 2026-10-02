# Both matched completions are flat on all R>0

Status: proved relative to ClassificationPaper's proved regular
seed-domain theorem. This resolves the always-flat part of MC4. The
classification of additional, nonmatched flat pairings is supplied
separately by NONMATCHED_EXCEPTIONS.md and TAO_PAIRINGS.md.

Dependencies: STRICT_DOMAIN.md, SIDE_FIBER.md, and
ClassificationPaper/source/paper_body.tex `thm:regular-seed-domain`,
with the affine-minus matching `eq:affine-minus-matching-main`.
The companion and sextic formulas are precisely Supplemental
`eq:supp-A-explicit`, `eq:supp-B-explicit`, `eq:supp-c6-explicit` and
`eq:supp-product-quadratic`. Their bridge to the present variables and
the exact density witness are checked by verify_matching_bridge.py.

## Theorem

For every unit seed E with R>0 and either z=z_+ or z=z_-, put

    B=S(Gh,z), C=S(Gv,bar(z))^T, D=-C E† Gh^(-1) B.

Then D has unit-modulus entries and H=[[E,B],[C,D]] is a raw order-six
complex Hadamard matrix. The assertion includes strict seeds at which
any of the paper's product-regular guards fail.

## 1. Exact matching bridge

Use the paper's product coordinate u, the product of the second row
of a normalized side. SIDE_FIBER.md identifies it with lambda0/lambda1.
Let delta_p=Z-Y denote the paper's companion determinant; it is not
the square root delta used in the Fourier recipe. Let f6,f3,f0 denote
the paper's sextic coefficients, to distinguish them from the present
c_j=9-(squared correlation).

The displayed formula for the sextic leading coefficient gives

    f6=P1 bar(P0).

In particular f6 is nonzero throughout the strict domain. Using
z bar(z)=eta and z+bar(z)=chi/g gives

    u(z)=[L+g delta_p z]/f6,
    L=g²+c0 c1 eta+c0 chi.

The exact universal identities checked by the verifier are

    (1+X)f6 u(z)²+f3 u(z)+(1+X)f0=0,
    (1+X)[2L+delta_p chi]+f3=0.                         (1)

The first is reduced modulo z²-(chi/g)z+eta; both residual
coefficients vanish as polynomials in the six independent Gram
coordinates. Thus if U=-f3/[(1+X)f6] is the paper's sum of product
roots, then

    2u(z)-U=(g delta_p/f6)(2z-chi/g).                  (2)

Horizontal and vertical g,chi agree. Therefore, for the present
conjugate matching m=u_v(bar(z)),

    2m-Uv = -[delta_p,v f6,h/(delta_p,h f6,v)](2u-Uh).

This is exactly the paper's affine-minus matching, on the open set
where its companion determinants are nonzero. There is no guessed
association of the two sheets: (2) determines the sign explicitly.

## 2. Product-regular strict seeds are dense

The paper's guards include det E, det B and det C, f6 in each
direction, the two companion determinants, the coordinate-cubic
discriminants, and their resultants with the companion denominator.
Here det B and det C are nonzero already because g>0.

All remaining guards can be expressed as finitely many Laurent
polynomial nonvanishing conditions in the four unit seeds, with
denominators already nonzero on R>0. For example let

    Q(u)=(1+X)f6 u²+f3 u+(1+X)f0,
    q_u(x)=x³-sx²+u bar(s)x-u.

Nonvanishing of Res_u(Q,Disc_x q_u) makes both product branches have
simple coordinate roots. Nonvanishing of
Res_u(Q,Res_x(q_u,B_companion)) makes both branches avoid the
companion denominator. Apply these tests horizontally and vertically.
The other guards are direct Laurent polynomials. Denominators can be
cleared by unit monomials and the explicit nonzero factors.

Their product is not identically zero. The verifier uses the exact
unit seed a,b,c,d=(m+in)/(m-in) for the respective integer pairs

    (-3,2), (1,5), (2,1), (-2,3).

It checks det E!=0 and, in both directions,

    g=5956/845,
    R=7003627387904/509831700625>0,
    delta_p,h=144/65, delta_p,v=828/845,

as well as f6!=0 and degree-zero gcds of Q with each of the two
guard polynomials. The gcds are over Q(i); they certify both roots,
not a chosen approximate branch.

A nonzero Laurent polynomial restricted to the phase torus has no
open zero set, by uniqueness of its finite Fourier expansion. Thus
these simultaneous guard conditions hold densely in the four-phase
torus and hence densely in its open subset R>0. At each such seed,
SIDE_FIBER.md supplies the physical side candidates, (1) identifies
their product coordinates, and (2) gives precisely the affine-minus
matching. The imported regular seed-domain theorem makes both
matched forced blocks flat there.

## 3. Extension to every strict seed

Fix any strict seed E0 and either sign z0. Choose product-regular
strict seeds Ek tending to E0, and use the same sign of Im z at
each Ek. The scalar roots zk converge to z0 because g>0 and R>0.
Choose the corresponding normalized matched sides Bk,Ck. They
have unit entries, so a subsequence converges to B0,C0. The limits
have the required Grams and nonzero determinant norm g(E0).
Continuity of Theta gives

    Theta(B0)=z0, Theta(C0)=bar(z0).

By SIDE_FIBER.md each such fixed-(G,z) fiber is one permutation
orbit. Thus B0,C0 equal the prescribed target sides up to independent
last-column and last-row permutations. Since Gh(E0) is invertible,

    -Ck Ek† Gh(Ek)^(-1) Bk -> -C0 E0† Gh(E0)^(-1) B0.

Every matrix on the left is flat. Flatness is closed, so the limit
is flat. Removing the independent permutations preserves flatness
and gives the prescribed target D. The block argument of
SIDE_FIBER.md gives HH†=6I. This completes the proof on all R>0.

This argument does not assume a globally continuous choice of delta
or of the cube roots, connectedness of the strict seed domain, or
product regularity at the target seed.

Replay: `python3 MinimalConstruction/Proofs/verify_matching_bridge.py`.
