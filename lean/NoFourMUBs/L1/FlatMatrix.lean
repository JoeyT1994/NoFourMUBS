import Hadamard6.BlockCompletion
import NoFourMUBs.Step2.SideAlg

/-!
# Matched flatness: the matrix argument

`proof/coverage/returns/E_matched_flatness/FLATNESS.md` §4.  For sides `B` (horizontal) and `C`
(vertical) of a corner `E`, the forced block `D = forcedD E B C` makes the completion `H` satisfy
`H H* = 6 I` with no flatness assumption.  Its defects `Δᵢⱼ = |Dᵢⱼ|² − 1` have zero row and column
sums, so in the invertible coordinates `W = C̄ᵀ Δ B̄ᵀ` (4.2) the first row and column vanish.  If the four
remaining weighted defects `W p q` (`p, q ≠ 0`) vanish, then `Δ = 0`: `D` is flat and `H` is Hadamard
(`flat_of_W`).

`W_eq` is (4.5): each weighted defect is a contraction of third-moment matrices, which
`Q3_row1`, `Q3_row2` evaluate for a normalised phase side ((4.3), (4.4)).
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.L1

/-- Third moments `Q⁽ᵖ⁾ₐ꜀ = Σⱼ Aₐⱼ Ā꜀ⱼ Āₚⱼ` of a row-normalised side `A` (4.2). -/
def Q3 (A : Mat3) (p : Fin 3) : Mat3 := Matrix.of fun a c => ∑ j, A a j * conj (A c j) * conj (A p j)

/-- The forced-block map `K = −E* (6 − E E*)⁻¹`, so that `forcedD E B C = C K B` on candidates. -/
def Kmap (E : Mat3) : Mat3 := -(Eᴴ * (sixI3 - E * Eᴴ)⁻¹)

/-- The weighted defects (4.2). -/
def W (E B C : Mat3) (p q : Fin 3) : ℂ :=
  ∑ i, ∑ j, conj (C i p) * conj (B q j) * ((Complex.normSq (forcedD E B C i j) : ℂ) - 1)

/-! ### Relabelling (handoff M): permuting the rows of `E` and `B`, or the columns of `E` and `C`

`E′ = P E`, `B′ = P B` (or `E′ = E Q`, `C′ = C Q`) give the same forced block, since `D B* = −C E*` determines it;
so the weighted defects are permuted: `W′ = Q* W P*`. -/

/-- Permuting the rows of `E` and `B` leaves the forced block unchanged. -/
theorem forcedD_rowPerm (σ : Equiv.Perm (Fin 3)) (E B C : Mat3) :
    forcedD (E.submatrix σ id) (B.submatrix σ id) C = forcedD E B C := by
  have hinv : (B.submatrix σ id)⁻¹ = B⁻¹.submatrix id σ :=
    Matrix.inv_submatrix_equiv B σ (Equiv.refl _)
  rw [forcedD, forcedD, hinv, Matrix.conjTranspose_submatrix, Matrix.conjTranspose_submatrix,
    Matrix.mul_assoc, Matrix.mul_assoc]
  congr 1
  rw [show (Eᴴ.submatrix id σ) = Eᴴ.submatrix (Equiv.refl _) σ from rfl,
    show ((B⁻¹)ᴴ.submatrix σ id) = (B⁻¹)ᴴ.submatrix σ (Equiv.refl _) from rfl,
    Matrix.submatrix_mul_equiv]
  rfl

/-- Permuting the columns of `E` and `C` leaves the forced block unchanged. -/
theorem forcedD_colPerm (σ : Equiv.Perm (Fin 3)) (E B C : Mat3) :
    forcedD (E.submatrix id σ) B (C.submatrix id σ) = forcedD E B C := by
  rw [forcedD, forcedD, Matrix.conjTranspose_submatrix,
    show (-C.submatrix id σ) = (-C).submatrix (Equiv.refl _) σ from rfl,
    show (Eᴴ.submatrix σ id) = Eᴴ.submatrix σ (Equiv.refl _) from rfl, Matrix.submatrix_mul_equiv]
  rfl

