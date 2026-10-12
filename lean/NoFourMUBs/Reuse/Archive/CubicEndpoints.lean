import NoFourMUBs.Step2.CriticalZero.SingularModel
import NoFourMUBs.Reuse.Archive.NonphysicalEndpoints

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
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (0 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_0110_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (1 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 0 1 1 2 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (2 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 0 1 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_0122_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 0 0 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (3 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_0202_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (4 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_0211_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_0220_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 0 2 2 1 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (5 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 1 0 0 0 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1001_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (6 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_1010_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (7 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 1 0 1 2 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (8 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 1 0 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1022_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 0 0 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (9 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_1102_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (10 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_1111_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_1120_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 1 1 2 1 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (11 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
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
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (12 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_2002_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (13 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_2011_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 2 0 1 2 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_2020_nonphysical hω hu)
  · exact cubic_seed_pure_alpha hωu hω 2 0 2 1 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (14 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
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
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (15 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact False.elim (endpoint_2210_nonphysical hω hu)
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (16 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 2 2 1 2 (by norm_num [CharacterPair])
  · simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using
      (cubic_table_families ⟨hωu, hω⟩ (17 : Fin 18) (by
        simpa [cubicSeed, Hadamard6.cubicTaoP, Hadamard6.cubicTaoQ, Hadamard6.cubicTaoR, Hadamard6.cubicTaoS] using hu))
  · exact cubic_seed_pure_alpha hωu hω 2 2 2 1 (by norm_num [CharacterPair])
  · exact False.elim (endpoint_2222_nonphysical hω hu)

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

