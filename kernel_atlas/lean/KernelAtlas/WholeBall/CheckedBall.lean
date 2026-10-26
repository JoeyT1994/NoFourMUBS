import KernelAtlas.WholeBall.CompleteFamily
import KernelAtlas.WholeBall.CentreFourierCheck
import KernelAtlas.WholeBall.NormCertificate

/-! The complete Boolean centre-to-ball gate. Its soundness fixes W to the
exact Gram left inverse and discharges every analytic premise from the same
certified matched centre. Generated leaves can be checked independently. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.SeedAtlas.Method.WholeBall NoFourMUBs.KernelAtlas.Seed
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 0

namespace NoFourMUBs.KernelAtlas.WholeBall

structure WholeBallData where
  gram : CentreGramData
  jets : CentreJetData
  fourier : CentreFourierData
  finite : FiniteData 90 21
  phase : MatrixBox 36 1
  horizontal : SideCentreData
  vertical : SideCentreData
  horizontalNorm : SideNormData
  verticalNorm : SideNormData
  record : RecordErrorData
  scalar : ScalarData
  betaCertificate : NormCertificate 36 16
  uCertificate : NormCertificate 36 4

/-- All inputs of the semantic theorem are verified here. The equality between
Fourier arrays is checked explicitly to prevent a disconnected bound table. -/
def wholeBallCheck (B : BallD) (D : BoxD) (M : Matrix (Fin 4) (Fin 4) ℚ)
    (P : Matrix (Fin 36) (Fin 1) ℚ) (V : Matrix (Fin 36) (Fin 4) ℚ)
    (C : WholeBallData) : Bool :=
  regularCentreCheck B D &&
  centreGramCheck B D BasisNorm.matrix C.gram &&
  centreJetCheck B D BasisNorm.matrix seedLift M C.gram C.jets &&
  centreFourierCheck B D BasisNorm.matrix C.jets C.fourier &&
  C.fourier.fourier.K0.enclosesCheck C.finite.fourier.K0 &&
  C.fourier.fourier.K1.enclosesCheck C.finite.fourier.K1 &&
  C.fourier.fourier.S.enclosesCheck C.finite.fourier.S &&
  C.fourier.fourier.T.enclosesCheck C.finite.fourier.T &&
  C.fourier.fourier.D.enclosesCheck C.finite.fourier.D &&
  C.finite.tensorCheck && C.finite.normCheck C.scalar.bounds && C.finite.sumCheck C.scalar.bounds &&
  C.jets.H.certifyNorm C.scalar.bounds.beta C.betaCertificate &&
  C.jets.U.certifyNorm C.scalar.bounds.u C.uCertificate &&
  decide (BasisNorm.bound ≤ C.scalar.bounds.x) &&
  (centrePhaseBox B D).enclosesCheck C.phase &&
  sideCentreCheck C.phase false C.horizontal && sideCentreCheck C.phase true C.vertical &&
  sideNormCheck false C.horizontal.gradient C.jets.U C.jets.H BasisNorm.matrix C.horizontalNorm C.scalar.horizontal &&
  sideNormCheck true C.vertical.gradient C.jets.U C.jets.H BasisNorm.matrix C.verticalNorm C.scalar.vertical &&
  sideSignedCheck C.horizontal B.o C.scalar.horizontal.signedCentre &&
  sideSignedCheck C.vertical (-B.o) C.scalar.vertical.signedCentre &&
  recordErrorCheck C.phase C.jets.U P V C.record C.scalar.bounds.epsP C.scalar.bounds.epsU &&
  scalarCheck C.scalar

