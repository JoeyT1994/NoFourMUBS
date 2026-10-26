import NoFourMUBs.SeedAtlas.Method.WholeBallFourierBounds
import NoFourMUBs.SeedAtlas.Seed
import Mathlib.Algebra.MonoidAlgebra.Basic

/-! The finite Fourier identity for the denominator-free side signature. -/

open Matrix Complex Hadamard6 NoFourMUBs.Step2

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

abbrev SignatureFrequency := Fin 9 → ℤ
abbrev SignaturePolynomial := AddMonoidAlgebra ℤ SignatureFrequency

noncomputable def signatureMonomial (ν : SignatureFrequency) : SignaturePolynomial :=
  AddMonoidAlgebra.single ν 1

lemma signatureMonomial_mul (a b : SignatureFrequency) :
    signatureMonomial a * signatureMonomial b = signatureMonomial (a + b) := by
  simp [signatureMonomial, AddMonoidAlgebra.single_mul_single]

noncomputable def signatureCharacter (q : Fin 9 → ℝ) :
    Multiplicative SignatureFrequency →* ℂ where
  toFun ν := Complex.exp ((∑ j, (ν.toAdd j : ℝ) * q j) * I)
  map_one' := by simp
  map_mul' a b := by
    change Complex.exp ((∑ j, ((a.toAdd j + b.toAdd j : ℤ) : ℝ) * q j) * I) = _
    simp only [Int.cast_add, add_mul, Finset.sum_add_distrib, Complex.ofReal_add, Complex.exp_add]

noncomputable def signatureEval (q : Fin 9 → ℝ) : SignaturePolynomial →ₐ[ℤ] ℂ :=
  AddMonoidAlgebra.lift ℤ ℂ SignatureFrequency (signatureCharacter q)

@[simp] lemma signatureEval_monomial (q : Fin 9 → ℝ) (ν : SignatureFrequency) :
    signatureEval q (signatureMonomial ν) = Complex.exp ((∑ j, (ν j : ℝ) * q j) * I) := by
  simp [signatureEval, signatureMonomial, signatureCharacter]

def signaturePermFrequency : Fin 6 → SignatureFrequency :=
  ![![1, 0, 0, 0, 1, 0, 0, 0, 1], ![1, 0, 0, 0, 0, 1, 0, 1, 0], ![0, 1, 0, 1, 0, 0, 0, 0, 1], ![0, 1, 0, 0, 0, 1, 1, 0, 0], ![0, 0, 1, 1, 0, 0, 0, 1, 0], ![0, 0, 1, 0, 1, 0, 1, 0, 0]]

def signatureSigns : Fin 6 → ℤ := ![1, -1, -1, 1, 1, -1]

def signatureFrequency : Fin 24 → SignatureFrequency :=
  ![![-2, 1, 1, 1, -2, 1, 1, 1, -2], ![-2, 1, 1, 1, -1, 0, 1, 0, -1], ![-2, 1, 1, 1, 0, -1, 1, -1, 0], ![-2, 1, 1, 1, 1, -2, 1, -2, 1], ![-1, -1, 2, -1, 2, -1, 2, -1, -1], ![-1, -1, 2, 0, 1, -1, 1, 0, -1], ![-1, -1, 2, 1, 0, -1, 0, 1, -1], ![-1, -1, 2, 2, -1, -1, -1, 2, -1], ![-1, 0, 1, -1, 1, 0, 2, -1, -1], ![-1, 0, 1, 0, -1, 1, 1, 1, -2], ![-1, 0, 1, 1, 1, -2, 0, -1, 1], ![-1, 0, 1, 2, -1, -1, -1, 1, 0], ![-1, 1, 0, -1, 0, 1, 2, -1, -1], ![-1, 1, 0, 0, 1, -1, 1, -2, 1], ![-1, 1, 0, 1, -2, 1, 0, 1, -1], ![-1, 1, 0, 2, -1, -1, -1, 0, 1], ![-1, 2, -1, -1, -1, 2, 2, -1, -1], ![-1, 2, -1, 0, -1, 1, 1, -1, 0], ![-1, 2, -1, 1, -1, 0, 0, -1, 1], ![-1, 2, -1, 2, -1, -1, -1, -1, 2], ![0, -1, 1, -1, 0, 1, 1, 1, -2], ![0, -1, 1, -1, 2, -1, 1, -1, 0], ![0, -1, 1, 1, -1, 0, -1, 2, -1], ![0, -1, 1, 1, 1, -2, -1, 0, 1]]

def signatureCoefficient : Fin 24 → ℤ := ![-1, 1, 1, -1, 1, -1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1, -1, -1, 1]

noncomputable def signatureLaurent (neg : Bool) : SignaturePolynomial :=
  let m := fun i => signatureMonomial (if neg then -signaturePermFrequency i else signaturePermFrequency i)
  (∑ i, m i) * (∑ i, signatureSigns i • m i) ^ 2 *
    signatureMonomial (if neg then ![1,1,1,1,1,1,1,1,1] else ![-1,-1,-1,-1,-1,-1,-1,-1,-1])

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem signature_odd_identity : signatureLaurent false - signatureLaurent true =
    ∑ i, signatureCoefficient i •
      (signatureMonomial (signatureFrequency i) - signatureMonomial (-signatureFrequency i)) := by
  simp only [signatureLaurent, Bool.false_eq_true, ↓reduceIte, signaturePermFrequency,
    signatureSigns, signatureCoefficient, signatureFrequency, Fin.sum_univ_succ,
    Matrix.cons_val_zero, Matrix.cons_val_succ,
    Fin.sum_univ_zero, add_zero]
  norm_num only [one_zsmul, neg_smul, one_smul]
  simp only [pow_two, mul_add, add_mul, mul_neg, neg_mul,
    signatureMonomial_mul]
  norm_num
  abel


