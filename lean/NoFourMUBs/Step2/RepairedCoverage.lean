import NoFourMUBs.Step2.Frames
import NoFourMUBs.Step2.SOSAlgebra

/-!
The repaired pointwise coverage proof. This uses the SAME `Matched` relation,
Hadamard subtype, equivalence, and density theorem as the repository.

The three named propositions below are proof obligations, not axioms or
certificates that have already been instantiated. In particular, the
finite moment calculation must be connected to `ConditionalSOS` in Lean.
-/

open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2

/-- Universal actual-side identities. Their singular cases are included. -/
def FrameScalarIdentities : Prop :=
  ∀ (H : Had6) (f : Frame),
    2 * (frameRight H f).re = seedChi (frameSeed H f) ∧
    2 * (frameLower H f).re = seedChi (frameSeed H f) ∧
    4 * (frameRight H f).im ^ 2 = seedR (frameSeed H f) ∧
    4 * (frameLower H f).im ^ 2 = seedR (frameSeed H f)

def frameWeight : ℝ := (Fintype.card Frame : ℝ)⁻¹

theorem frameWeight_pos : 0 < frameWeight := by
  apply inv_pos.mpr
  exact_mod_cast Fintype.card_pos (α := Frame)

/-- The balanced exponent array has -2 on the diagonal and +1 elsewhere. -/
def cubicMonomial (B : Mat3) : ℂ :=
  ∏ i, ∏ j, if i = j then star (B i j) ^ 2 else B i j

def cubicMoment (H : Had6) : ℂ :=
  (frameWeight : ℂ) * ∑ f : Frame, cubicMonomial (leadingBlock (permuted H f).1)

/-- The exact conditional identity to be supplied by the Fourier/moment
certificate. All symbols refer to the actual input matrix. -/
def ConditionalSOS : Prop :=
  ∀ H : Had6, ¬ IsTaoOrbit H.1 → SameLabels H →
    frameWeight * (∑ f : Frame,
      Complex.normSq (frameRight H f - star (frameLower H f))) +
      (30 * (cubicMoment H).re - 3) ^ 2 = 0

/-- The independent all-critical classification, still requiring a Lean proof. -/
def CriticalClassification : Prop :=
  ∀ H : Had6, AllCritical H → Equivalent H.1 fourierHadamard.1

theorem inMatchedOrbit_of_equivalent {H K : Had6}
    (hHK : Equivalent H.1 K.1) (hK : InMatchedOrbit K) : InMatchedOrbit H := by
  obtain ⟨s, J, hJ, h | h⟩ := hK
  · exact ⟨s, J, hJ, Or.inl (equivalent_trans hHK h)⟩
  · exact ⟨s, J, hJ, Or.inr (equivalent_trans hHK h)⟩

/-- No matched frame forces equality of adjacent signatures, even at singular
or critical corners. The denominator-free identities remove that case split. -/
theorem sameLabels_of_not_matched (hscalar : FrameScalarIdentities)
    {H : Had6} (hnot : ¬ InMatchedOrbit H) : SameLabels H := by
  intro f
  by_contra hne
  obtain ⟨ha, hb, haR, hbR⟩ := hscalar H f
  obtain ⟨hR, hpos | hneg⟩ := differing_signatures_are_matched ha hb haR hbR hne
  · apply hnot
    refine ⟨⟨frameSeed H f, hR⟩, framed H f,
      ⟨framed_dephased H f, leadingBlock_eq_seed (framed_dephased H f),
        hpos.1, hpos.2⟩, Or.inl (equivalent_framed H f)⟩
  · exact hnot (inMatchedOrbit_of_equivalent (equivalent_framed H f)
      (matched_orbit_of_negative (framed_dephased H f)
        (leadingBlock_eq_seed (framed_dephased H f)) hR hneg.1 hneg.2))

/-- Our coverage repair, with its remaining algebraic/classification inputs
explicit. Neither universal matching at every frame nor connectedness is used. -/
theorem repaired_exactReach (hscalar : FrameScalarIdentities)
    (hsos : ConditionalSOS) (hcritical : CriticalClassification) : MatchedExactReach := by
  intro H hTao
  by_cases hm : InMatchedOrbit H
  · exact Or.inr hm
  · have hsame := sameLabels_of_not_matched hscalar hm
    apply Or.inl
    apply hcritical H
    exact all_critical_of_same_and_sos (frameRight H) (frameLower H)
      (fun f => seedR (frameSeed H f)) frameWeight_pos
      (fun f => (hscalar H f).2.2.1.symm) hsame (hsos H hTao hsame)

end NoFourMUBs.Step2
