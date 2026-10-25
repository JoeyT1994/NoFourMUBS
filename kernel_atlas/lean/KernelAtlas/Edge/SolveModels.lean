import KernelAtlas.Edge.LinearResidual
import KernelAtlas.Edge.JacobianModels
import KernelAtlas.Edge.ParameterModels

/-! Checked Taylor-model enclosures for differentiated augmented systems. -/

open Complex Matrix NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

lemma has_sumT7 {u : Fin 4 → ℝ} {T : ℕ → CT} {f : Fin 7 → ℂ}
    (ht : ∀ i : Fin 7, (T i).Has u (f i)) :
    (sumT (l7 T)).Has u (∑ i, f i) := by
  have H := has_sumT_cons (ht 0) (has_sumT_cons (ht 1) (has_sumT_cons (ht 2)
    (has_sumT_cons (ht 3) (has_sumT_cons (ht 4) (has_sumT_cons (ht 5)
      (has_sumT_cons (ht 6) (has_sumT_nil u)))))))
  simpa [l7, Fin.sum_univ_seven, add_assoc] using H

def solveDefect (h : List ℕ) (Y : List ℤ) (A : ℕ → ℕ → CT) (i j : ℕ) : CT :=
  sub (const (if i = j then oneZ else (0, 0)))
    (sumT (l7 fun k => smul h (rz (gi Y (7*i+k))) (A k j)))

def solveResidual (h : List ℕ) (Y : List ℤ) (A : ℕ → ℕ → CT) (p b : List CT) : List CT :=
  matT7 h Y (l7 fun i => add (sumT (l7 fun k => mul h (A i k) (re (gT p k)))) (gT b i))

/-- `p ± r` encloses a solution of `A z + b = 0`. Bounds are in fixed-point grid units. -/
def solveOK (h : List ℕ) (Y : List ℤ) (A : ℕ → ℕ → CT) (p b : List CT) (r q : ℕ) : Bool :=
  decide (q < 2^pp) &&
    (l7 fun i => decide ((l7 fun j => bnd h (solveDefect h Y A i j)).sum ≤ q) &&
      decide (bnd h (gT (solveResidual h Y A p b) i) * 2^pp ≤ (2^pp-q)*r)).all id

theorem has_solveDefect {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Y : List ℤ} {T : ℕ → ℕ → CT} {A : Matrix (Fin 7) (Fin 7) ℝ}
    (hA : ∀ (i j : Fin 7), (T i j).Has u (A i j : ℂ)) (i j : Fin 7) :
    (solveDefect h Y T i j).Has u ((1-Ymat7 Y*A) i j : ℂ) := by
  have hs := has_sumT7 (T := fun k => smul h (rz (gi Y (7*i+k))) (T k j))
    (fun k : Fin 7 => has_smul hu (rz (gi Y (7*i+k))) (hA k j))
  have hd : (const (if (i : ℕ) = j then oneZ else (0, 0))).Has u
      ((1 : Matrix (Fin 7) (Fin 7) ℝ) i j : ℂ) := by
    by_cases hij : i=j
    · subst j; simpa [cz_one] using has_const oneZ u
    · have hv : (i : ℕ) ≠ j := fun he => hij (Fin.ext he)
      simpa [hij, hv, cz] using has_const (0, 0) u
  simpa only [solveDefect, Matrix.sub_apply, Matrix.mul_apply, Complex.ofReal_sub,
    Complex.ofReal_sum, Complex.ofReal_mul, Ymat7, cz_rz] using has_sub hd hs

theorem has_solveResidual {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Y : List ℤ} {T : ℕ → ℕ → CT} {A : Matrix (Fin 7) (Fin 7) ℝ}
    {p b : List CT} {v : Fin 7 → ℝ}
    (hA : ∀ (i j : Fin 7), (T i j).Has u (A i j : ℂ))
    (hb : ∀ i : Fin 7, (gT b i).Has u (v i : ℂ)) (i : Fin 7) :
    (gT (solveResidual h Y T p b) i).Has u
      ((Ymat7 Y).mulVec (A.mulVec (predR p u) + v) i : ℂ) := by
  apply has_matT7 hu
  intro k
  rw [gT_l7 _ k.2]
  have H := has_sumT7 (T := fun j => mul h (T k j) (re (gT p j)))
    (fun j : Fin 7 => has_mul hu (hA k j) (has_pred p u j j.2))
  simpa only [Matrix.mulVec, dotProduct, Pi.add_apply, Complex.ofReal_add,
    Complex.ofReal_sum, Complex.ofReal_mul] using has_add H (hb k)

