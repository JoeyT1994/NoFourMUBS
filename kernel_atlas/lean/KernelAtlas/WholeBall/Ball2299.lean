import KernelAtlas.WholeBall.Ball2299Centre
import KernelAtlas.WholeBall.Ball2299Sides
import KernelAtlas.WholeBall.Ball2299Record
import KernelAtlas.WholeBall.Fourier2299

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall.Ball2299

theorem linkK0 : data.fourier.fourier.K0.enclosesCheck data.finite.fourier.K0 = true := by decide +kernel

theorem linkK1 : data.fourier.fourier.K1.enclosesCheck data.finite.fourier.K1 = true := by decide +kernel

theorem linkS : data.fourier.fourier.S.enclosesCheck data.finite.fourier.S = true := by decide +kernel

theorem linkT : data.fourier.fourier.T.enclosesCheck data.finite.fourier.T = true := by decide +kernel

theorem linkD : data.fourier.fourier.D.enclosesCheck data.finite.fourier.D = true := by decide +kernel

theorem seedLift_checked : seedLift = Jets2299.V := by decide +kernel

theorem checked : wholeBallCheck Centre2299.ball Centre2299.centre Jets2299.M P V data = true := by
  simp only [wholeBallCheck, Bool.and_eq_true]
  refine ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨Centre2299.checked, Gram2299.checked⟩, ?_⟩, fourier_checked⟩, linkK0⟩, linkK1⟩, linkS⟩, linkT⟩, linkD⟩,
    Fourier2299.tensors_checked⟩, Fourier2299.norms_checked⟩, Fourier2299.sums_checked⟩, Jets2299.beta_checked⟩, Jets2299.u_checked⟩, by decide +kernel⟩,
    phase_checked⟩, horizontal_centre_checked⟩, vertical_centre_checked⟩, horizontal_norm_checked⟩, vertical_norm_checked⟩,
    horizontal_sign_checked⟩, vertical_sign_checked⟩, record_checked⟩, scalar_checked⟩
  change centreJetCheck Centre2299.ball Centre2299.centre BasisNorm.matrix seedLift Jets2299.M Gram2299.data Jets2299.data = true
  simpa only [seedLift_checked] using Jets2299.checked

theorem radius_positive : 0 < (data.scalar.bounds.r : ℝ) :=
  (scalarCheck_sound scalar_checked).2.2.2.1

-- Exact stored-data conclusion, ready for SeedBallCert.hC1.
theorem hC1 : ∀ w : Fin 4 → ℝ, SeedAtlas.wnorm w ≤ (data.scalar.bounds.r : ℝ) →
    0 < Step2.seedR (SeedAtlas.seedOf (Seed.th0R Centre2299.ball + realMatrix Jets2299.M *ᵥ w)) ∧
    ∃ Q : RMat6, ∃ N : Matrix Hadamard6.I6 Hadamard6.I6 ℤ,
      SeedAtlas.RepO (1 : ℤˣ) (SeedAtlas.seedOf (Seed.th0R Centre2299.ball + realMatrix Jets2299.M *ᵥ w)) (phaseMat Q) ∧
      frob (Q - recordPhase P - SeedAtlas.tang (phaseFrame (realMatrix V)) w - SeedAtlas.wind N) ≤ (data.scalar.bounds.n : ℝ) :=
  wholeBallCheck_sound (o := (1 : ℤˣ))
  (by decide +kernel) checked

end NoFourMUBs.KernelAtlas.WholeBall.Ball2299
