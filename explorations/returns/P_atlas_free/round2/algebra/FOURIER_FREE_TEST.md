# Testing both completed edges without choosing a square root

**PROVED.** The corrected all-400-minor Fourier predicate can be pulled back
to the four-ray completion coordinates using a polynomial in the squared
completion parameter alone. This retains every row and column choice and
requires no choice of the sign of a square root.

This is a reduction of the remaining global problem, **not an exclusion
certificate** for its solutions. The Fourier characterization itself is an
accepted input from the handoff and return L.

## 1. Definitions

Let `X=[x_1,x_2,x_3,x_4]` be the four retained raw columns, and write the
completion as

    K=[x_1,x_2,x_3,x_4,(s+p/u)/2,(s-p/u)/2],
    U=u^2 !=0.

These are the coordinates of `FOUR_RAY_COMPLETION.md`, where a nonzero
diagonal pivot of the residual rank-one matrix gives `p`.

For each of the twenty three-row sets A, define

    I_abc(A)=det[x_a,x_b,x_c]_A              (1<=a<b<c<=4),
    A_ab(A)=det[x_a,x_b,s]_A                 (1<=a<b<=4),
    B_ab(A)=det[x_a,x_b,p]_A,
    C_a(A)=det[x_a,s,p]_A                    (1<=a<=4).

Set

    Phi(X,s,p;U)
      = product over all20 A of
          [ product over4 triples abc of I_abc(A)
            * product over6 pairs ab of (U*A_ab(A)^2-B_ab(A)^2)
            * product over4 indices a of C_a(A) ].        (1)

Thus Phi has280 displayed scalar factors. This factor count is not a
claim of minimality; the earlier thirty-factor squared-overlap predicate
is smaller before eliminating the two missing columns. Formula(1) is a
direct transparent polynomial pullback of all400 minors.

## 2. Exact relation to the complete product

For a fixed three-row set, a minor can use zero, one, or two of the
missing columns. The three cases give respectively

    det[x_a,x_b,x_c]_A = I_abc(A),

    det[x_a,x_b,x_+]_A det[x_a,x_b,x_-]_A
      = (U*A_ab(A)^2-B_ab(A)^2)/(4U),

    det[x_a,x_+,x_-]_A = -C_a(A)/(2u).                    (2)

There are4 minors of the first kind,12 of the second kind, and4 of the
third kind. Pair the12 second-kind minors by the sign of the missing
column. Multiplying(2) for one row set yields

    product over all20 column triples of det K[A,B]
       = [the bracket in(1)]/(2^16 U^8).

The four minus signs in the third kind cancel. Multiplying over all20
row sets gives the identity

    Phi(X,s,p;U)
       = 2^320 U^160 * product_(|A|=|B|=3) det K[A,B].   (3)

All denominators in(2) are units on the completion chart. Consequently,

    every3-minor of K is nonzero  iff  Phi(X,s,p;U)!=0.   (4)

This proof never restricts the row sets to one fixed strip.

## 3. The other completed edge

For the fixed raw Hadamard anchor H, the other edge is

    L=H^* K/sqrt(6).

A scalar normalization does not affect the vanishing of any minor.
Therefore form the second polynomial

    Phi_H = Phi(H^*X,H^*s,H^*p;U).                       (5)

Then the two completed edges K and L are both Fourier-free exactly when

    Phi(X,s,p;U) * Phi_H !=0.                            (6)

If H is already Fourier-free, a fully Fourier-free triple therefore
exists exactly when a physical retained orthogonal four-ray system
satisfies its completion rank test and(6).

## 4. Explicit finite cover and the remaining target

For a physical four-ray system the residual matrix D has trace12 and
zero zeroth row and column. Some pivot c=D_jj>0 exists with1<=j<=5.
The twelve coefficient vector a of the completion theorem is never
identically zero. Choose any ell with a_ell!=0 and substitute

    U=-c*conjugate(a_ell)/a_ell.                         (7)

The real rank-one coefficient conditions guarantee all completion
equations, and(7) automatically has modulus c. This gives at most
5*12=60 explicitly specified pivot/coefficient charts; one native
coefficient is identically zero, so that chart is empty. The larger
count is used for a simple uniform indexing convention.

No physical four-ray system is discarded when one pivot or coefficient
vanishes: another chart is available. Fourier boundary points and all
parameter values are retained by this cover.

On each chart substitute(7) into(1),(5), and clear powers of the known
nonzero a_ell. The result is an explicit polynomial nonvanishing test
in the four retained rays, their conjugates, and H. For a fixed
Fourier-free H the retained-ray algebra is finite, as established in
the first return. Inserting the permitted strict-corner reconstruction
then leaves an exact algebraic problem over its four seed parameters.

The unresolved implication needed for F is:

    four common orthogonal rays + completion rank test
          => Phi(X,s,p;U)*Phi_H=0,

uniformly over every allowed Fourier-free H and every chart. **That
implication has not been proved or certified in this return.** A quotient
identity proving it would be stronger than needed on physical points;
a real-algebraic certificate must retain the physical conditions.

The prior trace-form criterion may likewise be applied to the smaller
four-ray completion algebra, localized by(6). Neither a universally
zero signature nor a global elimination has been computed here.
