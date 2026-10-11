import NoFourMUBs.Step2.AnchorTransport

/-!
# An explicit matched completion at the base anchor

At the base anchor `Ψ(q, q, q̄²; q̄, q̄, q²)` (corner seed `(q², q, q̄², q̄)`, `q = (1 + i√15)/4`) the positive
matched completion `H₀` has entries in `ℚ(i, √3, √5, √7)`.  We verify exactly that `H₀` is a complex Hadamard
matrix, dephased, with the base corner, and with signatures `2T(B) = χ + i√R`, `2T(C) = χ − i√R`
(`χ = −5103/64`, `√R = 729√3/64`).  Each identity is closed by `linear_combination` with cofactors modulo
`√3² = 3`, `√5² = 5`, `√7² = 7`, `i² = −1` (generated and replayed exactly; long products are split into steps).

So `Matched baseAnchor H₀` holds, and the single anchor input becomes the pure membership certificate
`CoveredMatrix Ball H₀`.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Step2 NoFourMUBs.Step1Geo

-- The generated certificate lemmas share one uniform `simp only` set and `all_goals` tail; which lemma fires
-- varies per entry, so the unused-argument and unused-tactic linters are silenced for this generated file only.
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

noncomputable section

namespace NoFourMUBs.BaseAnchor

def a3 : ℂ := (Real.sqrt 3 : ℂ)
def a5 : ℂ := (Real.sqrt 5 : ℂ)
def a7 : ℂ := (Real.sqrt 7 : ℂ)
lemma h3 : a3 ^ 2 = 3 := by rw [a3, ← Complex.ofReal_pow, Real.sq_sqrt (by norm_num)]; norm_num
lemma h5 : a5 ^ 2 = 5 := by rw [a5, ← Complex.ofReal_pow, Real.sq_sqrt (by norm_num)]; norm_num
lemma h7 : a7 ^ 2 = 7 := by rw [a7, ← Complex.ofReal_pow, Real.sq_sqrt (by norm_num)]; norm_num
lemma hI : Complex.I ^ 2 = -1 := Complex.I_sq
lemma c3 : conj a3 = a3 := Complex.conj_ofReal _
lemma c5 : conj a5 = a5 := Complex.conj_ofReal _
lemma c7 : conj a7 = a7 := Complex.conj_ofReal _

def ent : Fin 6 → Fin 6 → ℂ := ![![(1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ)],
  ![(1 : ℂ), ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-7 : ℂ) / 8), ((1 : ℂ) / 4) * a3 * a5 * Complex.I + ((1 : ℂ) / 4), ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-1 : ℂ) / 8) * a3 * Complex.I + ((3 : ℂ) / 8) * a5 + ((-1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8)],
  ![(1 : ℂ), ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-7 : ℂ) / 8), ((-1 : ℂ) / 4) * a3 * a5 * Complex.I + ((1 : ℂ) / 4), ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-1 : ℂ) / 8) * a3 * Complex.I + ((-3 : ℂ) / 8) * a5 + ((-1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8)],
  ![(1 : ℂ), (1 : ℂ), ((-1 : ℂ) / 2) * a3 * Complex.I + ((-1 : ℂ) / 2), ((1 : ℂ) / 2) * a3 * Complex.I + ((1 : ℂ) / 2), (-1 : ℂ), (-1 : ℂ)],
  ![(1 : ℂ), ((3 : ℂ) / 8) * a7 * Complex.I + ((-1 : ℂ) / 8), ((-3 : ℂ) / 28) * a3 * a7 + ((1 : ℂ) / 4) * a3 * Complex.I + ((-3 : ℂ) / 14) * a7 * Complex.I + ((-1 : ℂ) / 2), ((3 : ℂ) / 56) * a3 * a7 + ((-1 : ℂ) / 8) * a3 * Complex.I + ((-15 : ℂ) / 56) * a7 * Complex.I + ((-5 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8)],
  ![(1 : ℂ), ((-3 : ℂ) / 8) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 28) * a3 * a7 + ((1 : ℂ) / 4) * a3 * Complex.I + ((3 : ℂ) / 14) * a7 * Complex.I + ((-1 : ℂ) / 2), ((-3 : ℂ) / 56) * a3 * a7 + ((-1 : ℂ) / 8) * a3 * Complex.I + ((15 : ℂ) / 56) * a7 * Complex.I + ((-5 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8)]]

def entc : Fin 6 → Fin 6 → ℂ := ![![(1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ), (1 : ℂ)],
  ![(1 : ℂ), ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-7 : ℂ) / 8), ((-1 : ℂ) / 4) * a3 * a5 * Complex.I + ((1 : ℂ) / 4), ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((1 : ℂ) / 8) * a3 * Complex.I + ((3 : ℂ) / 8) * a5 + ((-1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8)],
  ![(1 : ℂ), ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-7 : ℂ) / 8), ((1 : ℂ) / 4) * a3 * a5 * Complex.I + ((1 : ℂ) / 4), ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((1 : ℂ) / 8) * a3 * Complex.I + ((-3 : ℂ) / 8) * a5 + ((-1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((-1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((-1 : ℂ) / 8)],
  ![(1 : ℂ), (1 : ℂ), ((1 : ℂ) / 2) * a3 * Complex.I + ((-1 : ℂ) / 2), ((-1 : ℂ) / 2) * a3 * Complex.I + ((1 : ℂ) / 2), (-1 : ℂ), (-1 : ℂ)],
  ![(1 : ℂ), ((-3 : ℂ) / 8) * a7 * Complex.I + ((-1 : ℂ) / 8), ((-3 : ℂ) / 28) * a3 * a7 + ((-1 : ℂ) / 4) * a3 * Complex.I + ((3 : ℂ) / 14) * a7 * Complex.I + ((-1 : ℂ) / 2), ((3 : ℂ) / 56) * a3 * a7 + ((1 : ℂ) / 8) * a3 * Complex.I + ((15 : ℂ) / 56) * a7 * Complex.I + ((-5 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((-3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8)],
  ![(1 : ℂ), ((3 : ℂ) / 8) * a7 * Complex.I + ((-1 : ℂ) / 8), ((3 : ℂ) / 28) * a3 * a7 + ((-1 : ℂ) / 4) * a3 * Complex.I + ((-3 : ℂ) / 14) * a7 * Complex.I + ((-1 : ℂ) / 2), ((-3 : ℂ) / 56) * a3 * a7 + ((1 : ℂ) / 8) * a3 * Complex.I + ((-15 : ℂ) / 56) * a7 * Complex.I + ((-5 : ℂ) / 8), ((3 : ℂ) / 56) * a3 * a5 * a7 + ((-1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((9 : ℂ) / 112) * a5 * a7 * Complex.I + ((3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8), ((-3 : ℂ) / 56) * a3 * a5 * a7 + ((1 : ℂ) / 8) * a3 * a5 * Complex.I + ((-3 : ℂ) / 112) * a3 * a7 + ((1 : ℂ) / 16) * a3 * Complex.I + ((-9 : ℂ) / 112) * a5 * a7 * Complex.I + ((-3 : ℂ) / 16) * a5 + ((3 : ℂ) / 56) * a7 * Complex.I + ((1 : ℂ) / 8)]]

lemma unit_0_0 : ent 0 0 * entc 0 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_0_1 : ent 0 1 * entc 0 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_0_2 : ent 0 2 * entc 0 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_0_3 : ent 0 3 * entc 0 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_0_4 : ent 0 4 * entc 0 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_0_5 : ent 0 5 * entc 0 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_1_0 : ent 1 0 * entc 1 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_1_1 : ent 1 1 * entc 1 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 64) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 64)) * hI

lemma unit_1_2 : ent 1 2 * entc 1 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 16) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 16) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 16)) * hI

lemma unit_1_3 : ent 1 3 * entc 1 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((-1 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-1 : ℂ) / 64) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 64)) * h5 + (((-3 : ℂ) / 32) * a5 + ((-9 : ℂ) / 32)) * hI

