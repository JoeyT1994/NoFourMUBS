# Review of return U (24 Oct 2026)

**Replayed:** `python3 -I scripts/verify_all.py`. All six exact certificates pass (4 s, standard library), and the
receipts are byte-identical to the shipped ones.

**Accepted results:**
- **Fold theorem.** At a regular seed edge (R = 0, ∇R ≠ 0, g > 0), each side is a Whitney fold, with exact criterion
  ∇_q 𝓡 ≠ 0. The identity behind it is det DA_j = 𝓡_j / 32.
- **Analytic completion.** The completion extends across the edge on the double {y² = R}, and the divisors
  d_h d_v ≠ 0 there automatically.
- **F6.** One regular corner (rows and columns 0, 1, 2; θ⁰ = (1,2,2,4)π/3) parametrises the whole dephased Hadamard
  germ, which is an analytic 4-manifold containing both Fourier families. The class map has 72-fold isotropy, and
  [F6] is a topological 4-manifold point of X.
- **Counterexample (certified).** A Fourier-family matrix whose 256 critical corners all have ∇R = 0.

**Atlas use.** The certified parameter cube is |u_i| ≤ 1/20, |y| ≤ 1/20 in *unscaled* y. In the matrix metric that is
only about ±0.002 in the y direction (τ = y/24), so it does not yet replace the F6 record (radius 0.125). To make the
atlas fully four-dimensional:
1. certify a larger cube for the augmented system (20), which is our side tube with y as a coordinate, so the existing
   Taylor-model and Krawczyk machinery applies;
2. add an "edge ball" type to the spec, certifier, Julia replay and Lean (the chart lemma from §3.2–4.3).

Not done yet.
