import NoFourMUBs.PRM.CoverageInputs

/-!
# I5 (first half): the `p = 7` endpoint exclusion (`CRITICAL_P7_EXCLUSION.md`)

**Theorem (`p7Exclusion`).**  No corner `triBlock H 0 l` of an all-critical Hadamard matrix has
`|J| = 2` and `{X, Y, Z} = {1, 1, 5}`.

## Common reduction (also used by `CoverageEndEqui`)

The top three rows of `H`, with the columns reordered by `triPerm l` so that the corner is on the
`inr` columns, form a strip `(a; b; c)` of pairwise orthogonal unit rows all of whose `3 × 3` blocks
have real side signature (`StripData`, `stripData_of`).  For target Gram values `s₀, t₀` of the right
moduli and `ρ = s̄ r̄ t ∈ {±ρ₀, ±ρ̄₀}`, `ρ₀ = s̄₀ r̄₀ t₀`, the strip can be dephased (first row `1`),
row-phased, possibly swapped with its complement and possibly conjugated into the normal form
`(1; x; y)` whose corner has sums `s₀, t₀` and correlation `r₀` (`driver`).

## The `p = 7` core (`p7_core`), shorter than the paper's census

With `s₀ = t₀ = 1`, `r₀ = 1 − 2i` (so `ρ₀ = 1 + 2i`):
* three unit numbers with sum `1` are `1, u, −u` (`three_units`); the correlation `1 − 2i` forces a
  corner column `(x, y) = (1, 1)` (`p7_corner`);
* the complement has sums `−1, −1` and correlation `−1 + 2i`; this forces two of its columns to be
  `(−1, −i)` and `(−i, i)` (`p7_compl`);
* the block on these three columns is `[[1,1,1],[1,−1,−i],[1,−i,i]]`, of signature `−56 − 8i`, which is
  not real.  (The paper sums all twenty squared corner invariants; one corner suffices.)
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Endpoint

/-! ### Strips and their blocks -/

/-- A `3 × 6` strip, as three rows. -/
abbrev Rows := Fin 3 → I6 → ℂ

/-- The `3 × 3` block of a strip on the columns `T`. -/
def blk (R : Rows) (T : Fin 3 → I6) : Mat3 := Matrix.of fun i j => R i (T j)

/-- Every block of the strip on three distinct columns has a real side signature. -/
def StripCrit (R : Rows) : Prop :=
  ∀ T : Fin 3 → I6, Function.Injective T → (Step2.sideSignature (blk R T)).im = 0

/-- Corner (`inr`) correlation `Σᵢ f(inr i) conj (g(inr i))`. -/
def cc (f g : I6 → ℂ) : ℂ := ∑ i : Fin 3, f (Sum.inr i) * conj (g (Sum.inr i))

/-- Corner (`inr`) sum. -/
def csum (f : I6 → ℂ) : ℂ := ∑ i : Fin 3, f (Sum.inr i)

theorem sig_conj (B : Mat3) :
    Step2.sideSignature (Matrix.of fun i j => conj (B i j)) = conj (Step2.sideSignature B) := by
  simp only [Step2.sideSignature, Step2.permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    Matrix.of_apply, map_mul, map_add, map_sub, map_neg, map_pow, Complex.star_def]

theorem StripCrit.rowPerm {R : Rows} (h : StripCrit R) (π : Equiv.Perm (Fin 3)) :
    StripCrit (fun i => R (π i)) := by
  intro T hT
  have e : blk (fun i => R (π i)) T = (blk R T).submatrix π (Equiv.refl _) := rfl
  rw [e, Step2.sideSignature_submatrix]
  exact h T hT

theorem StripCrit.colPerm {R : Rows} (h : StripCrit R) (π : Equiv.Perm I6) :
    StripCrit (fun i j => R i (π j)) := fun T hT => h (fun j => π (T j)) (π.injective.comp hT)

theorem StripCrit.phase {R : Rows} (h : StripCrit R) (α : Fin 3 → ℂ) (γ : I6 → ℂ)
    (hα : ∀ i, α i * conj (α i) = 1) (hγ : ∀ j, γ j * conj (γ j) = 1) :
    StripCrit (fun i j => α i * R i j * γ j) := by
  intro T hT
  have e : blk (fun i j => α i * R i j * γ j) T =
      Matrix.of fun i j => α i * blk R T i j * γ (T j) := rfl
  rw [e, Step2.sideSignature_scale _ _ _ hα (fun j => hγ (T j))]
  exact h T hT

theorem StripCrit.conj' {R : Rows} (h : StripCrit R) : StripCrit (fun i j => conj (R i j)) := by
  intro T hT
  have e : blk (fun i j => conj (R i j)) T = Matrix.of fun i j => conj (blk R T i j) := rfl
  rw [e, sig_conj, Complex.conj_im, h T hT, neg_zero]

/-! ### The top strip of an all-critical Hadamard matrix -/

