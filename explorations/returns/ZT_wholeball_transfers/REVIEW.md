# Review of return ZT (26 Oct 2026)

**Replayed on rusty** (`python -I replay.py`, 35 s): two full seed-sphere certificates (seeds 6 and 8), the seed-6
lower bound, the negative controls, and the listed X-ball patches. All pass. `replay.py --full` (all 55,345 X-ball
patches) is running.

**Accepted results.**
- **The patch certificate.** An output-weighted local Taylor bound on sphere patches from one Z normal form, with
  rigorous patch-centre jets from the original contraction (§2).
- **The X-ball's sphere:** 1,171,965 boxes → 55,345 certified patches (21×).
- **Seed spheres:** 937,968 → 344,174 patches on 193 of 200 sampled balls (2.7×). The other 7 sources' Z contraction
  fails, so they keep boxes.
- **A proved obstruction:** with the current transfer descriptors, seed 6 needs at least 627 leaves. "A few dozen
  patches per sphere" would need different targets, not sharper bounds.

**Use.** The X-ball's sphere is the clear gain: it took 3 of the Julia checker's 4 hours on the current certificate.
Seed spheres gain 2.7×, which is worth it for the kernel, less so for Arb (C2 was about 70 core-hours).

Integration needs:
- the patch test in both certifiers;
- a sphere-restricted transfer lemma in Lean, since the tests certify box ∩ sphere, not the whole box.

**To do:** after XS, starting with the X-ball's sphere.