lemma unit_1_4 : ent 1 4 * entc 1 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((3 : ℂ) / 896) * a3 * a5 * a7 + ((3 : ℂ) / 32) * a3 * a7 + ((-3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_1_5 : ent 1 5 * entc 1 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((-3 : ℂ) / 896) * a3 * a5 * a7 + ((-3 : ℂ) / 32) * a3 * a7 + ((-3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_2_0 : ent 2 0 * entc 2 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_2_1 : ent 2 1 * entc 2 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 64) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 64)) * hI

lemma unit_2_2 : ent 2 2 * entc 2 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 16) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 16) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 16)) * hI

lemma unit_2_3 : ent 2 3 * entc 2 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((1 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-1 : ℂ) / 64) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 64)) * h5 + (((3 : ℂ) / 32) * a5 + ((-9 : ℂ) / 32)) * hI

lemma unit_2_4 : ent 2 4 * entc 2 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((3 : ℂ) / 896) * a3 * a5 * a7 + ((-3 : ℂ) / 32) * a3 * a7 + ((3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_2_5 : ent 2 5 * entc 2 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((-3 : ℂ) / 896) * a3 * a5 * a7 + ((3 : ℂ) / 32) * a3 * a7 + ((3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_3_0 : ent 3 0 * entc 3 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_3_1 : ent 3 1 * entc 3 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_3_2 : ent 3 2 * entc 3 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 4) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 4)) * hI

lemma unit_3_3 : ent 3 3 * entc 3 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 4) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 4)) * hI

lemma unit_3_4 : ent 3 4 * entc 3 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_3_5 : ent 3 5 * entc 3 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_4_0 : ent 4 0 * entc 4 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_4_1 : ent 4 1 * entc 4 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 64) * Complex.I ^ 2) * h7 + (((-63 : ℂ) / 64)) * hI

lemma unit_4_2 : ent 4 2 * entc 4 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 784) * a7 ^ 2 + ((-1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 196) * Complex.I ^ 2 + ((27 : ℂ) / 784)) * h7 + (((3 : ℂ) / 28) * a3 * a7 + ((-57 : ℂ) / 112)) * hI

lemma unit_4_3 : ent 4 3 * entc 4 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a7 ^ 2 + ((-1 : ℂ) / 64) * Complex.I ^ 2) * h3 + (((-225 : ℂ) / 3136) * Complex.I ^ 2 + ((27 : ℂ) / 3136)) * h7 + (((-15 : ℂ) / 224) * a3 * a7 + ((-123 : ℂ) / 224)) * hI

lemma unit_4_4 : ent 4 4 * entc 4 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((3 : ℂ) / 896) * a3 * a5 * a7 + ((-3 : ℂ) / 32) * a3 * a7 + ((3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_4_5 : ent 4 5 * entc 4 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((-3 : ℂ) / 896) * a3 * a5 * a7 + ((-3 : ℂ) / 32) * a3 * a7 + ((-3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_5_0 : ent 5 0 * entc 5 0 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma unit_5_1 : ent 5 1 * entc 5 1 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 64) * Complex.I ^ 2) * h7 + (((-63 : ℂ) / 64)) * hI

lemma unit_5_2 : ent 5 2 * entc 5 2 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 784) * a7 ^ 2 + ((-1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 196) * Complex.I ^ 2 + ((27 : ℂ) / 784)) * h7 + (((-3 : ℂ) / 28) * a3 * a7 + ((-57 : ℂ) / 112)) * hI

lemma unit_5_3 : ent 5 3 * entc 5 3 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a7 ^ 2 + ((-1 : ℂ) / 64) * Complex.I ^ 2) * h3 + (((-225 : ℂ) / 3136) * Complex.I ^ 2 + ((27 : ℂ) / 3136)) * h7 + (((15 : ℂ) / 224) * a3 * a7 + ((-123 : ℂ) / 224)) * hI

