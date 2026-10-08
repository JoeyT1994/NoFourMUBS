import D0RawWitness
import NormalizePhaseBases
namespace Mub6.Numerical.D0Local
open PhaseNormalization

def carrier : CarrierRegion :=
  ![![⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩],
    ![⟨1, 1, 0, 0⟩, ⟨-1, -1, 0, 0⟩, ⟨0, 0, 1, 1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, 1, 1⟩],
    ![⟨1, 1, 0, 0⟩, ⟨0, 0, 1, 1⟩, ⟨-1, -1, 0, 0⟩, ⟨0, 0, 1, 1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, -1, -1⟩],
    ![⟨1, 1, 0, 0⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, 1, 1⟩, ⟨-1, -1, 0, 0⟩, ⟨0, 0, 1, 1⟩, ⟨0, 0, -1, -1⟩],
    ![⟨1, 1, 0, 0⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, 1, 1⟩, ⟨-1, -1, 0, 0⟩, ⟨0, 0, 1, 1⟩],
    ![⟨1, 1, 0, 0⟩, ⟨0, 0, 1, 1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, -1, -1⟩, ⟨0, 0, 1, 1⟩, ⟨-1, -1, 0, 0⟩]]

theorem d0_mem_carrier : CarrierBox carrier d0 := by
  intro r k
  fin_cases r <;> fin_cases k
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨-1, -1, 0, 0⟩ (⟨-1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨-1, -1, 0, 0⟩ (⟨-1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨-1, -1, 0, 0⟩ (⟨-1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨-1, -1, 0, 0⟩ (⟨-1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨1, 1, 0, 0⟩ (⟨1, 0⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, -1, -1⟩ (⟨0, -1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨0, 0, 1, 1⟩ (⟨0, 1⟩ : ℂ)
    norm_num [MemRectangle]
  · change MemRectangle ⟨-1, -1, 0, 0⟩ (⟨-1, 0⟩ : ℂ)
    norm_num [MemRectangle]

theorem d0_phaseHadamard : PhaseHadamard d0 := by
  refine ⟨d0_unit, ?_⟩
  ext i j
  change overlap d0 d0 i j = (6 : ℂ) * (if i = j then 1 else 0)
  rw [d0_gram]
  by_cases hij : i = j <;> norm_num [hij]

theorem d0_cell_nonempty : ∃ H, PhaseHadamard H ∧ CarrierBox carrier H :=
  ⟨d0, d0_phaseHadamard, d0_mem_carrier⟩

noncomputable def triple : Fin 3 → BasisMatrix :=
  ![standard, normalize d0, normalize thirdRaw]

def IsMUBTriple (B : Fin 3 → BasisMatrix) : Prop :=
  (∀ a, IsOrthonormalBasis (B a)) ∧
    ∀ a b, a ≠ b → IsUnbiased (B a) (B b)

theorem triple_orthonormal : ∀ a, IsOrthonormalBasis (triple a) := by
  intro a
  fin_cases a
  · exact standard_basis
  · exact normalized_orthonormal d0_gram
  · exact normalized_orthonormal thirdRaw_gram

theorem triple_unbiased : ∀ a b, a ≠ b → IsUnbiased (triple a) (triple b) := by
  intro a b hab
  fin_cases a <;> fin_cases b
  · exact False.elim (hab rfl)
  · exact standard_normalized_unbiased d0_unit
  · exact standard_normalized_unbiased thirdRaw_unit
  · exact unbiased_symm (standard_normalized_unbiased d0_unit)
  · exact False.elim (hab rfl)
  · exact normalized_unbiased d0_thirdRaw_unbiased
  · exact unbiased_symm (standard_normalized_unbiased thirdRaw_unit)
  · exact unbiased_symm (normalized_unbiased d0_thirdRaw_unbiased)
  · exact False.elim (hab rfl)

theorem three_mub_control : IsMUBTriple triple :=
  ⟨triple_orthonormal, triple_unbiased⟩

theorem d0_supports_three_mubs : ∃ B, IsMUBTriple B ∧
    B 0 = standard ∧ B 1 = normalize d0 :=
  ⟨triple, three_mub_control, rfl, rfl⟩

#print axioms d0_mem_carrier
#print axioms d0_phaseHadamard
#print axioms d0_cell_nonempty
#print axioms three_mub_control
#print axioms d0_supports_three_mubs
end Mub6.Numerical.D0Local
