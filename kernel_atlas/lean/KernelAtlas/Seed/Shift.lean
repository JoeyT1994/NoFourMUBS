import KernelAtlas.Seed.T1Sound

/-!
# Re-centring a Taylor model on a sub-box (`KERNEL_SEED.md` §6, the transfer boxes)

A model `T` over a box, evaluated at `u = c + v` (`c` a grid point), is again a second-order polynomial in `v`; its
coefficients (`k0S`, `klS`; the quadratic part is unchanged) are exact on finer grids and rounded once (`shiftT`).
`has_shift`: if `T` encloses `x` at `c + v`, then `shiftT c h' T` encloses `x` at `v` for every `v` in the box `h'`.

So the C1 core computed once on a C1 box serves every transfer box inside it: the T1 and T2 checks run on the
shifted models over the small box (`Seed/Full.lean`).
-/

open Complex

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- `k · z`. -/
def zsc (k : ℤ) (z : ℤ × ℤ) : ℤ × ℤ := (k * z.1, k * z.2)

def zsum (l : List (ℤ × ℤ)) : ℤ × ℤ := l.foldr zadd (0, 0)

/-- The constant of `T(c + v)`, on the grid `2^{-3pp}`. -/
def k0S (c : List ℤ) (T : CT) : ℤ × ℤ :=
  zsum [zsc (2 ^ (2 * pp)) (T.cg 0), zsc (2 ^ pp * gi c 0) (T.cg 1), zsc (2 ^ pp * gi c 1) (T.cg 2),
    zsc (2 ^ pp * gi c 2) (T.cg 3), zsc (2 ^ pp * gi c 3) (T.cg 4),
    zsc (gi c 0 * gi c 0) (T.cg 5), zsc (gi c 0 * gi c 1) (T.cg 6), zsc (gi c 0 * gi c 2) (T.cg 7),
    zsc (gi c 0 * gi c 3) (T.cg 8), zsc (gi c 1 * gi c 1) (T.cg 9), zsc (gi c 1 * gi c 2) (T.cg 10),
    zsc (gi c 1 * gi c 3) (T.cg 11), zsc (gi c 2 * gi c 2) (T.cg 12), zsc (gi c 2 * gi c 3) (T.cg 13),
    zsc (gi c 3 * gi c 3) (T.cg 14)]

/-- The coefficient of `v_l` in `T(c + v)`, on the grid `2^{-2pp}`. -/
def klS (c : List ℤ) (T : CT) (l : ℕ) : ℤ × ℤ :=
  match l with
  | 0 => zsum [zsc (2 ^ pp) (T.cg 1), zsc (2 * gi c 0) (T.cg 5), zsc (gi c 1) (T.cg 6), zsc (gi c 2) (T.cg 7),
      zsc (gi c 3) (T.cg 8)]
  | 1 => zsum [zsc (2 ^ pp) (T.cg 2), zsc (gi c 0) (T.cg 6), zsc (2 * gi c 1) (T.cg 9), zsc (gi c 2) (T.cg 10),
      zsc (gi c 3) (T.cg 11)]
  | 2 => zsum [zsc (2 ^ pp) (T.cg 3), zsc (gi c 0) (T.cg 7), zsc (gi c 1) (T.cg 10), zsc (2 * gi c 2) (T.cg 12),
      zsc (gi c 3) (T.cg 13)]
  | _ => zsum [zsc (2 ^ pp) (T.cg 4), zsc (gi c 0) (T.cg 8), zsc (gi c 1) (T.cg 11), zsc (gi c 2) (T.cg 13),
      zsc (2 * gi c 3) (T.cg 14)]

