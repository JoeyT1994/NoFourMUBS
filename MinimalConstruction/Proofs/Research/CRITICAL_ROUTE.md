# Research route toward MC1 — 1 October

This is a working derivation, not an accepted global proof. The moment
computations and endpoint arguments below need an independent verifier
and a written audit before use. Do not infer MC1 from this file.

Two pieces of this route have since been written and verified separately:
`../FOURIER_ROUTING.md` and `../CRITICAL_P7_EXCLUSION.md`. Their local
receipts do not certify the unaudited square-sum classification below.

## Square-sum computation

For three complete orthogonal phase rows (1;x;y), let D be the signed
phase-block invariant perm(E) det(E)^2/prod(E) minus its reciprocal
conjugate. S=sum over the twenty column triples of -D^2 is nonnegative.
Expand -D^2/6 and sum over all ordered triples, including repetitions
(D vanishes with a repeated column). The six orthogonality moments vanish.
This produces 66 monomials in the remaining moments, up to degree four.

`research_critical_moments.py` builds these moments without individual
side roots. It uses the actual-side identities lambda_j=P_j/(g+c_j z)
when R=0, z is real, and g+c_j z is nonzero. The underlying algebra is
over Q(X,Y,z)[r]/(r^2+XZ/Y) for J=0; complex row scaling sets s=t=1,
S=X,T=Y,Q=-rY/X. This scaling is a Laurent-algebra device; it does not
claim that the scaled matrix remains physically unitary.

For J=0 let z=chi/(2g), p=9-z^2, W=z^2(z+3)^2, K=XYZ. The computed S is

    -3888 z(z+2)^2(z+3)^2 [K+(z-1)(z+3)^3]
      [z^2(z+3)^4+(z+2)^2 K]^2
      / [3z(z+3)^4+(3z+8)K]^3.

The raw numerator and denominator are in critical_J0_moments.json.
Reduce them by the splitting-algebra relations

    Y^2+(X-p)Y+X^2-pX+W+K=0,
    X^3-pX^2+(W+K)X-K=0.

The reduced numerator is -3888*z^13*(z+2)^2*(z+3)^2*
[K+(z-1)(z+3)^3]*A^2*B^2, and denominator z^12*A^5, with
A=3z(z+3)^4+(3z+8)K and B=z^2(z+3)^4+(z+2)^2 K.

For real physical data, z in [-3,3], K>=0. Away from z=0,-2,-3,
S=0 would imply K=(1-z)(z+3)^3. The modulus cubic factors as

    (t-(z+3))^2 * (t-(1-z)(z+3)).

Thus after relabeling rows X=Y=z+3 and Z=(1-z)(z+3).
Gauge s=t=sqrt(X); then r is imaginary since J=0. P0/(g+c0z)=1.
Also lambda2=conjugate(lambda1), so the coordinate cubics for y and
conjugate(x) agree. Their root multisets coincide. A transposition
pairing has lambda0=-1 if the side is invertible, so is impossible.
A three-cycle pairing would give Z=X, forcing z=0 or -3. Thus the
pairing is the identity: y=conjugate(x). The complementary three
columns give the same relation (their sums are negative, but s=t
and lambda0=1 still hold). Hence all six entries satisfy y=conjugate(x).
Repeated coordinate roots must be treated explicitly; any odd stabilizer
would force singularity in the permutation determinant argument.

Pole handling for J=0: if one A_i=3z+9-X_i vanishes, physical positivity
and the W equation imply either z=0,-2,-3 or

    Y+Z=-z(z+3), YZ=-z(z+3)^3/(3z+8),
    (Y-Z)^2=3z(z+2)^2(z+3)^2/(3z+8)<0.

Thus no other physical poles. If two correlation moduli vanish, W=0
forces z=0 or -3; otherwise relabel so X,Y>0 for the algebraic gauge.

## Nonzero J

Use k=2J/(9-p)^2 from CRITICAL_CORNER_REDUCTION.md, and swap complements
to take k>0. Let h=1+k^2, p=9-4/h, J=8k/h^2,
W=2(16-32h+18h^2)/h^3, K=XYZ. The quadratic relation now is
r^2-(J/Y)r+XZ/Y=0 and Q=(J-rY)/X.
`research_critical_nonzero_J.py` computes the square sum on this stratum
in about 17 CPU seconds. Its raw numerator has 44,722 terms; the
quadratic-r coefficient vanishes identically.

After reduction by the same two splitting-algebra relations, clearing
only powers of h, the numerator factors into a negative constant,
k^2, (3k^2+1)^3, two cubic powers of pole polynomials, and one quartic
in K. That quartic is the first factor in
critical_nonzero_J_symmetric.json. The scale discarded in the exploratory
pseudoreduction is a power of h, always positive. The two pole factors
should be explicitly identified with products of g_±+(9-X_i)z_±.

The modulus-cubic discriminant is -4*(K-K0)*(K-Kplus)*(K-Kminus), where

    Kmin = J^2/4 = 16k^2/h^4,
    K0 = 4(9k^2+1)/h^3,
    Kplus  = (27k^6+9k^4+17k^2+3+8kh)/h^3,
    Kminus = (27k^6+9k^4+17k^2+3-8kh)/h^3.

The three roots exchange order only at k=1/3 and 1. Feasible K lies
in [Kmin,smallest root] or [middle root,largest root]. Quartic Bernstein
coefficients on these two intervals were computed exactly and saved in
critical_nonzero_J_bernstein.json. For every coefficient, every odd-power
factor of numerator and denominator has no interior real root on its
stated k interval (checked with exact Sympy count_roots). Their signs
at rational interior samples are all negative. Even-power factors can
vanish: a rigorous verifier must handle simultaneous coefficient zeros,
collapsed intervals, and k=1/3,1 separately.

