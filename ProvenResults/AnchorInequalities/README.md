# Exact necessary anchor inequalities

Let I,U be mutually unbiased bases, V four orthogonal rays unbiased to both,
and w a unit ray unbiased to I,U and each column of V. From five U-projectors
and the four V-projectors, P1,...,P9, define f_a(z)=z†P_a z−1 for a raw flat
anchor z=(1,z1,...,z5), with |z_i|=1.

Each of the three retained certificate templates gives an exact Laurent identity

    sum_a h_a(z) f_a(z) − sigma(z) = sum_alpha C_alpha(P) z^alpha,

where sigma is a sum of absolute squares and the C_alpha are explicit affine
functions of the nine projectors. Anchor existence necessarily implies

    C0 ≤ sum_(alpha != 0) |C_alpha|,

and therefore

    C0 ≤ 0  OR  C0² ≤ 680 sum_(alpha != 0) |C_alpha|².

These tests apply to every physical carrier/quartet, with no completion,
balance, extra symmetry, or seed guard. The verified templates exclude
specified neighborhoods in the JOINT carrier/quartet domain. They have not
been shown to exclude every quartet over any unrestricted seed region.
Every hypothetical complete set supplies configurations satisfying these tests.

[PROOF.md](PROOF.md) gives definitions, the exact reference, coefficient bounds
and proof. data/ contains all three rational SOS/multiplier certificates,
expanded polynomials, and the exact reference symmetries. exact_algebra.py and
template_restriction.py evaluate them; verify.py checks all certificates.

The optional old source-packet replay and discovery files have been archived.
The retained verifier is self-contained and uses the Python standard library.
