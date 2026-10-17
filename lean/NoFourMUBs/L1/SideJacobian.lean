import NoFourMUBs.Step2.SideAlg

/-!
# The Jacobian of the Gram map

A normalised side `(1; x; y)` with `xⱼ = e^{i aⱼ}`, `yⱼ = e^{i bⱼ}` has Gram data
`γ = (s, t, r) = (Σ xⱼ, Σ yⱼ, Σ x̄ⱼ yⱼ)`.  Handoff J (`proof/coverage/handoffs/J_side_existence_jacobian`):

* **(J)** The derivative of `(s, s̄, t, t̄, r, r̄)` in the angles `(a, b)`, divided by `i`, has determinant
  `T̄ − T = −2i Im T` on the torus (`det_jac`), where `T = TS x y` is the signature.  So the real derivative
  `ℝ⁶ → ℂ³` of `γ` is injective, hence invertible, wherever `Im T ≠ 0` (`dA_injective`).
* By the inverse function theorem, the Gram data realised by a side with `ε Im T > 0` form an open set
  (`isOpen_sideSet`); those realised with `ε Im T ≥ 0` form a closed set, the image of a compact set
  (`isClosed_sideSetC`).
-/

open ComplexConjugate NoFourMUBs.Side Filter Topology Matrix

noncomputable section

namespace NoFourMUBs.L1

/-! ### The Jacobian identity (J) -/

/-- The angle derivative of `(s, s̄, t, t̄, r, r̄)` divided by `i` (up to the signs of the conjugate rows), in
the columns `a₀, a₁, a₂, b₀, b₁, b₂`, with `X = x̄` and `Y = ȳ`. -/
def jac (x X y Y : Fin 3 → ℂ) : Matrix (Fin 6) (Fin 6) ℂ :=
  !![x 0, x 1, x 2, 0, 0, 0;
     X 0, X 1, X 2, 0, 0, 0;
     0, 0, 0, y 0, y 1, y 2;
     0, 0, 0, Y 0, Y 1, Y 2;
     -(X 0 * y 0), -(X 1 * y 1), -(X 2 * y 2), X 0 * y 0, X 1 * y 1, X 2 * y 2;
     -(x 0 * Y 0), -(x 1 * Y 1), -(x 2 * Y 2), x 0 * Y 0, x 1 * Y 1, x 2 * Y 2]

/-- The `3 × 3` determinant with rows `a, b, c`. -/
def det3 (a b c : Fin 3 → ℂ) : ℂ :=
  a 0 * (b 1 * c 2 - b 2 * c 1) - a 1 * (b 0 * c 2 - b 2 * c 0) + a 2 * (b 0 * c 1 - b 1 * c 0)

/-- Laplace expansion of `jac` along the columns `a₀, a₁, a₂` (a polynomial identity). -/
theorem det_jac_laplace (x X y Y : Fin 3 → ℂ) :
    (jac x X y Y).det = det3 x X y * det3 Y (fun j => X j * y j) (fun j => x j * Y j) -
      det3 x X Y * det3 y (fun j => X j * y j) (fun j => x j * Y j) := by
  rw [jac, det_succ_row_zero]
  simp only [Fin.sum_univ_six, det_succ_row_zero, Fin.sum_univ_five, Fin.sum_univ_four, Fin.sum_univ_three,
    Fin.sum_univ_two, det_unique, submatrix_apply, of_apply, cons_val', cons_val_zero, cons_val_one, cons_val_two,
    cons_val_succ, empty_val', cons_val_fin_one, Fin.succAbove_zero, Fin.one_succAbove_zero, Fin.one_succAbove_succ,
    Fin.succ_zero_eq_one, Fin.succ_one_eq_two, mul_zero, zero_mul, add_zero, zero_add, Fin.val_zero, Fin.val_one,
    Fin.val_two, pow_zero, pow_one, one_mul, neg_mul, Fin.isValue, head_cons, tail_cons]
  simp only [Fin.default_eq_zero, Fin.succAbove, Fin.lt_def, Fin.val_zero, Fin.val_one, Fin.val_two,
    Fin.castSucc_zero, Fin.succ_zero_eq_one, Fin.succ_one_eq_two]
  norm_num
  simp [Matrix.cons_val, Fin.castSucc, Fin.castAdd, Fin.castLE, det3]
  ring

