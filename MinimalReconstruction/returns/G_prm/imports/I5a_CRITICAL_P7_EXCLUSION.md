# Exclusion of the p=7, |J|=2 all-critical endpoint

**Proved.** A physical corner with p=7, |J|=2 and unordered squared
correlation moduli {1,1,5} cannot belong to an all-critical carrier.
The proof uses neither strict side exhaustion nor nonzero side divisors.

Swap the corner with its complement and reorder rows so the phase
block with positive J has X=Y=1,Z=5. Phase its rows to make
s=t=1. Its remaining correlation is r=1+2i or its conjugate;
conjugating the entire matrix reduces to r=1+2i. Normalize the first
of these three complete rows to ones.

Three unit phases with sum 1 have the form (1,u,-u), in some order.
To see this, their sum together with -1 is zero; four unit numbers
with zero sum pair into antipodes. Equivalently, the elementary
symmetric functions of the three roots give
T³-T²+U T-U=(T-1)(T²+U).

Write the first row-coordinate triple x=(1,u,-u). The other triple
y also contains a distinguished 1. If the distinguished positions
agree, write y=(1,v,-v); the correlation gives 1+2v/u=1+2i,
so v=i u. If they differ, permute the other two columns to write
y=(v,1,-v). The correlation equation gives

    v=(r u-1)/(u+1).

The denominator-zero case u=-1 would give r=-1 and is impossible.
The unit-modulus condition becomes Re((2+2i)u)=2, so u=1 or -i.
In either case a column permutation gives the same aligned form.
Thus the first three columns are, for some unit u,

    x=(1,u,-u),          y=(1,i u,-i u).                (1)

Orthogonality of the complete rows requires complementary sums
(-1,-1,-1-2i). The two complementary triples each consist of -1
and an antipodal pair. Their distinguished positions cannot agree:
the resulting correlation lies on the circle of radius 2 centered at
1, whereas -1-2i does not. Otherwise write

    x=(-1,v,-v),       y=(w,-1,-w).

The correlation gives w=(r'v+1)/(1-v), r'=-1-2i. Here v=1 is
impossible. Unit modulus reduces to Im(v)=-1, hence v=-i and w=i.
The complementary triples are therefore, up to a common permutation,

    x=(-1,-i,i),         y=(i,-1,-i).                  (2)

For the complete three-row strip (1;x;y) given by (1)–(2), the
exact sum of the twenty squared signed corner invariants is

    S=1024-128i(u²-u^-2)=1024+256 sin(2 arg u)>=768.    (3)

`verify_critical_p7.py` computes each invariant directly from
perm(E) det(E)²/prod(E) and checks (3) as a Laurent identity. The
universal phase-block identity identifies these nonnegative squares
with the twenty complementary corner discriminants. At least one
corner is therefore strict. ∎
