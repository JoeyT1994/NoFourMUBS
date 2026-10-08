import GramNumerators

/-! Shared horizontal and vertical data of the actual dephased phase seed. -/

namespace FourierSeedBinding

open Matrix
noncomputable section

theorem seed_transpose (a b c d : ℂ) : (seed a b c d)ᵀ = seed a c b d := by
  ext i j
  change (seed a b c d) j i = (seed a c b d) i j
  fin_cases i <;> fin_cases j <;> rfl

theorem gramV_eq_gramH_swap (a b c d : ℂ) : gramV a b c d = gramH a c b d := by
  simp only [gramV, seed_transpose, gramH]

theorem qV_eq_q_swap (a b c d : ℂ) (i : Fin 3) : qV a b c d i = q a c b d i := by
  simp only [qV, gramV_eq_gramH_swap, q]

theorem detE_swap (a b c d : ℂ) : detE a c b d = detE a b c d := by
  rw [detE_formula, detE_formula]
  ring

theorem permE_swap (a b c d : ℂ) : permE a c b d = permE a b c d := by
  unfold permE
  ring

theorem g_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    g a c b d = g a b c d := by
  rw [g_binding a c b d ha hc hb hd, g_binding a b c d ha hb hc hd,
    detE_swap, permE_swap]

theorem eta_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    eta a c b d = eta a b c d := by
  rw [eta_binding a c b d ha hc hb hd, eta_binding a b c d ha hb hc hd,
    detE_swap, permE_swap]

theorem sigma_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    sigma a c b d = sigma a b c d := by
  have hg := g_swap a b c d ha hb hc hd
  have he := eta_swap a b c d ha hb hc hd
  unfold eta at he
  linarith

def rowS (a b : ℂ) : ℂ := -(1+a+b)
def rowT (c d : ℂ) : ℂ := -(1+c+d)
def rowR (a b c d : ℂ) : ℂ := -(1+c*star a+d*star b)