lemma unit_5_4 : ent 5 4 * entc 5 4 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((3 : ℂ) / 896) * a3 * a5 * a7 + ((3 : ℂ) / 32) * a3 * a7 + ((-3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma unit_5_5 : ent 5 5 * entc 5 5 = 1 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 3136) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-1 : ℂ) / 64) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 12544) * a7 ^ 2 + ((-1 : ℂ) / 256) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((-81 : ℂ) / 12544) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a7 ^ 2 + ((-3 : ℂ) / 64) * Complex.I ^ 2 + ((9 : ℂ) / 256)) * h5 + (((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((-9 : ℂ) / 256) * Complex.I ^ 2 + ((81 : ℂ) / 1792)) * h7 + (((-3 : ℂ) / 896) * a3 * a5 * a7 + ((3 : ℂ) / 32) * a3 * a7 + ((3 : ℂ) / 224) * a5 + ((-63 : ℂ) / 128)) * hI

lemma gram_0_0 : ent 0 0 * entc 0 0 + ent 0 1 * entc 0 1 + ent 0 2 * entc 0 2 + ent 0 3 * entc 0 3 + ent 0 4 * entc 0 4 + ent 0 5 * entc 0 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_0_1 : ent 0 0 * entc 1 0 + ent 0 1 * entc 1 1 + ent 0 2 * entc 1 2 + ent 0 3 * entc 1 3 + ent 0 4 * entc 1 4 + ent 0 5 * entc 1 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_0_2 : ent 0 0 * entc 2 0 + ent 0 1 * entc 2 1 + ent 0 2 * entc 2 2 + ent 0 3 * entc 2 3 + ent 0 4 * entc 2 4 + ent 0 5 * entc 2 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_0_3 : ent 0 0 * entc 3 0 + ent 0 1 * entc 3 1 + ent 0 2 * entc 3 2 + ent 0 3 * entc 3 3 + ent 0 4 * entc 3 4 + ent 0 5 * entc 3 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_0_4 : ent 0 0 * entc 4 0 + ent 0 1 * entc 4 1 + ent 0 2 * entc 4 2 + ent 0 3 * entc 4 3 + ent 0 4 * entc 4 4 + ent 0 5 * entc 4 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_0_5 : ent 0 0 * entc 5 0 + ent 0 1 * entc 5 1 + ent 0 2 * entc 5 2 + ent 0 3 * entc 5 3 + ent 0 4 * entc 5 4 + ent 0 5 * entc 5 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_1_0 : ent 1 0 * entc 0 0 + ent 1 1 * entc 0 1 + ent 1 2 * entc 0 2 + ent 1 3 * entc 0 3 + ent 1 4 * entc 0 4 + ent 1 5 * entc 0 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_1_1 : ent 1 0 * entc 1 0 + ent 1 1 * entc 1 1 + ent 1 2 * entc 1 2 + ent 1 3 * entc 1 3 + ent 1 4 * entc 1 4 + ent 1 5 * entc 1 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 8) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 1568) * a5 * a7 ^ 2 + ((9 : ℂ) / 6272) * a7 ^ 2 + ((-3 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((-3 : ℂ) / 8) * Complex.I ^ 2 + ((27 : ℂ) / 128)) * h5 + (((-27 : ℂ) / 1568) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a5 + ((-9 : ℂ) / 128) * Complex.I ^ 2 + ((81 : ℂ) / 896)) * h7 + (((-27 : ℂ) / 224) * a5 + ((-39 : ℂ) / 16)) * hI

lemma gram_1_2 : ent 1 0 * entc 2 0 + ent 1 1 * entc 2 1 + ent 1 2 * entc 2 2 + ent 1 3 * entc 2 3 + ent 1 4 * entc 2 4 + ent 1 5 * entc 2 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((1 : ℂ) / 8) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 6272) * a7 ^ 2 + ((-3 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((3 : ℂ) / 8) * Complex.I ^ 2 + ((-27 : ℂ) / 128)) * h5 + (((-9 : ℂ) / 448) * a3 * a5 * Complex.I + ((-369 : ℂ) / 6272) * Complex.I ^ 2 + ((513 : ℂ) / 6272)) * h7 + (((39 : ℂ) / 28)) * hI

lemma gram_1_3 : ent 1 0 * entc 3 0 + ent 1 1 * entc 3 1 + ent 1 2 * entc 3 2 + ent 1 3 * entc 3 3 + ent 1 4 * entc 3 4 + ent 1 5 * entc 3 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((3 : ℂ) / 16) * a5 * Complex.I ^ 2 + ((1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 16) * a5 + ((3 : ℂ) / 16)) * hI

lemma gram_1_4 : ent 1 0 * entc 4 0 + ent 1 1 * entc 4 1 + ent 1 2 * entc 4 2 + ent 1 3 * entc 4 3 + ent 1 4 * entc 4 4 + ent 1 5 * entc 4 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-15 : ℂ) / 448) * a5 * a7 * Complex.I + ((-3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((9 : ℂ) / 896) * a3 * a5 * Complex.I + ((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((27 : ℂ) / 448) * a3 * a7 + ((-99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_1_5 : ent 1 0 * entc 5 0 + ent 1 1 * entc 5 1 + ent 1 2 * entc 5 2 + ent 1 3 * entc 5 3 + ent 1 4 * entc 5 4 + ent 1 5 * entc 5 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((15 : ℂ) / 448) * a5 * a7 * Complex.I + ((-3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((9 : ℂ) / 896) * a3 * a5 * Complex.I + ((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((-27 : ℂ) / 448) * a3 * a7 + ((-99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_2_0 : ent 2 0 * entc 0 0 + ent 2 1 * entc 0 1 + ent 2 2 * entc 0 2 + ent 2 3 * entc 0 3 + ent 2 4 * entc 0 4 + ent 2 5 * entc 0 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_2_1 : ent 2 0 * entc 1 0 + ent 2 1 * entc 1 1 + ent 2 2 * entc 1 2 + ent 2 3 * entc 1 3 + ent 2 4 * entc 1 4 + ent 2 5 * entc 1 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((1 : ℂ) / 8) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 6272) * a7 ^ 2 + ((-3 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((3 : ℂ) / 8) * Complex.I ^ 2 + ((-27 : ℂ) / 128)) * h5 + (((9 : ℂ) / 448) * a3 * a5 * Complex.I + ((-369 : ℂ) / 6272) * Complex.I ^ 2 + ((513 : ℂ) / 6272)) * h7 + (((39 : ℂ) / 28)) * hI

lemma gram_2_2 : ent 2 0 * entc 2 0 + ent 2 1 * entc 2 1 + ent 2 2 * entc 2 2 + ent 2 3 * entc 2 3 + ent 2 4 * entc 2 4 + ent 2 5 * entc 2 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 8) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 1568) * a5 * a7 ^ 2 + ((9 : ℂ) / 6272) * a7 ^ 2 + ((-3 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((-3 : ℂ) / 8) * Complex.I ^ 2 + ((27 : ℂ) / 128)) * h5 + (((27 : ℂ) / 1568) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a5 + ((-9 : ℂ) / 128) * Complex.I ^ 2 + ((81 : ℂ) / 896)) * h7 + (((27 : ℂ) / 224) * a5 + ((-39 : ℂ) / 16)) * hI

lemma gram_2_3 : ent 2 0 * entc 3 0 + ent 2 1 * entc 3 1 + ent 2 2 * entc 3 2 + ent 2 3 * entc 3 3 + ent 2 4 * entc 3 4 + ent 2 5 * entc 3 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-3 : ℂ) / 16) * a5 * Complex.I ^ 2 + ((1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 16) * a5 + ((3 : ℂ) / 16)) * hI

lemma gram_2_4 : ent 2 0 * entc 4 0 + ent 2 1 * entc 4 1 + ent 2 2 * entc 4 2 + ent 2 3 * entc 4 3 + ent 2 4 * entc 4 4 + ent 2 5 * entc 4 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((15 : ℂ) / 448) * a5 * a7 * Complex.I + ((3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((-9 : ℂ) / 896) * a3 * a5 * Complex.I + ((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((27 : ℂ) / 448) * a3 * a7 + ((99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_2_5 : ent 2 0 * entc 5 0 + ent 2 1 * entc 5 1 + ent 2 2 * entc 5 2 + ent 2 3 * entc 5 3 + ent 2 4 * entc 5 4 + ent 2 5 * entc 5 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-15 : ℂ) / 448) * a5 * a7 * Complex.I + ((3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((-9 : ℂ) / 896) * a3 * a5 * Complex.I + ((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((-27 : ℂ) / 448) * a3 * a7 + ((99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_3_0 : ent 3 0 * entc 0 0 + ent 3 1 * entc 0 1 + ent 3 2 * entc 0 2 + ent 3 3 * entc 0 3 + ent 3 4 * entc 0 4 + ent 3 5 * entc 0 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_3_1 : ent 3 0 * entc 1 0 + ent 3 1 * entc 1 1 + ent 3 2 * entc 1 2 + ent 3 3 * entc 1 3 + ent 3 4 * entc 1 4 + ent 3 5 * entc 1 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((3 : ℂ) / 16) * a5 * Complex.I ^ 2 + ((1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 16) * a5 + ((3 : ℂ) / 16)) * hI

lemma gram_3_2 : ent 3 0 * entc 2 0 + ent 3 1 * entc 2 1 + ent 3 2 * entc 2 2 + ent 3 3 * entc 2 3 + ent 3 4 * entc 2 4 + ent 3 5 * entc 2 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-3 : ℂ) / 16) * a5 * Complex.I ^ 2 + ((1 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 16) * a5 + ((3 : ℂ) / 16)) * hI

lemma gram_3_3 : ent 3 0 * entc 3 0 + ent 3 1 * entc 3 1 + ent 3 2 * entc 3 2 + ent 3 3 * entc 3 3 + ent 3 4 * entc 3 4 + ent 3 5 * entc 3 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 2) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 2)) * hI

lemma gram_3_4 : ent 3 0 * entc 4 0 + ent 3 1 * entc 4 1 + ent 3 2 * entc 4 2 + ent 3 3 * entc 4 3 + ent 3 4 * entc 4 4 + ent 3 5 * entc 4 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 112) * a7 * Complex.I + ((3 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((3 : ℂ) / 112) * a3 * a7 + ((9 : ℂ) / 16)) * hI

lemma gram_3_5 : ent 3 0 * entc 5 0 + ent 3 1 * entc 5 1 + ent 3 2 * entc 5 2 + ent 3 3 * entc 5 3 + ent 3 4 * entc 5 4 + ent 3 5 * entc 5 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 112) * a7 * Complex.I + ((3 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 112) * a3 * a7 + ((9 : ℂ) / 16)) * hI

lemma gram_4_0 : ent 4 0 * entc 0 0 + ent 4 1 * entc 0 1 + ent 4 2 * entc 0 2 + ent 4 3 * entc 0 3 + ent 4 4 * entc 0 4 + ent 4 5 * entc 0 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_4_1 : ent 4 0 * entc 1 0 + ent 4 1 * entc 1 1 + ent 4 2 * entc 1 2 + ent 4 3 * entc 1 3 + ent 4 4 * entc 1 4 + ent 4 5 * entc 1 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((15 : ℂ) / 448) * a5 * a7 * Complex.I + ((-3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((-9 : ℂ) / 896) * a3 * a5 * Complex.I + ((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((27 : ℂ) / 448) * a3 * a7 + ((-99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_4_2 : ent 4 0 * entc 2 0 + ent 4 1 * entc 2 1 + ent 4 2 * entc 2 2 + ent 4 3 * entc 2 3 + ent 4 4 * entc 2 4 + ent 4 5 * entc 2 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-15 : ℂ) / 448) * a5 * a7 * Complex.I + ((3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((9 : ℂ) / 896) * a3 * a5 * Complex.I + ((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((27 : ℂ) / 448) * a3 * a7 + ((99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_4_3 : ent 4 0 * entc 3 0 + ent 4 1 * entc 3 1 + ent 4 2 * entc 3 2 + ent 4 3 * entc 3 3 + ent 4 4 * entc 3 4 + ent 4 5 * entc 3 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 112) * a7 * Complex.I + ((3 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((3 : ℂ) / 112) * a3 * a7 + ((9 : ℂ) / 16)) * hI

lemma gram_4_4 : ent 4 0 * entc 4 0 + ent 4 1 * entc 4 1 + ent 4 2 * entc 4 2 + ent 4 3 * entc 4 3 + ent 4 4 * entc 4 4 + ent 4 5 * entc 4 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 32) * a5 ^ 2 * Complex.I ^ 2 + ((99 : ℂ) / 6272) * a7 ^ 2 + ((-11 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 224) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 224) * a3 * a7 + ((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((-3 : ℂ) / 32) * Complex.I ^ 2 + ((9 : ℂ) / 128)) * h5 + (((-2061 : ℂ) / 6272) * Complex.I ^ 2 + ((837 : ℂ) / 6272)) * h7 + (((-33 : ℂ) / 224) * a3 * a7 + ((-339 : ℂ) / 112)) * hI

lemma gram_4_5 : ent 4 0 * entc 5 0 + ent 4 1 * entc 5 1 + ent 4 2 * entc 5 2 + ent 4 3 * entc 5 3 + ent 4 4 * entc 5 4 + ent 4 5 * entc 5 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 112) * a5 ^ 2 * a7 * Complex.I + ((1 : ℂ) / 32) * a5 ^ 2 * Complex.I ^ 2 + ((-99 : ℂ) / 6272) * a7 ^ 2 + ((33 : ℂ) / 448) * a7 * Complex.I + ((-11 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 64) * a7 * Complex.I + ((3 : ℂ) / 32) * Complex.I ^ 2 + ((-9 : ℂ) / 128)) * h5 + (((1251 : ℂ) / 6272) * Complex.I ^ 2 + ((243 : ℂ) / 6272)) * h7 + (((45 : ℂ) / 28)) * hI

lemma gram_5_0 : ent 5 0 * entc 0 0 + ent 5 1 * entc 0 1 + ent 5 2 * entc 0 2 + ent 5 3 * entc 0 3 + ent 5 4 * entc 0 4 + ent 5 5 * entc 0 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma gram_5_1 : ent 5 0 * entc 1 0 + ent 5 1 * entc 1 1 + ent 5 2 * entc 1 2 + ent 5 3 * entc 1 3 + ent 5 4 * entc 1 4 + ent 5 5 * entc 1 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((-15 : ℂ) / 448) * a5 * a7 * Complex.I + ((-3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((-9 : ℂ) / 896) * a3 * a5 * Complex.I + ((27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((-27 : ℂ) / 448) * a3 * a7 + ((-99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_5_2 : ent 5 0 * entc 2 0 + ent 5 1 * entc 2 1 + ent 5 2 * entc 2 2 + ent 5 3 * entc 2 3 + ent 5 4 * entc 2 4 + ent 5 5 * entc 2 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 224) * a5 ^ 2 * a7 * Complex.I + ((-9 : ℂ) / 3136) * a5 * a7 ^ 2 + ((15 : ℂ) / 448) * a5 * a7 * Complex.I + ((3 : ℂ) / 32) * a5 * Complex.I ^ 2 + ((-3 : ℂ) / 896) * a7 * Complex.I + ((-1 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 448) * a3 * a7 * Complex.I ^ 2 + ((-9 : ℂ) / 448) * a3 * a7 + ((81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 128) * a7 * Complex.I) * h5 + (((9 : ℂ) / 896) * a3 * a5 * Complex.I + ((-27 : ℂ) / 3136) * a5 * Complex.I ^ 2 + ((-27 : ℂ) / 3136) * a5 + ((405 : ℂ) / 6272) * Complex.I ^ 2 + ((-135 : ℂ) / 1568)) * h7 + (((-27 : ℂ) / 448) * a3 * a7 + ((99 : ℂ) / 448) * a5 + ((3 : ℂ) / 7)) * hI

lemma gram_5_3 : ent 5 0 * entc 3 0 + ent 5 1 * entc 3 1 + ent 5 2 * entc 3 2 + ent 5 3 * entc 3 3 + ent 5 4 * entc 3 4 + ent 5 5 * entc 3 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 112) * a7 * Complex.I + ((3 : ℂ) / 16) * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 112) * a3 * a7 + ((9 : ℂ) / 16)) * hI

lemma gram_5_4 : ent 5 0 * entc 4 0 + ent 5 1 * entc 4 1 + ent 5 2 * entc 4 2 + ent 5 3 * entc 4 3 + ent 5 4 * entc 4 4 + ent 5 5 * entc 4 5 = 0 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((3 : ℂ) / 112) * a5 ^ 2 * a7 * Complex.I + ((1 : ℂ) / 32) * a5 ^ 2 * Complex.I ^ 2 + ((-99 : ℂ) / 6272) * a7 ^ 2 + ((-33 : ℂ) / 448) * a7 * Complex.I + ((-11 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((9 : ℂ) / 64) * a7 * Complex.I + ((3 : ℂ) / 32) * Complex.I ^ 2 + ((-9 : ℂ) / 128)) * h5 + (((1251 : ℂ) / 6272) * Complex.I ^ 2 + ((243 : ℂ) / 6272)) * h7 + (((45 : ℂ) / 28)) * hI

lemma gram_5_5 : ent 5 0 * entc 5 0 + ent 5 1 * entc 5 1 + ent 5 2 * entc 5 2 + ent 5 3 * entc 5 3 + ent 5 4 * entc 5 4 + ent 5 5 * entc 5 5 = 6 := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-1 : ℂ) / 32) * a5 ^ 2 * Complex.I ^ 2 + ((99 : ℂ) / 6272) * a7 ^ 2 + ((-11 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((9 : ℂ) / 224) * a3 * a7 * Complex.I ^ 2 + ((9 : ℂ) / 224) * a3 * a7 + ((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 1568) * a7 ^ 2 + ((-3 : ℂ) / 32) * Complex.I ^ 2 + ((9 : ℂ) / 128)) * h5 + (((-2061 : ℂ) / 6272) * Complex.I ^ 2 + ((837 : ℂ) / 6272)) * h7 + (((33 : ℂ) / 224) * a3 * a7 + ((-339 : ℂ) / 112)) * hI

lemma conj_ent (a b : Fin 6) : starRingEnd ℂ (ent a b) = entc a b := by
  fin_cases a <;> fin_cases b <;>
    simp [ent, entc, c3, c5, c7, Complex.conj_I, map_ofNat] <;> ring

lemma pi_B : ent 1 3 * ent 2 4 + ent 1 3 * ent 2 5 + ent 1 4 * ent 2 3 + ent 1 4 * ent 2 5 + ent 1 5 * ent 2 3 + ent 1 5 * ent 2 4 = ((9 : ℂ) / 14) * a3 * Complex.I + ((69 : ℂ) / 28) := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a5 ^ 2 * a7 ^ 2 + ((-3 : ℂ) / 32) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 6272) * a7 ^ 2 + ((-3 : ℂ) / 128) * Complex.I ^ 2) * h3 + (((27 : ℂ) / 1568) * a3 * a7 ^ 2 * Complex.I + ((-81 : ℂ) / 6272) * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 1568) * a7 ^ 2 + ((-9 : ℂ) / 32) * Complex.I ^ 2 + ((27 : ℂ) / 128)) * h5 + (((9 : ℂ) / 98) * a3 * Complex.I + ((-369 : ℂ) / 6272) * Complex.I ^ 2 + ((-513 : ℂ) / 6272)) * h7 + (((-423 : ℂ) / 224)) * hI

lemma h_B : ent 1 4 * ent 2 5 - ent 1 5 * ent 2 4 - ent 1 3 * ent 2 5 + ent 1 5 * ent 2 3 + ent 1 3 * ent 2 4 - ent 1 4 * ent 2 3 = ((-9 : ℂ) / 14) * a3 * a7 + ((27 : ℂ) / 28) * a7 * Complex.I := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 448) * a7 * Complex.I) * h3 + (((-27 : ℂ) / 224) * a3 * a7 + ((81 : ℂ) / 448) * a7 * Complex.I) * h5 + (((9 : ℂ) / 224) * a3 * a7) * hI

lemma h2_B : (((-9 : ℂ) / 14) * a3 * a7 + ((27 : ℂ) / 28) * a7 * Complex.I) ^ 2 = ((-243 : ℂ) / 28) * a3 * Complex.I + ((243 : ℂ) / 112) := by
  all_goals linear_combination (((81 : ℂ) / 196) * a7 ^ 2) * h3 + (((-243 : ℂ) / 196) * a3 * Complex.I + ((729 : ℂ) / 784) * Complex.I ^ 2 + ((243 : ℂ) / 196)) * h7 + (((729 : ℂ) / 112)) * hI

lemma uc_B : starRingEnd ℂ (ent 1 3 * ent 1 4 * ent 1 5) = ((-39 : ℂ) / 224) * a3 * a5 * Complex.I + ((33 : ℂ) / 224) * a3 * Complex.I + ((27 : ℂ) / 224) * a5 + ((143 : ℂ) / 224) := by
  rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 25088) * a3 * a5 ^ 3 * a7 ^ 2 * Complex.I + ((1 : ℂ) / 512) * a3 * a5 ^ 3 * Complex.I ^ 3 + ((27 : ℂ) / 100352) * a3 * a5 * a7 ^ 2 * Complex.I + ((-3 : ℂ) / 2048) * a3 * a5 * Complex.I ^ 3 + ((-9 : ℂ) / 100352) * a3 * a7 ^ 2 * Complex.I + ((1 : ℂ) / 2048) * a3 * Complex.I ^ 3 + ((-27 : ℂ) / 25088) * a5 ^ 3 * a7 ^ 2 * Complex.I ^ 2 + ((-27 : ℂ) / 25088) * a5 ^ 3 * a7 ^ 2 + ((-9 : ℂ) / 7168) * a5 ^ 2 * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 6272) * a5 ^ 2 * a7 ^ 2 + ((-15 : ℂ) / 1024) * a5 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 50176) * a5 * a7 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 14336) * a5 * a7 ^ 2 + ((9 : ℂ) / 2048) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 25088) * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 100352) * a7 ^ 2 + ((3 : ℂ) / 2048) * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 100352) * a3 * a5 * a7 ^ 2 * Complex.I ^ 3 + ((-27 : ℂ) / 6272) * a3 * a5 * a7 ^ 2 * Complex.I + ((3 : ℂ) / 512) * a3 * a5 * Complex.I ^ 3 + ((-27 : ℂ) / 2048) * a3 * a5 * Complex.I + ((-27 : ℂ) / 14336) * a3 * a7 ^ 2 * Complex.I ^ 3 + ((27 : ℂ) / 50176) * a3 * a7 ^ 2 * Complex.I + ((27 : ℂ) / 2048) * a3 * Complex.I + ((-81 : ℂ) / 14336) * a5 * a7 ^ 2 * Complex.I ^ 2 + ((-81 : ℂ) / 25088) * a5 * a7 ^ 2 + ((27 : ℂ) / 2048) * a5 + ((-621 : ℂ) / 100352) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 6272) * a7 ^ 2 + ((-45 : ℂ) / 1024) * Complex.I ^ 2 + ((27 : ℂ) / 2048)) * h5 + (((-549 : ℂ) / 100352) * a3 * a5 * Complex.I ^ 3 + ((-279 : ℂ) / 14336) * a3 * a5 * Complex.I + ((-981 : ℂ) / 100352) * a3 * Complex.I ^ 3 + ((207 : ℂ) / 100352) * a3 * Complex.I + ((-2781 : ℂ) / 100352) * a5 * Complex.I ^ 2 + ((-1809 : ℂ) / 100352) * a5 + ((-423 : ℂ) / 14336) * Complex.I ^ 2 + ((2187 : ℂ) / 100352)) * h7 + (((-3 : ℂ) / 224) * a3 * a5 * Complex.I + ((-15 : ℂ) / 224) * a3 * Complex.I + ((-81 : ℂ) / 448) * a5 + ((-27 : ℂ) / 64)) * hI

lemma vc_B : starRingEnd ℂ (ent 2 3 * ent 2 4 * ent 2 5) = ((39 : ℂ) / 224) * a3 * a5 * Complex.I + ((33 : ℂ) / 224) * a3 * Complex.I + ((-27 : ℂ) / 224) * a5 + ((143 : ℂ) / 224) := by
  rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 25088) * a3 * a5 ^ 3 * a7 ^ 2 * Complex.I + ((-1 : ℂ) / 512) * a3 * a5 ^ 3 * Complex.I ^ 3 + ((-27 : ℂ) / 100352) * a3 * a5 * a7 ^ 2 * Complex.I + ((3 : ℂ) / 2048) * a3 * a5 * Complex.I ^ 3 + ((-9 : ℂ) / 100352) * a3 * a7 ^ 2 * Complex.I + ((1 : ℂ) / 2048) * a3 * Complex.I ^ 3 + ((27 : ℂ) / 25088) * a5 ^ 3 * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 25088) * a5 ^ 3 * a7 ^ 2 + ((-9 : ℂ) / 7168) * a5 ^ 2 * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 6272) * a5 ^ 2 * a7 ^ 2 + ((-15 : ℂ) / 1024) * a5 ^ 2 * Complex.I ^ 2 + ((-9 : ℂ) / 50176) * a5 * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 14336) * a5 * a7 ^ 2 + ((-9 : ℂ) / 2048) * a5 * Complex.I ^ 2 + ((9 : ℂ) / 25088) * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 100352) * a7 ^ 2 + ((3 : ℂ) / 2048) * Complex.I ^ 2) * h3 + (((81 : ℂ) / 100352) * a3 * a5 * a7 ^ 2 * Complex.I ^ 3 + ((27 : ℂ) / 6272) * a3 * a5 * a7 ^ 2 * Complex.I + ((-3 : ℂ) / 512) * a3 * a5 * Complex.I ^ 3 + ((27 : ℂ) / 2048) * a3 * a5 * Complex.I + ((-27 : ℂ) / 14336) * a3 * a7 ^ 2 * Complex.I ^ 3 + ((27 : ℂ) / 50176) * a3 * a7 ^ 2 * Complex.I + ((27 : ℂ) / 2048) * a3 * Complex.I + ((81 : ℂ) / 14336) * a5 * a7 ^ 2 * Complex.I ^ 2 + ((81 : ℂ) / 25088) * a5 * a7 ^ 2 + ((-27 : ℂ) / 2048) * a5 + ((-621 : ℂ) / 100352) * a7 ^ 2 * Complex.I ^ 2 + ((27 : ℂ) / 6272) * a7 ^ 2 + ((-45 : ℂ) / 1024) * Complex.I ^ 2 + ((27 : ℂ) / 2048)) * h5 + (((549 : ℂ) / 100352) * a3 * a5 * Complex.I ^ 3 + ((279 : ℂ) / 14336) * a3 * a5 * Complex.I + ((-981 : ℂ) / 100352) * a3 * Complex.I ^ 3 + ((207 : ℂ) / 100352) * a3 * Complex.I + ((2781 : ℂ) / 100352) * a5 * Complex.I ^ 2 + ((1809 : ℂ) / 100352) * a5 + ((-423 : ℂ) / 14336) * Complex.I ^ 2 + ((2187 : ℂ) / 100352)) * h7 + (((3 : ℂ) / 224) * a3 * a5 * Complex.I + ((-15 : ℂ) / 224) * a3 * Complex.I + ((81 : ℂ) / 448) * a5 + ((-27 : ℂ) / 64)) * hI

lemma s1_B : -(((9 : ℂ) / 14) * a3 * Complex.I + ((69 : ℂ) / 28)) * (((-243 : ℂ) / 28) * a3 * Complex.I + ((243 : ℂ) / 112)) = -(((-31347 : ℂ) / 1568) * a3 * Complex.I + ((69255 : ℂ) / 3136)) := by
  all_goals linear_combination (((2187 : ℂ) / 392) * Complex.I ^ 2) * h3 + (((6561 : ℂ) / 392)) * hI

lemma s2_B : -(((-31347 : ℂ) / 1568) * a3 * Complex.I + ((69255 : ℂ) / 3136)) * (((-39 : ℂ) / 224) * a3 * a5 * Complex.I + ((33 : ℂ) / 224) * a3 * Complex.I + ((27 : ℂ) / 224) * a5 + ((143 : ℂ) / 224)) = -(((-89667 : ℂ) / 14336) * a3 * a5 * Complex.I + ((-136323 : ℂ) / 14336) * a3 * Complex.I + ((-111537 : ℂ) / 14336) * a5 + ((328779 : ℂ) / 14336)) := by
  all_goals linear_combination (((-1222533 : ℂ) / 351232) * a5 * Complex.I ^ 2 + ((1034451 : ℂ) / 351232) * Complex.I ^ 2) * h3 + (((-3667599 : ℂ) / 351232) * a5 + ((3103353 : ℂ) / 351232)) * hI

lemma s3_B : -(((-89667 : ℂ) / 14336) * a3 * a5 * Complex.I + ((-136323 : ℂ) / 14336) * a3 * Complex.I + ((-111537 : ℂ) / 14336) * a5 + ((328779 : ℂ) / 14336)) * (((39 : ℂ) / 224) * a3 * a5 * Complex.I + ((33 : ℂ) / 224) * a3 * Complex.I + ((-27 : ℂ) / 224) * a5 + ((143 : ℂ) / 224)) = -(((-729 : ℂ) / 128) * a3 * Complex.I + ((5103 : ℂ) / 128)) := by
  all_goals linear_combination (((3497013 : ℂ) / 3211264) * a5 ^ 2 * Complex.I ^ 2 + ((1034451 : ℂ) / 401408) * a5 * Complex.I ^ 2 + ((4498659 : ℂ) / 3211264) * Complex.I ^ 2) * h3 + (((19683 : ℂ) / 32768) * a3 * Complex.I + ((10491039 : ℂ) / 3211264) * Complex.I ^ 2 + ((-3011499 : ℂ) / 3211264)) * h5 + (((3103353 : ℂ) / 401408) * a5 + ((2355399 : ℂ) / 114688)) * hI

lemma two_B : 2 * -(((-729 : ℂ) / 128) * a3 * Complex.I + ((5103 : ℂ) / 128)) = ((729 : ℂ) / 64) * a3 * Complex.I + ((-5103 : ℂ) / 64) := by
  all_goals linear_combination (0 : ℂ) * h3

lemma pi_C : ent 3 1 * ent 4 2 + ent 3 1 * ent 5 2 + ent 4 1 * ent 3 2 + ent 4 1 * ent 5 2 + ent 5 1 * ent 3 2 + ent 5 1 * ent 4 2 = ((9 : ℂ) / 8) * a3 * Complex.I + ((-15 : ℂ) / 8) := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 112) * a3 * Complex.I + ((9 : ℂ) / 56) * Complex.I ^ 2) * h7 + (((9 : ℂ) / 8)) * hI

lemma h_C : ent 4 1 * ent 5 2 - ent 5 1 * ent 4 2 - ent 3 1 * ent 5 2 + ent 5 1 * ent 3 2 + ent 3 1 * ent 4 2 - ent 4 1 * ent 3 2 = ((-45 : ℂ) / 56) * a3 * a7 + ((-27 : ℂ) / 56) * a7 * Complex.I := by
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((9 : ℂ) / 16) * a3 * a7) * hI

lemma h2_C : (((-45 : ℂ) / 56) * a3 * a7 + ((-27 : ℂ) / 56) * a7 * Complex.I) ^ 2 = ((1215 : ℂ) / 224) * a3 * Complex.I + ((2673 : ℂ) / 224) := by
  all_goals linear_combination (((2025 : ℂ) / 3136) * a7 ^ 2) * h3 + (((1215 : ℂ) / 1568) * a3 * Complex.I + ((729 : ℂ) / 3136) * Complex.I ^ 2 + ((6075 : ℂ) / 3136)) * h7 + (((729 : ℂ) / 448)) * hI

lemma uc_C : starRingEnd ℂ (ent 3 1 * ent 4 1 * ent 5 1) = (1 : ℂ) := by
  rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 64) * Complex.I ^ 2) * h7 + (((-63 : ℂ) / 64)) * hI

lemma vc_C : starRingEnd ℂ (ent 3 2 * ent 4 2 * ent 5 2) = ((-3 : ℂ) / 14) * a3 * Complex.I + ((-13 : ℂ) / 14) := by
  rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]
  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-9 : ℂ) / 1568) * a3 * a7 ^ 2 * Complex.I + ((1 : ℂ) / 32) * a3 * Complex.I ^ 3 + ((9 : ℂ) / 392) * a7 ^ 2 * Complex.I ^ 2 + ((9 : ℂ) / 1568) * a7 ^ 2 + ((3 : ℂ) / 32) * Complex.I ^ 2) * h3 + (((-9 : ℂ) / 392) * a3 * Complex.I ^ 3 + ((-9 : ℂ) / 224) * a3 * Complex.I + ((9 : ℂ) / 98) * Complex.I ^ 2 + ((27 : ℂ) / 1568)) * h7 + (((-15 : ℂ) / 224) * a3 * Complex.I + ((207 : ℂ) / 224)) * hI

