import NoFourMUBs.PRM.CoverageGeometric

/-!
# The singular-minor route (`PRM.md` §7.1, `FOURIER_ROUTING.md` §1)

**`singularMinorRoute : SingularMinorRoute`.**  A Hadamard matrix with a singular `3 × 3` minor
contains (it, or its transpose) a `3 × 3` Hadamard submatrix.

1. `singular_prop`: a singular `3 × 3` phase matrix has two proportional rows or two proportional
   columns.  (A left kernel vector with three nonzero entries writes the third row as `a r₀ + b r₁`;
   then `|a + b zⱼ| = 1` for the three unit ratios `zⱼ = r₁ⱼ / r₀ⱼ`, which therefore lie on a line
   `Re(ā b z) = κ` and on a circle, so two coincide and give proportional columns.)
2. `block_of_prop_rows`: if rows `p ≠ q` are proportional on three columns, then (orthogonality and
   the equality case of the triangle inequality) their ratio is `−λ` on the other three columns, every
   other row has zero-sum halves (relative to row `p`), so each half is `α (1, ε, ε²)` with `ε = ω` or
   `ω²`.  Three other rows with the same left orientation are impossible, so two rows `x, y` have
   opposite left orientations and `(p; x; y)` on the three columns is a `3 × 3` Hadamard matrix.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

/-! ### Unit numbers -/

private lemma mc' {z : ℂ} (h : Complex.normSq z = 1) : z * conj z = 1 := by
  rw [Complex.mul_conj, h, Complex.ofReal_one]

private lemma nz' {z : ℂ} (h : Complex.normSq z = 1) : z ≠ 0 := by
  rintro rfl; simp at h

/-- A unit number with real part `1` is `1`. -/
theorem eq_one_of_re {z : ℂ} (h : Complex.normSq z = 1) (hre : z.re = 1) : z = 1 := by
  rw [Complex.normSq_apply, hre] at h
  have him : z.im = 0 := by nlinarith [sq_nonneg z.im]
  exact Complex.ext hre him

theorem re_le_one {z : ℂ} (h : Complex.normSq z = 1) : z.re ≤ 1 := by
  rw [Complex.normSq_apply] at h
  nlinarith [sq_nonneg z.im, sq_nonneg (z.re - 1)]

/-- Three unit numbers summing to `3` are all `1`. -/
theorem eq_one_of_sum_three {u v w : ℂ} (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hw : Complex.normSq w = 1) (h : u + v + w = 3) : u = 1 ∧ v = 1 ∧ w = 1 := by
  have hre := congrArg Complex.re h
  simp only [Complex.add_re] at hre
  norm_num at hre
  have a := re_le_one hu; have b := re_le_one hv; have c := re_le_one hw
  exact ⟨eq_one_of_re hu (by linarith), eq_one_of_re hv (by linarith), eq_one_of_re hw (by linarith)⟩

/-- Three unit numbers with zero sum: `b = a ε`, `c = a ε²` with `ε² + ε + 1 = 0`. -/
theorem zero_sum_triple {a b c : ℂ} (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hc : Complex.normSq c = 1) (h : a + b + c = 0) :
    ∃ ε : ℂ, ε ^ 2 + ε + 1 = 0 ∧ b = a * ε ∧ c = a * ε ^ 2 := by
  have ha0 := nz' ha
  have hb0 := nz' hb
  have hc' : (a + b) * conj (a + b) = 1 := by
    rw [show a + b = -c by linear_combination h, map_neg]; linear_combination mc' hc
  have hbb := mc' hb; have haa := mc' ha
  rw [map_add] at hc'
  have key : b * conj a + conj b * a = -1 := by linear_combination hc' - haa - hbb
  have hca : conj a = a⁻¹ := Side.conj_eq_inv ha
  have hcb : conj b = b⁻¹ := Side.conj_eq_inv hb
  rw [hca, hcb] at key
  have k2 : b ^ 2 + a * b + a ^ 2 = 0 := by
    field_simp at key
    linear_combination key
  set ε := b / a with hε_def
  have hb' : b = a * ε := by rw [hε_def]; field_simp
  have hε : ε ^ 2 + ε + 1 = 0 := by
    rw [hε_def]; field_simp; linear_combination k2
  exact ⟨ε, hε, hb', by linear_combination h - a * hε - hb'⟩