/-- Row relabelling permutes the second index of the weighted defects. -/
theorem W_rowPerm (σ : Equiv.Perm (Fin 3)) (E B C : Mat3) (p q : Fin 3) :
    W (E.submatrix σ id) (B.submatrix σ id) C p q = W E B C p (σ q) := by
  simp only [W, forcedD_rowPerm, Matrix.submatrix_apply, id]

/-- Column relabelling permutes the first index of the weighted defects. -/
theorem W_colPerm (σ : Equiv.Perm (Fin 3)) (E B C : Mat3) (p q : Fin 3) :
    W (E.submatrix id σ) B (C.submatrix id σ) p q = W E B C (σ p) q := by
  simp only [W, forcedD_colPerm, Matrix.submatrix_apply, id]

/-- On candidates with `B` invertible, `forcedD E B C = C K B`. -/
lemma forcedD_eq_CKB (E B C : Mat3) (hB : B ∈ horizontalCandidates E) (hBdet : IsUnit B.det) :
    forcedD E B C = C * Kmap E * B := by
  have hBB : sixI3 - E * Eᴴ = B * Bᴴ := by rw [← hB.2.2]; abel
  rw [forcedD, Kmap, hBB, Matrix.mul_inv_rev, Matrix.conjTranspose_nonsing_inv]
  simp only [Matrix.mul_neg, Matrix.neg_mul, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hBdet,
    Matrix.mul_one]

/-- The expansion behind (4.5), for arbitrary `C`, `K`, `B`. -/
lemma expand (C K B : Mat3) (p q : Fin 3) :
    ∑ i, ∑ j, conj (C i p) * conj (B q j) * ((Complex.normSq ((C * K * B) i j) : ℂ) - 1) =
    ∑ a, ∑ c, Q3 Cᵀ p a c * (K * Q3 B q * Kᴴ) a c -
      (∑ i, conj (C i p)) * (∑ j, conj (B q j)) := by
  simp only [← Complex.mul_conj, Matrix.mul_apply, Fin.sum_univ_three, Q3, Matrix.of_apply,
    Matrix.transpose_apply, Matrix.conjTranspose_apply, map_add, map_mul, Complex.star_def]
  ring

/-- (4.5): a weighted defect as a contraction of third moments. -/
theorem W_eq (E B C : Mat3) (hB : B ∈ horizontalCandidates E) (hC : C ∈ verticalCandidates E)
    (hBdet : IsUnit B.det) (p q : Fin 3) :
    W E B C p q = ∑ a, ∑ c, Q3 Cᵀ p a c * (Kmap E * Q3 B q * (Kmap E)ᴴ) a c -
      (∑ i, conj (C i p)) * (∑ j, conj (B q j)) := by
  rw [W, forcedD_eq_CKB E B C hB hBdet, expand]