/-- **The re-centred model** on the box `h'` around `c`. -/
def shiftT (c : List ℤ) (h' : List ℕ) (T : CT) : CT :=
  mk (fun m => if m = 0 then rndk (2 * pp) (k0S c T) else if m ≤ 4 then rndk pp (klS c T (m - 1)) else T.cg m)
    (T.ρ + rerr h')

lemma czk_eq (k : ℕ) (w : ℤ × ℤ) : czk k w = ((w.1 : ℂ) + (w.2 : ℂ) * I) / 2 ^ (pp + k) := rfl

set_option maxHeartbeats 4000000 in
/-- The exact re-expansion. -/
lemma shift_ideal (c : List ℤ) (T : CT) (v : Fin 4 → ℝ) :
    czk (2 * pp) (k0S c T) + czk pp (klS c T 0) * (v 0 : ℂ) + czk pp (klS c T 1) * (v 1 : ℂ) +
      czk pp (klS c T 2) * (v 2 : ℂ) + czk pp (klS c T 3) * (v 3 : ℂ) +
      ∑ k ∈ Finset.range 10, cz (T.cg (k + 5)) * (mono (k + 5) v : ℂ) =
      T.eval (fun l => rq (gi c l) + v l) := by
  have hm : ∀ (m : ℕ) (u : Fin 4 → ℝ), m < 15 → (mono m u : ℂ) = (monoE m u : ℂ) := fun m u h => by
    rw [mono_eq m h]
  rw [CT.eval]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]
  simp only [hm _ _ (by norm_num : (0:ℕ) < 15), hm _ _ (by norm_num : (1:ℕ) < 15), hm _ _ (by norm_num : (2:ℕ) < 15),
    hm _ _ (by norm_num : (3:ℕ) < 15), hm _ _ (by norm_num : (4:ℕ) < 15), hm _ _ (by norm_num : (5:ℕ) < 15),
    hm _ _ (by norm_num : (6:ℕ) < 15), hm _ _ (by norm_num : (7:ℕ) < 15), hm _ _ (by norm_num : (8:ℕ) < 15),
    hm _ _ (by norm_num : (9:ℕ) < 15), hm _ _ (by norm_num : (10:ℕ) < 15), hm _ _ (by norm_num : (11:ℕ) < 15),
    hm _ _ (by norm_num : (12:ℕ) < 15), hm _ _ (by norm_num : (13:ℕ) < 15), hm _ _ (by norm_num : (14:ℕ) < 15)]
  simp only [monoE, czk_eq, cz, k0S, klS, zsum, zsc, zadd, List.foldr_cons, List.foldr_nil, rq]
  push_cast
  rw [show pp + 2 * pp = pp + pp + pp by ring, pow_add, pow_add, show 2 * pp = pp + pp by ring, pow_add]
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two, show ((3 : Fin 4) : ℕ) = 3 from rfl]
  have ht : (2 : ℂ) ^ pp ≠ 0 := pow_ne_zero _ two_ne_zero
  generalize (2 : ℂ) ^ pp = t at ht ⊢
  field_simp
  ring

