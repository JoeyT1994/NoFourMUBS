# Referee note: CARTESIAN_EXCLUSION.md

**Verdict: confirmed, conditional only on its input enclosures.**

Write H_k=h_k0+Delta_k. At phase centre z_k and offset delta_k,

    z_k exp(i delta_k) conjugate(H_k)
      = z_k conjugate(h_k0)
        + z_k conjugate(Delta_k)
        + z_k conjugate(h_k0)(exp(i delta_k)-1)
        + z_k conjugate(Delta_k)(exp(i delta_k)-1).

The summed second term is bounded by either E_coarse or E_refined.
After rotation the third term has exactly the real and imaginary interval
increments printed in the proof. Each fourth term is bounded in modulus
by dev_k min(2,w_k); placing that disc in a square is conservative. The
first coordinate has no offset. Thus the displayed rectangle contains the
whole sum and excluding 6 from its squared modulus is valid.

Source inspection of cartesian_cover.jl confirms outward phase arcs,
outward coefficient sums and mixed-error allowances. The rotation may be
chosen with ordinary floating arithmetic because any real angle works;
its sine and cosine are evaluated outward. Cached radii belong to the
CoverCell object; soundness requires no later mutation of its arrays.
The supplied search constructs restricted cells rather than mutating them.
Rejecting a cheap test triggers the original interval test as fallback.

The supplied acceleration controls passed, including 24 boxes containing
known Fourier common rays and independent direct interval checks. This
does not independently certify the upstream FastTM models: see FASTTM.md.