/-- **(J)** on the torus: the Jacobian determinant is `T̄ − T = −2i Im T`. -/
theorem det_jac {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1) :
    (jac x (fun j => conj (x j)) y (fun j => conj (y j))).det = conj (TS x y) - TS x y := by
  have ex : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have ey : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have nx : ∀ j, x j ≠ 0 := fun j => ne_zero_of_normSq (hx j)
  have ny : ∀ j, y j ≠ 0 := fun j => ne_zero_of_normSq (hy j)
  have := nx 0; have := nx 1; have := nx 2; have := ny 0; have := ny 1; have := ny 2
  rw [det_jac_laplace]
  simp only [TS, piS, hS, uS, map_neg, map_mul, map_add, map_sub, map_pow, Complex.conj_conj]
  simp only [det3, ex, ey]
  field_simp
  ring

/-! ### Angle coordinates -/

/-- `e^{iθ}`. -/
def ex (θ : ℝ) : ℂ := Complex.exp (θ * Complex.I)

theorem normSq_ex (θ : ℝ) : Complex.normSq (ex θ) = 1 := by
  rw [ex, Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I, one_pow]

theorem ex_sub (a b : ℝ) : ex (b - a) = ex b * conj (ex a) := by
  simp only [ex, ← Complex.exp_conj, map_mul, Complex.conj_ofReal, Complex.conj_I, ← Complex.exp_add]
  congr 1; push_cast; ring

theorem ex_arg {z : ℂ} (hz : Complex.normSq z = 1) : ex (Complex.arg z) = z := by
  have h : ‖z‖ = 1 := by
    rw [Complex.normSq_eq_norm_sq] at hz
    nlinarith [norm_nonneg z]
  have := Complex.norm_mul_exp_arg_mul_I z
  rw [h, Complex.ofReal_one, one_mul] at this
  exact this

theorem continuous_ex : Continuous ex := by unfold ex; fun_prop

/-- The side with angles `φ = (a, b)`. -/
def angX (φ : Fin 6 → ℝ) : Fin 3 → ℂ := ![ex (φ 0), ex (φ 1), ex (φ 2)]
def angY (φ : Fin 6 → ℝ) : Fin 3 → ℂ := ![ex (φ 3), ex (φ 4), ex (φ 5)]

theorem angX_unit (φ : Fin 6 → ℝ) : ∀ j, Complex.normSq (angX φ j) = 1 := by
  intro j; fin_cases j <;> exact normSq_ex _

theorem angY_unit (φ : Fin 6 → ℝ) : ∀ j, Complex.normSq (angY φ j) = 1 := by
  intro j; fin_cases j <;> exact normSq_ex _

theorem continuous_angX : Continuous angX := by
  refine continuous_pi fun j => ?_
  fin_cases j <;> exact continuous_ex.comp (continuous_apply _)

theorem continuous_angY : Continuous angY := by
  refine continuous_pi fun j => ?_
  fin_cases j <;> exact continuous_ex.comp (continuous_apply _)

/-- The Gram data `(s, t, r)` of the side `(1; x; y)`. -/
def gram (x y : Fin 3 → ℂ) : ℂ × ℂ × ℂ := (sS x, sS y, rS x y)

theorem continuous_gram {α : Type*} [TopologicalSpace α] {f g : α → Fin 3 → ℂ} (hf : Continuous f)
    (hg : Continuous g) : Continuous fun a => gram (f a) (g a) := by
  unfold gram sS rS; fun_prop

theorem continuous_TS {α : Type*} [TopologicalSpace α] {f g : α → Fin 3 → ℂ} (hf : Continuous f)
    (hg : Continuous g) : Continuous fun a => TS (f a) (g a) := by
  unfold TS piS hS uS; fun_prop

/-- The Gram map in angle coordinates. -/
def fA (φ : Fin 6 → ℝ) : ℂ × ℂ × ℂ := gram (angX φ) (angY φ)

theorem fA_eq : fA = fun φ => (ex (φ 0) + ex (φ 1) + ex (φ 2), ex (φ 3) + ex (φ 4) + ex (φ 5),
    ex (φ 3 - φ 0) + ex (φ 4 - φ 1) + ex (φ 5 - φ 2)) := by
  funext φ
  simp [fA, gram, sS, rS, angX, angY, ex_sub]

/-! ### The derivative -/

/-- `ℝ⁶ → ℝ`, `ψ ↦ ψ k`. -/
abbrev pr (k : Fin 6) : (Fin 6 → ℝ) →L[ℝ] ℝ := ContinuousLinearMap.proj k

theorem hasStrictFDerivAt_ex (L : (Fin 6 → ℝ) →L[ℝ] ℝ) (φ : Fin 6 → ℝ) :
    HasStrictFDerivAt (fun ψ => ex (L ψ)) (ex (L φ) • L.smulRight Complex.I) φ := by
  have h : HasStrictFDerivAt (fun ψ => ((L ψ : ℝ) : ℂ) * Complex.I) (L.smulRight Complex.I) φ := by
    convert (L.smulRight Complex.I).hasStrictFDerivAt (x := φ) using 1
    funext ψ; simp [Complex.real_smul]
  exact h.cexp

