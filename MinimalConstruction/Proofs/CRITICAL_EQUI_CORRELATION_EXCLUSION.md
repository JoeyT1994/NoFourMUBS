# Exclusion of the equicorrelation critical endpoint

**Theorem.** A physical corner with unordered squared correlation
moduli X=Y=Z=9/5 and |J|=54/25 cannot occur in an all-critical carrier.
No strict-side or product-regularity assumption is needed.

Swap the corner with its same-row complement to choose the phase
block whose own Gram has J=54/25. The two critical equations give
g=324/25, eta=144/25, chi=-7776/125, and the unique real invariant
z=chi/(2g)=-12/5. Each c_j=36/5, so

    g+c_j z=-108/25 != 0.                              (1)

Let a=(-4+3i)/5 and

    E0=[[1,1,1],[1,1,a],[1,a^-1,1]].                    (2)

Its Gram has precisely these moduli and cubic invariant. Indeed
the cubic product has real part 27/25 and imaginary part of modulus
54/25. Any Gram with these moduli and J can therefore be row-phased
to E0 E0† or its conjugate: fix its first two correlations, then
the product determines the remaining one. Conjugation permits the
first choice. Column phasing normalizes the first row to ones.

For any actual phase block with this Gram, the universal identities
in SIDE_FIBER.md §1 apply, including at R=0. Its z is fixed, and (1)
fixes lambda_j=P_j/(g+c_j z), hence the coordinate products U,V.
Computing them using (2) gives U=a,V=a^-1. The coordinate cubics are

    T³-(2+a)T²+a(2+a^-1)T-a=(T-1)²(T-a),
    T³-(2+a^-1)T²+a^-1(2+a)T-a^-1=(T-1)²(T-a^-1).

Thus the x and y coordinates have multisets {1,1,a} and {1,1,a^-1}.
If their exceptional entries are in the same column, their correlation
is 2+a^-2. If in different columns it is 1+2a^-1, the value in (2).
Their difference (1-a^-1)² is nonzero. Consequently the actual block
is a column permutation of E0. This argument explicitly handles its
repeated coordinate roots.

Now let (1,x,y) be any of the three complementary columns. An
all-critical carrier makes every phase-block signed invariant zero.
For columns (1,1,1), (1,1,c), (1,x,y), direct Laurent calculation gives

    D=(c-1)²(c+1)(x-1)²(x+1)(c x-y²)/(c² x² y),        (3)

where D=perm(T)det(T)²/prod(T) minus its conjugate. Apply (3) to
the first two columns of E0 and to the first and third columns after
swapping the two noninitial rows. Since a!=1,-1, this gives

    x=±1 or x=a y²;     y=±1 or x²=a y.                (4)

If either x or y is ±1, (4) puts (x,y) in the finite set

    (±1,±1),       (±1,a^-1),       (a,±1).             (5)

Otherwise (4) gives y=x^-1 and x³=a.

Let omega be a primitive cube root of unity. The polynomial T³-a is
irreducible over Q(i): a=i(2+i)/(2-i) has Gaussian-prime valuations
1 and -1 at the two distinct primes above 5, whereas a cube has
valuations divisible by three. A reducible cubic would have a root.
It remains irreducible over Q(i,omega), since a cubic root of degree
three over Q(i) cannot lie in that extension of degree two.

Choose one root xi of T³-a. In the sum of the three missing x
coordinates, the nonconstant contributions are

    xi (n0+n1 omega+n2 omega²),

with nonnegative integer multiplicities and n0+n1+n2<=3. The sum
must equal -2-a by full-row orthogonality, an element of Q(i,omega).
Irreducibility forces n0+n1 omega+n2 omega²=0, so n0=n1=n2.
Either all three cubic-root coordinates occur, whose sum is zero,
or none occurs. The first case contradicts -2-a!=0. In the second
case (5) makes the sum n+m a for an integer n and a nonnegative
integer m. Equality to -2-a would require m=-1 because a is nonreal.
This is again impossible. ∎

Replay: `verify_critical_equicorrelation.py` checks the endpoint Gram,
invariants, nonzero divisors, coordinate products/cubics, and (3) by
exact arithmetic. The field-degree and valuation argument above is
the analytic exclusion of the cubic-root candidates.
