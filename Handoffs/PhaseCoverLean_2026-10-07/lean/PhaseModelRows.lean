import OrientationNormBounds
import RepeatedFourierColumns

/-! Exact six-entry model rows and a perturbation bound for their inner product.
The four perturbed entries and the two exact anchors are explicit.
-/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024.Orientation
open scoped BigOperators ComplexConjugate
open Seed0024.UnitTriple
noncomputable section

def turn : ℝ := 2 * Real.pi / 3
def orientationRoot (s : Bool) : ℂ := if s then phase (-turn) else phase turn

theorem phase_neg (x : ℝ) : phase (-x) = conj (phase x) := by
  unfold phase
  rw [← Complex.exp_conj]
  congr 1
  simp

theorem phase_chord_le (x e : ℝ) : ‖phase (x+e)-phase x‖ ≤ |e| := by
  have he : phase (x+e)-phase x = phase x*(phase e-1) := by rw [phase_add]; ring
  rw [he,norm_mul,phase_norm,one_mul]
  have hs : |Real.sin (e/2)| ≤ |e/2| :=
    (sq_le_sq).mp (Seed0024Mathematical20261007.local_sin_sq_le_self (e/2))
  change ‖Complex.exp ((e:ℂ)*Complex.I)-1‖ ≤ |e|
  rw [mul_comm (e:ℂ) Complex.I,Complex.norm_exp_I_mul_ofReal_sub_one,
    Real.norm_eq_abs,abs_mul,abs_of_pos (by norm_num : (0:ℝ)<2)]
  rw [abs_div,abs_of_pos (by norm_num : (0:ℝ)<2)] at hs
  linarith

theorem orientationRoot_unit (s : Bool) : ‖orientationRoot s‖ = 1 := by
  cases s <;> simp [orientationRoot,phase_norm]

theorem orientationRoot_conj (s : Bool) : conj (orientationRoot s) = orientationRoot (!s) := by
  cases s <;> simp [orientationRoot,phase_neg]

theorem orientationRoot_mul (s : Bool) : orientationRoot s*orientationRoot (!s)=1 := by
  rw [← orientationRoot_conj]
  simpa [orientationRoot_unit] using Complex.mul_conj' (orientationRoot s)

theorem orientationRoot_sum : orientationRoot false+orientationRoot true = -1 := by
  simp only [orientationRoot,Bool.false_eq_true,ite_false,ite_true,phase_neg]
  apply Complex.ext
  · simp only [Complex.add_re,Complex.conj_re,Complex.neg_re,Complex.one_re]
    rw [phase,Complex.exp_ofReal_mul_I_re,turn,cos_equilateral]
    norm_num
  · simp

theorem orientationRoot_square_sum :
    1+orientationRoot false^2+orientationRoot true^2=0 := by
  have hm := orientationRoot_mul false
  have hs := orientationRoot_sum
  simp only [Bool.not_false] at hm
  linear_combination (orientationRoot false+orientationRoot true-1)*hs - 2*hm

def modelRow (s t : Bool) (lam : ℂ) : Fin 6 → ℂ :=
  ![1,orientationRoot s,orientationRoot (!s),lam,
    lam*orientationRoot t,lam*orientationRoot (!t)]

def rowInner (u v : Fin 6 → ℂ) : ℂ := ∑ k, u k*conj (v k)

theorem modelRow_unit (s t : Bool) (lam : ℂ) (hlam : ‖lam‖=1) :
    ∀ k, ‖modelRow s t lam k‖=1 := by
  intro k
  fin_cases k <;> simp [modelRow,norm_mul,orientationRoot_unit,hlam]

theorem orientation_triple_inner (s t : Bool) :
    1+orientationRoot s*conj (orientationRoot t)+
      orientationRoot (!s)*conj (orientationRoot (!t)) = if s=t then 3 else 0 := by
  have h01 : orientationRoot false*orientationRoot true=1 := orientationRoot_mul false
  have h10 : orientationRoot true*orientationRoot false=1 := orientationRoot_mul true
  cases s <;> cases t
  all_goals simp only [orientationRoot_conj,Bool.not_false,Bool.not_true,h01,h10]
  all_goals norm_num
  all_goals simpa [pow_two,add_comm,add_left_comm,add_assoc] using orientationRoot_square_sum