/-- The derivative of `fA` at `φ`. -/
def dA (φ : Fin 6 → ℝ) : (Fin 6 → ℝ) →L[ℝ] ℂ × ℂ × ℂ :=
  (ex (φ 0) • (pr 0).smulRight Complex.I + ex (φ 1) • (pr 1).smulRight Complex.I +
      ex (φ 2) • (pr 2).smulRight Complex.I).prod
    ((ex (φ 3) • (pr 3).smulRight Complex.I + ex (φ 4) • (pr 4).smulRight Complex.I +
      ex (φ 5) • (pr 5).smulRight Complex.I).prod
    (ex (φ 3 - φ 0) • (pr 3 - pr 0).smulRight Complex.I + ex (φ 4 - φ 1) • (pr 4 - pr 1).smulRight Complex.I +
      ex (φ 5 - φ 2) • (pr 5 - pr 2).smulRight Complex.I))

theorem hasStrictFDerivAt_fA (φ : Fin 6 → ℝ) : HasStrictFDerivAt fA (dA φ) φ := by
  rw [fA_eq]
  have e := fun k => hasStrictFDerivAt_ex (pr k) φ
  have d := fun k l => hasStrictFDerivAt_ex (pr k - pr l) φ
  exact (((e 0).add (e 1)).add (e 2)).prodMk ((((e 3).add (e 4)).add (e 5)).prodMk
    (((d 3 0).add (d 4 1)).add (d 5 2)))

theorem dA_apply (φ v : Fin 6 → ℝ) : dA φ v =
    (Complex.I * (angX φ 0 * v 0 + angX φ 1 * v 1 + angX φ 2 * v 2),
     Complex.I * (angY φ 0 * v 3 + angY φ 1 * v 4 + angY φ 2 * v 5),
     Complex.I * (angY φ 0 * conj (angX φ 0) * (v 3 - v 0) + angY φ 1 * conj (angX φ 1) * (v 4 - v 1) +
       angY φ 2 * conj (angX φ 2) * (v 5 - v 2))) := by
  simp only [dA, angX, angY, ContinuousLinearMap.prod_apply]
  simp
  refine ⟨by ring, by ring, by simp only [ex_sub]; ring⟩

/-- **The derivative is injective where `Im T ≠ 0`**, by (J). -/
theorem dA_injective {φ : Fin 6 → ℝ} (h : (TS (angX φ) (angY φ)).im ≠ 0) : Function.Injective (dA φ) := by
  rw [injective_iff_map_eq_zero]
  intro v hv
  set x := angX φ
  set y := angY φ
  rw [dA_apply, Prod.mk_eq_zero, Prod.mk_eq_zero] at hv
  obtain ⟨h1, h2, h3⟩ := hv
  have e1 := (mul_eq_zero.1 h1).resolve_left Complex.I_ne_zero
  have e2 := (mul_eq_zero.1 h2).resolve_left Complex.I_ne_zero
  have e3 := (mul_eq_zero.1 h3).resolve_left Complex.I_ne_zero
  have c1 := congrArg conj e1
  have c2 := congrArg conj e2
  have c3 := congrArg conj e3
  simp only [map_add, map_mul, map_sub, map_zero, Complex.conj_ofReal, Complex.conj_conj] at c1 c2 c3
  set w : Fin 6 → ℂ := fun k => (v k : ℂ) with hw_def
  have hw : jac x (fun j => conj (x j)) y (fun j => conj (y j)) *ᵥ w = 0 := by
    funext i
    fin_cases i <;> simp [jac, mulVec, dotProduct, Fin.sum_univ_succ, w]
    · linear_combination e1
    · linear_combination c1
    · linear_combination e2
    · linear_combination c2
    · linear_combination e3
    · linear_combination c3
  have hdet : (jac x (fun j => conj (x j)) y (fun j => conj (y j))).det ≠ 0 := by
    rw [det_jac (angX_unit φ) (angY_unit φ)]
    intro h0
    have := congrArg Complex.im h0
    simp only [Complex.sub_im, Complex.conj_im, Complex.zero_im] at this
    exact h (by linarith)
  have h0 := eq_zero_of_mulVec_eq_zero hdet hw
  funext k
  have := congrFun h0 k
  simpa [w] using this

/-! ### Openness and closedness of the realised Gram data -/