noncomputable def signaturePhaseBlock (q : Fin 9 → ℝ) : Mat3 :=
  !![Complex.exp (q 0 * I), Complex.exp (q 1 * I), Complex.exp (q 2 * I);
     Complex.exp (q 3 * I), Complex.exp (q 4 * I), Complex.exp (q 5 * I);
     Complex.exp (q 6 * I), Complex.exp (q 7 * I), Complex.exp (q 8 * I)]

set_option maxHeartbeats 0 in
lemma signatureEval_laurent (q : Fin 9 → ℝ) :
    signatureEval q (signatureLaurent false) = psi (signaturePhaseBlock q) := by
  simp only [signatureLaurent, Bool.false_eq_true, ↓reduceIte, map_mul, map_pow,
    map_sum, map_zsmul, signatureEval_monomial]
  simp [psi, permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    signaturePermFrequency, signatureSigns, signaturePhaseBlock, Fin.sum_univ_succ,
    Complex.exp_add, add_mul, ← Complex.exp_conj]
  ring

lemma signatureEval_neg (q : Fin 9 → ℝ) (ν : SignatureFrequency) :
    signatureEval q (signatureMonomial (-ν)) = star (signatureEval q (signatureMonomial ν)) := by
  simp only [signatureEval_monomial, Pi.neg_apply, Int.cast_neg, neg_mul,
    Finset.sum_neg_distrib, Complex.ofReal_neg, Complex.star_def, ← Complex.exp_conj,
    map_mul, Complex.conj_ofReal, Complex.conj_I, mul_neg]

lemma signatureEval_laurent_neg (q : Fin 9 → ℝ) :
    signatureEval q (signatureLaurent true) = star (psi (signaturePhaseBlock q)) := by
  rw [← signatureEval_laurent]
  simp only [signatureLaurent, Bool.false_eq_true, ↓reduceIte, map_mul, map_pow,
    map_sum, map_zsmul]
  simp only [signatureEval_neg, Complex.star_def, map_mul, map_pow, map_sum, map_zsmul]
  have he : (![1,1,1,1,1,1,1,1,1] : SignatureFrequency) = -![-1,-1,-1,-1,-1,-1,-1,-1,-1] := by
    ext j; fin_cases j <;> norm_num
  rw [he, signatureEval_neg]
  rfl

theorem signature_fourier (q : Fin 9 → ℝ) :
    (psi (signaturePhaseBlock q)).im =
      ∑ i, (signatureCoefficient i : ℝ) *
        (Complex.exp ((∑ j, (signatureFrequency i j : ℝ) * q j) * I)).im := by
  have hh := congrArg (signatureEval q) signature_odd_identity
  simp only [map_sub, map_sum, map_zsmul, signatureEval_laurent,
    signatureEval_laurent_neg, signatureEval_neg] at hh
  have hi := congrArg Complex.im hh
  simp only [Complex.star_def, Complex.sub_im, Complex.conj_im, Complex.im_sum,
    zsmul_eq_mul, Complex.mul_im, Complex.intCast_re, Complex.intCast_im,
    zero_mul, add_zero, sub_neg_eq_add, signatureEval_monomial] at hi
  have he : (∑ i, (signatureCoefficient i : ℝ) *
      ((Complex.exp ((∑ j, (signatureFrequency i j : ℝ) * q j) * I)).im +
       (Complex.exp ((∑ j, (signatureFrequency i j : ℝ) * q j) * I)).im)) =
      2 * ∑ i, (signatureCoefficient i : ℝ) *
        (Complex.exp ((∑ j, (signatureFrequency i j : ℝ) * q j) * I)).im := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [he] at hi
  linarith


/-- The Gram sum is exactly `72 (P₃ ⊗ P₃)`. -/
theorem signature_gram : ∀ j k : Fin 9,
    (∑ i, signatureFrequency i j * signatureFrequency i k) =
      8 * (3 * (if j.val / 3 = k.val / 3 then 1 else 0) - 1) *
        (3 * (if j.val % 3 = k.val % 3 then 1 else 0) - 1) := by
  decide +kernel

set_option maxHeartbeats 0 in
/-- A sum-of-squares proof of the spectral bound 72 for the frequency Gram. -/
theorem signature_frequency_bound (v : Fin 9 → ℝ) :
    (∑ i, (∑ j, (signatureFrequency i j : ℝ) * v j) ^ 2) ≤ 72 * ∑ j, (v j) ^ 2 := by
  let r0 := v 0 + v 1 + v 2
  let r1 := v 3 + v 4 + v 5
  let r2 := v 6 + v 7 + v 8
  let c0 := v 0 + v 3 + v 6
  let c1 := v 1 + v 4 + v 7
  let c2 := v 2 + v 5 + v 8
  have he : (∑ i, (∑ j, (signatureFrequency i j : ℝ) * v j) ^ 2) =
      72 * (∑ j, (v j) ^ 2) - 8 * ((r0-r1)^2 + (r0-r2)^2 + (r1-r2)^2) -
        24 * (c0^2 + c1^2 + c2^2) := by
    norm_num [signatureFrequency, Fin.sum_univ_succ, r0, r1, r2, c0, c1, c2]
    ring!
  rw [he]
  nlinarith [sq_nonneg (r0-r1), sq_nonneg (r0-r2), sq_nonneg (r1-r2),
    sq_nonneg c0, sq_nonneg c1, sq_nonneg c2]

lemma signature_coefficient_abs (i : Fin 24) : |(signatureCoefficient i : ℝ)| = 1 := by
  have h : ∀ i, |signatureCoefficient i| = 1 := by decide +kernel
  exact_mod_cast h i

end NoFourMUBs.SeedAtlas.Method.WholeBall
