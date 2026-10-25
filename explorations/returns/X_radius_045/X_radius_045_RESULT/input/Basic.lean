import Mathlib
import NoFourMUBs.Lib.Hadamard

/-!
# Mutually unbiased bases in `ℂ⁶` and quartet edges

We reuse the matrix model of the upstream classification (`Hadamard6.Mat6`, `Hadamard6.IsHadamard`).
An orthonormal basis of `ℂ⁶` is recorded as the columns of a unitary matrix.

* `Unbiased U V`: every entry of `Uᴴ * V` has squared modulus `1/6`.
* `FourMUBs`: four pairwise unbiased orthonormal bases exist.
* `QuartetEdge H`: the bases `1` and `H/√6` extend to four mutually unbiased bases.

Main result: `exists_quartetEdge_of_fourMUBs` — four MUBs give a Hadamard quartet edge.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- The columns of `U` form an orthonormal basis. -/
def IsUnitary (U : Mat6) : Prop := U * Uᴴ = 1 ∧ Uᴴ * U = 1

/-- Two orthonormal bases are mutually unbiased. -/
def Unbiased (U V : Mat6) : Prop := ∀ i j, Complex.normSq ((Uᴴ * V) i j) = 1 / 6

/-- Four mutually unbiased bases exist in `ℂ⁶`. -/
def FourMUBs : Prop :=
  ∃ U : Fin 4 → Mat6, (∀ k, IsUnitary (U k)) ∧ ∀ k l, k ≠ l → Unbiased (U k) (U l)

/-- `H` is a quartet edge: `1` and `H/√6` extend to four mutually unbiased bases. -/
def QuartetEdge (H : Mat6) : Prop :=
  ∃ K L : Mat6, IsUnitary K ∧ IsUnitary L ∧
    Unbiased 1 K ∧ Unbiased 1 L ∧
    Unbiased (((Real.sqrt 6 : ℂ))⁻¹ • H) K ∧ Unbiased (((Real.sqrt 6 : ℂ))⁻¹ • H) L ∧
    Unbiased K L

lemma sqrt6_ne_zero : ((Real.sqrt 6 : ℝ) : ℂ) ≠ 0 := by
  have : (0 : ℝ) < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  exact_mod_cast this.ne'

lemma normSq_sqrt6 : Complex.normSq ((Real.sqrt 6 : ℝ) : ℂ) = 6 := by
  rw [Complex.normSq_ofReal]
  exact Real.mul_self_sqrt (by norm_num)

/-- Changing frame by a unitary: `(W ᴴ U)ᴴ (Wᴴ V) = Uᴴ V` when `W Wᴴ = 1`. -/
lemma frame_change {W U V : Mat6} (hW : W * Wᴴ = 1) :
    (Wᴴ * U)ᴴ * (Wᴴ * V) = Uᴴ * V := by
  rw [conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc, ← Matrix.mul_assoc W, hW,
    Matrix.one_mul]

lemma unbiased_frame {W U V : Mat6} (hW : W * Wᴴ = 1) (h : Unbiased U V) :
    Unbiased (Wᴴ * U) (Wᴴ * V) := by
  intro i j; rw [frame_change hW]; exact h i j

lemma isUnitary_frame {W U : Mat6} (hW : IsUnitary W) (hU : IsUnitary U) : IsUnitary (Wᴴ * U) := by
  refine ⟨?_, ?_⟩
  · rw [conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc, ← Matrix.mul_assoc U,
      hU.1, Matrix.one_mul, hW.2]
  · rw [frame_change hW.1, hU.2]

/-- Four MUBs give a Hadamard matrix that is a quartet edge. -/
theorem exists_quartetEdge_of_fourMUBs (h : FourMUBs) :
    ∃ H : Mat6, Hadamard6.IsHadamard H ∧ QuartetEdge H := by
  obtain ⟨U, hU, hUb⟩ := h
  -- move to the frame of the first basis
  set V : Fin 4 → Mat6 := fun k => (U 0)ᴴ * U k with hV
  have hVu : ∀ k, IsUnitary (V k) := fun k => isUnitary_frame (hU 0) (hU k)
  have hVb : ∀ k l, k ≠ l → Unbiased (V k) (V l) := fun k l hkl =>
    unbiased_frame (hU 0).1 (hUb k l hkl)
  have hV0 : V 0 = 1 := (hU 0).2
  set s : ℂ := ((Real.sqrt 6 : ℝ) : ℂ)
  have hs : s ≠ 0 := sqrt6_ne_zero
  have hent : Hadamard6.EntrywiseUnit (s • V 1) := by
    intro i j
    have h01 := hVb 0 1 (by decide) i j
    rw [hV0, conjTranspose_one, Matrix.one_mul] at h01
    rw [Matrix.smul_apply, smul_eq_mul, Complex.normSq_mul, normSq_sqrt6, h01]; norm_num
  have hgram : (s • V 1) * (s • V 1)ᴴ = (6 : ℂ) • (1 : Mat6) := by
    rw [conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul, smul_smul, (hVu 1).1]
    congr 1
    rw [show star s = s from by simp [s, Complex.conj_ofReal]]
    rw [← Complex.ofReal_mul, Real.mul_self_sqrt (by norm_num)]; norm_num
  have hres : (((Real.sqrt 6 : ℝ) : ℂ))⁻¹ • (s • V 1) = V 1 := by
    rw [smul_smul, inv_mul_cancel₀ hs, one_smul]
  have h12 : Unbiased 1 (V 2) := by have := hVb 0 2 (by decide); rwa [hV0] at this
  have h13 : Unbiased 1 (V 3) := by have := hVb 0 3 (by decide); rwa [hV0] at this
  refine ⟨s • V 1, ⟨hent, hgram⟩, V 2, V 3, hVu 2, hVu 3, h12, h13, ?_, ?_, hVb 2 3 (by decide)⟩
  · rw [hres]; exact hVb 1 2 (by decide)
  · rw [hres]; exact hVb 1 3 (by decide)

end NoFourMUBs