/-! ### A singular phase matrix has proportional rows or columns -/

theorem two_equal_of_sq {t0 t1 t2 : ℝ} (h1 : t0 ^ 2 = t1 ^ 2) (h2 : t0 ^ 2 = t2 ^ 2) :
    t0 = t1 ∨ t0 = t2 ∨ t1 = t2 := by
  by_contra hne
  simp only [not_or] at hne
  obtain ⟨n1, n2, n3⟩ := hne
  have e1 : t0 = -t1 := by
    have : (t0 - t1) * (t0 + t1) = 0 := by linear_combination h1
    rcases mul_eq_zero.1 this with h | h
    · exact absurd (sub_eq_zero.1 h) n1
    · linarith
  have e2 : t0 = -t2 := by
    have : (t0 - t2) * (t0 + t2) = 0 := by linear_combination h2
    rcases mul_eq_zero.1 this with h | h
    · exact absurd (sub_eq_zero.1 h) n2
    · linarith
  exact n3 (by linarith)

/-- The generic case: the third row is `a r₀ + b r₁` with `a, b ≠ 0`. -/
theorem prop_cols_of_comb {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) {a b : ℂ}
    (ha : a ≠ 0) (hb : b ≠ 0) (hrow : ∀ j, B 2 j = a * B 0 j + b * B 1 j) :
    ∃ j j' : Fin 3, j ≠ j' ∧ ∃ l : ℂ, ∀ i, B i j' = l * B i j := by
  have h0 : ∀ j, B 0 j ≠ 0 := fun j => nz' (hB 0 j)
  set z : Fin 3 → ℂ := fun j => B 1 j / B 0 j with hz_def
  have hz : ∀ j, Complex.normSq (z j) = 1 := fun j => by
    simp only [hz_def, Complex.normSq_div, hB, div_one]
  have hsum : ∀ j, Complex.normSq (a + b * z j) = 1 := fun j => by
    have : a + b * z j = B 2 j / B 0 j := by
      rw [hrow j, hz_def]; field_simp [h0 j]
    rw [this, Complex.normSq_div, hB, hB, div_one]
  set w : Fin 3 → ℂ := fun j => a * conj (b * z j) with hw_def
  have hre : ∀ j, (w j).re = (1 - Complex.normSq a - Complex.normSq b) / 2 := fun j => by
    have h := hsum j
    rw [Complex.normSq_add, Complex.normSq_mul, hz, mul_one] at h
    simp only [hw_def]; linarith
  have hnorm : ∀ j, Complex.normSq (w j) = Complex.normSq a * Complex.normSq b := fun j => by
    simp only [hw_def, Complex.normSq_mul, Complex.normSq_conj, hz, mul_one]
  have him : ∀ j, (w j).im ^ 2 = Complex.normSq a * Complex.normSq b -
      ((1 - Complex.normSq a - Complex.normSq b) / 2) ^ 2 := fun j => by
    have h := hnorm j
    rw [Complex.normSq_apply, hre j] at h
    linarith
  have weq : ∀ j j', (w j).im = (w j').im → z j = z j' := fun j j' h => by
    have hw : w j = w j' := Complex.ext (by rw [hre, hre]) h
    simp only [hw_def] at hw
    have hab : a ≠ 0 := ha
    have := mul_left_cancel₀ hab hw
    have := congrArg conj this
    simp only [map_mul, Complex.conj_conj] at this
    exact mul_left_cancel₀ hb this
  have col : ∀ j j', z j = z j' → ∀ i, B i j' = (B 0 j' / B 0 j) * B i j := fun j j' hzz i => by
    have e1 : B 1 j' = z j' * B 0 j' := by simp only [hz_def]; field_simp [h0 j']
    have e1' : B 1 j = z j * B 0 j := by simp only [hz_def]; field_simp [h0 j]
    fin_cases i
    · simp only [Fin.zero_eta]; field_simp [h0 j]
    · simp only [Fin.mk_one]; rw [e1, e1', hzz]; field_simp [h0 j]
    · simp only [Fin.reduceFinMk]; rw [hrow, hrow, e1, e1', hzz]; field_simp [h0 j]
  rcases two_equal_of_sq ((him 0).trans (him 1).symm) ((him 0).trans (him 2).symm) with
    h | h | h
  · exact ⟨0, 1, by decide, _, col 0 1 (weq 0 1 h)⟩
  · exact ⟨0, 2, by decide, _, col 0 2 (weq 0 2 h)⟩
  · exact ⟨1, 2, by decide, _, col 1 2 (weq 1 2 h)⟩

/-- **A singular `3 × 3` phase matrix has two proportional rows or two proportional columns.** -/
theorem singular_prop {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) (hd : B.det = 0) :
    (∃ i i' : Fin 3, i ≠ i' ∧ ∃ l : ℂ, ∀ j, B i' j = l * B i j) ∨
      (∃ j j' : Fin 3, j ≠ j' ∧ ∃ l : ℂ, ∀ i, B i j' = l * B i j) := by
  obtain ⟨v, hv0, hv⟩ := Matrix.exists_vecMul_eq_zero_iff.2 hd
  have E : ∀ j, v 0 * B 0 j + v 1 * B 1 j + v 2 * B 2 j = 0 := fun j => by
    have := congrFun hv j
    simpa [Matrix.vecMul, dotProduct, Fin.sum_univ_three] using this
  have hne : ∀ i j, B i j ≠ 0 := fun i j => nz' (hB i j)
  by_cases h0 : v 0 = 0 <;> by_cases h1 : v 1 = 0 <;> by_cases h2 : v 2 = 0
  · exact absurd (funext fun i => by fin_cases i <;> assumption) hv0
  · exfalso; have := E 0; rw [h0, h1] at this
    exact hne 2 0 ((mul_eq_zero.1 (by linear_combination this)).resolve_left h2)
  · exfalso; have := E 0; rw [h0, h2] at this
    exact hne 1 0 ((mul_eq_zero.1 (by linear_combination this)).resolve_left h1)
  · left; refine ⟨1, 2, by decide, -v 1 / v 2, fun j => ?_⟩
    have := E j; rw [h0] at this; field_simp; linear_combination this
  · exfalso; have := E 0; rw [h1, h2] at this
    exact hne 0 0 ((mul_eq_zero.1 (by linear_combination this)).resolve_left h0)
  · left; refine ⟨0, 2, by decide, -v 0 / v 2, fun j => ?_⟩
    have := E j; rw [h1] at this; field_simp; linear_combination this
  · left; refine ⟨0, 1, by decide, -v 0 / v 1, fun j => ?_⟩
    have := E j; rw [h2] at this; field_simp; linear_combination this
  · right
    refine prop_cols_of_comb hB (a := -v 0 / v 2) (b := -v 1 / v 2) (by simp [h0, h2])
      (by simp [h1, h2]) fun j => ?_
    have := E j; field_simp; linear_combination this

/-! ### Orientations of zero-sum triples -/

theorem conj_root {ε : ℂ} (hε : ε ^ 2 + ε + 1 = 0) (hu : Complex.normSq ε = 1) : conj ε = ε ^ 2 := by
  rw [Side.conj_eq_inv hu]
  exact inv_eq_of_mul_eq_one_right (by linear_combination (ε - 1) * hε)

/-- The Gram sum of two zero-sum triples `α (1, ε, ε²)`, `β (1, η, η²)`: `3 α β̄` if `ε = η`, else `0`. -/
theorem orient_gram {α β ε η : ℂ} (hε : ε ^ 2 + ε + 1 = 0) (hη : η ^ 2 + η + 1 = 0)
    (cη : conj η = η ^ 2) :
    (ε = η → α * conj β + α * ε * conj (β * η) + α * ε ^ 2 * conj (β * η ^ 2) = 3 * (α * conj β)) ∧
    (ε ≠ η → α * conj β + α * ε * conj (β * η) + α * ε ^ 2 * conj (β * η ^ 2) = 0) := by
  simp only [map_mul, map_pow, cη]
  constructor
  · rintro rfl
    linear_combination (α * conj β) * (ε ^ 4 - ε ^ 3 + 2 * ε - 2) * hε
  · intro hne
    have h' : η = ε ^ 2 := by
      have : (ε - η) * (ε + η + 1) = 0 := by linear_combination hε - hη
      have := (mul_eq_zero.1 this).resolve_left (sub_ne_zero.2 hne)
      linear_combination this - hε
    rw [h']
    linear_combination (α * conj β) * (ε ^ 8 - ε ^ 7 + ε ^ 5 - ε ^ 4 + ε ^ 3 - ε + 1) * hε

/-- A `3 × 3` matrix with unit entries and orthogonal rows is a Hadamard matrix. -/
theorem isHadamard3_of_orth {M : Mat3} (hu : ∀ i j, Complex.normSq (M i j) = 1)
    (ho : ∀ i i', i ≠ i' → ∑ k, M i k * conj (M i' k) = 0) : IsHadamard3 M := by
  refine ⟨hu, ?_⟩
  ext i i'
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply, Matrix.one_apply,
    Complex.star_def, smul_eq_mul]
  by_cases h : i = i'
  · subst h
    simp only [if_true, mul_one, Fin.sum_univ_three, mc' (hu _ _)]
    norm_num
  · simp only [h, if_false, mul_zero, ho i i' h]

/-! ### Two proportional rows give a Hadamard block -/

/-- **Proportional rows** (`FOURIER_ROUTING.md` §1, row case).  If rows `p ≠ q` of a Hadamard matrix
are proportional on three columns, the matrix contains a `3 × 3` Hadamard submatrix. -/
theorem block_of_prop_rows {H : Mat6} (hH : Hadamard6.IsHadamard H) {p q : I6} (hpq : p ≠ q)
    {c : Fin 3 → I6} (hc : Function.Injective c) {l : ℂ}
    (hl : ∀ k, H q (c k) = l * H p (c k)) : HasHadamardBlock H := by
  obtain ⟨τ, hτ⟩ := exists_perm_inr hc
  set d : Fin 3 → I6 := fun k => τ (Sum.inl k) with hd_def
  have split : ∀ f : I6 → ℂ, ∑ j, f j =
      (f (d 0) + f (d 1) + f (d 2)) + (f (c 0) + f (c 1) + f (c 2)) := fun f => by
    rw [← Equiv.sum_comp τ, Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]
    simp only [hd_def, hτ]
  have unit : ∀ x j, Complex.normSq (H x j) = 1 := hH.1
  have pp : ∀ j, H p j * conj (H p j) = 1 := fun j => mc' (unit p j)
  set v : I6 → I6 → ℂ := fun x j => H x j * conj (H p j) with hv_def
  have hv : ∀ x j, Complex.normSq (v x j) = 1 := fun x j => by
    simp only [hv_def, Complex.normSq_mul, Complex.normSq_conj, unit, mul_one]
  have vp : ∀ j, v p j = 1 := pp
  have hl1 : Complex.normSq l = 1 := by
    have := congrArg Complex.normSq (hl 0)
    rwa [Complex.normSq_mul, unit, unit, mul_one, eq_comm] at this
  have ll : l * conj l = 1 := mc' hl1
  -- inner products in terms of `v`
  have inner : ∀ x y j, H x j * conj (H y j) = v x j * conj (v y j) := fun x y j => by
    simp only [hv_def, map_mul, Complex.conj_conj]
    linear_combination (-(H x j * conj (H y j))) * pp j
  have orth : ∀ x y, x ≠ y →
      (v x (d 0) * conj (v y (d 0)) + v x (d 1) * conj (v y (d 1)) + v x (d 2) * conj (v y (d 2))) +
      (v x (c 0) * conj (v y (c 0)) + v x (c 1) * conj (v y (c 1)) +
        v x (c 2) * conj (v y (c 2))) = 0 := fun x y h => by
    have h0 := row_orth hH h
    rw [split] at h0
    simpa only [inner] using h0
  -- row `q` relative to row `p`
  have vqc : ∀ k, v q (c k) = l := fun k => by
    simp only [hv_def, hl k]; linear_combination l * pp (c k)
  have s3 : v q (d 0) + v q (d 1) + v q (d 2) = -(3 * l) := by
    have h := orth q p hpq.symm
    simp only [vp, vqc, map_one, mul_one] at h
    linear_combination h
  have vqd : ∀ k, v q (d k) = -l := by
    have hu : ∀ k, Complex.normSq (v q (d k) * conj (-l)) = 1 := fun k => by
      rw [Complex.normSq_mul, Complex.normSq_conj, Complex.normSq_neg, hv, hl1, mul_one]
    obtain ⟨e0, e1, e2⟩ := eq_one_of_sum_three (hu 0) (hu 1) (hu 2)
      (by simp only [map_neg]; linear_combination (-conj l) * s3 + 3 * ll)
    have fix : ∀ k, v q (d k) * conj (-l) = 1 → v q (d k) = -l := fun k h => by
      simp only [map_neg] at h; linear_combination (-l) * h - v q (d k) * ll
    intro k; fin_cases k
    exacts [fix 0 e0, fix 1 e1, fix 2 e2]
  -- the other rows have zero-sum halves
  have halves : ∀ x, x ≠ p → x ≠ q →
      v x (c 0) + v x (c 1) + v x (c 2) = 0 ∧ v x (d 0) + v x (d 1) + v x (d 2) = 0 := by
    intro x hxp hxq
    have h1 := orth x p hxp
    have h2 := orth x q hxq
    simp only [vp, map_one, mul_one] at h1
    simp only [vqc, vqd, map_neg] at h2
    have hl0 : conj l ≠ 0 := (map_ne_zero _).2 (nz' hl1)
    have hBA : conj l * ((v x (c 0) + v x (c 1) + v x (c 2)) - (v x (d 0) + v x (d 1) + v x (d 2))) =
        conj l * 0 := by linear_combination h2
    have hBA' := mul_left_cancel₀ hl0 hBA
    exact ⟨by linear_combination (h1 + hBA') / 2, by linear_combination (h1 - hBA') / 2⟩
  -- orientations
  have orient : ∀ x (e : Fin 3 → I6), v x (e 0) + v x (e 1) + v x (e 2) = 0 →
      ∃ ε : ℂ, ε ^ 2 + ε + 1 = 0 ∧ conj ε = ε ^ 2 ∧ v x (e 1) = v x (e 0) * ε ∧
        v x (e 2) = v x (e 0) * ε ^ 2 := fun x e h => by
    obtain ⟨ε, hε, h1, h2⟩ := zero_sum_triple (hv x _) (hv x _) (hv x _) h
    have hu : Complex.normSq ε = 1 := by
      have := congrArg Complex.normSq h1
      rw [hv, Complex.normSq_mul, hv, one_mul] at this
      exact this.symm
    exact ⟨ε, hε, conj_root hε hu, h1, h2⟩
  -- three other rows
  have hcard : 3 ≤ ((Finset.univ.erase p).erase q).card := by
    rw [Finset.card_erase_of_mem (by simp [hpq.symm]), Finset.card_erase_of_mem (Finset.mem_univ p)]
    simp
  obtain ⟨t, hts, htc⟩ := Finset.exists_subset_card_eq hcard
  obtain ⟨x1, x2, x3, h12, h13, h23, rfl⟩ := Finset.card_eq_three.1 htc
  have mem : ∀ x ∈ ({x1, x2, x3} : Finset I6), x ≠ p ∧ x ≠ q := fun x hx => by
    have := hts hx
    simp only [Finset.mem_erase, Finset.mem_univ, and_true] at this
    exact ⟨this.2, this.1⟩
  obtain ⟨n1p, n1q⟩ := mem x1 (by simp)
  obtain ⟨n2p, n2q⟩ := mem x2 (by simp)
  obtain ⟨n3p, n3q⟩ := mem x3 (by simp)
  -- the block `(p; x; y)` when the orientations on `c` differ
  have blk : ∀ x y, x ≠ p → x ≠ q → y ≠ p → y ≠ q → x ≠ y →
      v x (c 0) * conj (v y (c 0)) + v x (c 1) * conj (v y (c 1)) + v x (c 2) * conj (v y (c 2)) = 0 →
      HasHadamardBlock H := by
    intro x y hxp hxq hyp hyq hxy hg
    have rinj : Function.Injective ![p, x, y] := by
      intro i i' h
      fin_cases i <;> fin_cases i' <;> simp at h ⊢ <;>
        first
          | exact hxp h.symm
          | exact hyp h.symm
          | exact hxy h
          | exact hxp h
          | exact hyp h
          | exact hxy h.symm
    refine hasHadamardBlock_of rinj hc (isHadamard3_of_orth (fun i k => unit _ _) ?_)
    have sx := (halves x hxp hxq).1
    have sy := (halves y hyp hyq).1
    intro i i' hii
    simp only [Fin.sum_univ_three, Matrix.of_apply, inner]
    fin_cases i <;> fin_cases i' <;> simp at hii ⊢ <;> (try simp only [vp, map_one, one_mul, mul_one])
    · rw [← map_add, ← map_add, sx, map_zero]
    · rw [← map_add, ← map_add, sy, map_zero]
    · exact sx
    · exact hg
    · exact sy
    · have := congrArg conj hg
      simp only [map_add, map_mul, Complex.conj_conj, map_zero] at this
      linear_combination this
  -- orientation data of the three rows
  obtain ⟨ε1, f1, c1, a11, a12⟩ := orient x1 c (halves x1 n1p n1q).1
  obtain ⟨ε2, f2, c2, a21, a22⟩ := orient x2 c (halves x2 n2p n2q).1
  obtain ⟨ε3, f3, c3, a31, a32⟩ := orient x3 c (halves x3 n3p n3q).1
  have gramC : ∀ x y (εx εy : ℂ), εx ^ 2 + εx + 1 = 0 → εy ^ 2 + εy + 1 = 0 → conj εy = εy ^ 2 →
      v x (c 1) = v x (c 0) * εx → v x (c 2) = v x (c 0) * εx ^ 2 →
      v y (c 1) = v y (c 0) * εy → v y (c 2) = v y (c 0) * εy ^ 2 →
      (εx = εy → v x (c 0) * conj (v y (c 0)) + v x (c 1) * conj (v y (c 1)) +
          v x (c 2) * conj (v y (c 2)) = 3 * (v x (c 0) * conj (v y (c 0)))) ∧
      (εx ≠ εy → v x (c 0) * conj (v y (c 0)) + v x (c 1) * conj (v y (c 1)) +
          v x (c 2) * conj (v y (c 2)) = 0) := by
    intro x y εx εy hx hy cy x1' x2' y1' y2'
    rw [x1', x2', y1', y2']
    have := orient_gram (α := v x (c 0)) (β := v y (c 0)) hx hy cy
    constructor
    · intro h; have := this.1 h; linear_combination this
    · intro h; have := this.2 h; linear_combination this
  by_cases e12 : ε1 = ε2
  · by_cases e13 : ε1 = ε3
    · -- all three orientations agree: impossible
      exfalso
      have rel : ∀ x y (εx εy : ℂ), x ≠ y → x ≠ p → x ≠ q → y ≠ p → y ≠ q →
          εx ^ 2 + εx + 1 = 0 → εy ^ 2 + εy + 1 = 0 → conj εy = εy ^ 2 → εx = εy →
          v x (c 1) = v x (c 0) * εx → v x (c 2) = v x (c 0) * εx ^ 2 →
          v y (c 1) = v y (c 0) * εy → v y (c 2) = v y (c 0) * εy ^ 2 →
          v x (d 0) * v y (c 0) = -(v x (c 0) * v y (d 0)) := by
        intro x y εx εy hxy hxp hxq hyp hyq hx hy cy hxy' x1' x2' y1' y2'
        have hC := (gramC x y εx εy hx hy cy x1' x2' y1' y2').1 hxy'
        obtain ⟨ηx, gx, -, b1, b2⟩ := orient x d (halves x hxp hxq).2
        obtain ⟨ηy, gy, cηy, b1', b2'⟩ := orient y d (halves y hyp hyq).2
        have hO := orth x y hxy
        rw [hC, b1, b2, b1', b2'] at hO
        have hα : v x (c 0) * conj (v y (c 0)) ≠ 0 :=
          mul_ne_zero (nz' (hv _ _)) ((map_ne_zero _).2 (nz' (hv _ _)))
        have hD := orient_gram (α := v x (d 0)) (β := v y (d 0)) gx gy cηy
        by_cases hη : ηx = ηy
        · have hrel := hD.1 hη
          rw [hrel] at hO
          -- `β_x β̄_y = −α_x ᾱ_y`, then multiply by `α_y β_y`
          have uα := mc' (hv y (c 0)); have uβ := mc' (hv y (d 0))
          linear_combination (v y (c 0) * v y (d 0)) * hO / 3 -
            (v x (d 0) * v y (c 0)) * uβ - (v x (c 0) * v y (d 0)) * uα
        · rw [hD.2 hη, zero_add] at hO
          exact absurd (by linear_combination hO / 3) hα
      have e12' := rel x1 x2 ε1 ε2 h12 n1p n1q n2p n2q f1 f2 c2 e12 a11 a12 a21 a22
      have e13' := rel x1 x3 ε1 ε3 h13 n1p n1q n3p n3q f1 f3 c3 e13 a11 a12 a31 a32
      have e23' := rel x2 x3 ε2 ε3 h23 n2p n2q n3p n3q f2 f3 c3 (e12.symm.trans e13) a21 a22 a31 a32
      have h0 : 2 * v x1 (d 0) * v x2 (c 0) * v x3 (c 0) = 0 := by
        linear_combination v x3 (c 0) * e12' + v x2 (c 0) * e13' - v x1 (c 0) * e23'
      simp only [mul_eq_zero, two_ne_zero, false_or] at h0
      rcases h0 with (h | h) | h <;> exact nz' (hv _ _) h
    · exact blk x1 x3 n1p n1q n3p n3q h13
        ((gramC x1 x3 ε1 ε3 f1 f3 c3 a11 a12 a31 a32).2 e13)
  · exact blk x1 x2 n1p n1q n2p n2q h12 ((gramC x1 x2 ε1 ε2 f1 f2 c2 a11 a12 a21 a22).2 e12)

/-! ### The route -/

/-- **The singular-minor route of `PRM.md` §7.1.** -/
theorem singularMinorRoute : SingularMinorRoute := by
  intro H hH σ τ hd
  have hB : ∀ i j, Complex.normSq (Step2.rightBlock (H.submatrix σ τ) i j) = 1 :=
    fun i j => hH.1 _ _
  rcases singular_prop hB hd with ⟨i, i', hii, l, hl⟩ | ⟨j, j', hjj, l, hl⟩
  · left
    exact block_of_prop_rows hH (p := σ (Sum.inl i)) (q := σ (Sum.inl i'))
      (fun h => hii (Sum.inl_injective (σ.injective h))) (c := fun k => τ (Sum.inr k))
      (τ.injective.comp Sum.inr_injective) (l := l) (fun k => hl k)
  · right
    exact block_of_prop_rows (transpose_isHadamard hH) (p := τ (Sum.inr j))
      (q := τ (Sum.inr j')) (fun h => hjj (Sum.inr_injective (τ.injective h)))
      (c := fun k => σ (Sum.inl k)) (σ.injective.comp Sum.inl_injective) (l := l) (fun k => hl k)

end NoFourMUBs.PRM.Coverage
