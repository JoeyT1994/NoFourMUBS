import NoFourMUBs.Boundary
import NoFourMUBs.Step1.Census
import NoFourMUBs.Step2.MatchedUnique
import NoFourMUBs.Step2.AnchorTransport
import NoFourMUBs.Step2.BaseAnchor
import NoFourMUBs.Step2.Connected

/-!
# The end-to-end theorem

**No four MUBs in ℂ⁶**, with every remaining input explicit.

Certificate inputs (finite, checked externally by `certify.py` and the independent Julia checker):
* `A : ι → RecordCert`, a finite atlas of certified Records (Lemmas 3.1 and 3.2 are proved for each);
* `BoundaryTransfers A` (the boundary trees, through Lemma 4.1);
* `htao`: the Tao matrices lie in the atlas;
* the anchor certificates (a matched maximum anchor and the Fourier class lie in the atlas).

Mathematical inputs:
* Step 1's census (`MaximumCensus`): **proved** (`Step1Geo.maximumCensus`, with explicit anchors `Step1Geo.anchors`);
  `no_four_mubs_step1` below has it discharged;
* matched uniqueness (`MatchedUniqueness`): **proved** (`Step2.matchedUniqueness`);
* the reconstruction facts `MatchedExistence` and `MatchedDensityReach`
  (`STEP2_BLUEPRINT.md`; density is the open point of `PROOF.md`'s trust boundary).
-/

open Matrix Hadamard6

namespace NoFourMUBs

theorem no_four_mubs_final {ι : Type*} [Finite ι] (A : ι → RecordCert) (anchors : Finset Step2.StrictSeed)
    (hb : BoundaryTransfers A)
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchors : Step2.MaximumAnchorCertificate (InAtlas A) anchors)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hCensus : Step2.MaximumCensus anchors)
    (hE : Step2.MatchedExistence) (hU : Step2.MatchedUniqueness) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_of_atlas A htao
    (Step2.coverage_of_matched_density (InAtlas A) anchors hE hU hD hCensus (recordClopen_of_atlas A hb)
      hAnchors hFourier)

/-- The end-to-end theorem with the boundary transfers supplied by certified boundary covers (Lemma 4.1). -/
theorem no_four_mubs_of_certificates {ι : Type*} [Finite ι] (A : ι → RecordCert)
    (anchors : Finset Step2.StrictSeed) (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchors : Step2.MaximumAnchorCertificate (InAtlas A) anchors)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hCensus : Step2.MaximumCensus anchors)
    (hE : Step2.MatchedExistence) (hU : Step2.MatchedUniqueness) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_final A anchors (boundaryTransfers_of_covers A hcov) htao hAnchors hFourier hCensus hE hU hD

/-- **The end-to-end theorem with Step 1 proved.**  The anchors are the explicit `18` maxima of `R`
(`Step1Geo.anchors`); what remains is certificates and the three reconstruction facts. -/
theorem no_four_mubs_step1 {ι : Type*} [Finite ι] (A : ι → RecordCert) (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchors : Step2.MaximumAnchorCertificate (InAtlas A) Step1Geo.anchors)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hE : Step2.MatchedExistence) (hU : Step2.MatchedUniqueness) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_of_certificates A Step1Geo.anchors hcov htao hAnchors hFourier Step1Geo.maximumCensus hE hU hD

/-- **The end-to-end theorem with Step 1 and matched uniqueness proved.**  The remaining inputs are the finite
certificates and the two reconstruction facts `MatchedExistence` (L1) and `MatchedDensityReach` (D). -/
theorem no_four_mubs_reduced {ι : Type*} [Finite ι] (A : ι → RecordCert)
    (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchors : Step2.MaximumAnchorCertificate (InAtlas A) Step1Geo.anchors)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hE : Step2.MatchedExistence) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_step1 A hcov htao hAnchors hFourier hE Step2.matchedUniqueness hD

/-- **The end-to-end theorem with a single anchor.**  The 18 maximum anchors are one orbit of the corner moves,
and matched completions transport along them (`Step2.maximumAnchorCertificate_of_base`), so one covered matched
completion at the base anchor replaces the 18 anchor certificates. -/
theorem no_four_mubs_one_anchor {ι : Type*} [Finite ι] (A : ι → RecordCert)
    (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchor : ∃ H : Hadamard6.Had6, Step2.Matched Step2.baseAnchor H ∧ Step2.CoveredMatrix (InAtlas A) H.1)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hE : Step2.MatchedExistence) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs := by
  obtain ⟨H, hH, hc⟩ := hAnchor
  exact no_four_mubs_reduced A hcov htao (Step2.maximumAnchorCertificate_of_base _ hH hc) hFourier hE hD

/-- **The end-to-end theorem with explicit anchors.**  Both remaining anchor inputs are now memberships of
explicit matrices: the base-anchor completion `BaseAnchor.H0` (proved matched, `BaseAnchor.matched_H0`) and the
Fourier matrix.  Remaining inputs: the finite certificates, `MatchedExistence` and `MatchedDensityReach`. -/
theorem no_four_mubs_explicit {ι : Type*} [Finite ι] (A : ι → RecordCert)
    (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hAnchor : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hE : Step2.MatchedExistence) (hD : Step2.MatchedDensityReach) :
    ¬ FourMUBs :=
  no_four_mubs_one_anchor A hcov htao ⟨BaseAnchor.H0had, BaseAnchor.matched_H0, hAnchor⟩ hFourier hE hD

/-- **The end-to-end theorem along the paper's route.**  Step 2 enters as the single statement that the non-Tao
quotient is connected (`PROOF.md` Theorem 2); the only other inputs are the atlas certificate (Records, boundary
covers, Tao membership) and membership of the Fourier matrix. -/
theorem no_four_mubs_connected {ι : Type*} [Finite ι] (A : ι → RecordCert)
    (hcov : ∀ l, Nonempty (BoundaryCover A l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hFourier : Step2.FourierAnchorCertificate (InAtlas A))
    (hX : Step2.NonTaoPreconnected) :
    ¬ FourMUBs :=
  no_four_mubs_of_atlas A htao
    (Step2.coverage_of_connected (InAtlas A) hX (recordClopen_of_atlas A (boundaryTransfers_of_covers A hcov))
      hFourier)

end NoFourMUBs