/-- **Re-centring is sound.** -/
theorem has_shift {c : List ℤ} {h' : List ℕ} {T : CT} {v : Fin 4 → ℝ} (hv : InBox h' v) {x : ℂ}
    (hT : T.Has (fun l => rq (gi c l) + v l) x) : (shiftT c h' T).Has v x := by
  unfold CT.Has at *
  set f : ℕ → ℤ × ℤ := fun m =>
    if m = 0 then rndk (2 * pp) (k0S c T) else if m ≤ 4 then rndk pp (klS c T (m - 1)) else T.cg m with hf
  have hev : (shiftT c h' T).eval v = ∑ m ∈ Finset.range 15, cz (f m) * (mono m v : ℂ) := by
    rw [shiftT, eval_mk]
  set d : ℕ → ℂ := fun m => if m = 0 then czk (2 * pp) (k0S c T) - cz (rndk (2 * pp) (k0S c T))
    else if m ≤ 4 then czk pp (klS c T (m - 1)) - cz (rndk pp (klS c T (m - 1))) else 0 with hd
  have hdl : ∀ m < 15, ‖d m‖ ≤ rn 2 := fun m _ => by
    simp only [hd]
    split_ifs
    · exact norm_czk_sub_rndk _ _
    · exact norm_czk_sub_rndk _ _
    · simp only [norm_zero]; exact rn_nonneg _
  have key : T.eval (fun l => rq (gi c l) + v l) - (shiftT c h' T).eval v =
      ∑ m ∈ Finset.range 15, d m * (mono m v : ℂ) := by
    rw [← shift_ideal, hev]
    simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, hd, hf]
    simp only [if_true, show (1 : ℕ) ≠ 0 by norm_num, show (2 : ℕ) ≠ 0 by norm_num,
      show (3 : ℕ) ≠ 0 by norm_num, show (4 : ℕ) ≠ 0 by norm_num, show (5 : ℕ) ≠ 0 by norm_num,
      show (6 : ℕ) ≠ 0 by norm_num, show (7 : ℕ) ≠ 0 by norm_num, show (8 : ℕ) ≠ 0 by norm_num,
      show (9 : ℕ) ≠ 0 by norm_num, show (10 : ℕ) ≠ 0 by norm_num, show (11 : ℕ) ≠ 0 by norm_num,
      show (12 : ℕ) ≠ 0 by norm_num, show (13 : ℕ) ≠ 0 by norm_num, show (14 : ℕ) ≠ 0 by norm_num, if_false,
      show (1 : ℕ) ≤ 4 by norm_num, show (2 : ℕ) ≤ 4 by norm_num, show (3 : ℕ) ≤ 4 by norm_num,
      show (4 : ℕ) ≤ 4 by norm_num, show ¬ (5 : ℕ) ≤ 4 by norm_num, show ¬ (6 : ℕ) ≤ 4 by norm_num,
      show ¬ (7 : ℕ) ≤ 4 by norm_num, show ¬ (8 : ℕ) ≤ 4 by norm_num, show ¬ (9 : ℕ) ≤ 4 by norm_num,
      show ¬ (10 : ℕ) ≤ 4 by norm_num, show ¬ (11 : ℕ) ≤ 4 by norm_num, show ¬ (12 : ℕ) ≤ 4 by norm_num,
      show ¬ (13 : ℕ) ≤ 4 by norm_num, show ¬ (14 : ℕ) ≤ 4 by norm_num,
      show (1 : ℕ) - 1 = 0 from rfl, show (2 : ℕ) - 1 = 1 from rfl, show (3 : ℕ) - 1 = 2 from rfl,
      show (4 : ℕ) - 1 = 3 from rfl]
    have m1 := mono_succ v 0
    have m2 := mono_succ v 1
    have m3 := mono_succ v 2
    have m4 := mono_succ v 3
    simp only [Fin.val_zero, Fin.val_one, Fin.val_two, zero_add] at m1 m2 m3 m4
    rw [show ((3 : Fin 4) : ℕ) + 1 = 4 from rfl] at m4
    rw [m1, m2, m3, m4]
    have m0 : mono 0 v = 1 := by simp [mono]
    rw [m0]
    push_cast
    ring
  rw [show x - (shiftT c h' T).eval v = (x - T.eval (fun l => rq (gi c l) + v l)) +
      (T.eval (fun l => rq (gi c l) + v l) - (shiftT c h' T).eval v) by ring, key]
  refine (norm_add_le _ _).trans ?_
  rw [show (shiftT c h' T).ρ = T.ρ + rerr h' from rfl, rn_add]
  exact add_le_add hT (norm_err_le hv d hdl)

/-- The re-centred list of models. -/
def shiftL (c : List ℤ) (h' : List ℕ) (L : List CT) : List CT := L.map (shiftT c h')

lemma gT_shiftL {c : List ℤ} {h' : List ℕ} {L : List CT} {i : ℕ} (hi : i < L.length) :
    gT (shiftL c h' L) i = shiftT c h' (gT L i) := by
  unfold shiftL gT
  rw [List.getD_eq_getElem _ _ (by simpa using hi), List.getD_eq_getElem _ _ hi, List.getElem_map]

end NoFourMUBs.KernelAtlas.Seed
