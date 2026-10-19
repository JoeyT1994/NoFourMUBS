import NoFourMUBs.Step1.AnchorOrbit
import NoFourMUBs.Step2.MatchedUnique

/-!
# Transporting matched completions along the corner moves; one anchor suffices

A corner move permutes two of the first three rows (or columns) of a matched matrix and re-dephases.  The
side signatures are invariant (permutations and unit phases), and so are `R` and `χ` (they are symmetric in
`X, Y, Z`, which the moves permute, and `J` is fixed).  Hence a matched completion at `s` gives an equivalent
matched completion at `move k s` (`matched_move`).

With the orbit theorems `anchorSeed_eq` and `anchorSeed_back`, a matched completion at one anchor moves to every
anchor (`matched_anchor_transport`).  So an open and closed set of strict seeds that contains one matched seed and is
stable in this sense is every strict seed (`eq_univ_of_anchor_transport`), which is how both side existence
(`L1.sides_all`) and coverage (`coverage_of_matched_density`) start from the Fourier family (`FourierAnchor`).
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Step1Geo

noncomputable section

namespace NoFourMUBs.Step2

/-! ### Signatures under permutations and phases -/

lemma permanent3_submatrix (B : Mat3) (π τ : Equiv.Perm (Fin 3)) :
    permanent3 (B.submatrix π τ) = permanent3 B := by
  unfold permanent3
  simp only [Matrix.submatrix_apply]
  have h1 : ∀ σ : Equiv.Perm (Fin 3), ∏ i, B (π i) (τ (σ i)) = ∏ i, B i ((τ * σ * π⁻¹) i) := by
    intro σ
    rw [← Equiv.prod_comp π (fun i => B i ((τ * σ * π⁻¹) i))]
    simp [Equiv.Perm.mul_apply]
  simp only [h1]
  exact Equiv.sum_comp ((Equiv.mulLeft τ).trans (Equiv.mulRight π⁻¹)) (fun σ => ∏ i, B i (σ i))

