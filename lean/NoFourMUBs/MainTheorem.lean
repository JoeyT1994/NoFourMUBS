import NoFourMUBs.Boundary
import NoFourMUBs.Step1.Census
import NoFourMUBs.Step2.MatchedUnique
import NoFourMUBs.Step2.AnchorTransport
import NoFourMUBs.Step2.BaseAnchor

/-!
# The main theorem

**There are no four mutually unbiased bases in `ℂ⁶`.**

All finite, checkable inputs are bundled into one structure, `AtlasCertificate`. What remains is Step 2, entered
here as matched existence (L1) and density (D) in `no_four_mubs_main`.  `Complete` proves L1 (`L1.matchedExistence`,
`PROOF.md` Theorem 2.2) and reduces D to strict-corner coverage, which `Final` proves (`Final.no_four_mubs`, via
`Step2.coverage_of_matched_density`).  The alternative route `no_four_mubs_of_connected`, which takes the
connectedness of the non-Tao quotient as a hypothesis, is in `ConnectedRoute`, outside `Final`'s import closure.

Everything else is proved here, using only the standard axioms:
* Step 1, the census of maxima (`Step1Geo.maximumCensus`);
* Step 3, Lemma 3.1 and Stage C (`RecordCert.excludes`);
* Step 4, the clopen atlas (`recordClopen_of_atlas`, via the boundary transfer of Lemma 4.1);
* matched uniqueness (`Step2.matchedUniqueness`);
* the anchor orbit and transport, and an explicit matched anchor (`Step2.maximumAnchorCertificate_of_base`,
  `BaseAnchor.matched_H0`);
* the coverage topology.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- **The finite certificate**, checked by `verify.py --atlas` (`certify.py`, `nonempty.py`, `anchor.py`) and by the
independent checker `proof/independent/`.  It consists of a finite family of certified Records whose boundaries
transfer into the family, containing the Tao matrices, the Fourier matrix and the base-anchor completion. -/
structure AtlasCertificate where
  ι : Type
  [fin : Finite ι]
  A : ι → RecordCert
  boundary : ∀ l, Nonempty (BoundaryCover A l)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  anchor : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0
  fourier : Step2.FourierAnchorCertificate (InAtlas A)

namespace AtlasCertificate

variable (C : AtlasCertificate)

/-- The covered classes form a clopen set (Step 4). -/
theorem clopen : Step2.RecordClopen (InAtlas C.A) :=
  haveI := C.fin
  recordClopen_of_atlas C.A (boundaryTransfers_of_covers C.A C.boundary)

end AtlasCertificate

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate, matched existence and density. -/
theorem no_four_mubs_main (C : AtlasCertificate) (hE : Step2.MatchedExistence)
    (hD : Step2.MatchedDensityReach) : ¬ FourMUBs :=
  no_four_mubs_of_atlas C.A C.tao
    (Step2.coverage_of_matched_density (InAtlas C.A) Step1Geo.anchors hE Step2.matchedUniqueness hD
      Step1Geo.maximumCensus C.clopen
      (Step2.maximumAnchorCertificate_of_base _ BaseAnchor.matched_H0 C.anchor) C.fourier)

end NoFourMUBs