/-- Pairwise orthogonal unit rows whose `3 × 3` blocks all have real signature. -/
structure StripData (a b c : I6 → ℂ) : Prop where
  ua : ∀ j, Complex.normSq (a j) = 1
  ub : ∀ j, Complex.normSq (b j) = 1
  uc : ∀ j, Complex.normSq (c j) = 1
  oba : ∑ j, b j * conj (a j) = 0
  oca : ∑ j, c j * conj (a j) = 0
  ocb : ∑ j, c j * conj (b j) = 0
  crit : StripCrit ![a, b, c]

/-- Row `i` of `H`, columns reordered by `triPerm l` (the corner `tri l` on the `inr` columns). -/
def hrow (H : Mat6) (l : Fin 20) (i : Fin 3) : I6 → ℂ := fun j => H (Sum.inl i) (triPerm l j)

theorem hrow_vec (H : Mat6) (l : Fin 20) : ![hrow H l 0, hrow H l 1, hrow H l 2] = hrow H l := by
  funext i; fin_cases i <;> rfl

theorem stripCrit_hrow {H : Mat6} (hc : AllCritical H) (l : Fin 20) : StripCrit (hrow H l) := by
  intro T hT
  have hf : Function.Injective fun j => e6 (triPerm l (T j)) :=
    e6.injective.comp ((triPerm l).injective.comp hT)
  obtain ⟨k, m, hk⟩ := cover _ hf
  have e : blk (hrow H l) T = (triBlock H 0 k).submatrix (Equiv.refl _) (p3 m) := by
    ext i j
    simp only [blk, hrow, Matrix.of_apply, Matrix.submatrix_apply, triBlock, Equiv.refl_apply, tri0_row]
    rw [← hk j, Equiv.symm_apply_apply]
  rw [e, Step2.sideSignature_submatrix]
  exact hc.triBlock_im 0 k