lemma sideSignature_submatrix (B : Mat3) (π τ : Equiv.Perm (Fin 3)) :
    sideSignature (B.submatrix π τ) = sideSignature B := by
  unfold sideSignature
  rw [permanent3_submatrix]
  have hd : (B.submatrix π τ).det ^ 2 = B.det ^ 2 := by
    have : B.submatrix π τ = (B.submatrix π id).submatrix id τ := rfl
    rw [this, Matrix.det_permute', Matrix.det_permute]
    have s1 : ((Equiv.Perm.sign π : ℤ) : ℂ) ^ 2 = 1 := by
      rcases Int.units_eq_one_or (Equiv.Perm.sign π) with h | h <;> simp [h]
    have s2 : ((Equiv.Perm.sign τ : ℤ) : ℂ) ^ 2 = 1 := by
      rcases Int.units_eq_one_or (Equiv.Perm.sign τ) with h | h <;> simp [h]
    linear_combination (B.det ^ 2 * ((Equiv.Perm.sign π : ℤ) : ℂ) ^ 2) * s2 + B.det ^ 2 * s1
  have hp : ∏ i, ∏ j, star (B.submatrix π τ i j) = ∏ i, ∏ j, star (B i j) := by
    simp only [Matrix.submatrix_apply]
    rw [← Equiv.prod_comp π (fun i => ∏ j, star (B i j))]
    exact Finset.prod_congr rfl fun i _ => Equiv.prod_comp τ (fun j => star (B (π i) j))
  rw [hd, hp]

lemma sideSignature_scale (B : Mat3) (r c : Fin 3 → ℂ) (hr : ∀ i, r i * conj (r i) = 1)
    (hc : ∀ j, c j * conj (c j) = 1) :
    sideSignature (Matrix.of fun i j => r i * B i j * c j) = sideSignature B := by
  have key : sideSignature (Matrix.of fun i j => r i * B i j * c j) = sideSignature B *
      ((r 0 * conj (r 0)) * (r 1 * conj (r 1)) * (r 2 * conj (r 2))) ^ 3 *
      ((c 0 * conj (c 0)) * (c 1 * conj (c 1)) * (c 2 * conj (c 2))) ^ 3 := by
    rw [sideSignature, sideSignature, permanent3_expand, permanent3_expand, Matrix.det_fin_three,
      Matrix.det_fin_three]
    simp only [Matrix.of_apply, Fin.prod_univ_three, star_mul', Complex.star_def]
    ring
  rw [key, hr, hr, hr, hc, hc, hc]; ring

/-! ### Invariants under the moves -/

lemma circ_mul_conj (z : Circle) : (z : ℂ) * conj (z : ℂ) = 1 := by
  rw [Complex.mul_conj, Circle.normSq_coe, Complex.ofReal_one]

lemma conj_circ_mul (z : Circle) : conj (z : ℂ) * (z : ℂ) = 1 := by rw [mul_comm, circ_mul_conj]

lemma inv_coe (z : Circle) : ((z⁻¹ : Circle) : ℂ) = conj (z : ℂ) := Circle.coe_inv_eq_conj z

lemma invariants_of {p p' : Seed} (hX : seedX p' = seedX p ∧ seedY p' = seedY p ∧ seedZ p' = seedZ p ∨
      seedX p' = seedY p ∧ seedY p' = seedX p ∧ seedZ p' = seedZ p ∨
      seedX p' = seedX p ∧ seedY p' = seedZ p ∧ seedZ p' = seedY p)
    (hJ : seedJ p' = seedJ p) : seedR p' = seedR p ∧ seedChi p' = seedChi p := by
  unfold seedR seedChi seedG seedEta seedP
  rw [hJ]
  rcases hX with ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ <;> rw [a, b, c] <;> constructor <;> ring

lemma re_conj_eq (w : ℂ) : (conj w).re = w.re := Complex.conj_re w

lemma conj_circ (z : Circle) : conj (z : ℂ) = (z : ℂ)⁻¹ := by
  rw [← Circle.coe_inv_eq_conj, Circle.coe_inv]

/-- Each of `X, Y, Z, J` of a moved seed is a Laurent identity in the four phases. -/
macro "seed_inv" : tactic => `(tactic| (
  apply Complex.ofReal_injective
  simp only [seedX, seedY, seedZ, seedJ, seedS, seedT, seedRho, Complex.ofReal_mul, Complex.ofReal_ofNat,
    ← Complex.mul_conj, Complex.re_eq_add_conj]
  simp [move, mR12, mC12, mR01, mC01, Complex.star_def, conj_circ]
  all_goals field_simp
  all_goals ring))

theorem move_invariants (k : Fin 4) (p : Seed) :
    seedR (move k p) = seedR p ∧ seedChi (move k p) = seedChi p := by
  have n0 := Circle.coe_ne_zero (p 0); have n1 := Circle.coe_ne_zero (p 1)
  have n2 := Circle.coe_ne_zero (p 2); have n3 := Circle.coe_ne_zero (p 3)
  apply invariants_of
  · fin_cases k
    · exact Or.inr (Or.inl ⟨by seed_inv, by seed_inv, by seed_inv⟩)
    · exact Or.inl ⟨by seed_inv, by seed_inv, by seed_inv⟩
    · exact Or.inr (Or.inr ⟨by seed_inv, by seed_inv, by seed_inv⟩)
    · exact Or.inl ⟨by seed_inv, by seed_inv, by seed_inv⟩
  · fin_cases k <;> seed_inv

/-! ### The moved matrix -/

/-- Permute the first three rows by `π`, the first three columns by `π'`, then rescale rows and columns. -/
def genK (H : Mat6) (π π' : Equiv.Perm (Fin 3)) (r c : I6 → ℂ) : Mat6 :=
  Matrix.of fun i j => r i * H (Equiv.sumCongr π (Equiv.refl I3) i) (Equiv.sumCongr π' (Equiv.refl I3) j) * c j

lemma normSq_of_mul_conj {z : ℂ} (h : z * conj z = 1) : Complex.normSq z = 1 := by
  rw [Complex.mul_conj] at h; exact_mod_cast h

lemma entry_mul_conj (H : Had6) (i j : I6) : H.1 i j * conj (H.1 i j) = 1 := by
  rw [Complex.mul_conj, H.2.1 i j, Complex.ofReal_one]

theorem matched_genK {s s' : StrictSeed} {H : Had6} (hH : Matched s H) (π π' : Equiv.Perm (Fin 3))
    (r c : I6 → ℂ) (hr : ∀ i, r i * conj (r i) = 1) (hc : ∀ j, c j * conj (c j) = 1)
    (hR : seedR s'.1 = seedR s.1) (hχ : seedChi s'.1 = seedChi s.1)
    (hdeph : Dephased (genK H.1 π π' r c)) (hlead : leadingBlock (genK H.1 π π' r c) = seedCorner s'.1) :
    ∃ K : Had6, Matched s' K ∧ Equivalent H.1 K.1 := by
  have heq : Equivalent H.1 (genK H.1 π π' r c) :=
    ⟨_, _, r, c, fun i => normSq_of_mul_conj (hr i), fun j => normSq_of_mul_conj (hc j), fun i j => rfl⟩
  refine ⟨⟨_, isHadamard_of_equivalent heq H.2⟩, ⟨hdeph, hlead, ?_, ?_⟩, heq⟩
  · have e : rightBlock (genK H.1 π π' r c) =
        Matrix.of fun i j => r (Sum.inl i) * ((rightBlock H.1).submatrix π (Equiv.refl (Fin 3))) i j * c (Sum.inr j) := rfl
    show 2 * sideSignature (rightBlock (genK H.1 π π' r c)) = _
    rw [e, sideSignature_scale _ _ _ (fun i => hr _) (fun j => hc _), sideSignature_submatrix, hR, hχ]
    exact hH.2.2.1
  · have e : lowerBlock (genK H.1 π π' r c) =
        Matrix.of fun i j => r (Sum.inr i) * ((lowerBlock H.1).submatrix (Equiv.refl (Fin 3)) π') i j * c (Sum.inl j) := rfl
    show 2 * sideSignature (lowerBlock (genK H.1 π π' r c)) = _
    rw [e, sideSignature_scale _ _ _ (fun i => hr _) (fun j => hc _), sideSignature_submatrix, hR, hχ]
    exact hH.2.2.2

lemma one_mul_conj : (1 : ℂ) * conj 1 = 1 := by simp

/-- **A matched completion moves along each corner move.** -/
theorem matched_move (k : Fin 4) {s : StrictSeed} {H : Had6} (hH : Matched s H) :
    ∃ K : Had6, Matched ⟨move k s.1, by rw [(move_invariants k s.1).1]; exact s.2⟩ K ∧ Equivalent H.1 K.1 := by
  obtain ⟨hR, hχ⟩ := move_invariants k s.1
  have hE : ∀ a b, H.1 (Sum.inl a) (Sum.inl b) = seedCorner s.1 a b :=
    fun a b => congrFun (congrFun hH.2.1 a) b
  have hrow := hH.1.1
  have hcol := hH.1.2
  have n0 := Circle.coe_ne_zero (s.1 0); have n1 := Circle.coe_ne_zero (s.1 1)
  have n2 := Circle.coe_ne_zero (s.1 2); have n3 := Circle.coe_ne_zero (s.1 3)
  fin_cases k
  · -- swap rows 1, 2
    refine matched_genK hH (Equiv.swap 1 2) 1 (fun _ => 1) (fun _ => 1) (fun _ => one_mul_conj)
      (fun _ => one_mul_conj) hR hχ ⟨fun j => ?_, fun i => ?_⟩ ?_
    · simpa [genK, Equiv.swap_apply_of_ne_of_ne] using hrow (Equiv.sumCongr 1 (Equiv.refl I3) j)
    · simpa [genK] using hcol (Equiv.sumCongr (Equiv.swap 1 2) (Equiv.refl I3) i)
    · ext i j
      simp only [leadingBlock, genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, one_mul, mul_one,
        hE]
      fin_cases i <;> fin_cases j <;> simp [seedCorner, corner, move, mR12, Equiv.swap_apply_def]
  · -- swap columns 1, 2
    refine matched_genK hH 1 (Equiv.swap 1 2) (fun _ => 1) (fun _ => 1) (fun _ => one_mul_conj)
      (fun _ => one_mul_conj) hR hχ ⟨fun j => ?_, fun i => ?_⟩ ?_
    · simpa [genK] using hrow (Equiv.sumCongr (Equiv.swap 1 2) (Equiv.refl I3) j)
    · simpa [genK, Equiv.swap_apply_of_ne_of_ne] using hcol (Equiv.sumCongr 1 (Equiv.refl I3) i)
    · ext i j
      simp only [leadingBlock, genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, one_mul, mul_one,
        hE]
      fin_cases i <;> fin_cases j <;> simp [seedCorner, corner, move, mC12, Equiv.swap_apply_def]
  · -- swap rows 0, 1 and dephase columns
    refine matched_genK hH (Equiv.swap 0 1) 1 (fun _ => 1) (fun j => conj (H.1 (Sum.inl 1) j))
      (fun _ => one_mul_conj) (fun j => by rw [Complex.conj_conj, mul_comm]; exact entry_mul_conj H _ _)
      hR hχ ⟨fun j => ?_, fun i => ?_⟩ ?_
    · rcases j with j | j <;> simpa [genK] using entry_mul_conj H (Sum.inl 1) _
    · have h1 := hcol (Equiv.sumCongr (Equiv.swap 0 1) (Equiv.refl I3) i)
      have h2 := hcol (Sum.inl 1)
      simp only [genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, Equiv.coe_refl] at h1 ⊢
      simp [h2]
      rcases i with i | i <;> simpa using h1
    · ext i j
      simp only [leadingBlock, genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, one_mul, hE,
        Equiv.Perm.coe_one, id]
      fin_cases i <;> fin_cases j <;>
        simp [seedCorner, corner, move, mR01, Equiv.swap_apply_def, conj_circ] <;> field_simp
  · -- swap columns 0, 1 and dephase rows
    refine matched_genK hH 1 (Equiv.swap 0 1) (fun i => conj (H.1 i (Sum.inl 1))) (fun _ => 1)
      (fun i => by rw [Complex.conj_conj, mul_comm]; exact entry_mul_conj H _ _) (fun _ => one_mul_conj)
      hR hχ ⟨fun j => ?_, fun i => ?_⟩ ?_
    · have h1 := hrow (Equiv.sumCongr (Equiv.swap 0 1) (Equiv.refl I3) j)
      have h2 := hrow (Sum.inl 1)
      simp only [genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, Equiv.coe_refl] at h1 ⊢
      simp [h2]
      rcases j with j | j <;> simpa using h1
    · rcases i with i | i <;> simpa [genK, mul_comm] using entry_mul_conj H _ (Sum.inl 1)
    · ext i j
      simp only [leadingBlock, genK, Matrix.of_apply, Equiv.sumCongr_apply, Sum.map_inl, mul_one, hE,
        Equiv.Perm.coe_one, id]
      fin_cases i <;> fin_cases j <;>
        simp [seedCorner, corner, move, mC01, Equiv.swap_apply_def, conj_circ] <;> field_simp

lemma seedR_moveWord (w : List (Fin 4)) (p : Seed) : seedR (moveWord w p) = seedR p := by
  induction w generalizing p with
  | nil => rfl
  | cons k w ih => simp only [moveWord, List.foldl_cons] at ih ⊢; rw [ih, (move_invariants k p).1]

/-- Matched completions move along words of corner moves. -/
theorem matched_moveWord (w : List (Fin 4)) {p : Seed} (hp : 0 < seedR p) {H : Had6}
    (hH : Matched ⟨p, hp⟩ H) :
    ∃ K : Had6, Matched ⟨moveWord w p, by rw [seedR_moveWord]; exact hp⟩ K ∧ Equivalent H.1 K.1 := by
  induction w generalizing p H with
  | nil => exact ⟨H, hH, equivalent_refl _⟩
  | cons k w ih =>
    obtain ⟨K₁, hK₁, e₁⟩ := matched_move k hH
    obtain ⟨K₂, hK₂, e₂⟩ := ih _ hK₁
    exact ⟨K₂, hK₂, equivalent_trans e₁ e₂⟩

lemma matched_congr {p q : Seed} (hpq : p = q) {hp : 0 < seedR p} {hq : 0 < seedR q} {H : Had6}
    (h : Matched ⟨p, hp⟩ H) : Matched ⟨q, hq⟩ H := by
  subst hpq; exact h

/-- **A matched completion at one anchor moves to every anchor**: back to the base anchor along the
reversed word (`anchorSeed_back`), then out along `wordOf` (`anchorSeed_eq`). -/
theorem matched_anchor_transport {s s' : StrictSeed} (hs : s ∈ anchors) (hs' : s' ∈ anchors) {H : Had6}
    (hH : Matched s H) : ∃ K : Had6, Matched s' K ∧ Equivalent H.1 K.1 := by
  simp only [anchors, Finset.mem_image, Finset.mem_univ, true_and] at hs hs'
  obtain ⟨n, rfl⟩ := hs
  obtain ⟨n', rfl⟩ := hs'
  obtain ⟨K₁, hK₁, e₁⟩ := matched_moveWord (wordOf n).reverse (anchor_pos n) hH
  obtain ⟨K₂, hK₂, e₂⟩ := matched_moveWord (wordOf n') (anchor_pos (0, true, 0, 0))
    (matched_congr (anchorSeed_back n) hK₁)
  exact ⟨K₂, matched_congr (anchorSeed_eq n').symm hK₂, equivalent_trans e₁ e₂⟩

/-- **One matched seed reaches every strict seed** (`PROOF.md` Lemma 1.1 with the anchor orbit).  Let `V` be a
nonempty open and closed set of strict seeds such that, at an anchor in `V`, some matched completion `H` has
every matched completion equivalent to `H` (at any seed) in `V`.  Then `V` is every strict seed: `V` contains a
positive local maximum, which is an anchor (`maximumCensus`); `H` moves to every anchor; and an open and closed
set containing every positive local maximum is everything. -/
theorem eq_univ_of_anchor_transport (V : Set StrictSeed) (hV : IsClopen V) (hne : V.Nonempty)
    (hstep : ∀ s ∈ anchors, s ∈ V → ∃ H : Had6, Matched s H ∧
      ∀ (s' : StrictSeed) (K : Had6), Matched s' K → Equivalent H.1 K.1 → s' ∈ V) :
    V = Set.univ := by
  obtain ⟨p, hp, hmax, hpV⟩ :=
    Step2.TopologyCore.exists_localMax_mem_of_isClopen seedR continuous_seedR V hV hne
  have hpA := maximumCensus p hp hmax
  obtain ⟨H, hH, hclose⟩ := hstep _ hpA hpV
  apply Step2.TopologyCore.superlevel_clopen_eq_univ seedR continuous_seedR V hV
  intro q hq hqmax
  obtain ⟨K, hK, e⟩ := matched_anchor_transport hpA (maximumCensus q hq hqmax) hH
  exact hclose _ K hK e

end NoFourMUBs.Step2
