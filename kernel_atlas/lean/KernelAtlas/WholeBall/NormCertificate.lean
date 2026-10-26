import KernelAtlas.WholeBall.MatrixEnclosure

/-! A common exact norm-certificate interface. Both Gram orientations preserve
spectral cancellation; Frobenius is an explicitly selected fallback. -/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace NoFourMUBs.KernelAtlas.WholeBall

inductive NormWitness (m n : ℕ) where
  | columns (factors : PSDWitness n)
  | rows (factors : PSDWitness m)
  | frobenius

def normWitnessCheck {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) (b : ℚ)
    (W : NormWitness m n) : Bool :=
  match W with
  | .columns factors => spectralCheck A b factors
  | .rows factors => spectralCheck Aᵀ b factors
  | .frobenius => frobeniusCheck A b

theorem normWitnessCheck_sound {m n : ℕ} {A : Matrix (Fin m) (Fin n) ℚ} {b : ℚ}
    {W : NormWitness m n} (h : normWitnessCheck A b W = true) :
    ‖eucMap (realMatrix A)‖ ≤ (b : ℝ) := by
  cases W with
  | columns factors => exact spectralCheck_sound h
  | rows factors => exact spectralCheck_transpose_sound h
  | frobenius => exact frobeniusCheck_sound h

structure NormCertificate (m n : ℕ) where
  midpointBound : ℚ
  errorBound : ℚ
  witness : NormWitness m n

def MatrixBox.certifyNorm {m n : ℕ} (A : MatrixBox m n) (b : ℚ)
    (C : NormCertificate m n) : Bool :=
  normWitnessCheck A.mid C.midpointBound C.witness &&
    frobeniusCheck A.rad C.errorBound && decide (C.midpointBound + C.errorBound ≤ b)

theorem MatrixBox.certifyNorm_sound {m n : ℕ} {A : MatrixBox m n}
    {a : Matrix (Fin m) (Fin n) ℝ} (ha : A.Has a) {b : ℚ} {C : NormCertificate m n}
    (h : A.certifyNorm b C = true) : ‖eucMap a‖ ≤ (b : ℝ) := by
  simp only [certifyNorm, Bool.and_eq_true, decide_eq_true_eq] at h
  have hm := normWitnessCheck_sound h.1.1
  have he := MatrixBox.error_bound ha h.1.2
  have hs : (C.midpointBound : ℝ) + C.errorBound ≤ b := by exact_mod_cast h.2
  change ‖a‖ ≤ (b : ℝ)
  calc
    _ ≤ ‖realMatrix A.mid‖ + ‖a - realMatrix A.mid‖ := by
      convert norm_add_le (realMatrix A.mid) (a - realMatrix A.mid) using 1
      abel_nf
    _ ≤ (C.midpointBound : ℝ) + C.errorBound := add_le_add hm he
    _ ≤ _ := hs

end NoFourMUBs.KernelAtlas.WholeBall