/-- **Inverse function theorem**: near a side with `Im T ≠ 0`, the Gram map is open. -/
theorem map_nhds_fA {φ : Fin 6 → ℝ} (h : (TS (angX φ) (angY φ)).im ≠ 0) : map fA (𝓝 φ) = 𝓝 (fA φ) := by
  refine (hasStrictFDerivAt_fA φ).map_nhds_eq_of_surj (LinearMap.range_eq_top.mpr ?_)
  have hdim : Module.finrank ℝ (Fin 6 → ℝ) = Module.finrank ℝ (ℂ × ℂ × ℂ) := by
    simp [Module.finrank_prod, Complex.finrank_real_complex]
  exact (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim).mp (dA_injective h)

/-- The Gram data realised by a side with `ε Im T > 0`. -/
def sideSet (ε : ℝ) : Set (ℂ × ℂ × ℂ) :=
  {g | ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
    gram x y = g ∧ 0 < ε * (TS x y).im}

/-- The Gram data realised by a side with `ε Im T ≥ 0`. -/
def sideSetC (ε : ℝ) : Set (ℂ × ℂ × ℂ) :=
  {g | ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
    gram x y = g ∧ 0 ≤ ε * (TS x y).im}

/-- Every unit side has angles. -/
theorem exists_angles {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) : ∃ φ : Fin 6 → ℝ, angX φ = x ∧ angY φ = y := by
  refine ⟨![Complex.arg (x 0), Complex.arg (x 1), Complex.arg (x 2), Complex.arg (y 0), Complex.arg (y 1),
    Complex.arg (y 2)], ?_, ?_⟩ <;> funext j <;> fin_cases j <;> simp [angX, angY, ex_arg (hx _), ex_arg (hy _)]

theorem isOpen_sideSet (ε : ℝ) : IsOpen (sideSet ε) := by
  rw [isOpen_iff_mem_nhds]
  rintro _ ⟨x, y, hx, hy, rfl, hε⟩
  obtain ⟨φ, ex', ey'⟩ := exists_angles hx hy
  have hc : Continuous fun ψ => ε * (TS (angX ψ) (angY ψ)).im :=
    continuous_const.mul (Complex.continuous_im.comp (continuous_TS continuous_angX continuous_angY))
  have hO : {ψ | 0 < ε * (TS (angX ψ) (angY ψ)).im} ∈ 𝓝 φ :=
    (isOpen_lt continuous_const hc).mem_nhds (by simpa [ex', ey'] using hε)
  have him : (TS (angX φ) (angY φ)).im ≠ 0 := by
    rw [ex', ey']; intro h0; rw [h0, mul_zero] at hε; exact lt_irrefl _ hε
  have := image_mem_map (m := fA) hO
  rw [map_nhds_fA him, fA, ex', ey'] at this
  refine mem_of_superset this ?_
  rintro _ ⟨ψ, hψ, rfl⟩
  exact ⟨angX ψ, angY ψ, angX_unit ψ, angY_unit ψ, rfl, hψ⟩

theorem normSq_eq_one_iff (z : ℂ) : Complex.normSq z = 1 ↔ z ∈ Metric.sphere (0 : ℂ) 1 := by
  rw [mem_sphere_zero_iff_norm, Complex.normSq_eq_norm_sq]
  constructor
  · intro h; nlinarith [norm_nonneg z]
  · intro h; rw [h, one_pow]

theorem isClosed_sideSetC (ε : ℝ) : IsClosed (sideSetC ε) := by
  set S : Set (Fin 3 → ℂ) := Set.pi Set.univ fun _ => Metric.sphere 0 1
  set K : Set ((Fin 3 → ℂ) × (Fin 3 → ℂ)) := S ×ˢ S ∩ {p | 0 ≤ ε * (TS p.1 p.2).im}
  have hS : IsCompact S := isCompact_univ_pi fun _ => isCompact_sphere 0 1
  have hK : IsCompact K := (hS.prod hS).inter_right
    (isClosed_le continuous_const (continuous_const.mul (Complex.continuous_im.comp
      (continuous_TS continuous_fst continuous_snd))))
  have : sideSetC ε = (fun p => gram p.1 p.2) '' K := by
    ext g
    simp only [sideSetC, K, S, Set.mem_ofPred_eq, Set.mem_image, Set.mem_inter_iff, Set.mem_prod, Set.mem_pi,
      Set.mem_univ, true_implies, Prod.exists, normSq_eq_one_iff]
    constructor
    · rintro ⟨x, y, hx, hy, hg, hε⟩; exact ⟨x, y, ⟨⟨hx, hy⟩, hε⟩, hg⟩
    · rintro ⟨x, y, ⟨⟨hx, hy⟩, hε⟩, hg⟩; exact ⟨x, y, hx, hy, hg, hε⟩
  rw [this]
  exact (hK.image (continuous_gram continuous_fst continuous_snd)).isClosed

end NoFourMUBs.L1