theorem gramH_entries (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    gramH a b c d = FourierGramNumerators.gram (rowS a b) (rowT c d) (rowR a b c d) := by
  have hA := phase_mul_conj ha
  have hB := phase_mul_conj hb
  have hC := phase_mul_conj hc
  have hD := phase_mul_conj hd
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp only [gramH, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply] <;>
    rw [Matrix.mul_apply] <;>
    simp only [Matrix.conjTranspose_apply] <;>
    simp [seed, FourierGramNumerators.gram, rowS, rowT, rowR,
      Matrix.mul_apply, Fin.sum_univ_three, Matrix.conjTranspose_apply,
      Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul,
      Complex.star_def, hA, hB, hC, hD] <;> ring

theorem g_gram_binding (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    g a b c d = FourierGramNumerators.g (rowS a b) (rowT c d) (rowR a b c d) := by
  unfold g
  rw [gramH_entries a b c d ha hb hc hd, FourierGramNumerators.gram_det,
    Complex.ofReal_re]

theorem q_gram_binding (a b c d : ℂ) (i : Fin 3)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    q a b c d i = FourierGramNumerators.q (rowS a b) (rowT c d) (rowR a b c d) i := by
  unfold q
  rw [gramH_entries a b c d ha hb hc hd, FourierGramNumerators.gram_adjugate_diag,
    Complex.ofReal_re]

theorem sigma_gram_binding (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    sigma a b c d =
      FourierGramNumerators.sigma (rowS a b) (rowT c d) (rowR a b c d) := by
  simp only [sigma, FourierGramNumerators.sigma, q_gram_binding a b c d _ ha hb hc hd]

theorem eta_gram_binding (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    eta a b c d = FourierGramNumerators.eta (rowS a b) (rowT c d) (rowR a b c d) := by
  simp only [eta, FourierGramNumerators.eta, g_gram_binding a b c d ha hb hc hd,
    sigma_gram_binding a b c d ha hb hc hd]

theorem chi_gram_binding (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    chi a b c d = FourierGramNumerators.chi (rowS a b) (rowT c d) (rowR a b c d) := by
  simp only [chi, FourierGramNumerators.chi, g_gram_binding a b c d ha hb hc hd,
    sigma_gram_binding a b c d ha hb hc hd, q_gram_binding a b c d _ ha hb hc hd]

theorem phase_mul_star {x y : ℂ} (hx : IsPhase x) (hy : IsPhase y) :
    IsPhase (x * star y) := by
  simp only [IsPhase, Complex.normSq_mul, Complex.star_def, Complex.normSq_conj]
  rw [hx, hy, mul_one]

theorem one_sub_norm_sum_factor (x y : ℂ) (hx : IsPhase x) (hy : IsPhase y) :
    1 - (Complex.normSq (1+x+y) : ℂ) =
      -(x+y)*(1+x)*(1+y)/(x*y) := by
  rw [Complex.normSq_eq_conj_mul_self]
  simp only [map_add, map_one, phase_conj hx, phase_conj hy]
  field_simp [phase_ne_zero hx, phase_ne_zero hy]
  ring

def cofactorShiftProduct (a b c d : ℂ) : ℝ :=
  (q a b c d 0 - 8) * (q a b c d 1 - 8) * (q a b c d 2 - 8)

theorem one_sub_norm_ratio_sum_factor (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    1 - (Complex.normSq (1+c*star a+d*star b) : ℂ) =
      -(a*d+b*c)*(a+c)*(b+d)/(a*b*c*d) := by
  apply (eq_div_iff (mul_ne_zero (mul_ne_zero
    (mul_ne_zero (phase_ne_zero ha) (phase_ne_zero hb)) (phase_ne_zero hc))
      (phase_ne_zero hd))).2
  have hA := phase_mul_conj ha
  have hB := phase_mul_conj hb
  have hC := phase_mul_conj hc
  have hD := phase_mul_conj hd
  simp [Complex.normSq_eq_conj_mul_self, Complex.star_def]
  linear_combination
    (-a*b*c^2*d*(starRingEnd ℂ) c - b^2*c^2*d*(starRingEnd ℂ) d - b*c^2*d)*hA +
    (-a^2*c*d^2*(starRingEnd ℂ) c - a*b*c*d^2*(starRingEnd ℂ) d - a*c*d^2)*hB +
    (-a^2*b*d - a^2*d^2 - a*b*c*d)*hC +
    (-a*b^2*c - a*b*c*d - b^2*c^2)*hD

set_option maxHeartbeats 0 in
theorem cofactor_shift_product_formula (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    (cofactorShiftProduct a b c d : ℂ) =
      -((a*d+b*c)*(a+b)*(a+c)*(b+d)*(c+d)*(1+a)*(1+b)*(1+c)*(1+d)) /
        (a*b*c*d)^2 := by
  have h0 := one_sub_norm_ratio_sum_factor a b c d ha hb hc hd
  have h1 := one_sub_norm_sum_factor c d hc hd
  have h2 := one_sub_norm_sum_factor a b ha hb
  unfold cofactorShiftProduct
  rw [q_gram_binding a b c d 0 ha hb hc hd,
    q_gram_binding a b c d 1 ha hb hc hd,
    q_gram_binding a b c d 2 ha hb hc hd]
  change (((9 - Complex.normSq (-(1+c*star a+d*star b)) - 8) *
    (9 - Complex.normSq (-(1+c+d)) - 8) *
    (9 - Complex.normSq (-(1+a+b)) - 8) : ℝ) : ℂ) = _
  simp only [Complex.normSq_neg]
  push_cast
  have hn (x : ℝ) : (9 - (x : ℂ)) - 8 = 1 - (x : ℂ) := by ring
  rw [hn, hn, hn, h0, h1, h2]
  rw [div_mul_div_comm, div_mul_div_comm]
  congr 1
  · simp only [neg_mul, mul_neg, neg_neg]
    congr 1
    ac_rfl
  · simp only [pow_two]
    ac_rfl

theorem cofactor_shift_product_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    cofactorShiftProduct a c b d = cofactorShiftProduct a b c d := by
  apply Complex.ofReal_injective
  rw [cofactor_shift_product_formula a c b d ha hc hb hd,
    cofactor_shift_product_formula a b c d ha hb hc hd]
  congr 1 <;> ring

theorem chi_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    chi a c b d = chi a b c d := by
  change cofactorShiftProduct a c b d + 2 * (sigma a c b d - 16)^2 +
    (12 - sigma a c b d) * g a c b d =
      cofactorShiftProduct a b c d + 2 * (sigma a b c d - 16)^2 +
        (12 - sigma a b c d) * g a b c d
  rw [cofactor_shift_product_swap a b c d ha hb hc hd,
    sigma_swap a b c d ha hb hc hd, g_swap a b c d ha hb hc hd]

theorem radicand_swap (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    radicand a c b d = radicand a b c d := by
  unfold radicand
  rw [g_swap a b c d ha hb hc hd, eta_swap a b c d ha hb hc hd,
    chi_swap a b c d ha hb hc hd]

def gV (a b c d : ℂ) : ℝ := (gramV a b c d).det.re
def sigmaV (a b c d : ℂ) : ℝ := qV a b c d 0 + qV a b c d 1 + qV a b c d 2
def etaV (a b c d : ℂ) : ℝ := gV a b c d + 36 - 2 * sigmaV a b c d
def chiV (a b c d : ℂ) : ℝ :=
  (qV a b c d 0 - 8) * (qV a b c d 1 - 8) * (qV a b c d 2 - 8) +
    2 * (sigmaV a b c d - 16)^2 + (12 - sigmaV a b c d) * gV a b c d
def radicandV (a b c d : ℂ) : ℝ :=
  FourierRadicalGuards.radicand (gV a b c d) (chiV a b c d) (etaV a b c d)

/-- Every displayed vertical scalar is computed from the actual vertical Gram. -/
theorem vertical_scalars_equal (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    gV a b c d = g a b c d ∧ sigmaV a b c d = sigma a b c d ∧
      etaV a b c d = eta a b c d ∧ chiV a b c d = chi a b c d ∧
        radicandV a b c d = radicand a b c d := by
  have hgV : gV a b c d = g a c b d := by simp only [gV, g, gramV_eq_gramH_swap]
  have hsV : sigmaV a b c d = sigma a c b d := by
    simp only [sigmaV, sigma, qV_eq_q_swap]
  have heV : etaV a b c d = eta a c b d := by simp only [etaV, eta, hgV, hsV]
  have hcV : chiV a b c d = chi a c b d := by
    simp only [chiV, chi, qV_eq_q_swap, hgV, hsV]
  have hRV : radicandV a b c d = radicand a c b d := by
    simp only [radicandV, radicand, hgV, heV, hcV]
  exact ⟨hgV.trans (g_swap a b c d ha hb hc hd),
    hsV.trans (sigma_swap a b c d ha hb hc hd),
    heV.trans (eta_swap a b c d ha hb hc hd),
    hcV.trans (chi_swap a b c d ha hb hc hd),
    hRV.trans (radicand_swap a b c d ha hb hc hd)⟩

#print axioms seed_transpose
#print axioms gramV_eq_gramH_swap
#print axioms qV_eq_q_swap
#print axioms detE_swap
#print axioms permE_swap
#print axioms g_swap
#print axioms eta_swap
#print axioms sigma_swap
#print axioms gramH_entries
#print axioms g_gram_binding
#print axioms q_gram_binding
#print axioms sigma_gram_binding
#print axioms eta_gram_binding
#print axioms chi_gram_binding
#print axioms phase_mul_star
#print axioms one_sub_norm_sum_factor
#print axioms one_sub_norm_ratio_sum_factor
#print axioms cofactor_shift_product_formula
#print axioms cofactor_shift_product_swap
#print axioms chi_swap
#print axioms radicand_swap
#print axioms vertical_scalars_equal

end
end FourierSeedBinding
