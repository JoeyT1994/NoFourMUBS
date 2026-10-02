# An exact entrywise-power identity and a sharp lower bound

**Proved consequence of the retained balanced-product theorem.** Its global
non-Tao scope inherits that theorem's accepted reconstruction inputs.
This is not a seven-MUB exclusion, and no priority claim is made.

For a raw 6×6 Hadamard H, let H^{∘k} mean the ENTRYWISE kth power and define

    Phi_k(H) = || (H^{∘k})† H^{∘k} ||_F².

Define B(H) as the sum, over all twenty three-element row sets S, of

    | sum_j product_(r in S) H_rj product_(r not in S) conjugate(H_rj) |².

For EVERY raw order-six Hadamard, including Tao, the following identity holds:

    Phi_3(H) = (9/2) Phi_2(H) − 1296 + 9 B(H).                  (1)

For non-Tao H the retained global balanced identity gives B(H)=0. Hence

    Phi_3(H) = (9/2) Phi_2(H) − 1296,
    Phi_2(H) >= 336.                                         (2)

Equality in the inequality holds exactly when H^{∘3} is itself a complex
Hadamard. The explicit fourth-root matrix below attains equality.

## Proof of the universal identity

For an integer six-vector gamma put

    g_H(gamma)=sum_j product_r H_rj^{gamma_r},
    M(gamma)=average_(coordinate permutations pi) |g_H(pi gamma)|² /36.

The average is of squared absolute values, not the squared absolute value of
an average. Thus M is unchanged by coordinate permutations and by negation.
Column orthogonality proves, for every integer gamma,

    sum_(r=1)^6 M(gamma+e_r)=1.                               (3)

Indeed, expansion gives a sum over column pairs, and the inner sum
sum_r H_rj conjugate(H_rk) equals 6 delta_jk. Row orthogonality also gives
M(1,-1,0,0,0,0)=0.

Use the following abbreviations (zero padding to six coordinates is understood):

    x=M(2,-2),                 y=M(2,-1,-1),
    z=M(1,1,-1,-1),            u=M(3,-3),
    v=M(3,-2,-1),              w=M(3,-1,-1,-1),
    s=M(2,1,-1,-1,-1),         t=M(1,1,1,-1,-1,-1).

Applying (3) to the six gamma values

    (1,-2,0,0,0,0), (1,-1,-1,0,0,0),
    (2,-3,0,0,0,0), (1,1,-3,0,0,0),
    (2,-1,-1,-1,0,0), (1,1,-1,-1,-1,0)

gives, respectively,

    x+4y=1,       y+3z=1,       u+x+4v=1,
    2v+y+3w=1,   w+3y+2s=1,    2s+3z+t=1.

Eliminating y,z,v,w,s yields

    u=(9x−1)/2+6t.

The thirty ordered unequal row pairs give

    x=(Phi_2−216)/1080,   u=(Phi_3−216)/1080,
    t=B/720.

Substitution proves (1). These are elementary Hadamard identities; this
part needs no reconstruction or Tao exclusion.

## Lower bound, equality, and sharpness

The positive semidefinite matrix A=(H^{∘3})†H^{∘3} has trace 36. Therefore

    Phi_3=Tr(A²) >= (Tr A)²/6 =216,

with equality exactly when A=6I. Combining this with B=0 proves (2) and
its equality statement.

A sharpness example is

    H = [[1, 1, 1, 1, 1, 1],
         [1,-1, i,-i,-i, i],
         [1, i,-1, i,-i,-i],
         [1,-i, i,-1, i,-i],
         [1,-i,-i, i,-1, i],
         [1, i,-i,-i, i,-1]].

It satisfies HH†=6I and H^{∘3}=conjugate(H), giving Phi_3=216 and Phi_2=336.
Its balanced sums vanish directly. Tao instead has Phi_2=216, Phi_3=1296
and B=180, and satisfies (1) but not (2).

## Precise relevance to seven bases

A hypothetical complete set has 21 unordered pairwise transitions. Tao is
excluded by the published extension obstruction, so each raw transition
obeys (2), conditionally on our balanced theorem. Their Phi_2 values would
therefore sum to at least 7056.

No incompatible UPPER bound for that sum has been obtained. Moreover the
scalar Fourier relaxation already implies (1) through its orthogonality
relations. Rewriting it as (2) makes a useful invariant bound explicit; it
does not independently strengthen that relaxation or prove nonexistence.

[FramePotential.py](FramePotential.py) checks the six orbit-count equations,
their exact elimination and the explicit Hadamard controls. The proof above
establishes the universal identity and the bound. The balanced theorem is
in [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md).