lemma s1_C : -(((9 : ℂ) / 8) * a3 * Complex.I + ((-15 : ℂ) / 8)) * (((1215 : ℂ) / 224) * a3 * Complex.I + ((2673 : ℂ) / 224)) = -(((729 : ℂ) / 224) * a3 * Complex.I + ((-18225 : ℂ) / 448)) := by
  all_goals linear_combination (((-10935 : ℂ) / 1792) * Complex.I ^ 2) * h3 + (((-32805 : ℂ) / 1792)) * hI

lemma s2_C : -(((729 : ℂ) / 224) * a3 * Complex.I + ((-18225 : ℂ) / 448)) * ((1 : ℂ)) = -(((729 : ℂ) / 224) * a3 * Complex.I + ((-18225 : ℂ) / 448)) := by
  all_goals linear_combination (0 : ℂ) * h3

lemma s3_C : -(((729 : ℂ) / 224) * a3 * Complex.I + ((-18225 : ℂ) / 448)) * (((-3 : ℂ) / 14) * a3 * Complex.I + ((-13 : ℂ) / 14)) = -(((729 : ℂ) / 128) * a3 * Complex.I + ((5103 : ℂ) / 128)) := by
  all_goals linear_combination (((2187 : ℂ) / 3136) * Complex.I ^ 2) * h3 + (((6561 : ℂ) / 3136)) * hI

