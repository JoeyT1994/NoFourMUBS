# Independent audit of the compressed repeated-modulus proof

**PROVED / CERTIFIED.** The generic imaginary identity plus the repeated-modulus real part of `T_{x|y}` suffice. The specialized real part of `T_x` and its large mixed-source certificate can be removed.

The compressed scalar certificate file contains six integer-DAG identities and occupies 5,837 uncompressed bytes. Its reconstruction/replay script is `support/verify_scalar_core.py`. The checker uses standard-library integer arithmetic; its optional binding to the retained mixed-source readout uses python-flint. A separately written standard-library implementation independently expanded the new reduction, norm and Bezout identities during the audit. The delivered `support/verify_source_independent.py` also expands those identities without importing the primary DAG builder or source.

## Logical argument

Assume `K>0`, `Delta != 0`, and repeated moduli `X=Y=v`, `Z=9-z^2-2v`. Let `tau=z+3>0` and

\[
m=z^2+2z-6,\qquad C_2=2v^2+mv+z^2\tau.
\]

The identity `G_W=(v-tau)C2`, together with `v != tau`, gives `C2=0`.

The generic imaginary identity applied with distinguished modulus `X=v` is

\[
(\tau-v)(v-Z)(\tau^2-v)\bigl(z\tau-(z+2)v\bigr)=0.
\]

Cancel only `tau-v`, which is nonzero under `Delta != 0`. Define

\[
Q(v)=(\tau^2-v)\bigl(z\tau-(z+2)v\bigr),
\quad R=(3v+z^2-9)Q(v).
\]

Since `v-Z=3v+z^2-9`, one obtains `R=0`. This statement includes all equal moduli: it does not divide by `v-Z`. It also includes `v=1`, which was an exceptional multiplier specialization in the generic real equation.

Set

\[
a=\tau(11z^4+86z^3+156z^2-108z-324),
\]
\[
b=3z^4+46z^3+256z^2+588z+468,
\]
\[
E=6(z+2)v-7z^3-62z^2-156z-108.
\]

The exact quotient identity is

\[
\boxed{4R=z(a+bv)+E C_2.}
\]

Because `z != 0`, the equations `R=C2=0` force `a+bv=0`.

Now set

\[
H=(z^2-6z-18)(z^2+2z-2)(z^2+6z+6).
\]

The norm identity, valid before imposing `C2=0`, is

\[
\boxed{
(a+bv)(2a-bm-2bv)
=-24(z+2)\tau^4 H-b^2C_2.
}
\]

Thus `H=0`, since `z+2 != 0` and `tau>0`.

The retained repeated-source identity supplies

\[
\operatorname{Re}T_{x\mid y}
=\frac{3(C+2vD)}{16\tau^5}.
\]

All-criticality therefore gives `C+2vD=0`. With C,D exactly as in the mixed-source readout, the retained norm identity is

\[
(C+2vD)(C-Dm-2vD)
=48z^3(z+2)\tau^6G-2D^2C_2,
\]

where

\[
G=6z^5+43z^4+128z^3+216z^2+216z+108.
\]

It gives `G=0`, dividing only by the already known nonzero factors `z`, `z+2`, and `tau`.

Finally, define

\[
U=-28284z^4-126868z^3-269543z^2-317298z-201258,
\]
\[
V=4714z^5-3211z^4-226040z^3-527112z^2-50088z+409428.
\]

The exact constant Bezout identity is

\[
\boxed{UH+VG=746496.}
\]

This contradicts `H=G=0`. All repeated-modulus cases have been excluded under `Delta != 0`.

## Guards and scope

Every cancellation is explicit: `tau-v`, then `z`, then `z+2` and powers of `tau`. The source formula for `T_{x|y}` additionally uses only the original nonzero lambda denominators and positive correlation moduli. There is no division by `v-Z`, `v-1`, any factor of H, or a quadratic norm. Therefore the argument covers the all-equal case and every exceptional root specialization included in H.

The six scalar records are `modulus_at_tau`, `repeated_W_factor`, `repeated_imag_reduction`, `repeated_imag_norm`, `repeated_norm_pair`, and `bezout_746496`. The mixed-source bindings need only the generic identity and the repeated `T_{x|y}` identity. The zero-product proof and the permanent proof of geometric rows remain as in the recovered report.

No assertion of Lean compilation or axiom verification is made by these polynomial replays.

The scalar polynomial named H in this audit is named F_* in REPORT.md.