set_option maxHeartbeats 800000 in
/-- `Retained.bottomRowGram` with the hypotheses it actually uses. -/
theorem bottomRowGram' (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det) :
    C * Cᴴ + forcedD E B C * (forcedD E B C)ᴴ = sixI3 := by
  let Q : Mat3 := (Bᴴ)⁻¹ * B⁻¹
  have hBstar : IsUnit (Bᴴ).det := by
    rw [Matrix.det_conjTranspose]; exact hBdet.map (starRingEnd ℂ)
  have hCstar : IsUnit (Cᴴ).det := by
    rw [Matrix.det_conjTranspose]; exact hCdet.map (starRingEnd ℂ)
  have hsix : sixI3 = (6 : Mat3) := by
    ext i j; simp [sixI3, Matrix.one_apply, Matrix.ofNat_apply]
  have hBQ : (B * Bᴴ) * Q = 1 := by
    calc (B * Bᴴ) * Q = B * (Bᴴ * (Bᴴ)⁻¹) * B⁻¹ := by simp only [Q]; noncomm_ring
      _ = 1 := by rw [Matrix.mul_nonsing_inv _ hBstar, Matrix.mul_one, Matrix.mul_nonsing_inv _ hBdet]
  have hBB : B * Bᴴ = sixI3 - E * Eᴴ := by rw [← hB.2.2]; abel
  have hCC : Cᴴ * C = sixI3 - Eᴴ * E := by rw [← hC.2.2]; abel
  have hSQraw := congrArg (fun X : Mat3 ↦ X * Q) hBB
  have hSQ : 1 = sixI3 * Q - (E * Eᴴ) * Q := by
    rw [hBQ] at hSQraw; simpa [Matrix.sub_mul] using hSQraw
  have hAAQ : (E * Eᴴ) * Q = sixI3 * Q - 1 := by rw [hSQ]; abel
  let M : Mat3 := 1 + Eᴴ * Q * E
  have hCM : (Cᴴ * C) * M = sixI3 := by
    rw [hCC]
    simp only [M]
    calc (sixI3 - Eᴴ * E) * (1 + Eᴴ * Q * E) =
          sixI3 - Eᴴ * E + sixI3 * (Eᴴ * Q * E) - Eᴴ * ((E * Eᴴ) * Q) * E := by noncomm_ring
      _ = sixI3 - Eᴴ * E + sixI3 * (Eᴴ * Q * E) - Eᴴ * (sixI3 * Q - 1) * E := by rw [hAAQ]
      _ = sixI3 := by rw [hsix]; noncomm_ring
  have hCMC : C * M * Cᴴ = sixI3 := by
    calc C * M * Cᴴ = (Cᴴ)⁻¹ * ((Cᴴ * C) * M) * Cᴴ := by
          symm
          calc (Cᴴ)⁻¹ * ((Cᴴ * C) * M) * Cᴴ = ((Cᴴ)⁻¹ * Cᴴ) * C * M * Cᴴ := by noncomm_ring
            _ = C * M * Cᴴ := by rw [Matrix.nonsing_inv_mul _ hCstar, Matrix.one_mul]
      _ = (Cᴴ)⁻¹ * sixI3 * Cᴴ := by rw [hCM]
      _ = sixI3 := by
        rw [hsix]
        calc (Cᴴ)⁻¹ * (6 : Mat3) * Cᴴ = (6 : Mat3) * ((Cᴴ)⁻¹ * Cᴴ) := by noncomm_ring
          _ = (6 : Mat3) := by rw [Matrix.nonsing_inv_mul _ hCstar, Matrix.mul_one]
  rw [forcedD_conjTranspose]
  unfold forcedD
  simp only [Matrix.neg_mul, Matrix.mul_neg, neg_neg]
  rw [Matrix.conjTranspose_nonsing_inv]
  have hlast : C * Cᴴ + C * Eᴴ * (Bᴴ)⁻¹ * (B⁻¹ * E * Cᴴ) = C * M * Cᴴ := by
    simp only [M, Q]; noncomm_ring
  exact hlast.trans hCMC

