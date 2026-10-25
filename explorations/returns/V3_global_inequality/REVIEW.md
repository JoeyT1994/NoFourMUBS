# Review of return V3 (24 Oct 2026)

**Replayed:** `python3 -I verify_all.py`. All four exact certificates pass (62 s, standard library); the receipts are
identical up to elapsed times.

**Accepted.** For every order-6 complex Hadamard H, S(H) ≥ 100·L_tot(H); the certificate gives > 103.526·L_tot.
- The proof goes through D_sym, the symmetrised square-product defect: L_tot ≤ 6 D_sym (three squares) and
  S ≥ 600 D_sym (fifteen squares on the non-Tao locus; Tao is checked exactly).
- Its only geometric input is the non-Tao Fourier vanishing theorem (Lean: `FourierVanishing.fourierVanishing`).
- With return V's annulus and group rounding, every class at distance ≥ 0.1 from [F6] has a corner with R ≥ 0.04.
  This closes handoff V2.

**Use.**
- It is a fully quantitative form of "F6 is the only all-critical matrix", and worth stating in the paper or SM.
- It does not replace the strict-corner coverage theorem in the proof: Fourier vanishing, its input, uses that
  theorem.
- It does not make a "grid over {R ≥ ε}" atlas practical. Near a corner with R ≈ 0.04 a seed ball must stay within
  ~R/|∇R| ≈ 2·10⁻⁵ of its centre in seed space. The atlas keeps the open-and-closed construction, which uses each
  class's best corner (median R ≈ 300).
