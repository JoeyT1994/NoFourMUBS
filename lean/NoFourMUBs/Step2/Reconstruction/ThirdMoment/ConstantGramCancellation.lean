import NoFourMUBs.Step2.Reconstruction.ThirdMoment.AffineMatrices
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.ForcedCoefficient

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false
open Matrix Hadamard6
open StrictReconstruction20261007 Centiradian20261006
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- Cancel the left Gram determinant before expanding the four seed phases.
The scalar invariants and side divisors use the existing six-variable model. -/
def constantGramNumerator {K : Type*} [CommRing K] (s S t T r Q : K) :
    Matrix (Fin 3) (Fin 3) K :=
  let d := PreRhoAlignment.gramData s S t T r Q
  let dc := PreRhoAlignment.gramData S s T t Q r
  let P := dc.p0bar
  let B := dc.p1
  let h := s * (s*S + 2*t*T - 9) + t*Q*(3 - s*S)
  let k := t * (2*s*S + t*T - 9) + s*r*(3 - t*T)
  let u := -(2*s^3*S*T*r - 3*s^2*S*t*T*r*Q + 9*s^2*S*r*Q +
    3*s^2*t*T^2*r - 2*s^2*T*r^2*Q - 9*s^2*T*r +
    s*S*t^2*T*r*Q^2 + s*S*t^2*T*Q - 5*s*S*t*r*Q^2 + 9*s*S*t*Q -
    s*t^2*T^2*r*Q - 3*s*t^2*T^2 + 9*s*t*T*r*Q + 27*s*t*T +
    6*s*r^2*Q^2 - 54*s*r*Q - S*t^3*T*Q^2 + 3*S*t^2*Q^2 +
    t^3*T^2*Q - 9*t^2*T*Q)
  let v := s^3*S*t*T*r + 3*s^3*S*r - 2*s^3*T*r^2 -
    s^2*S*t^2*T*r*Q - s^2*S*t^2*T - s^2*S*t*r*Q + 9*s^2*S*t +
    2*s^2*t^2*T^2*r - 9*s^2*t*T*r + 6*s^2*r^2*Q - 27*s^2*r +
    s*S*t^3*T*Q + 2*s*S*t^2*r*Q^2 - 3*s*S*t^2*Q -
    2*s*t^3*T^2 - 3*s*t^2*T*r*Q + 27*s*t^2*T + 9*s*t*r*Q - 81*s*t -
    2*S*t^3*Q^2 + 3*t^3*T*Q - 27*t^2*Q
  !![0, u, d.g*B; P*B, B*(S*P-k), B*h; 0, v, B*k]

/-- One Gram factor cancels uniformly, without a genericity assumption. -/
theorem oneConstant_adjugate (s t r : ℂ)
    (hP : sideP0 s t r ≠ 0) (hB : conj (sideP1 s t r) ≠ 0) :
    (FourierGramNumerators.gram s t r).adjugate *
      oneConstant s t r (gramG s t r) (gramChi s t r) (gramEta s t r)
        (9 - Complex.normSq r : ℝ) (9 - Complex.normSq t : ℝ)
        (sideP0 s t r) (conj (sideP1 s t r)) =
      ((gramG s t r : ℂ) / (sideP0 s t r * conj (sideP1 s t r))) •
        constantGramNumerator s (conj s) t (conj t) r (conj r) := by
  have hj : (gramJ s t r : ℂ) = s*r*conj t + conj (s*r*conj t) :=
    (Complex.add_conj _).symm
  rw [Matrix.adjugate_fin_three]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp only [Matrix.mul_apply,Fin.sum_univ_three,Matrix.smul_apply,smul_eq_mul,
      FourierGramNumerators.gram,oneConstant,productAffine,permanentAffine,mixedAffine,
      constantGramNumerator,PreRhoAlignment.gramData,
      Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
      Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
      Matrix.head_cons,Matrix.tail_cons,Complex.star_def,
      mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul] <;>
    field_simp [hP,hB] <;>
    (try simp only [gramG,gramEta,gramChi,gramP,gramW,
      Complex.ofReal_add,Complex.ofReal_sub,Complex.ofReal_mul,Complex.ofReal_pow,
      Complex.ofReal_neg,Complex.ofReal_ofNat,Complex.normSq_eq_conj_mul_self,hj,
      sideP0,sideP1,Complex.star_def,map_add,map_sub,map_mul,map_pow,map_neg,
      map_ofNat,starRingEnd_self_apply]) <;> ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