theorem orth_hrow {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20) {i i' : Fin 3}
    (hii : i ≠ i') : ∑ j, hrow H l i j * conj (hrow H l i' j) = 0 := by
  have hne : (Sum.inl i : I6) ≠ Sum.inl i' := fun h => hii (Sum.inl_injective h)
  have h := congrArg (fun M : Mat6 => M (Sum.inl i) (Sum.inl i')) hH.2
  have hsum : (∑ j : I6, H (Sum.inl i) j * conj (H (Sum.inl i') j)) = 0 := by
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply, Complex.star_def, hne] using h
  rw [← hsum]
  exact Equiv.sum_comp (triPerm l) (fun j => H (Sum.inl i) j * conj (H (Sum.inl i') j))

theorem stripData_of {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (l : Fin 20) :
    StripData (hrow H l 0) (hrow H l 1) (hrow H l 2) where
  ua j := hH.1 _ _
  ub j := hH.1 _ _
  uc j := hH.1 _ _
  oba := orth_hrow hH l (by decide)
  oca := orth_hrow hH l (by decide)
  ocb := orth_hrow hH l (by decide)
  crit := by rw [hrow_vec]; exact stripCrit_hrow hc l

theorem blockS_hrow (H : Mat6) (l : Fin 20) :
    blockS (triBlock H 0 l) = cc (hrow H l 1) (hrow H l 0) := by
  simp [blockS, gram3, triBlock, cc, hrow, triPerm_inr, tri0_row]

theorem blockT_hrow (H : Mat6) (l : Fin 20) :
    blockT (triBlock H 0 l) = cc (hrow H l 2) (hrow H l 0) := by
  simp [blockT, gram3, triBlock, cc, hrow, triPerm_inr, tri0_row]

theorem blockR_hrow (H : Mat6) (l : Fin 20) :
    blockR (triBlock H 0 l) = cc (hrow H l 2) (hrow H l 1) := by
  simp [blockR, gram3, triBlock, cc, hrow, triPerm_inr, tri0_row]

theorem StripData.perm_bac {a b c : I6 → ℂ} (h : StripData a b c) : StripData b a c where
  ua := h.ub
  ub := h.ua
  uc := h.uc
  oba := by
    have := congrArg conj h.oba
    simpa [map_sum, mul_comm] using this
  oca := h.ocb
  ocb := h.oca
  crit := by
    have e : ![b, a, c] = fun i => ![a, b, c] (Equiv.swap 0 1 i) := by
      funext i; fin_cases i <;> rfl
    rw [e]; exact h.crit.rowPerm _

theorem StripData.perm_cab {a b c : I6 → ℂ} (h : StripData a b c) : StripData c a b where
  ua := h.uc
  ub := h.ua
  uc := h.ub
  oba := by
    have := congrArg conj h.oca
    simpa [map_sum, mul_comm] using this
  oca := by
    have := congrArg conj h.ocb
    simpa [map_sum, mul_comm] using this
  ocb := h.oba
  crit := by
    have e : ![c, a, b] = fun i => ![a, b, c] ((Equiv.swap (0 : Fin 3) 1 * Equiv.swap (0 : Fin 3) 2 : Equiv.Perm (Fin 3)) i) := by
      funext i; fin_cases i <;> rfl
    rw [e]; exact h.crit.rowPerm _

theorem cc_swap (f g : I6 → ℂ) : cc g f = conj (cc f g) := by
  simp only [cc, map_sum, map_mul, Complex.conj_conj, mul_comm]

/-! ### Normal form of a strip -/

/-- A dephased strip `(1; x; y)` with corner sums `σ₀, τ₀` and corner invariant `σ̄₀ r̄ τ₀ = ρ`. -/
structure Pre (σ0 τ0 ρ : ℂ) (x y : I6 → ℂ) : Prop where
  ux : ∀ j, Complex.normSq (x j) = 1
  uy : ∀ j, Complex.normSq (y j) = 1
  sx : ∑ j, x j = 0
  sy : ∑ j, y j = 0
  sxy : ∑ j, y j * conj (x j) = 0
  cx : csum x = σ0
  cy : csum y = τ0
  rho : conj σ0 * conj (cc y x) * τ0 = ρ
  crit : StripCrit ![fun _ => 1, x, y]

theorem dephase_pre {a b c : I6 → ℂ} (h : StripData a b c) {σ0 τ0 : ℂ}
    (hs0 : Complex.normSq σ0 = Complex.normSq (cc b a)) (ht0 : Complex.normSq τ0 = Complex.normSq (cc c a))
    (hs : cc b a ≠ 0) (ht : cc c a ≠ 0) :
    ∃ x y, Pre σ0 τ0 (conj (cc b a) * conj (cc c b) * cc c a) x y := by
  set α := σ0 / cc b a with hα
  set β := τ0 / cc c a with hβ
  have nα : Complex.normSq α = 1 := by
    rw [hα, Complex.normSq_div, hs0, div_self ((Complex.normSq_pos.2 hs).ne')]
  have nβ : Complex.normSq β = 1 := by
    rw [hβ, Complex.normSq_div, ht0, div_self ((Complex.normSq_pos.2 ht).ne')]
  have uα := mul_conj_of_normSq nα
  have uβ := mul_conj_of_normSq nβ
  have ua : ∀ j, a j * conj (a j) = 1 := fun j => mul_conj_of_normSq (h.ua j)
  refine ⟨fun j => α * b j * conj (a j), fun j => β * c j * conj (a j), ?_⟩
  have exy : ∀ j, β * c j * conj (a j) * conj (α * b j * conj (a j)) =
      β * conj α * (c j * conj (b j)) := by
    intro j
    simp only [map_mul, Complex.conj_conj]
    linear_combination (β * conj α * c j * conj (b j)) * ua j
  have ccyx : cc (fun j => β * c j * conj (a j)) (fun j => α * b j * conj (a j)) =
      β * conj α * cc c b := by
    simp only [cc, exy, ← Finset.mul_sum]
  refine ⟨fun j => ?_, fun j => ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simp [Complex.normSq_mul, Complex.normSq_conj, nα, h.ub j, h.ua j]
  · simp [Complex.normSq_mul, Complex.normSq_conj, nβ, h.uc j, h.ua j]
  · simp only [mul_assoc, ← Finset.mul_sum, h.oba, mul_zero]
  · simp only [mul_assoc, ← Finset.mul_sum, h.oca, mul_zero]
  · simp only [exy, ← Finset.mul_sum, h.ocb, mul_zero]
  · simp only [csum, mul_assoc, ← Finset.mul_sum]
    change α * cc b a = σ0
    rw [hα, div_mul_cancel₀ _ hs]
  · simp only [csum, mul_assoc, ← Finset.mul_sum]
    change β * cc c a = τ0
    rw [hβ, div_mul_cancel₀ _ ht]
  · rw [ccyx]
    have e1 : σ0 = α * cc b a := by rw [hα, div_mul_cancel₀ _ hs]
    have e2 : τ0 = β * cc c a := by rw [hβ, div_mul_cancel₀ _ ht]
    rw [e1, e2]
    simp only [map_mul, Complex.conj_conj]
    linear_combination (conj (cc b a) * conj (cc c b) * cc c a * (β * conj β)) * uα +
      (conj (cc b a) * conj (cc c b) * cc c a) * uβ
  · have e : ![fun _ => (1 : ℂ), fun j => α * b j * conj (a j), fun j => β * c j * conj (a j)] =
        fun i j => ![1, α, β] i * ![a, b, c] i j * conj (a j) := by
      funext i j; fin_cases i
      · simp [ua j]
      · rfl
      · rfl
    rw [e]
    refine h.crit.phase _ _ (fun i => ?_) (fun j => ?_)
    · fin_cases i
      · simp
      · exact uα
      · exact uβ
    · rw [Complex.conj_conj, mul_comm]; exact ua j

theorem sum_I6 (f : I6 → ℂ) : ∑ j, f j = ∑ i : Fin 3, f (Sum.inl i) + ∑ i : Fin 3, f (Sum.inr i) :=
  Fintype.sum_sum_type f

theorem Pre.swap {σ0 τ0 ρ : ℂ} {x y : I6 → ℂ} (h : Pre σ0 τ0 ρ x y) :
    Pre (-σ0) (-τ0) (-ρ) (fun j => x (Equiv.sumComm _ _ j)) (fun j => y (Equiv.sumComm _ _ j)) := by
  have ex := h.sx; have ey := h.sy; have exy := h.sxy
  rw [sum_I6] at ex ey exy
  have cx := h.cx; have cy := h.cy
  simp only [csum] at cx cy
  have ccs : cc (fun j => y (Equiv.sumComm _ _ j)) (fun j => x (Equiv.sumComm _ _ j)) = -cc y x := by
    simp only [cc, Equiv.sumComm_apply, Sum.swap_inr]
    linear_combination exy
  refine ⟨fun j => h.ux _, fun j => h.uy _, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [Equiv.sum_comp (Equiv.sumComm _ _) x]; exact h.sx
  · rw [Equiv.sum_comp (Equiv.sumComm _ _) y]; exact h.sy
  · rw [Equiv.sum_comp (Equiv.sumComm _ _) (fun j => y j * conj (x j))]; exact h.sxy
  · simp only [csum, Equiv.sumComm_apply, Sum.swap_inr]; linear_combination ex - cx
  · simp only [csum, Equiv.sumComm_apply, Sum.swap_inr]; linear_combination ey - cy
  · rw [ccs, ← h.rho]; simp only [map_neg]; ring
  · have e : ![fun _ => (1 : ℂ), fun j => x (Equiv.sumComm _ _ j), fun j => y (Equiv.sumComm _ _ j)] =
        fun i j => ![fun _ => (1 : ℂ), x, y] i (Equiv.sumComm _ _ j) := by
      funext i j; fin_cases i <;> rfl
    rw [e]; exact h.crit.colPerm _

theorem Pre.conj' {σ0 τ0 ρ : ℂ} {x y : I6 → ℂ} (h : Pre σ0 τ0 ρ x y) :
    Pre (conj σ0) (conj τ0) (conj ρ) (fun j => conj (x j)) (fun j => conj (y j)) := by
  refine ⟨fun j => by rw [Complex.normSq_conj]; exact h.ux j,
    fun j => by rw [Complex.normSq_conj]; exact h.uy j, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [← map_sum, h.sx, map_zero]
  · rw [← map_sum, h.sy, map_zero]
  · have := congrArg conj h.sxy
    rw [map_sum, map_zero] at this
    simpa only [map_mul] using this
  · rw [← h.cx, csum, csum, map_sum]
  · rw [← h.cy, csum, csum, map_sum]
  · rw [← h.rho]; simp only [cc, map_mul, map_sum]
  · have e : ![fun _ => (1 : ℂ), fun j => conj (x j), fun j => conj (y j)] =
        fun i j => conj (![fun _ => (1 : ℂ), x, y] i j) := by
      funext i j; fin_cases i <;> simp
    rw [e]; exact h.crit.conj'

theorem Pre.corr {s0 t0 r0 : ℂ} {x y : I6 → ℂ} (hs0 : s0 ≠ 0) (ht0 : t0 ≠ 0)
    (h : Pre s0 t0 (conj s0 * conj r0 * t0) x y) : cc y x = r0 := by
  have e := h.rho
  have hc : conj s0 ≠ 0 := (map_ne_zero _).2 hs0
  have e2 : conj (cc y x) = conj r0 := by
    have := mul_right_cancel₀ ht0 e
    exact mul_left_cancel₀ hc this
  exact (RingHom.injective _ e2)

/-- **The normal form.** -/
theorem driver {a b c : I6 → ℂ} (h : StripData a b c) {s0 t0 r0 : ℂ} (hs0 : s0 ≠ 0) (ht0 : t0 ≠ 0)
    (hs : Complex.normSq (cc b a) = Complex.normSq s0) (ht : Complex.normSq (cc c a) = Complex.normSq t0)
    (hρ : conj (cc b a) * conj (cc c b) * cc c a = conj s0 * conj r0 * t0 ∨
      conj (cc b a) * conj (cc c b) * cc c a = -(conj s0 * conj r0 * t0) ∨
      conj (cc b a) * conj (cc c b) * cc c a = conj (conj s0 * conj r0 * t0) ∨
      conj (cc b a) * conj (cc c b) * cc c a = -conj (conj s0 * conj r0 * t0)) :
    ∃ x y, Pre s0 t0 (conj s0 * conj r0 * t0) x y ∧ cc y x = r0 := by
  have hsa : cc b a ≠ 0 := fun h0 => hs0 (by
    rw [h0, Complex.normSq_zero] at hs; exact Complex.normSq_eq_zero.1 hs.symm)
  have hta : cc c a ≠ 0 := fun h0 => ht0 (by
    rw [h0, Complex.normSq_zero] at ht; exact Complex.normSq_eq_zero.1 ht.symm)
  suffices H : ∃ x y, Pre s0 t0 (conj s0 * conj r0 * t0) x y by
    obtain ⟨x, y, hp⟩ := H; exact ⟨x, y, hp, hp.corr hs0 ht0⟩
  rcases hρ with e | e | e | e
  · obtain ⟨x, y, hp⟩ := dephase_pre h hs.symm ht.symm hsa hta
    rw [e] at hp; exact ⟨x, y, hp⟩
  · obtain ⟨x, y, hp⟩ := dephase_pre h (σ0 := -s0) (τ0 := -t0)
      (by rw [Complex.normSq_neg, hs]) (by rw [Complex.normSq_neg, ht]) hsa hta
    have hp' := hp.swap
    rw [neg_neg, neg_neg, e, neg_neg] at hp'
    exact ⟨_, _, hp'⟩
  · obtain ⟨x, y, hp⟩ := dephase_pre h (σ0 := conj s0) (τ0 := conj t0)
      (by rw [Complex.normSq_conj, hs]) (by rw [Complex.normSq_conj, ht]) hsa hta
    have hp' := hp.conj'
    rw [Complex.conj_conj, Complex.conj_conj, e, Complex.conj_conj] at hp'
    exact ⟨_, _, hp'⟩
  · obtain ⟨x, y, hp⟩ := dephase_pre h (σ0 := -conj s0) (τ0 := -conj t0)
      (by rw [Complex.normSq_neg, Complex.normSq_conj, hs])
      (by rw [Complex.normSq_neg, Complex.normSq_conj, ht]) hsa hta
    have hp' := hp.swap.conj'
    rw [neg_neg, neg_neg, Complex.conj_conj, Complex.conj_conj, e, neg_neg, Complex.conj_conj] at hp'
    exact ⟨_, _, hp'⟩

/-- `ρ` from its real part up to sign and its modulus. -/
theorem rho_cases {ρ ρ0 : ℂ} (hre : ρ.re = ρ0.re ∨ ρ.re = -ρ0.re) (him : ρ.im ^ 2 = ρ0.im ^ 2) :
    ρ = ρ0 ∨ ρ = -ρ0 ∨ ρ = conj ρ0 ∨ ρ = -conj ρ0 := by
  rcases sq_eq_sq_iff_eq_or_eq_neg.1 him with hi | hi <;> rcases hre with hr | hr
  · exact Or.inl (Complex.ext hr hi)
  · exact Or.inr (Or.inr (Or.inr (Complex.ext (by simp [hr]) (by simp [hi]))))
  · exact Or.inr (Or.inr (Or.inl (Complex.ext (by simp [hr]) (by simp [hi]))))
  · exact Or.inr (Or.inl (Complex.ext (by simp [hr]) (by simp [hi])))

/-- The data of `ρ = s̄ r̄ t`: real part `J/2` and modulus `XYZ`. -/
theorem rho_data (s t r : ℂ) :
    (conj s * conj r * t).re = Side.jS s t r / 2 ∧
      (conj s * conj r * t).im ^ 2 =
        Complex.normSq s * Complex.normSq t * Complex.normSq r - (Side.jS s t r / 2) ^ 2 := by
  have hn : Complex.normSq (conj s * conj r * t) =
      Complex.normSq s * Complex.normSq t * Complex.normSq r := by
    simp only [Complex.normSq_mul, Complex.normSq_conj]; ring
  have hre : (conj s * conj r * t).re = Side.jS s t r / 2 := by rw [Side.jS]; ring
  refine ⟨hre, ?_⟩
  rw [← hn, Complex.normSq_apply, ← hre]; ring

/-! ### Three unit numbers with sum one -/

theorem three_units (u : Fin 3 → ℂ) (hu : ∀ j, Complex.normSq (u j) = 1) (hs : u 0 + u 1 + u 2 = 1) :
    (u 0 = 1 ∧ u 2 = -u 1) ∨ (u 1 = 1 ∧ u 2 = -u 0) ∨ (u 2 = 1 ∧ u 1 = -u 0) := by
  have c0 := mul_conj_of_normSq (hu 0); have c1 := mul_conj_of_normSq (hu 1); have c2 := mul_conj_of_normSq (hu 2)
  have hsc : conj (u 0) + conj (u 1) + conj (u 2) = 1 := by
    have := congrArg conj hs; simpa using this
  have key : (u 0 - 1) * (u 1 - 1) * (u 2 - 1) = 0 := by
    linear_combination hs - (u 0 * u 1 * u 2) * hsc + (u 1 * u 2) * c0 + (u 0 * u 2) * c1 +
      (u 0 * u 1) * c2
  rcases mul_eq_zero.1 key with k | k
  · rcases mul_eq_zero.1 k with k | k
    · exact Or.inl ⟨by linear_combination k, by linear_combination hs - k⟩
    · exact Or.inr (Or.inl ⟨by linear_combination k, by linear_combination hs - k⟩)
  · exact Or.inr (Or.inr ⟨by linear_combination k, by linear_combination hs - k⟩)

theorem three_units_neg (u : Fin 3 → ℂ) (hu : ∀ j, Complex.normSq (u j) = 1) (hs : u 0 + u 1 + u 2 = -1) :
    (u 0 = -1 ∧ u 2 = -u 1) ∨ (u 1 = -1 ∧ u 2 = -u 0) ∨ (u 2 = -1 ∧ u 1 = -u 0) := by
  have := three_units (fun j => -u j) (fun j => by rw [Complex.normSq_neg]; exact hu j)
    (by linear_combination -hs)
  rcases this with ⟨a, b⟩ | ⟨a, b⟩ | ⟨a, b⟩
  · exact Or.inl ⟨by linear_combination -a, by linear_combination -b⟩
  · exact Or.inr (Or.inl ⟨by linear_combination -a, by linear_combination -b⟩)
  · exact Or.inr (Or.inr ⟨by linear_combination -a, by linear_combination -b⟩)

/-! ### The `p = 7` core -/

theorem p7_pair {u w : ℂ} (hu : Complex.normSq u = 1) (hw : Complex.normSq w = 1)
    (E : w + conj u + w * conj u = 1 - 2 * Complex.I) : u = 1 ∨ w = 1 := by
  have cu := mul_conj_of_normSq hu; have cw := mul_conj_of_normSq hw
  have Ec : conj w + u + conj w * u = 1 + 2 * Complex.I := by
    have := congrArg conj E
    simp only [map_add, map_sub, map_mul, map_one, Complex.conj_I, Complex.conj_conj,
      show conj (2 : ℂ) = 2 from map_ofNat _ 2] at this
    linear_combination this
  have hI := Complex.I_sq
  have key : (1 - Complex.I) * (u - 1) * (u - Complex.I) = 0 := by
    linear_combination (-Complex.I * w - Complex.I + u * w / 2 + u / 2 - w / 2 - 1 / 2) * cu +
      (-u ^ 2 / 2 - u - 1 / 2) * cw + (Complex.I * u - u ^ 2 / 2 + u / 2) * E +
      (u * w / 2 + w / 2) * Ec + (-u - 1) * hI
  have h1I : (1 : ℂ) - Complex.I ≠ 0 := by
    intro h0; have := congrArg Complex.re h0; simp at this
  rcases mul_eq_zero.1 key with k | k
  · exact Or.inl (sub_eq_zero.1 ((mul_eq_zero.1 k).resolve_left h1I))
  · right
    have hu' : u = Complex.I := sub_eq_zero.1 k
    rw [hu', Complex.conj_I] at E
    have : (w - 1) * (1 - Complex.I) = 0 := by linear_combination E
    exact sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_right h1I)

theorem p7_corner_off {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (i j k : Fin 3) (hpi : p i = 1) (hpk : p k = -p j)
    (hqj : q j = 1) (hqk : q k = -q i)
    (hc : q i * conj (p i) + q j * conj (p j) + q k * conj (p k) = 1 - 2 * Complex.I) :
    ∃ m, p m = 1 ∧ q m = 1 := by
  rw [hpi, hpk, hqj, hqk] at hc
  simp only [map_one, map_neg] at hc
  rcases p7_pair (hp j) (hq i) (by linear_combination hc) with h | h
  · exact ⟨j, h, hqj⟩
  · exact ⟨i, hpi, h⟩

theorem p7_corner {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (sp : p 0 + p 1 + p 2 = 1) (sq : q 0 + q 1 + q 2 = 1)
    (hc : q 0 * conj (p 0) + q 1 * conj (p 1) + q 2 * conj (p 2) = 1 - 2 * Complex.I) :
    ∃ m, p m = 1 ∧ q m = 1 := by
  rcases three_units p hp sp with ⟨a1, a2⟩ | ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases three_units q hq sq with ⟨b1, b2⟩ | ⟨b1, b2⟩ | ⟨b1, b2⟩
  · exact ⟨0, a1, b1⟩
  · exact p7_corner_off hp hq 0 1 2 a1 a2 b1 b2 (by linear_combination hc)
  · exact p7_corner_off hp hq 0 2 1 a1 (by linear_combination a2) b1 b2 (by linear_combination hc)
  · exact p7_corner_off hp hq 1 0 2 a1 a2 b1 b2 (by linear_combination hc)
  · exact ⟨1, a1, b1⟩
  · exact p7_corner_off hp hq 1 2 0 a1 (by linear_combination a2) b1 (by linear_combination b2)
      (by linear_combination hc)
  · exact p7_corner_off hp hq 2 0 1 a1 a2 b1 (by linear_combination b2) (by linear_combination hc)
  · exact p7_corner_off hp hq 2 1 0 a1 (by linear_combination a2) b1 (by linear_combination b2)
      (by linear_combination hc)
  · exact ⟨2, a1, b1⟩

theorem p7_pair2 {v z : ℂ} (hv : Complex.normSq v = 1) (hz : Complex.normSq z = 1)
    (E : -z - conj v + z * conj v = -1 + 2 * Complex.I) : v = Complex.I ∧ z = -Complex.I := by
  have cv := mul_conj_of_normSq hv; have cz := mul_conj_of_normSq hz
  have Ec : -conj z - v + conj z * v = -1 - 2 * Complex.I := by
    have := congrArg conj E
    simp only [map_add, map_sub, map_mul, map_one, map_neg, Complex.conj_I, Complex.conj_conj,
      show conj (2 : ℂ) = 2 from map_ofNat _ 2] at this
    linear_combination this
  have hI := Complex.I_sq
  have key : (v - Complex.I) ^ 2 = 0 := by
    linear_combination (-Complex.I * v * z / 2 + Complex.I * v / 2 - Complex.I * z ^ 2 / 2 +
        Complex.I * z - Complex.I / 2 + v * z ^ 2 / 4 - v * z / 2 + v / 4 - z ^ 2 / 4 - z / 2 + 3 / 4) * cv +
      (-Complex.I * v / 2 + Complex.I / 2 - v ^ 2 * z / 4 + v ^ 2 / 4 + v * z / 2 - v / 2 - z / 4 + 1 / 4) * cz +
      (Complex.I * v ^ 2 / 2 + Complex.I * v * z / 2 - Complex.I * v / 2 - v ^ 2 * z / 4 + v ^ 2 / 4 +
        v * z / 4 + 3 * v / 4) * E +
      (Complex.I * z / 2 + v * z ^ 2 / 4 - v * z / 4 - z ^ 2 / 4 + z / 4) * Ec +
      (v ^ 2 + v * z - v - z + 1) * hI
  have hv' : v = Complex.I := sub_eq_zero.1 (pow_eq_zero_iff (two_ne_zero) |>.1 key)
  refine ⟨hv', ?_⟩
  rw [hv', Complex.conj_I] at E
  have h1I : (-1 : ℂ) - Complex.I ≠ 0 := by
    intro h0; have := congrArg Complex.re h0; simp at this
  have : (z + Complex.I) * (-1 - Complex.I) = 0 := by linear_combination E - hI
  exact eq_neg_of_add_eq_zero_left ((mul_eq_zero.1 this).resolve_right h1I)

theorem p7_compl_same {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (i j k : Fin 3) (hpi : p i = -1) (hpk : p k = -p j)
    (hqi : q i = -1) (hqk : q k = -q j)
    (hc : q i * conj (p i) + q j * conj (p j) + q k * conj (p k) = -1 + 2 * Complex.I) : False := by
  rw [hpi, hpk, hqi, hqk] at hc
  simp only [map_one, map_neg] at hc
  have e : q j * conj (p j) = -1 + Complex.I := by linear_combination hc / 2
  have := congrArg Complex.normSq e
  rw [Complex.normSq_mul, Complex.normSq_conj, hp j, hq j] at this
  norm_num [Complex.normSq_apply] at this

theorem p7_compl_off {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (i j k : Fin 3) (hjk : i ≠ k) (hpi : p i = -1)
    (hpk : p k = -p j) (hqj : q j = -1) (hqk : q k = -q i)
    (hc : q i * conj (p i) + q j * conj (p j) + q k * conj (p k) = -1 + 2 * Complex.I) :
    ∃ m m', m ≠ m' ∧ p m = -1 ∧ q m = -Complex.I ∧ p m' = -Complex.I ∧ q m' = Complex.I := by
  rw [hpi, hpk, hqj, hqk] at hc
  simp only [map_one, map_neg] at hc
  obtain ⟨hv, hz⟩ := p7_pair2 (hp j) (hq i) (by linear_combination hc)
  exact ⟨i, k, hjk, hpi, hz, by rw [hpk, hv], by rw [hqk, hz, neg_neg]⟩

theorem p7_compl {p q : Fin 3 → ℂ} (hp : ∀ j, Complex.normSq (p j) = 1)
    (hq : ∀ j, Complex.normSq (q j) = 1) (sp : p 0 + p 1 + p 2 = -1) (sq : q 0 + q 1 + q 2 = -1)
    (hc : q 0 * conj (p 0) + q 1 * conj (p 1) + q 2 * conj (p 2) = -1 + 2 * Complex.I) :
    ∃ m m', m ≠ m' ∧ p m = -1 ∧ q m = -Complex.I ∧ p m' = -Complex.I ∧ q m' = Complex.I := by
  rcases three_units_neg p hp sp with ⟨a1, a2⟩ | ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases three_units_neg q hq sq with ⟨b1, b2⟩ | ⟨b1, b2⟩ | ⟨b1, b2⟩
  · exact (p7_compl_same hp hq 0 1 2 a1 a2 b1 b2 (by linear_combination hc)).elim
  · exact p7_compl_off hp hq 0 1 2 (by decide) a1 a2 b1 b2 (by linear_combination hc)
  · exact p7_compl_off hp hq 0 2 1 (by decide) a1 (by linear_combination a2) b1 b2
      (by linear_combination hc)
  · exact p7_compl_off hp hq 1 0 2 (by decide) a1 a2 b1 b2 (by linear_combination hc)
  · exact (p7_compl_same hp hq 1 0 2 a1 a2 b1 b2 (by linear_combination hc)).elim
  · exact p7_compl_off hp hq 1 2 0 (by decide) a1 (by linear_combination a2) b1
      (by linear_combination b2) (by linear_combination hc)
  · exact p7_compl_off hp hq 2 0 1 (by decide) a1 a2 b1 (by linear_combination b2)
      (by linear_combination hc)
  · exact p7_compl_off hp hq 2 1 0 (by decide) a1 (by linear_combination a2) b1
      (by linear_combination b2) (by linear_combination hc)
  · exact (p7_compl_same hp hq 2 0 1 a1 (by linear_combination a2) b1 (by linear_combination b2)
      (by linear_combination hc)).elim

/-- The block `[[1,1,1],[1,−1,−i],[1,−i,i]]` has signature `−56 − 8i`. -/
theorem p7_final_sig :
    (Step2.sideSignature !![1, 1, 1; 1, -1, -Complex.I; 1, -Complex.I, Complex.I]).im ≠ 0 := by
  intro h0
  simp [Step2.sideSignature, Step2.permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    pow_two] at h0
  norm_num at h0

theorem p7_core {x y : I6 → ℂ} (h : Pre 1 1 (conj 1 * conj (1 - 2 * Complex.I) * 1) x y)
    (hr : cc y x = 1 - 2 * Complex.I) : False := by
  have ex := h.sx; have ey := h.sy; have exy := h.sxy
  rw [sum_I6] at ex ey exy
  have cx := h.cx; have cy := h.cy
  simp only [csum, Fin.sum_univ_three] at cx cy ex ey
  simp only [cc, Fin.sum_univ_three] at hr
  simp only [Fin.sum_univ_three] at exy
  obtain ⟨m, hm1, hm2⟩ := p7_corner (p := fun i => x (Sum.inr i)) (q := fun i => y (Sum.inr i))
    (fun j => h.ux _) (fun j => h.uy _) cx cy hr
  obtain ⟨k, k', hkk, hk1, hk2, hk3, hk4⟩ :=
    p7_compl (p := fun i => x (Sum.inl i)) (q := fun i => y (Sum.inl i))
      (fun j => h.ux _) (fun j => h.uy _) (by linear_combination ex - cx) (by linear_combination ey - cy)
      (by linear_combination exy - hr)
  have hT : Function.Injective ![Sum.inr m, Sum.inl k, (Sum.inl k' : I6)] := by
    intro i i' e
    fin_cases i <;> fin_cases i' <;> simp_all
  have hc := h.crit _ hT
  have e : blk ![fun _ => 1, x, y] ![Sum.inr m, Sum.inl k, (Sum.inl k' : I6)] =
      !![1, 1, 1; 1, -1, -Complex.I; 1, -Complex.I, Complex.I] := by
    ext i j; fin_cases i <;> fin_cases j <;> simp_all [blk]
  rw [e] at hc
  exact p7_final_sig hc

/-- **The `p = 7` exclusion on a strip** (hub row first: `|s| = |t| = 1`, `|r|² = 5`, `|J| = 2`). -/
theorem p7_strip {a b c : I6 → ℂ} (h : StripData a b c) (hs : Complex.normSq (cc b a) = 1)
    (ht : Complex.normSq (cc c a) = 1) (hr : Complex.normSq (cc c b) = 5)
    (hJ : Side.jS (cc b a) (cc c a) (cc c b) = 2 ∨ Side.jS (cc b a) (cc c a) (cc c b) = -2) : False := by
  obtain ⟨hre, him⟩ := rho_data (cc b a) (cc c a) (cc c b)
  have r0 : conj (1 : ℂ) * conj (1 - 2 * Complex.I) * 1 = ⟨1, 2⟩ := by
    apply Complex.ext <;> simp
  have hρ := rho_cases (ρ := conj (cc b a) * conj (cc c b) * cc c a)
    (ρ0 := conj (1 : ℂ) * conj (1 - 2 * Complex.I) * 1)
    (by rw [hre, r0]; rcases hJ with e | e <;> rw [e] <;> norm_num)
    (by rw [him, r0, hs, ht, hr]; rcases hJ with e | e <;> rw [e] <;> norm_num)
  obtain ⟨x, y, hp, hc⟩ := driver h one_ne_zero one_ne_zero (by rw [hs, Complex.normSq_one])
    (by rw [ht, Complex.normSq_one]) hρ
  exact p7_core hp hc

end NoFourMUBs.PRM.Coverage.Endpoint
