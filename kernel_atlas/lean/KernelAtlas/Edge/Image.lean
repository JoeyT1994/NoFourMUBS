import KernelAtlas.Edge.C1eSide
import KernelAtlas.Seed.T2
import NoFourMUBs.SeedAtlas.XShape

/-!
# The horizontal image bound of an edge box

The integer weights in `hor36` enclose `36 • hor`. Together with the seed vertex bound,
this proves the numerical obligation consumed by `XExclusion`, including the rounding error
in `π/3`. Phase enclosures are inputs; completion soundness is a separate obligation.
-/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

lemma eval_zsm (n : ℤ) (A : CT) (u : Fin 4 → ℝ) :
    (zsm n A).eval u = (n : ℂ) * A.eval u := by
  unfold CT.eval
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m hm => ?_
  rw [zsm, cg_mk _ _ (Finset.mem_range.mp hm)]
  simp only [cz, Int.cast_mul]
  push_cast
  ring

lemma has_zsm {u : Fin 4 → ℝ} {A : CT} {x : ℂ} (hx : A.Has u x) (n : ℤ) :
    (zsm n A).Has u ((n : ℂ) * x) := by
  unfold CT.Has at *
  rw [eval_zsm, ← mul_sub, norm_mul]
  calc ‖(n : ℂ)‖ * ‖x - A.eval u‖ ≤ ‖(n : ℂ)‖ * rn A.ρ := mul_le_mul_of_nonneg_left hx (norm_nonneg _)
    _ = rn (zsm n A).ρ := by
      change ‖(n : ℂ)‖ * rn A.ρ = rn (n.natAbs * A.ρ)
      simp only [rn, Nat.cast_mul, Nat.cast_natAbs, Complex.norm_intCast, Int.cast_abs]
      ring

lemma has_sumT6 {u : Fin 4 → ℝ} {f : ℕ → CT} {x : I6 → ℂ}
    (hx : ∀ j, (f (sidx j)).Has u (x j)) : (sumT (l6 f)).Has u (∑ j, x j) := by
  have H := has_sumT_cons (hx (.inl 0)) (has_sumT_cons (hx (.inl 1))
    (has_sumT_cons (hx (.inl 2)) (has_sumT_cons (hx (.inr 0))
      (has_sumT_cons (hx (.inr 1)) (has_sumT_cons (hx (.inr 2)) (has_sumT_nil u))))))
  convert H using 1 <;> simp [l6, sidx, Fintype.sum_sum_type, Fin.sum_univ_three] <;> ring

/-- The integer-weighted horizontal models enclose exactly `36 • hor Y`. -/
theorem has_hor36 {u : Fin 4 → ℝ} {L : List CT} {Y : RMat6}
    (hY : ∀ i j, (gT L (ix i j)).Has u (Y i j : ℂ)) (i j : I6) :
    (gT (hor36 L) (ix i j)).Has u ((36 * hor Y i j : ℝ) : ℂ) := by
  let R := l6 fun a => sumT (l6 fun b => gT L (6 * a + b))
  let C := l6 fun b => sumT (l6 fun a => gT L (6 * a + b))
  have hR : ∀ a, (gT R (sidx a)).Has u ((∑ b, Y a b : ℝ) : ℂ) := fun a => by
    rw [gT_l6 _ (sidx_lt a)]
    simpa only [Complex.ofReal_sum] using has_sumT6 (f := fun b => gT L (6 * sidx a + b))
      (x := fun b => (Y a b : ℂ)) (fun b => hY a b)
  have hC : ∀ b, (gT C (sidx b)).Has u ((∑ a, Y a b : ℝ) : ℂ) := fun b => by
    rw [gT_l6 _ (sidx_lt b)]
    simpa only [Complex.ofReal_sum] using has_sumT6 (f := fun a => gT L (6 * a + sidx b))
      (x := fun a => (Y a b : ℂ)) (fun a => hY a b)
  have hS : (sumT R).Has u ((∑ a, ∑ b, Y a b : ℝ) : ℂ) := by
    have H := has_sumT6 (f := fun a => sumT (l6 fun b => gT L (6 * a + b)))
      (fun a => by simpa only [R, gT_l6 _ (sidx_lt a)] using hR a)
    simpa only [Complex.ofReal_sum] using H
  rw [hor36, gT_l36 _ (ix_lt i j), ix_div6, ix_mod6]
  have H := has_add (has_sub (has_sub (has_zsm (hY i j) 36) (has_zsm (hR i) 6)) (has_zsm (hC j) 6)) hS
  convert H using 1
  rw [hor36_apply]
  push_cast
  ring

lemma f6k_ix (i j : I6) : f6k (ix i j) = (xidx i * xidx j) % 6 := by
  rw [f6k, ix_div6, ix_mod6]
  have hs : ∀ a : I6, sidx a = xidx a := by intro a; cases a <;> simp [sidx, xidx, Nat.add_comm]
  rw [hs i, hs j]

/-- The `π/3` constant includes its rounding remainder. -/
lemma has_pi3 (u : Fin 4 → ℝ) (n : ℕ) :
    (mk (fun m => if m = 0 then rz ((n : ℤ) * pi3Z) else (0, 0)) n).Has u
      ((Real.pi * n / 3 : ℝ) : ℂ) := by
  have H : (addRho (const (rz ((n : ℤ) * pi3Z))) n).Has u
      ((Real.pi * n / 3 : ℝ) : ℂ) := by
    refine has_addRho (has_const _ u) ?_
    rw [cz_rz, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, abs_sub_comm]
    simpa only [rq, Int.natAbs_natCast, Int.cast_natCast] using pi3_mul_bound (n : ℤ)
  simpa only [addRho, const, Seed.mk, Nat.zero_add] using H

lemma has_difF6 {u : Fin 4 → ℝ} {L : List CT} {Q : RMat6}
    (hQ : ∀ i j, (gT L (ix i j)).Has u (Q i j : ℂ)) (i j : I6) :
    (difF6 L (ix i j)).Has u (((Q - F6phase) i j : ℝ) : ℂ) := by
  have H := has_sub (hQ i j) (has_pi3 u (f6k (ix i j)))
  simpa only [difF6, F6phase, Matrix.sub_apply, Matrix.of_apply, Complex.ofReal_sub, f6k_ix] using H

/-- The last conjunct of `c1eBox` certifies the horizontal image radius. -/
theorem image_bound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {L : List CT} {Q : RMat6} {n : ℕ}
    (hQ : ∀ i j, (gT L (ix i j)).Has u (Q i j : ℂ))
    (hok : boundOK h n (hor36 (l36 (difF6 L))) = true) :
    frob (hor (Q - F6phase)) ≤ rn n / 36 := by
  have hd : ∀ i j, (gT (l36 (difF6 L)) (ix i j)).Has u (((Q - F6phase) i j : ℝ) : ℂ) := by
    intro i j; rw [gT_l36 _ (ix_lt i j)]; exact has_difF6 hQ i j
  have hb := boundOK_sound hu (R := (36 : ℝ) • hor (Q - F6phase)) (has_hor36 hd) hok
  rw [Seed.frob_smul] at hb
  norm_num at hb
  linarith

end NoFourMUBs.KernelAtlas.Edge
