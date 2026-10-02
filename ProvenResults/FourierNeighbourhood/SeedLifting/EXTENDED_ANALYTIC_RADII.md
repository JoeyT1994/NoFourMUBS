# Eightfold extension of the two analytic F6 seed radii

**Proved, conditional only on the retained mathematical lemmas identified
below. No reconstruction inputs are used.** On the physical maximal-corner
domain, every completion of the following closed phase cubes is quartet-free:

| Centre in units of pi/3 | New half-width | Previous half-width |
|---|---:|---:|
| (2,4,4,2), the F3-block class | 2^-39 | 2^-42 |
| (0,0,2,4), the rank-one-pair class | 2^-43 | 2^-46 |

The 72 corner frames are allowed, with their exact linear transformation
of phase boxes. These remain very small regions; this result does not
close any entire production-size survivor. With the four other retained
F6 cubes it gives uniform seed radius **2^-45** at every F6 corner seed,
using the retained maximum frame row absolute sum of four. The rank-one
radius and this uniform radius are still below the campaign's 2^-40 guard.

The same retained FourierMaxR phase estimate gives the uniform small-M
corollary: if a Fourier-family reference in either orientation has
M(reference)<=2^-86, every physical maximal seed within **2^-46** of
any of its corner seeds is quartet-free. Indeed the reference corner
seed is within pi*sqrt(M)/36 <= (22/7)*2^-43/36 < 2^-46 of an F6 corner
seed. Adding the perturbation stays strictly within the new 2^-45 tube.
This replaces 2^-92 and 2^-49 in the earlier corollary; it is still far
below production scale and is not a general off-family R cutoff.

## Stability estimate on a larger parameter range

We use the full derivation in
[NEAR_F6_CLOSURE.md, Sections 2–3](NEAR_F6_CLOSURE.md), not its previously
restricted API. Put h0=2^-39. For 0<h<=h0 let s=sqrt(h), tau=60s and
epsilon=1800s. The derivation requires the following inequalities:

    2h < 1/10, 36h < 3, tau < 1/1000,
    97tau < 9, 33tau < 3,
    42h+28tau < epsilon, epsilon < 1/27.

They all hold at h0 and hence throughout the interval. In particular the
last inequality rules out the nonflat Eisenstein-grid reference: it has
an entry whose distance from the unit circle exceeds 1/27. The old stronger
bound epsilon<1/1000 was used only as a sufficient way to obtain this
contradiction. Replacing it with epsilon<1/27 is valid. The small-phase
lemmas still apply since their input errors are at most 2h or tau. The
exact coefficient factorization, root-rounding arguments, same-orientation
contradiction and operator-norm estimates are unchanged.

Therefore a physical Hadamard with a leading F3 block perturbed entrywise
by at most h<=h0 is within entry error epsilon of a physical Fourier or
transpose-family reference, or Tao. For h=0 use the retained exact
F3-block classification, as in the original theorem.

## Use the actual small-R cap and the unrounded distance coefficient

On both new seed cubes, the retained outward Taylor bound `sharp_R_cap`
proves R(leading)<2^-20 at both 160 and 256 bits. Recorded caps are about
2.87e-30 and 1.35e-37, respectively. Maximality gives M(H)<2^-20.
Only this much weaker rational cap, 2^-20, enters the proof below.

The retained perturbation bound

    |sqrt(R_c(H))-sqrt(R_c(K))| <= 576epsilon

implies sqrt(M(K)) <= 2^-10+576epsilon < 2. Tao is impossible because its
maximal corner value is 243. The reference K is therefore in a Fourier
orientation and satisfies M(K)<4<36. FourierMaxR applies. Retain the
coefficient before the original proof rounded it upward to 14:

    d_F6(H) <= epsilon + pi/144*(sqrt(M(H))+576epsilon)
             < (1+4pi)epsilon + pi/(144*2^10).

Use sqrt(2)<99/70 and pi<22/7. Since sqrt(h0)=sqrt(2)/2^20, the final bound is

    (95/7)*1800*99/(70*2^20) + 22/(7*144*2^10)
      = 3811489/115605504 < 1/30.

This is inside the retained F6 matrix exclusion radius. The argument
controls normalized rows and columns, so transposed frames are allowed.

## Rank-one rechart

For t<=2^-43, Section 5 of NEAR_F6_CLOSURE gives an F3 block with entry
error at most 10t <= 10*2^-43 < 2^-39. Its quantitative steps require
2.5t<=1/10 for the three-phase lemma and 41t<sqrt(3) for exactly two rows
of each orientation; both hold. The same global cap M(H)<2^-20 follows
from the leading corner of the rank-one seed cube. Thus the preceding
argument applies to the recharted block even if that block is not maximal.

## Verification and application

`analytic_radius_extension.py` implements outward whole-box containment
in these two enlarged cubes. It does not modify `near_f6.py` or any
production certification source. The registered
`verify_analytic_radius_extension.py` checks all rational constants,
replays the inherited exact factorization and grid classification,
verifies both complete-cube R caps at 160 and 256 bits, and applies the
predicate to representatives and all 400 exact F6 corner seeds with the
four other retained cubes. Universal scope comes from the argument above
and its retained dependencies, not from sampling.

Dependencies: the F3-block classification and quantitative phase lemmas,
the complementary square perturbation estimate, FourierMaxR, the proved
F6 radius 1/30, and the retained outward corner-R Taylor bound.