lemma two_C : 2 * -(((729 : ℂ) / 128) * a3 * Complex.I + ((5103 : ℂ) / 128)) = ((-729 : ℂ) / 64) * a3 * Complex.I + ((-5103 : ℂ) / 64) := by
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_0_0 : ent 0 0 = 1 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_0_1 : ent 0 1 = 1 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_0_2 : ent 0 2 = 1 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_1_0 : ent 1 0 = 1 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_1_1 : ent 1 1 = ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 16) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 16) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 16)) * hI

lemma corner_1_2 : ent 1 2 = ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_2_0 : ent 2 0 = 1 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma corner_2_1 : ent 2 1 = ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (((-1 : ℂ) / 16) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 16) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 16)) * hI

lemma corner_2_2 : ent 2 2 = ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) := by
  simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
  all_goals linear_combination (0 : ℂ) * h3

lemma X_val : (-(1 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I))) = 9 / 4 := by
  all_goals linear_combination (((1 : ℂ) / 256) * a3 ^ 2 * a5 ^ 4 * Complex.I ^ 4 + ((3 : ℂ) / 256) * a5 ^ 4 * Complex.I ^ 4 + ((3 : ℂ) / 128) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((9 : ℂ) / 256) * a5 ^ 2 * Complex.I ^ 4 + ((45 : ℂ) / 256) * Complex.I ^ 4 + ((9 : ℂ) / 128) * Complex.I ^ 2) * h5 + (((225 : ℂ) / 256) * Complex.I ^ 2 + ((-135 : ℂ) / 256)) * hI