theorem modelRow_inner (s t u v : Bool) (lam mu : ℂ) :
    rowInner (modelRow s t lam) (modelRow u v mu) =
      (if s=u then (3:ℂ) else 0) + lam*conj mu*(if t=v then 3 else 0) := by
  have hl := orientation_triple_inner s u
  have hr := orientation_triple_inner t v
  simp only [rowInner,Fin.sum_univ_succ,modelRow,Matrix.cons_val_zero,
    Matrix.cons_val_succ,Matrix.cons_val_fin_one,map_mul,map_one,mul_one,one_mul,add_zero]
  linear_combination hl+lam*conj mu*hr

theorem inner_factor_perturbation (p q u v : ℂ) (hq : ‖q‖=1) (hu : ‖u‖=1) :
    ‖p*conj q-u*conj v‖ ≤ ‖p-u‖+‖q-v‖ := by
  have he : p*conj q-u*conj v=(p-u)*conj q+u*conj (q-v) := by
    rw [map_sub]; ring
  rw [he]
  calc
    ‖(p-u)*conj q+u*conj (q-v)‖ ≤ ‖(p-u)*conj q‖+‖u*conj (q-v)‖ := norm_add_le _ _
    _ = ‖p-u‖+‖q-v‖ := by rw [norm_mul,norm_mul,Complex.norm_conj,Complex.norm_conj,hq,hu,mul_one,one_mul]

theorem rowInner_perturbation (p q u v : Fin 6 → ℂ)
    (hq : ∀k,‖q k‖=1) (hu : ∀k,‖u k‖=1) :
    ‖rowInner p q-rowInner u v‖ ≤ (∑k,‖p k-u k‖)+(∑k,‖q k-v k‖) := by
  rw [rowInner,rowInner,← Finset.sum_sub_distrib]
  calc
    ‖∑k,(p k*conj (q k)-u k*conj (v k))‖ ≤
      ∑k,‖p k*conj (q k)-u k*conj (v k)‖ := norm_sum_le _ _
    _ ≤ ∑k,(‖p k-u k‖+‖q k-v k‖) := Finset.sum_le_sum (fun k _ =>
      inner_factor_perturbation _ _ _ _ (hq k) (hu k))
    _ = _ := Finset.sum_add_distrib

theorem four_coordinate_error_sum (p u : Fin 6 → ℂ)
    (h0 : p 0=u 0) (h3 : p 3=u 3)
    (herr : ∀k, k≠0 → k≠3 → ‖p k-u k‖<(2:ℝ)/625) :
    (∑k,‖p k-u k‖)<(8:ℝ)/625 := by
  have h1:=herr 1 (by decide) (by decide)
  have h2:=herr 2 (by decide) (by decide)
  have h4:=herr 4 (by decide) (by decide)
  have h5:=herr 5 (by decide) (by decide)
  simp only [Fin.sum_univ_succ]
  change ‖p 0-u 0‖+(‖p 1-u 1‖+(‖p 2-u 2‖+(‖p 3-u 3‖+
    (‖p 4-u 4‖+(‖p 5-u 5‖+0)))))<(8:ℝ)/625
  rw [h0,h3,sub_self,sub_self,norm_zero]
  linarith

theorem modelRow_inner_small (s t u v : Bool) (lam mu : ℂ)
    (U V : Fin 6 → ℂ) (hmu : ‖mu‖=1) (hU : ∀k,‖U k‖=1)
    (horth : rowInner U V=0)
    (hU0 : modelRow s t lam 0=U 0) (hU3 : modelRow s t lam 3=U 3)
    (hV0 : modelRow u v mu 0=V 0) (hV3 : modelRow u v mu 3=V 3)
    (hUerr : ∀k,k≠0→k≠3→‖modelRow s t lam k-U k‖<(2:ℝ)/625)
    (hVerr : ∀k,k≠0→k≠3→‖modelRow u v mu k-V k‖<(2:ℝ)/625) :
    ‖rowInner (modelRow s t lam) (modelRow u v mu)‖<(16:ℝ)/625 := by
  have h:=rowInner_perturbation (modelRow s t lam) (modelRow u v mu) U V (modelRow_unit u v mu hmu) hU
  rw [horth,sub_zero] at h
  have heU:=four_coordinate_error_sum _ U hU0 hU3 hUerr
  have heV:=four_coordinate_error_sum _ V hV0 hV3 hVerr
  linarith

#print axioms phase_chord_le
#print axioms modelRow_inner
#print axioms rowInner_perturbation
#print axioms modelRow_inner_small
end
end Seed0024.Orientation
