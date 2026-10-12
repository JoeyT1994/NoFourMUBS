import NoFourMUBs.Final

/-!
# The main theorem, in its final form

All finite, checkable inputs are bundled into one structure `AtlasCertificate`; what remains is Step 2.

* `no_four_mubs`: certificate + matched existence (L1) + density (D);
* `no_four_mubs_of_connected`: certificate + connectedness of the non-Tao quotient (`PROOF.md` Theorem 2).

Everything else (Steps 1 and 3, Lemma 4.1, matched uniqueness, the anchor orbit and transport, the explicit
anchor completion, the coverage topology) is proved, with only the standard axioms.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- **The finite certificate** checked by `verify.py --atlas` (`certify.py`, `nonempty.py`, `anchor.py`) and by
the independent checker `proof/independent/`: a finite family of certified Records whose boundaries transfer
into the family, containing the Tao matrices, the Fourier matrix and the base-anchor completion. -/
structure AtlasCertificate where
  ι : Type
  [fin : Finite ι]
  A : ι → RecordCert
  boundary : ∀ l, Nonempty (BoundaryCover A l)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  anchor : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0
  fourier : Step2.FourierAnchorCertificate (InAtlas A)

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate, matched existence and density. -/
theorem no_four_mubs_main (C : AtlasCertificate) (hE : Step2.MatchedExistence) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  haveI := C.fin
  no_four_mubs_explicit C.A C.boundary C.tao C.anchor C.fourier hE hD

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate and the connectedness of the non-Tao quotient. -/
theorem no_four_mubs_of_connected (C : AtlasCertificate) (hX : Step2.NonTaoPreconnected) : ¬ FourMUBs :=
  haveI := C.fin
  no_four_mubs_connected C.A C.boundary C.tao C.fourier hX

end NoFourMUBs