lemma Z_val : (-(1 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 * ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) * ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 * ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) * ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I))) = 9 / 16 := by
  all_goals linear_combination (((1 : ℂ) / 65536) * a3 ^ 6 * a5 ^ 8 * Complex.I ^ 8 + ((3 : ℂ) / 65536) * a3 ^ 4 * a5 ^ 8 * Complex.I ^ 8 + ((7 : ℂ) / 16384) * a3 ^ 4 * a5 ^ 6 * Complex.I ^ 6 + ((9 : ℂ) / 65536) * a3 ^ 2 * a5 ^ 8 * Complex.I ^ 8 + ((21 : ℂ) / 16384) * a3 ^ 2 * a5 ^ 6 * Complex.I ^ 6 + ((371 : ℂ) / 32768) * a3 ^ 2 * a5 ^ 4 * Complex.I ^ 4 + ((27 : ℂ) / 65536) * a5 ^ 8 * Complex.I ^ 8 + ((63 : ℂ) / 16384) * a5 ^ 6 * Complex.I ^ 6 + ((1113 : ℂ) / 32768) * a5 ^ 4 * Complex.I ^ 4 + ((2679 : ℂ) / 16384) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((81 : ℂ) / 65536) * a5 ^ 6 * Complex.I ^ 8 + ((405 : ℂ) / 65536) * a5 ^ 4 * Complex.I ^ 8 + ((189 : ℂ) / 16384) * a5 ^ 4 * Complex.I ^ 6 + ((2025 : ℂ) / 65536) * a5 ^ 2 * Complex.I ^ 8 + ((945 : ℂ) / 16384) * a5 ^ 2 * Complex.I ^ 6 + ((3339 : ℂ) / 32768) * a5 ^ 2 * Complex.I ^ 4 + ((10125 : ℂ) / 65536) * Complex.I ^ 8 + ((4725 : ℂ) / 16384) * Complex.I ^ 6 + ((16695 : ℂ) / 32768) * Complex.I ^ 4 + ((8037 : ℂ) / 16384) * Complex.I ^ 2) * h5 + (((50625 : ℂ) / 65536) * Complex.I ^ 6 + ((43875 : ℂ) / 65536) * Complex.I ^ 4 + ((123075 : ℂ) / 65536) * Complex.I ^ 2 + ((37665 : ℂ) / 65536)) * hI

