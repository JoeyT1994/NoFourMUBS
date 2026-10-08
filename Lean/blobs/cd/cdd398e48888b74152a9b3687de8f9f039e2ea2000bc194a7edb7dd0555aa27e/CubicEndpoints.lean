import Worker12.ContinuousBindings
import Worker12.NonphysicalEndpoints
import Worker12.Endpoint0102
import Worker12.Endpoint0111
import Worker12.Endpoint0120
import Worker12.Endpoint0201
import Worker12.Endpoint0210
import Worker12.Endpoint0222
import Worker12.Endpoint1002
import Worker12.Endpoint1011
import Worker12.Endpoint1020
import Worker12.Endpoint1101
import Worker12.Endpoint1110
import Worker12.Endpoint1122
import Worker12.Endpoint2001
import Worker12.Endpoint2010
import Worker12.Endpoint2022
import Worker12.Endpoint2202
import Worker12.Endpoint2211
import Worker12.Endpoint2220

namespace Worker12

theorem cubic_seed_pure_A {ω : ℂ} (hωu : Complex.normSq ω = 1)
    (hω : ω ^ 2 + ω + 1 = 0) (a b c d : Fin 3)
    (hc : CharacterPair ω (ω ^ a.val) (ω ^ b.val)) :
    FourierOrTransposeOrTao (cubicSeed ω a b c d) := by
  refine Or.inl ⟨ω, ω ^ c.val, ω ^ d.val, ⟨hωu, hω⟩, ?_, ?_, Or.inr ?_⟩
  · simp [map_pow, hωu]
  · simp [map_pow, hωu]
  · exact pure_A_monomial hω hc

theorem cubic_seed_pure_alpha {ω : ℂ} (hωu : Complex.normSq ω = 1)
    (hω : ω ^ 2 + ω + 1 = 0) (a b c d : Fin 3)
    (hc : CharacterPair ω (ω ^ c.val) (ω ^ d.val)) :
    FourierOrTransposeOrTao (cubicSeed ω a b c d) := by
  refine Or.inl ⟨ω, ω ^ a.val, ω ^ b.val, ⟨hωu, hω⟩, ?_, ?_, Or.inl ?_⟩
  · simp [map_pow, hωu]
  · simp [map_pow, hωu]
  · exact pure_alpha_monomial hω hc

/-- Exhaustive kernel case split on all 81 cubic seeds. The discovery program
is not a trusted dependency of this theorem. Every Tao permutation and every
nonphysical zero entry is checked by polynomial identities in imported proofs. -/
theorem cubic_seed_classification {ω : ℂ} (hωu : Complex.normSq ω = 1)
    (hω : ω ^ 2 + ω + 1 = 0) (a b c d : Fin 3)
    (hu : ∀ i j, Complex.normSq (cubicSeed ω a b c d i j) = 1) :
    FourierOrTransposeOrTao (cubicSeed ω a b c d) := by
  fin_cases a <;> fin_cases b <;> fin_cases c <;> fin_cases d
  · exact cubic_seed_pure_A hωu hω 0 0 0 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 0 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 0 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 1 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 1 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 1 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 2 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 2 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 0 0 2 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_alpha hωu hω 0 1 0 0 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_0101_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0102_tao hωu hω⟩
  · exact False.elim (endpoint_0110_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0111_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 0 1 1 2 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0120_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 0 1 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_0122_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 0 0 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0201_tao hωu hω⟩
  · exact False.elim (endpoint_0202_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0210_tao hωu hω⟩
  · exact False.elim (endpoint_0211_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_0220_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 2 1 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_0222_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 1 0 0 0 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1001_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1002_tao hωu hω⟩
  · exact False.elim (endpoint_1010_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1011_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 1 0 1 2 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1020_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 1 0 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1022_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 0 0 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1101_tao hωu hω⟩
  · exact False.elim (endpoint_1102_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1110_tao hωu hω⟩
  · exact False.elim (endpoint_1111_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1120_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 2 1 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_1122_tao hωu hω⟩
  · exact cubic_seed_pure_A hωu hω 1 2 0 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 0 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 0 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 1 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 1 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 1 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 2 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 2 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 1 2 2 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_alpha hωu hω 2 0 0 0 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2001_tao hωu hω⟩
  · exact False.elim (endpoint_2002_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2010_tao hωu hω⟩
  · exact False.elim (endpoint_2011_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 2 0 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_2020_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 2 0 2 1 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2022_tao hωu hω⟩
  · exact cubic_seed_pure_A hωu hω 2 1 0 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 0 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 0 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 1 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 1 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 1 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 2 0 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 2 1 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_A hωu hω 2 1 2 2 (by norm_num [CharacterPair])
  · exact cubic_seed_pure_alpha hωu hω 2 2 0 0 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_2201_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2202_tao hωu hω⟩
  · exact False.elim (endpoint_2210_nonphysical hω hu)
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2211_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 2 2 1 2 (by norm_num [CharacterPair])
  · exact Or.inr ⟨ω, ⟨hωu, hω⟩, endpoint_2220_tao hωu hω⟩
  · exact cubic_seed_pure_alpha hωu hω 2 2 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_2222_nonphysical hω hu)

theorem cubic_has_exponent {ω z : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hz : Hadamard6.IsCubicRoot z) : ∃ a : Fin 3, z = ω ^ a.val := by
  rcases Hadamard6.cubic_root_eq_one_or_omega hω hz with h1 | hωz | hω2
  · exact ⟨0, by simpa using h1⟩
  · exact ⟨1, by simpa using hωz⟩
  · exact ⟨2, hω2⟩

theorem cubic_parameters_classified {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hp : Hadamard6.IsCubicRoot p) (hq : Hadamard6.IsCubicRoot q)
    (hr : Hadamard6.IsCubicRoot r) (hs : Hadamard6.IsCubicRoot s)
    (hu : Hadamard6.EntrywiseUnit
      (Hadamard6.fourierNormalForm ω p q r s (Hadamard6.fourierForcedD ω p q r s))) :
    FourierOrTransposeOrTao
      (unsplitMatrix (Hadamard6.fourierNormalForm ω p q r s
        (Hadamard6.fourierForcedD ω p q r s))) := by
  rcases cubic_has_exponent hω hp with ⟨a, rfl⟩
  rcases cubic_has_exponent hω hq with ⟨b, rfl⟩
  rcases cubic_has_exponent hω hr with ⟨c, rfl⟩
  rcases cubic_has_exponent hω hs with ⟨d, rfl⟩
  apply cubic_seed_classification hωu hω a b c d
  intro i j
  exact hu (splitIndex.symm i) (splitIndex.symm j)

#print axioms cubic_seed_classification
#print axioms cubic_parameters_classified
end Worker12