theorem wholeBallCheck_sound {B : BallD} {D : BoxD} {M : Matrix (Fin 4) (Fin 4) ℚ}
    {P : Matrix (Fin 36) (Fin 1) ℚ} {V : Matrix (Fin 36) (Fin 4) ℚ}
    {C : WholeBallData} {o : ℤˣ} (ho : B.o = (o : ℤ))
    (h : wholeBallCheck B D M P V C = true) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ (C.scalar.bounds.r : ℝ) →
      0 < seedR (seedOf (th0R B + realMatrix M *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
        RepO o (seedOf (th0R B + realMatrix M *ᵥ w)) (phaseMat Q) ∧
        frob (Q - recordPhase P - tang (phaseFrame (realMatrix V)) w - wind N) ≤ (C.scalar.bounds.n : ℝ) := by
  simp only [wholeBallCheck, Bool.and_eq_true] at h
  rcases h with ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hc, hg⟩, hj⟩, hf⟩, hK0⟩, hK1⟩, hS⟩, hT⟩, hD⟩,
    htensor⟩, hnorm⟩, hsum⟩, hbeta⟩, _hu⟩, hx⟩, hphase⟩, hscH⟩, hscV⟩, hsnH⟩, hsnV⟩, hsignH⟩, hsignV⟩, hrecord⟩, hscalar⟩
  obtain ⟨q⟩ := certifiedCentreCheck_sound hc ho
  let J := centreJacobian (phaseMat q.phase)
  let X := realMatrix BasisNorm.matrix
  let W := centreProjection J X
  let U := tangentPredictor (realMatrix seedLift) X W J (realMatrix M)
  let H₂ := secondJet X W (phaseSecondTensor (phaseMat q.phase) U U)
  obtain ⟨_, _, hi, _⟩ := centreGramCheck_sound q.entry_models hg
  obtain ⟨hW, hU, _, hH, _, _⟩ := centreJetCheck_sound q.entry_models hg hj
  have hZ : C.jets.Z.Has (realCoefficients (phaseMat q.phase)) := by
    have hj' := hj
    simp only [centreJetCheck, Bool.and_eq_true] at hj'
    exact (coefficientBox_sound q.entry_models).enlarge hj'.1.1.1.2
  have hfourier := centreFourierCheck_sound q.entry_models hW hU hH hZ hf
  have hfinite : C.finite.fourier.Has (centreFourier (phaseMat q.phase) W U H₂ X) :=
    ⟨hfourier.K0.enlarge hK0, hfourier.K1.enlarge hK1, hfourier.S.enlarge hS,
      hfourier.T.enlarge hT, hfourier.D.enlarge hD⟩
  obtain ⟨hone, htwo, hnormal⟩ := centreFourier_cancel (phaseMat q.phase)
    (realMatrix seedLift) X (realMatrix M) hi
  have hHad : Hadamard6.IsHadamard (phaseMat q.phase) := by
    obtain ⟨qs, _, heq, hlocal⟩ := q.phase_germ
    have hh := Filter.Eventually.self_of_nhds hlocal
    simpa only [heq] using hh.2.2.1
  have hb := C.finite.sound C.scalar.bounds _ hfinite htensor hnorm hsum
    (centreFourier_zero hHad W U H₂ X) hone htwo hnormal
  have hp : C.phase.Has (fun a _ => flatPhase q.phase a) :=
    (centrePhaseBox_sound q.phase_models).enlarge hphase
  obtain ⟨hgH, hsH⟩ := sideCentreCheck_sound hp hscH
  obtain ⟨hgV, hsV⟩ := sideCentreCheck_sound hp hscV
  have hψH := sideSignedCheck_sound hsH hsignH
  have hψV := sideSignedCheck_sound hsV hsignV
  simp only [sidePhase_block, Bool.false_eq_true, Bool.true_eq, if_false, if_true] at hψH hψV
  have hos : osgn o = (B.o : ℝ) := by simp [osgn, ho]
  obtain ⟨hP, hV⟩ := recordErrorCheck_sound hp hU hrecord
  apply q.hC1 W U H₂ (realMatrix M) (realBounds C.scalar.bounds)
    (realSide C.scalar.horizontal) (realSide C.scalar.vertical) _ _ _ _ hb
    (tangent_horizontal J W _) (second_horizontal W _)
    (seed_tangent _ _ _ _ _ _ seedLift_real_identity frozenBasis_seed)
    (seed_secondJet _ _ _ _ frozenBasis_seed)
    (MatrixBox.certifyNorm_sound hH hbeta) ?_
    (sideNormCheck_sound hgH hU hH hsnH) (sideNormCheck_sound hgV hU hH hsnV)
    (by simpa only [realSide, hos] using hψH)
    (by simpa only [realSide, hos, Int.cast_neg] using hψV)
    (scalarCheck_sound hscalar) (recordPhase P) (phaseFrame (realMatrix V)) hP hV
  apply BasisNorm.norm_bound.trans
  change (BasisNorm.bound : ℝ) ≤ (C.scalar.bounds.x : ℝ)
  exact_mod_cast of_decide_eq_true hx

end NoFourMUBs.KernelAtlas.WholeBall
