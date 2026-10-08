import TotalDegreeRadialProduct

/-! Exact real coefficient operations used in the supplier reciprocal loop.
One fixed finite exponent set, one cutoff, and one evaluation point are shared.
This does not interpret interval rounding or certify the native basis table. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open scoped BigOperators
noncomputable section

structure FiniteModel (n : ℕ) where
  coeff : MultiIndex n → ℝ
  tail : ℝ

def modelEval {n : ℕ} (S : Finset (MultiIndex n)) (A : FiniteModel n)
    (xi : Fin n → ℝ) : ℝ := polyEval S A.coeff xi

def ModelSoundAt {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A : FiniteModel n) (value : ℝ) (xi : Fin n → ℝ) (h : ℝ) : Prop :=
  0≤A.tail ∧ |value-modelEval S A xi|≤A.tail*h^(m+1)

def modelConst {n : ℕ} (c : ℝ) : FiniteModel n := by
  classical
  exact ⟨fun e => if e=0 then c else 0,0⟩

def modelAdd {n : ℕ} (A B : FiniteModel n) : FiniteModel n :=
  ⟨fun e => A.coeff e+B.coeff e,A.tail+B.tail⟩

def modelScale {n : ℕ} (c : ℝ) (A : FiniteModel n) : FiniteModel n :=
  ⟨fun e => c*A.coeff e,|c| * A.tail⟩

def modelMul {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A B : FiniteModel n) : FiniteModel n :=
  ⟨groupedCoefficient m S S A.coeff B.coeff,
    discardedMass m S S A.coeff B.coeff+
      coefficientNorm S A.coeff*B.tail+coefficientNorm S B.coeff*A.tail+A.tail*B.tail⟩

theorem modelConst_eval {n : ℕ} (S : Finset (MultiIndex n)) (h0 : 0∈S)
    (c : ℝ) (xi : Fin n → ℝ) : modelEval S (modelConst c) xi=c := by
  classical
  simp [modelEval,polyEval,modelConst,ite_mul,h0,monomial]

theorem modelAdd_eval {n : ℕ} (S : Finset (MultiIndex n)) (A B : FiniteModel n)
    (xi : Fin n → ℝ) :
    modelEval S (modelAdd A B) xi=modelEval S A xi+modelEval S B xi := by
  simp [modelEval,polyEval,modelAdd,add_mul,Finset.sum_add_distrib]

theorem modelScale_eval {n : ℕ} (S : Finset (MultiIndex n)) (c : ℝ)
    (A : FiniteModel n) (xi : Fin n → ℝ) :
    modelEval S (modelScale c A) xi=c*modelEval S A xi := by
  simp [modelEval,polyEval,modelScale,Finset.mul_sum,mul_assoc]

theorem modelMul_eval {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A B : FiniteModel n) (xi : Fin n → ℝ)
    (hclosed : ∀ p∈keptPairs m S S, p.1+p.2∈S) :
    modelEval S (modelMul m S A B) xi=retainedProduct m S S A.coeff B.coeff xi := by
  exact grouped_coefficients_evaluate m S S S A.coeff B.coeff xi hclosed

theorem modelConst_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n)) (h0 : 0∈S)
    (c : ℝ) (xi : Fin n → ℝ) (h : ℝ) : ModelSoundAt m S (modelConst c) c xi h := by
  constructor
  · exact le_refl 0
  · rw [modelConst_eval S h0 c xi]
    simp [modelConst]

theorem modelAdd_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A B : FiniteModel n) {f g h : ℝ} {xi : Fin n → ℝ}
    (hA : ModelSoundAt m S A f xi h) (hB : ModelSoundAt m S B g xi h) :
    ModelSoundAt m S (modelAdd A B) (f+g) xi h := by
  refine ⟨add_nonneg hA.1 hB.1,?_⟩
  rw [modelAdd_eval]
  exact radial_add_error (m+1) hA.2 hB.2

theorem modelScale_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (c : ℝ) (A : FiniteModel n) {f h : ℝ} {xi : Fin n → ℝ}
    (hA : ModelSoundAt m S A f xi h) : ModelSoundAt m S (modelScale c A) (c*f) xi h := by
  refine ⟨mul_nonneg (abs_nonneg c) hA.1,?_⟩
  rw [modelScale_eval]
  exact radial_scale_error (m+1) c hA.2

theorem modelMul_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A B : FiniteModel n) {f g h : ℝ} {xi : Fin n → ℝ}
    (hclosed : ∀ p∈keptPairs m S S, p.1+p.2∈S)
    (hh : 0≤h) (hh1 : h≤1) (hxi : ∀ i, |xi i|≤h)
    (hA : ModelSoundAt m S A f xi h) (hB : ModelSoundAt m S B g xi h) :
    ModelSoundAt m S (modelMul m S A B) (f*g) xi h := by
  have hnA : 0≤coefficientNorm S A.coeff := Finset.sum_nonneg (fun _ _ => abs_nonneg _)
  have hnB : 0≤coefficientNorm S B.coeff := Finset.sum_nonneg (fun _ _ => abs_nonneg _)
  have hD : 0≤discardedMass m S S A.coeff B.coeff :=
    Finset.sum_nonneg (fun _ _ => mul_nonneg (abs_nonneg _) (abs_nonneg _))
  refine ⟨add_nonneg (add_nonneg (add_nonneg hD (mul_nonneg hnA hB.1))
    (mul_nonneg hnB hA.1)) (mul_nonneg hA.1 hB.1),?_⟩
  rw [modelMul_eval m S A B xi hclosed]
  exact totalDegree_product_remainder m S S A.coeff B.coeff xi hh hh1 hxi hA.1 hB.1 hA.2 hB.2

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.modelConst_eval
#print axioms Centiradian20261006.RadialProduct20261008.modelAdd_eval
#print axioms Centiradian20261006.RadialProduct20261008.modelScale_eval
#print axioms Centiradian20261006.RadialProduct20261008.modelMul_eval
#print axioms Centiradian20261006.RadialProduct20261008.modelConst_sound
#print axioms Centiradian20261006.RadialProduct20261008.modelAdd_sound
#print axioms Centiradian20261006.RadialProduct20261008.modelScale_sound
#print axioms Centiradian20261006.RadialProduct20261008.modelMul_sound