/-- The completion satisfies `H H* = 6 I` with no flatness assumption (§4.1). -/
theorem completion_rowGram' (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det) :
    completion E B C * (completion E B C)ᴴ = (6 : ℂ) • (1 : Mat6) := by
  have hlower : C * Eᴴ + forcedD E B C * Bᴴ = 0 := by
    have hstar := congrArg Matrix.conjTranspose (forcedD_row_cross E B C hBdet)
    simpa [Matrix.conjTranspose_add, Matrix.mul_assoc] using hstar
  rw [completion_rowGram_blocks, hB.2.2, forcedD_row_cross E B C hBdet, hlower,
    bottomRowGram' E B C hB hC hBdet hCdet]
  ext i j
  rcases i with i | i <;> rcases j with j | j
  · simp [sixI3, Matrix.one_apply]
  · simp
  · simp
  · simp [sixI3, Matrix.one_apply]

/-- ... and hence also `H* H = 6 I`. -/
theorem completion_colGram' (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det) :
    (completion E B C)ᴴ * completion E B C = (6 : ℂ) • (1 : Mat6) := by
  set H := completion E B C
  have h := completion_rowGram' E B C hB hC hBdet hCdet
  have h1 : H * ((6⁻¹ : ℂ) • Hᴴ) = 1 := by
    rw [Matrix.mul_smul, h, smul_smul]; norm_num
  have h2 := mul_eq_one_comm.mp h1
  rw [Matrix.smul_mul] at h2
  calc Hᴴ * H = (6 : ℂ) • ((6⁻¹ : ℂ) • (Hᴴ * H)) := by rw [smul_smul]; norm_num
    _ = (6 : ℂ) • (1 : Mat6) := by rw [h2]

/-- The defects of each lower row sum to zero (4.1). -/
lemma defect_row_sum (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det) (i : Fin 3) :
    ∑ j, ((Complex.normSq (forcedD E B C i j) : ℂ) - 1) = 0 := by
  have h := congrFun (congrFun (completion_rowGram' E B C hB hC hBdet hCdet) (Sum.inr i)) (Sum.inr i)
  simp only [Matrix.mul_apply, Fintype.sum_sum_type, completion, Matrix.conjTranspose_apply,
    Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂, Complex.star_def, Complex.mul_conj,
    hC.1 i, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul] at h
  simp only [Fin.sum_univ_three] at h ⊢
  push_cast at h
  linear_combination h

/-- The defects of each right column sum to zero (4.1). -/
lemma defect_col_sum (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det) (j : Fin 3) :
    ∑ i, ((Complex.normSq (forcedD E B C i j) : ℂ) - 1) = 0 := by
  have h := congrFun (congrFun (completion_colGram' E B C hB hC hBdet hCdet) (Sum.inr j)) (Sum.inr j)
  simp only [Matrix.mul_apply, Fintype.sum_sum_type, completion, Matrix.conjTranspose_apply,
    Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₂, Complex.star_def, mul_comm (conj _),
    Complex.mul_conj, hB.1 _ j, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul] at h
  simp only [Fin.sum_univ_three] at h ⊢
  push_cast at h
  linear_combination h

/-- First conjunct of §4.1: the four weighted defects force `D` flat (no hypothesis on `E`). -/
theorem forcedD_entrywiseUnit_of_W (E B C : Mat3) (hB : B ∈ horizontalCandidates E)
    (hC : C ∈ verticalCandidates E) (hBdet : IsUnit B.det) (hCdet : IsUnit C.det)
    (hW : ∀ p q : Fin 3, p ≠ 0 → q ≠ 0 → W E B C p q = 0) :
    EntrywiseUnit (forcedD E B C) := by
  set Δ : Mat3 := Matrix.of fun i j => (Complex.normSq (forcedD E B C i j) : ℂ) - 1 with hΔ
  have hWm : ∀ p q, (Cᴴ * Δ * Bᴴ) p q = W E B C p q := by
    intro p q
    simp only [W, Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def, hΔ,
      Matrix.of_apply, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
  have hW0 : Cᴴ * Δ * Bᴴ = 0 := by
    ext p q
    rw [hWm, Matrix.zero_apply]
    by_cases hp : p = 0
    · subst hp
      simp only [W, hC.2.1, map_one, one_mul]
      rw [Finset.sum_comm]
      simp only [← Finset.mul_sum, defect_col_sum E B C hB hC hBdet hCdet, mul_zero,
        Finset.sum_const_zero]
    by_cases hq : q = 0
    · subst hq
      simp only [W, hB.2.1, map_one, mul_one]
      simp only [← Finset.mul_sum, defect_row_sum E B C hB hC hBdet hCdet, mul_zero,
        Finset.sum_const_zero]
    exact hW p q hp hq
  have hBstar : IsUnit (Bᴴ).det := by
    rw [Matrix.det_conjTranspose]; exact hBdet.map (starRingEnd ℂ)
  have hCstar : IsUnit (Cᴴ).det := by
    rw [Matrix.det_conjTranspose]; exact hCdet.map (starRingEnd ℂ)
  have hΔ0 : Δ = 0 := by
    calc Δ = ((Cᴴ)⁻¹ * Cᴴ) * Δ * (Bᴴ * (Bᴴ)⁻¹) := by
          rw [Matrix.nonsing_inv_mul _ hCstar, Matrix.mul_nonsing_inv _ hBstar]; simp
      _ = (Cᴴ)⁻¹ * (Cᴴ * Δ * Bᴴ) * (Bᴴ)⁻¹ := by simp only [Matrix.mul_assoc]
      _ = 0 := by rw [hW0]; simp
  intro i j
  have := congrFun (congrFun hΔ0 i) j
  simp only [hΔ, Matrix.of_apply, Matrix.zero_apply, sub_eq_zero] at this
  exact_mod_cast this

/-- **Flatness from the four weighted defects** (§4.1), for a unimodular corner `E`. -/
theorem flat_of_W (E B C : Mat3) (hE : EntrywiseUnit E)
    (hB : B ∈ horizontalCandidates E) (hC : C ∈ verticalCandidates E)
    (hBdet : IsUnit B.det) (hCdet : IsUnit C.det)
    (hW : ∀ p q : Fin 3, p ≠ 0 → q ≠ 0 → W E B C p q = 0) :
    EntrywiseUnit (forcedD E B C) ∧ Hadamard6.IsHadamard (completion E B C) := by
  have hD := forcedD_entrywiseUnit_of_W E B C hB hC hBdet hCdet hW
  refine ⟨hD, ?_, completion_rowGram' E B C hB hC hBdet hCdet⟩
  intro i j
  rcases i with i | i <;> rcases j with j | j
  · exact hE i j
  · exact hB.1 i j
  · exact hC.1 i j
  · exact hD i j


/-- The normalised side with rows `1, x, y`. -/
def sideMat (x y : Fin 3 → ℂ) : Mat3 := Matrix.of ![fun _ => 1, x, y]

/-- (4.3): third moments against the second row. -/
theorem Q3_row1 (x y : Fin 3 → ℂ) (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    Q3 (sideMat x y) 1 =
      let s := sS x; let t := sS y; let r := rS x y; let u := uS x; let π := piS x y
      !![conj s, conj s ^ 2 - 2 * s * conj u, conj s * conj t - conj π;
         3, conj s, conj t;
         r, conj s * r - conj u * π, conj s] := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have h2 := ne_zero_of_normSq (hx 2)
  have k0 := ne_zero_of_normSq (hy 0); have k1 := ne_zero_of_normSq (hy 1)
  have k2 := ne_zero_of_normSq (hy 2)
  ext a c
  fin_cases a <;> fin_cases c <;>
    simp [Q3, sideMat, Fin.sum_univ_three, sS, rS, uS, piS, map_add, map_mul, cx, cy] <;>
      field_simp <;> ring

/-- (4.4): third moments against the third row. -/
theorem Q3_row2 (x y : Fin 3 → ℂ) (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    Q3 (sideMat x y) 2 =
      let s := sS x; let t := sS y; let r := rS x y; let v := uS y; let π := piS x y
      !![conj t, conj s * conj t - conj π, conj t ^ 2 - 2 * t * conj v;
         conj r, conj t, conj t * conj r - conj v * π;
         3, conj s, conj t] := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have h2 := ne_zero_of_normSq (hx 2)
  have k0 := ne_zero_of_normSq (hy 0); have k1 := ne_zero_of_normSq (hy 1)
  have k2 := ne_zero_of_normSq (hy 2)
  ext a c
  fin_cases a <;> fin_cases c <;>
    simp [Q3, sideMat, Fin.sum_univ_three, sS, rS, uS, piS, map_add, map_mul, cx, cy] <;>
      field_simp <;> ring

end NoFourMUBs.L1