lemma J_val : (-(1 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 * ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) * ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I))) + (-(1 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 * ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) * ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I))) * (-(1 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 + ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I))) = 27 / 8 := by
  all_goals linear_combination (((-1 : ℂ) / 32768) * a3 ^ 6 * a5 ^ 8 * Complex.I ^ 8 + ((-3 : ℂ) / 32768) * a3 ^ 4 * a5 ^ 8 * Complex.I ^ 8 + ((-13 : ℂ) / 8192) * a3 ^ 4 * a5 ^ 6 * Complex.I ^ 6 + ((-9 : ℂ) / 32768) * a3 ^ 2 * a5 ^ 8 * Complex.I ^ 8 + ((-39 : ℂ) / 8192) * a3 ^ 2 * a5 ^ 6 * Complex.I ^ 6 + ((-495 : ℂ) / 16384) * a3 ^ 2 * a5 ^ 4 * Complex.I ^ 4 + ((-27 : ℂ) / 32768) * a5 ^ 8 * Complex.I ^ 8 + ((-117 : ℂ) / 8192) * a5 ^ 6 * Complex.I ^ 6 + ((-1485 : ℂ) / 16384) * a5 ^ 4 * Complex.I ^ 4 + ((-5481 : ℂ) / 8192) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-81 : ℂ) / 32768) * a5 ^ 6 * Complex.I ^ 8 + ((-405 : ℂ) / 32768) * a5 ^ 4 * Complex.I ^ 8 + ((-351 : ℂ) / 8192) * a5 ^ 4 * Complex.I ^ 6 + ((-2025 : ℂ) / 32768) * a5 ^ 2 * Complex.I ^ 8 + ((-1755 : ℂ) / 8192) * a5 ^ 2 * Complex.I ^ 6 + ((-4455 : ℂ) / 16384) * a5 ^ 2 * Complex.I ^ 4 + ((-10125 : ℂ) / 32768) * Complex.I ^ 8 + ((-8775 : ℂ) / 8192) * Complex.I ^ 6 + ((-22275 : ℂ) / 16384) * Complex.I ^ 4 + ((-16443 : ℂ) / 8192) * Complex.I ^ 2) * h5 + (((-50625 : ℂ) / 32768) * Complex.I ^ 6 + ((-124875 : ℂ) / 32768) * Complex.I ^ 4 + ((-97875 : ℂ) / 32768) * Complex.I ^ 2 + ((-230985 : ℂ) / 32768)) * hI

lemma Qmul : ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) * ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) = 1 := by
  all_goals linear_combination (((-1 : ℂ) / 16) * a5 ^ 2 * Complex.I ^ 2) * h3 + (((-3 : ℂ) / 16) * Complex.I ^ 2) * h5 + (((-15 : ℂ) / 16)) * hI

lemma unit_all (a b : Fin 6) : ent a b * entc a b = 1 := by
  fin_cases a <;> fin_cases b
  exacts [unit_0_0, unit_0_1, unit_0_2, unit_0_3, unit_0_4, unit_0_5, unit_1_0, unit_1_1, unit_1_2, unit_1_3, unit_1_4, unit_1_5, unit_2_0, unit_2_1, unit_2_2, unit_2_3, unit_2_4, unit_2_5, unit_3_0, unit_3_1, unit_3_2, unit_3_3, unit_3_4, unit_3_5, unit_4_0, unit_4_1, unit_4_2, unit_4_3, unit_4_4, unit_4_5, unit_5_0, unit_5_1, unit_5_2, unit_5_3, unit_5_4, unit_5_5]

lemma gram_all (a b : Fin 6) : ∑ k, ent a k * entc b k = if a = b then 6 else 0 := by
  fin_cases a <;> fin_cases b
  · exact (Fin.sum_univ_six _).trans (gram_0_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_0_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_0_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_0_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_0_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_0_5.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_1_5.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_2_5.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_3_5.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_4_5.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_0.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_1.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_2.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_3.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_4.trans (by simp))
  · exact (Fin.sum_univ_six _).trans (gram_5_5.trans (by simp))

/-! ### The matrix -/

/-- The explicit matched completion at the base anchor. -/
def H0 : Mat6 := Matrix.of fun i j => ent (finSumFinEquiv i) (finSumFinEquiv j)

lemma isHadamard_H0 : Hadamard6.IsHadamard H0 := by
  refine ⟨fun i j => ?_, ?_⟩
  · have := unit_all (finSumFinEquiv i) (finSumFinEquiv j)
    rw [← conj_ent] at this
    exact normSq_of_mul_conj this
  · ext i j
    simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, H0, Matrix.of_apply, Complex.star_def, conj_ent]
    rw [Equiv.sum_comp (finSumFinEquiv : Fin 3 ⊕ Fin 3 ≃ Fin 6)
      (fun k : Fin 6 => ent (finSumFinEquiv i) k * entc (finSumFinEquiv j) k), gram_all]
    simp [Matrix.smul_apply, Matrix.one_apply, finSumFinEquiv.injective.eq_iff]

def H0had : Had6 := ⟨H0, isHadamard_H0⟩

/-! ### The base seed -/

