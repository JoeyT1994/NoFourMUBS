import NoFourMUBs.Step2.FourierModelBridge
import OAI.Analysis.MutuallyUnbiased.Tao.Tao

/-! Identify the two explicit Tao representatives before using Fourier vanishing. -/

open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2.FourierBridge

def taoPermutation : Equiv.Perm I6 := Equiv.swap (.inr 0) (.inr 2)

theorem fromOAI_tao :
    fromOAI OAI.MUB6.tao =
      (taoMatrix OAI.MUB6.omega).submatrix taoPermutation taoPermutation := by
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [fromOAI, coordinates, OAI.MUB6.tao, OAI.MUB6.taoExponent,
      taoMatrix, taoPermutation, finSumFinEquiv, Equiv.swap_apply_def]

theorem tao_fromOAI_in_orbit : IsTaoOrbit (fromOAI OAI.MUB6.tao) := by
  have hω : IsPrimitiveCubicPhase OAI.MUB6.omega := by
    refine ⟨OAI.MUB6.omega_normSq, ?_⟩
    linear_combination OAI.MUB6.omega_sum
  refine ⟨OAI.MUB6.omega, hω, equivalent_symm ?_⟩
  refine ⟨taoPermutation, taoPermutation, fun _ => 1, fun _ => 1,
    fun _ => by simp, fun _ => by simp, ?_⟩
  intro i j
  rw [fromOAI_tao]
  simp

theorem nonTao_toOAI {H : Mat6} (hH : ¬ IsTaoOrbit H) :
    ¬ OAI.MUB6.Equivalent (toOAI H) OAI.MUB6.tao := by
  intro heq
  exact hH (isTaoOrbit_of_equivalent (equivalent_fromOAI heq) tao_fromOAI_in_orbit)

theorem oai_equivalent_transpose {H K : OAI.MUB6.CMatrix}
    (h : OAI.MUB6.Equivalent H K) :
    OAI.MUB6.Equivalent H.transpose K.transpose := by
  obtain ⟨r, c, u, v, hu, hv, h⟩ := h
  refine ⟨c, r, v, u, hv, hu, ?_⟩
  intro i j
  simpa only [Matrix.transpose_apply, mul_comm, mul_left_comm, mul_assoc] using h j i

theorem oai_tao_transpose : OAI.MUB6.tao.transpose = OAI.MUB6.tao := by
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem nonTao_toOAI_transpose {H : Mat6} (hH : ¬ IsTaoOrbit H) :
    ¬ OAI.MUB6.Equivalent (toOAI H).transpose OAI.MUB6.tao := by
  intro h
  have ht := oai_equivalent_transpose h
  rw [Matrix.transpose_transpose, oai_tao_transpose] at ht
  exact nonTao_toOAI hH ht

end NoFourMUBs.Step2.FourierBridge
