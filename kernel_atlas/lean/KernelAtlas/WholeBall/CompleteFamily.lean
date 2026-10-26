import KernelAtlas.WholeBall.CentreFamily
import KernelAtlas.WholeBall.BasisIdentities
import KernelAtlas.WholeBall.SideNormCheck
import KernelAtlas.WholeBall.RecordCheck
import NoFourMUBs.SeedAtlas.Method.WholeBallOrientation

/-! Z §§4–6, including the stored-data correction: a concrete local matched
centre and verified finite bounds imply the complete `SeedBallCert.hC1` claim. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.SeedAtlas.Method.WholeBall NoFourMUBs.KernelAtlas.Seed
open Metric Set
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

theorem CertifiedCentre.hC1 {B : BallD} {D : BoxD} {o : ℤˣ}
    (C : CertifiedCentre B D o) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (M : Matrix (Fin 4) (Fin 4) ℝ)
    (b : Bounds ℝ) (sH sV : SideBounds ℝ) (cn sn tn dn : Fin 90 → ℝ)
    (hf : FiniteCentreBounds
      (centreFourier (phaseMat C.phase) W U H₂ (realMatrix BasisNorm.matrix)).model b cn sn tn dn)
    (hU : realMatrix horizontalMatrix * U = U) (hH : realMatrix horizontalMatrix * H₂ = H₂)
    (hLU : realMatrix seedMatrix * U = M) (hLH : realMatrix seedMatrix * H₂ = 0)
    (hbeta : ‖eucMap H₂‖ ≤ b.beta) (hx : ‖eucMap (realMatrix BasisNorm.matrix)‖ ≤ b.x)
    (hsH : SideFiniteBounds false C.phase U H₂ (realMatrix BasisNorm.matrix) sH)
    (hsV : SideFiniteBounds true C.phase U H₂ (realMatrix BasisNorm.matrix) sV)
    (hψH : sH.signedCentre ≤ osgn o * (psi (rightBlock (phaseMat C.phase))).im)
    (hψV : sV.signedCentre ≤ -osgn o * (psi (lowerBlock (phaseMat C.phase))).im)
    (ha : b.Accepts sH sV) (P : RMat6) (V : Fin 4 → RMat6)
    (hP : frob (hor C.phase - P) ≤ b.epsP)
    (hV : ∀ w, frob (tang (phaseFrame U) w - tang V w) ≤ b.epsU * wnorm w) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ b.r →
      0 < seedR (seedOf (th0R B + M *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
        RepO o (seedOf (th0R B + M *ᵥ w)) (phaseMat Q) ∧
        frob (Q - P - tang V w - wind N) ≤ b.n := by
  rcases ha with ⟨hn, _, _, hr, hτ, hq, hb, hmH, hmV, hnrecord⟩
  obtain ⟨z, hz, _, _⟩ := C.full_family W U H₂ M b cn sn tn dn hf hU hH hLU hLH hn hr hτ hq hb
  apply hC1_of_representatives (Pexact := hor C.phase) (Uexact := phaseFrame U)
    (ndirect := b.ndirect) hn.2.2.2.2.2.2.2.2.2.2.2.2 hP hV hnrecord
  intro w hw
  let we : EuclideanSpace ℝ (Fin 4) := WithLp.toLp 2 w
  have hw' : ‖we‖ ≤ b.r := by simpa only [wnorm_eq_euclidean] using hw
  have hmem : we ∈ closedBall 0 b.r := by simpa only [mem_closedBall, dist_zero_right] using hw'
  obtain ⟨hzw, hHad⟩ := hz we hmem
  let Q := C.phase + predictorIncrement U H₂ (realMatrix BasisNorm.matrix) we (z we)
  have hL : cornerTheta Q 1 1 = th0R B + M *ᵥ w := by
    rw [show Q = C.phase + predictorIncrement U H₂ (realMatrix BasisNorm.matrix) we (z we) from rfl,
      seedPhase_add, C.seed_eq, predictorIncrement_seed U H₂ _ M hLU hLH frozenBasis_seed]
  have hvarH := hsH.variation b hw' hzw.le
  have hvarV := hsV.variation b hw' hzw.le
  simp only [sidePhase_block, Bool.false_eq_true, Bool.true_eq, if_false, if_true] at hvarH hvarV
  obtain ⟨hR, hrep⟩ := horizontal_rep_of_margins (o := o) hHad hL hvarH hvarV
    (by unfold SideBounds.margin at hmH; linarith)
    (by unfold SideBounds.margin at hmV; linarith)
  refine ⟨hR, hor Q, hrep, ?_⟩
  apply direct_remainder hw hn.2.2.1
    (Hnormal := phaseMap H₂ (tensorPair we we))
    (Znormal := phaseMap (realMatrix BasisNorm.matrix) (z we))
  · have ht := frob_phaseMap_le H₂ hbeta (tensorPair we we)
    rw [norm_tensorPair we we] at ht
    simpa only [wnorm_eq_euclidean, pow_two] using ht
  · exact (frob_phaseMap_le _ hx _).trans (mul_le_mul_of_nonneg_left hzw.le hn.1)
  · have hhor := hor_of_horizontal (predictorIncrement_horizontal U H₂
      (realMatrix BasisNorm.matrix) hU hH frozenBasis_horizontal we (z we))
    rw [show Q = C.phase + predictorIncrement U H₂ (realMatrix BasisNorm.matrix) we (z we) from rfl,
      hor_add, hhor, phaseFrame_tang]
    dsimp [predictorIncrement, we]
    abel

end NoFourMUBs.KernelAtlas.WholeBall
