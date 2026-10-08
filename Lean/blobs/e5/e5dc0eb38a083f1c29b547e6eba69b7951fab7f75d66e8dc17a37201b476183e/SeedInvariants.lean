import GramNumerators

/-! Shared horizontal and vertical data of the actual dephased phase seed. -/

namespace FourierSeedBinding

open Matrix
noncomputable section

theorem seed_transpose (a b c d : ℂ) : (seed a b c d)ᵀ = seed a c b d := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [seed, Matrix.transpose_apply]

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
    simp [gramH, seed, FourierGramNumerators.gram, rowS, rowT, rowR,
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

theorem cofactor_shift_product_formula (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    (cofactorShiftProduct a b c d : ℂ) =
      -((a*d+b*c)*(a+b)*(a+c)*(b+d)*(c+d)*(1+a)*(1+b)*(1+c)*(1+d)) /
        (a*b*c*d)^2 := by
  have h0 := one_sub_norm_sum_factor (c*star a) (d*star b)
    (phase_mul_star hc ha) (phase_mul_star hd hb)
  have h1 := one_sub_norm_sum_factor c d hc hd
  have h2 := one_sub_norm_sum_factor a b ha hb
  unfold cofactorShiftProduct
  rw [q_gram_binding a b c d 0 ha hb hc hd,
    q_gram_binding a b c d 1 ha hb hc hd,
    q_gram_binding a b c d 2 ha hb hc hd]
  simp [FourierGramNumerators.q, rowR, rowS, rowT, Complex.normSq_neg]
  push_cast
  have hn (x : ℝ) : (9 - (x : ℂ)) - 8 = 1 - (x : ℂ) := by ring
  rw [hn, hn, hn, h0, h1, h2, phase_star ha, phase_star hb]
  field_simp [phase_ne_zero ha, phase_ne_zero hb, phase_ne_zero hc, phase_ne_zero hd]
  ring

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

#print axioms seed_transpose
#print axioms gramV_eq_gramH_swap
#print axioms detE_swap
#print axioms permE_swap
#print axioms g_swap
#print axioms eta_swap
#print axioms sigma_swap
#print axioms gramH_entries
#print axioms g_gram_binding
#print axioms q_gram_binding
#print axioms phase_mul_star
#print axioms one_sub_norm_sum_factor
#print axioms cofactor_shift_product_formula
#print axioms cofactor_shift_product_swap
#print axioms chi_swap
#print axioms radicand_swap

end
end FourierSeedBinding