lemma grid_residual_bound {b q r : ℕ} (hq : q < 2^pp)
    (hb : b*2^pp ≤ (2^pp-q)*r) : rn b ≤ (1-rn q)*rn r := by
  have hc : (b : ℝ) * (2^pp : ℕ) ≤ ((2^pp-q : ℕ) : ℝ)*(r : ℝ) := by exact_mod_cast hb
  rw [Nat.cast_sub hq.le] at hc
  push_cast at hc
  unfold rn
  calc
    (b : ℝ)/2^pp = ((b : ℝ)*2^pp)/(2^pp*2^pp) := by field_simp
    _ ≤ ((2^pp-(q : ℝ))*(r : ℝ))/(2^pp*2^pp) := div_le_div_of_nonneg_right hc (by positivity)
    _ = (1-(q : ℝ)/2^pp)*((r : ℝ)/2^pp) := by field_simp <;> ring

set_option maxHeartbeats 1000000 in
theorem solveOK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Y : List ℤ} {T : ℕ → ℕ → CT} {p b : List CT} {r q : ℕ}
    (hok : solveOK h Y T p b r q = true)
    {A : Matrix (Fin 7) (Fin 7) ℝ} {v z : Fin 7 → ℝ}
    (hA : ∀ (i j : Fin 7), (T i j).Has u (A i j : ℂ))
    (hb : ∀ i : Fin 7, (gT b i).Has u (v i : ℂ)) (hz : A.mulVec z + v = 0) :
    ∀ i : Fin 7, (addRho (re (gT p i)) r).Has u (z i : ℂ) := by
  simp only [solveOK, Bool.and_eq_true, decide_eq_true_eq] at hok
  have hq : rn q < 1 := by
    apply (div_lt_one (two_pow_pos pp)).mpr
    exact_mod_cast hok.1
  have hr (i : Fin 7) := all_l7 hok.2 i.2
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hr
  have hrow (i : Fin 7) : ∑ j, |(1-Ymat7 Y*A) i j| ≤ rn q := by
    calc
      ∑ j, |(1-Ymat7 Y*A) i j| ≤ ∑ j : Fin 7, rn (bnd h (solveDefect h Y T i j)) := by
        apply Finset.sum_le_sum
        intro j _
        simpa only [Complex.norm_real, Real.norm_eq_abs] using
          norm_le_bnd hu (has_solveDefect (Y := Y) (T := T) (A := A) hu hA i j)
      _ = rn ((l7 fun j => bnd h (solveDefect h Y T i j)).sum) :=
        (rn_sum_l7 (fun j => bnd h (solveDefect h Y T i j))).symm
      _ ≤ rn q := rn_mono (hr i).1
  have hres (i : Fin 7) : |(Ymat7 Y).mulVec (A.mulVec (predR p u)+v) i| ≤ (1-rn q)*rn r := by
    have H := norm_le_bnd hu (has_solveResidual (Y := Y) (T := T) (A := A) (p := p) (b := b) hu hA hb i)
    simp only [Complex.norm_real, Real.norm_eq_abs] at H
    apply H.trans
    exact grid_residual_bound hok.1 (hr i).2
  have hn := linear_residual_error A (Ymat7 Y) z (predR p u) v (rn_nonneg q) hq
    (mul_nonneg (sub_nonneg.mpr hq.le) (rn_nonneg r)) le_rfl hz hrow hres
  intro i
  apply has_addRho (has_pred p u i i.2)
  simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, Pi.sub_apply] using
    (Method.abs_le_norm_pi (z-predR p u) i).trans hn

end NoFourMUBs.KernelAtlas.Edge