The gcd of the five Bernstein numerators is, up to a nonzero constant:

    low01: (3k²-2k+3)² (3k³+k²+k-1)^4;
    low1inf: (3k²+1)^5;
    high013 and high131: (k+1)²(3k-1)^6(1+k²)^3;
    high1inf: k²(1+k²)^3.

Thus simultaneous vanishing in the open ranges occurs only in low01
at kappa; its K interval collapses there because Kmin=Kminus.
Boundary coefficient factorizations are in the boundary-factors JSON.
They add only k=1/3,1,kappa. This gives a particularly short route to
an exact sign verifier without isolating the quartic's own roots.

The only apparent nonzero-J candidates are:

* k=1/3, K=729/125: p=27/5, J=54/25, X=Y=Z=9/5;
* k=1, K=5: p=7, J=2, {X,Y,Z}={1,1,5};
* k=kappa, K=J^2/4, where kappa is the unique positive root of
  3k^3+k^2+k-1=0: p_kappa=9-4/(1+kappa^2), irrational.

Pole analysis: P0=0 implies X=Y or J^2=4XYZ (take the imaginary part
after making s,t positive). Hence a pole forces either a repeated
modulus root or K=Kmin. Substituting K0,Kplus,Kminus,Kmin into
the modulus cubic at alpha_±=9+g_±/z_± gives only k=1/3,1,kappa
for positive k. At z_-=0 (k=1), g_->0, so that side has no pole.
The explicit factorizations were computed during this turn; regenerate
them directly rather than assume this research note.

## Endpoint routes

k=1: dephase the side with positive J so s=t=1,r=1+2i. Three unit
phases with sum 1 consist of 1,u,-u. Comparing the positions of the
distinguished 1 in the x and y triples gives, up to permutation,

    x_E=(1,u,-u), y_E=(1,i*u,-i*u).

The complementary sums are -1,-1,-1-2i. The distinguished -1 cannot
be aligned in the two triples; solving the alternative gives uniquely

    x_B=(-1,-i,i), y_B=(i,-1,-i).

An exact 20-corner computation for the combined strip gives
S=1024-128i*(u^2-u^-2)=1024+256*sin(2 arg u)>=768.
Thus this candidate is impossible in an all-critical carrier.

k=1/3: the positive-J side should be proved column-permutation
equivalent to X0(a)=[[1,1,1],[1,1,a],[1,a^-1,1]],
a=(-4+3i)/5 or its conjugate. Its P divisors are nonzero, so the
universal product identities fix the row cubics, whose repeated roots
give this pairing uniquely. This still needs a written/verifier audit.
For any missing column (1,x,y), two mixed critical equations imply

    x=+/-1 or x=a*y^2;
    y=+/-1 or x^2=a*y.

Consequently its (x,y) belongs to the eight constant possibilities
(+/-1,+/-1),(+/-1,a^-1),(a,+/-1), or has y=1/x and x^3=a.
The three missing x entries must sum to -2-a. Over Q(i,omega),
x^3-a is irreducible: a=i(2+i)/(2-i) has Gaussian-prime valuations
+1,-1, and the quadratic extension Q(i,omega)/Q(i) cannot contain a
root of an irreducible cubic. Therefore the cubic-root candidates
can appear only all three together (their sum is zero), or not at all.
All three contradict -2-a. With none, the sum is an integer plus
a nonnegative integer times a, also unable to equal -2-a. This would
exclude the candidate without using any product-regularity assumption.

## Global finish if the local classifications are audited

A complete orthogonal row triple (1;x;conjugate(x)) has
sum x=sum x^2=0. Its six-root polynomial is x^6+A*x^3+B, by the
self-inversive coefficient relations. Hence the six x values are two
equilateral triples. In the Fourier-block normal form, the relative
row phases between the two triples are (1,u,u^2). The paper's
two autocorrelation product equations then force either u^3=1 or
the opposite phase triple to be a Fourier character. In either case
the full carrier is in the Fourier family or its transpose.
This stronger conclusion should be proved explicitly, not replaced
by the paper's weaker Karlsson-or-Tao statement.

Therefore an all-critical non-F6 carrier cannot have a generic J=0
corner: its J=0 corners would have p in {0,5,9}. After the two
nonzero-J endpoint exclusions above, all other corners have the one
irrational value p_kappa. The fixed-row-triple sum p=108 forces the
number of p_kappa corners to be zero. (Prove p_kappa irrational.)
All corners would therefore have J=0 and p in {0,5,9}. Since their
mean is 27/5>5, some corner has p=9; its determinant is zero.

Finally a singular 3x3 phase block has proportional rows or columns
(STRICT_DOMAIN.md). In the full Hadamard this forces a pair of rows
or columns whose six relative phases are three +1 and three -1.
For a row pair, normalize it to (1,1,1,1,1,1) and (1,1,1,-1,-1,-1).
Every other row sums to zero separately in each half, so each half
is a phased permutation of (1,omega,omega^2). There are two possible
orientations per half. Orthogonality forces the orientation classes
in the two halves to coincide, each with two rows, and the within-class
relative phases to be opposite. This is exactly the transposed Fourier
family. The column case is its transpose. The already verified Fourier
critical-locus theorem then forces F6. This would complete MC1.