lemma coe_qC : (qC : ℂ) = (1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I := by
  rw [qC, Circle.coe_exp]
  apply Complex.ext
  · rw [Complex.exp_ofReal_mul_I_re, Real.cos_arccos (by norm_num) (by norm_num)]; simp [a3, a5]
  · rw [Complex.exp_ofReal_mul_I_im, Real.sin_arccos]
    have e : (Real.sqrt 3 * Real.sqrt 5 / 4) ^ 2 = 15 / 16 := by
      rw [div_pow, mul_pow, Real.sq_sqrt (by norm_num), Real.sq_sqrt (by norm_num)]; norm_num
    rw [show (1 : ℝ) - (1 / 4) ^ 2 = 15 / 16 by norm_num, ← e, Real.sqrt_sq (by positivity)]
    simp [a3, a5]

lemma coe_qC_inv : ((qC : ℂ))⁻¹ = (1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I := by
  rw [← conj_circ, coe_qC]; simp [c3, c5, Complex.conj_I, map_ofNat]
  all_goals ring

lemma baseE_eq : anchorE (0, true, 0, 0) = ![((0 : ZMod 3), (2 : ℤ)), (0, 1), (0, -2), (0, -1)] := by decide

lemma base_coe : (baseAnchor.1 0 : ℂ) = ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) ^ 2 ∧
    (baseAnchor.1 1 : ℂ) = (1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I ∧
    (baseAnchor.1 2 : ℂ) = ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) ^ 2 ∧
    (baseAnchor.1 3 : ℂ) = (1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I := by
  have hb : baseAnchor.1 = toSeed ![((0 : ZMod 3), (2 : ℤ)), (0, 1), (0, -2), (0, -1)] := by
    rw [show baseAnchor.1 = anchorSeed (0, true, 0, 0) from rfl, anchorSeed_toSeed, baseE_eq]
  have m : ∀ n : ℤ, (mono ((0 : ZMod 3), n) : ℂ) = (qC : ℂ) ^ n := by
    intro n; simp [mono, Circle.coe_zpow]
  rw [hb]
  refine ⟨?_, ?_, ?_, ?_⟩
  · show (mono ((0 : ZMod 3), (2 : ℤ)) : ℂ) = _
    rw [m, zpow_ofNat, coe_qC]
  · show (mono ((0 : ZMod 3), (1 : ℤ)) : ℂ) = _
    rw [m, zpow_one, coe_qC]
  · show (mono ((0 : ZMod 3), (-2 : ℤ)) : ℂ) = _
    rw [m, _root_.zpow_neg, zpow_ofNat, ← inv_pow, coe_qC_inv]
  · show (mono ((0 : ZMod 3), (-1 : ℤ)) : ℂ) = _
    rw [m, _root_.zpow_neg_one, coe_qC_inv]

lemma lead_H0 : leadingBlock H0 = seedCorner baseAnchor.1 := by
  obtain ⟨b0, b1, b2, b3⟩ := base_coe
  ext i j
  simp only [leadingBlock, H0, Matrix.of_apply, seedCorner, corner, b0, b1, b2, b3]
  fin_cases i <;> fin_cases j
  · exact corner_0_0
  · exact corner_0_1
  · exact corner_0_2
  · exact corner_1_0
  · exact corner_1_1
  · exact corner_1_2
  · exact corner_2_0
  · exact corner_2_1
  · exact corner_2_2

lemma deph_H0 : Dephased H0 := by
  have e0 : (finSumFinEquiv : Fin 3 ⊕ Fin 3 ≃ Fin 6) (Sum.inl 0) = 0 := rfl
  refine ⟨fun j => ?_, fun i => ?_⟩
  · simp only [H0, Matrix.of_apply, e0]
    generalize finSumFinEquiv j = k
    fin_cases k <;> simp [ent]
  · simp only [H0, Matrix.of_apply, e0]
    generalize finSumFinEquiv i = k
    fin_cases k <;> simp [ent]

lemma chi_base : seedChi baseAnchor.1 = -5103 / 64 := by
  obtain ⟨b0, b1, b2, b3⟩ := base_coe
  have conjQ : conj ((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I) = (1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I := by
    simp [c3, c5, Complex.conj_I, map_ofNat]
    all_goals ring
  have conjQB : conj ((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I) = (1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I := by
    simp [c3, c5, Complex.conj_I, map_ofNat]
    all_goals ring
  have hX : seedX baseAnchor.1 = 9 / 4 := by
    apply Complex.ofReal_injective
    rw [seedX, ← Complex.mul_conj, seedS, b0, b1]
    simp only [map_neg, map_add, map_one, map_pow, conjQ]
    push_cast; linear_combination X_val
  have hY : seedY baseAnchor.1 = 9 / 4 := by
    apply Complex.ofReal_injective
    rw [seedY, ← Complex.mul_conj, seedT, b2, b3]
    simp only [map_neg, map_add, map_one, map_pow, conjQB]
    push_cast; linear_combination X_val
  have hZ : seedZ baseAnchor.1 = 9 / 16 := by
    apply Complex.ofReal_injective
    rw [seedZ, ← Complex.mul_conj, seedRho, b0, b1, b2, b3]
    simp only [Complex.star_def, map_neg, map_add, map_one, map_mul, map_pow, conjQ, conjQB]
    push_cast; linear_combination Z_val
  have hJ : seedJ baseAnchor.1 = 27 / 8 := by
    apply Complex.ofReal_injective
    rw [seedJ, Complex.ofReal_mul, Complex.re_eq_add_conj, seedS, seedT, seedRho, b0, b1, b2, b3]
    simp only [Complex.star_def, map_neg, map_add, map_one, map_mul, map_pow, conjQ, conjQB]
    push_cast; linear_combination J_val
  unfold seedChi seedP
  rw [hX, hY, hZ, hJ]; norm_num

lemma sqrtR_base : Real.sqrt (seedR baseAnchor.1) = 729 / 64 * Real.sqrt 3 := by
  rw [show seedR baseAnchor.1 = 3 ^ 13 / 2 ^ 12 from seedR_anchor _,
    show (3 : ℝ) ^ 13 / 2 ^ 12 = (729 / 64) ^ 2 * 3 by norm_num, Real.sqrt_mul (by norm_num),
    Real.sqrt_sq (by norm_num)]

lemma rightB : rightBlock H0 = !![ent 0 3, ent 0 4, ent 0 5; ent 1 3, ent 1 4, ent 1 5; ent 2 3, ent 2 4, ent 2 5] := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

lemma lowerC : lowerBlock H0 = !![ent 3 0, ent 3 1, ent 3 2; ent 4 0, ent 4 1, ent 4 2; ent 5 0, ent 5 1, ent 5 2] := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

lemma sig_B : 2 * sideSignature (rightBlock H0) = -5103 / 64 + 729 / 64 * a3 * Complex.I := by
  rw [rightB, sig_rows _ (fun j => by fin_cases j <;> simp [ent])]
  simp only [Side.TS, Side.piS, Side.hS, Side.uS, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.head_cons, Matrix.empty_val', Matrix.cons_val_fin_one, Matrix.cons_val_two,
    Matrix.tail_cons, Matrix.head_fin_const]
  rw [pi_B, h_B, h2_B, uc_B, vc_B, s1_B, s2_B, s3_B, two_B]
  ring

lemma sig_C : 2 * sideSignature (lowerBlock H0) = -5103 / 64 - 729 / 64 * a3 * Complex.I := by
  rw [lowerC, sig_cols _ (fun i => by fin_cases i <;> simp [ent])]
  simp only [Side.TS, Side.piS, Side.hS, Side.uS, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.head_cons, Matrix.empty_val', Matrix.cons_val_fin_one, Matrix.cons_val_two,
    Matrix.tail_cons, Matrix.head_fin_const]
  rw [pi_C, h_C, h2_C, uc_C, vc_C, s1_C, s2_C, s3_C, two_C]
  ring

/-- **The base anchor has an explicit matched completion.** -/
theorem matched_H0 : Matched baseAnchor H0had := by
  refine ⟨deph_H0, lead_H0, ?_, ?_⟩
  · show 2 * sideSignature (rightBlock H0) = _
    rw [sig_B, chi_base, sqrtR_base]; simp [a3]
    all_goals ring
  · show 2 * sideSignature (lowerBlock H0) = _
    rw [sig_C, chi_base, sqrtR_base]; simp [a3]
    all_goals ring

end NoFourMUBs.BaseAnchor
