# Referee note: fasthplus.jl

**Verdict: the binomial continuation and tails are analytically correct.
The carrier enclosure remains conditional on valid FastTM arithmetic and
the residual local side identities.**

For n=2 or 3, let r0 be the exact complex value of the chosen ComplexF64
number and x=z/r0^n-1. If a certified bound X on |x| satisfies X<1,
the binomial series with alpha=1/n is analytic throughout the image disk.
It satisfies B_alpha(x)^n=1+x. Thus r0 B_alpha(x) is an exact nth root of
z, regardless of whether r0 is an exact root of the centre value. This
last distinction matters: `sqrt(centre(d2))` and `cis(angle(...)/3)` are
floating **branch proposals**, not exact root certificates. The disk test
and analytic series supply the certificate.

The recurrence b_k=b_(k-1)(alpha-k+1)/k is enclosed with interval
coefficients. For k>=0 and alpha in {1/2,1/3}, the magnitudes of successive
coefficients decrease. The first omitted coefficient therefore gives
|tail|<=|b_(Q+1)|X^(Q+1)/(1-X). Adding that modulus bound separately to
the real and imaginary remainders encloses the complex tail in a square.
The subsequent interval multiplication by r0 supplies the root scaling;
no extra |r0| factor was forgotten. The self-contained analytic proof
appears in CertificateArithmetic/README.md §3.

The exact dyadic real and imaginary components of the proposed r0 are
converted to intervals before powers and reciprocal evaluation. The
convergence disk excludes zero. Ordinary floating branch-selection errors
cannot invalidate the root property; they can select another root or make
the convergence test fail. No principal-root global branch cut is being
crossed by an unproved heuristic.

For the **side** interpretation one still needs dF real and the local
constructor identities. The code's use of real(dF) is justified by that
identity, not by the observation that its computed imaginary part is
small. BRANCH_LEMMA identifies every defined continued branch with the
sign-selected side up to ordinary permutations. At s=0 the opposite-sign
chart has rho=0, and must not be evaluated. The reciprocal model's strict
nonzero-domain test is therefore essential. Across dF=0 both defined
branches differ only by a permutation, pointwise; the permutation need
not be constant as theta varies to preserve the quartet-extension question.

StrictSideGuards now supplies unconditional g,P_j,n guards and lambda
moduli on physical strict frames. It does not yet supply the dF/rho/xi
and flatness identities. These remaining assumptions, and the arithmetic
gap in FASTTM.md, prevent an unconditional end-to-end approval of H+
enclosures from this review alone.
