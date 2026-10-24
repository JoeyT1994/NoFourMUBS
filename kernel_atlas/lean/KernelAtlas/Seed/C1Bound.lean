import KernelAtlas.Seed.Ball
import NoFourMUBs.SeedAtlas.Method.Box
import NoFourMUBs.Transfer

/-!
# Soundness of the C1 box check, part 4: the per-box bound (`boundOK`)

`boundOK_sound`: if the 36 residual models `res` enclose a real matrix `R` on the box, `boundOK h n res` gives
`‖R‖_F ≤ n` (`n` on the grid): the affine part is bounded by its 16 vertex values (convexity,
`Method.le_of_vertices`), the quadratic part by `Σ_m ‖H_m‖_F sup |mono_m|`, the remainders by `‖ρ‖₂`; the norms are
compared through squares of integers (`isqrtUp`).
-/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Integer square roots and sums over the 36 entries -/

lemma isqrtUp_spec (x : ℕ) : x ≤ isqrtUp x * isqrtUp x := by
  unfold isqrtUp
  simp only []
  split_ifs with h1 h2
  · exact h1
  · exact h2
  · rcases Nat.eq_zero_or_pos x with rfl | hx
    · simp
    · nlinarith

lemma sqrt_le_isqrtUp (x : ℕ) : Real.sqrt x ≤ isqrtUp x := by
  have h := isqrtUp_spec x
  have h' : (x : ℝ) ≤ (isqrtUp x : ℝ) * isqrtUp x := by exact_mod_cast h
  calc Real.sqrt x ≤ Real.sqrt ((isqrtUp x : ℝ) * isqrtUp x) := Real.sqrt_le_sqrt h'
    _ = isqrtUp x := Real.sqrt_mul_self (Nat.cast_nonneg _)

lemma l36_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) :
    (l36 f).sum = ∑ i : I6, ∑ j : I6, f (ix i j) := by
  simp only [l36, List.sum_cons, List.sum_nil, Fintype.sum_sum_type, Fin.sum_univ_three, ix, sidx,
    Fin.val_zero, Fin.val_one, Fin.val_two]
  norm_num
  abel

lemma l4_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l4 f).sum = ∑ l : Fin 4, f l := by
  simp only [l4, List.sum_cons, List.sum_nil, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]; abel

lemma l10_sum {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l10 f).sum = ∑ k ∈ Finset.range 10, f k := by
  simp only [l10, List.sum_cons, List.sum_nil, Finset.sum_range_succ, Finset.sum_range_zero]; abel

lemma mono_succ (u : Fin 4 → ℝ) (l : Fin 4) : mono (l + 1) u = u l := by
  have h4 := l.2
  simp only [mono, uv, Nat.add_one_ne_zero, if_false, Nat.add_sub_cancel, dif_pos h4,
    show (l : ℕ) + 1 ≤ 4 by omega, if_true]

lemma lin_range (u : Fin 4 → ℝ) (g : ℕ → ℝ) :
    ∑ j ∈ Finset.range 4, g j * mono (j + 1) u = ∑ l : Fin 4, u l * g l := by
  rw [← Fin.sum_univ_eq_sum_range (fun j => g j * mono (j + 1) u)]
  exact Finset.sum_congr rfl fun l _ => by rw [mono_succ]; ring

/-! ### The vertices -/

lemma mem_vtx (s : Fin 4 → Bool) : [s 0, s 1, s 2, s 3] ∈ vtx := by
  generalize s 0 = a; generalize s 1 = b; generalize s 2 = c; generalize s 3 = d
  cases a <;> cases b <;> cases c <;> cases d <;> decide

lemma cast_natAbs_sq (x : ℤ) : ((x.natAbs ^ 2 : ℕ) : ℝ) = (x : ℝ) ^ 2 := by
  rw [Nat.cast_pow, Nat.cast_natAbs, Int.cast_abs, sq_abs]

lemma vertex_entry (c0 : ℤ) (c : Fin 4 → ℤ) (hb : Fin 4 → ℕ) (s : Fin 4 → Bool) :
    (c0 : ℝ) / 2 ^ pp + ∑ l : Fin 4, Method.vertex (fun l => rn (hb l)) s l * ((c l : ℝ) / 2 ^ pp) =
      ((c0 * 2 ^ pp + ∑ l : Fin 4, c l * (if s l then (hb l : ℤ) else -(hb l : ℤ)) : ℤ) : ℝ) /
        (2 ^ pp * 2 ^ pp) := by
  have hT := two_pow_pos pp
  rw [eq_div_iff (by positivity)]
  push_cast
  simp only [Fin.sum_univ_four, Method.vertex, rn]
  split_ifs <;> field_simp

lemma getD_vtx (s : Fin 4 → Bool) (l : Fin 4) : [s 0, s 1, s 2, s 3].getD l false = s l := by
  fin_cases l <;> rfl

/-! ### The bound -/

section Frob

attribute [local instance] Matrix.frobeniusNormedAddCommGroup Matrix.frobeniusNormedSpace

lemma frob_eq_norm (Y : RMat6) : frob Y = ‖Y‖ := rfl

lemma frob_smul (c : ℝ) (Y : RMat6) : frob (c • Y) = |c| * frob Y := by
  rw [frob_eq_norm, frob_eq_norm, norm_smul, Real.norm_eq_abs]

lemma frob_sum_le {ι : Type*} (s : Finset ι) (f : ι → RMat6) : frob (∑ k ∈ s, f k) ≤ ∑ k ∈ s, frob (f k) := by
  simp only [frob_eq_norm]; exact norm_sum_le _ _

lemma frob_le_of_entries {Y : RMat6} {c : ℝ} (hc : 0 ≤ c) (h : sumsq Y ≤ c ^ 2) : frob Y ≤ c := by
  rw [frob_eq_sqrt]
  calc Real.sqrt (sumsq Y) ≤ Real.sqrt (c ^ 2) := Real.sqrt_le_sqrt h
    _ = c := Real.sqrt_sq hc

theorem boundOK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {n : ℕ} {res : List CT} {R : RMat6}
    (hR : ∀ i j, (gT res (ix i j)).Has u (R i j : ℂ)) (hok : boundOK h n res = true) : frob R ≤ rn n := by
  set T : ℝ := 2 ^ pp with hTdef
  have hT : 0 < T := two_pow_pos pp
  set A : I6 → I6 → CT := fun i j => gT res (ix i j) with hA
  set Hn := (l10 fun k =>
    cdivN (isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) * monoW h (k + 5)) (pp * 2)).sum
    with hHn
  set ρn := isqrtUp ((l36 fun e => (gT res e).ρ ^ 2).sum) with hρn
  set M := n - Hn - ρn with hM
  have hK : boundOK h n res = (decide (Hn + ρn ≤ n) && vtx.all fun s =>
      decide (((l36 fun e =>
        let A := gT res e
        ((A.cg 0).1 * 2 ^ pp + (l4 fun l =>
          (A.cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum) ≤
        (M * 2 ^ pp) ^ 2)) := rfl
  rw [hK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hok
  obtain ⟨hsum, hv⟩ := hok
  clear_value M ρn Hn
  -- the decomposition `R = a + Σ u_l b_l + Σ mono_k H_k + err`
  set a : RMat6 := Matrix.of fun i j => ((A i j).cg 0).1 / T with ha
  set b : Fin 4 → RMat6 := fun l => Matrix.of fun i j => ((A i j).cg (l + 1)).1 / T with hb
  set H : ℕ → RMat6 := fun k => Matrix.of fun i j => ((A i j).cg (k + 5)).1 / T with hH
  set err : RMat6 := Matrix.of fun i j => R i j - ((A i j).eval u).re with herr
  have hdec : R = (a + ∑ l : Fin 4, u l • b l) + ∑ k ∈ Finset.range 10, mono (k + 5) u • H k + err := by
    ext i j
    have e := eval_re_split (A i j) u
    simp only [ha, hb, hH, herr, Matrix.add_apply, Matrix.sum_apply, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
    rw [e, lin_range u (fun m => (((A i j).cg (m + 1)).1 : ℝ) / 2 ^ pp)]
    have hq : ∑ k ∈ Finset.range 10, mono (k + 5) u * ((((A i j).cg (k + 5)).1 : ℝ) / T) =
        ∑ k ∈ Finset.range 10, (((A i j).cg (k + 5)).1 : ℝ) / 2 ^ pp * mono (k + 5) u :=
      Finset.sum_congr rfl fun k _ => by rw [hTdef]; ring
    rw [hq, hTdef]; ring
  rw [hdec]
  -- (i) the affine part, by the vertices
  have h1 : frob (a + ∑ l : Fin 4, u l • b l) ≤ rn M := by
    have hconv := Method.convexOn_norm_affine (E := RMat6) a b
    have hb : Method.InBox (fun l : Fin 4 => rn (h.getD l 0)) u := hu
    refine Method.le_of_vertices hconv (fun s => ?_) hb
    have hs := hv _ (mem_vtx s)
    rw [decide_eq_true_eq] at hs
    rw [← frob_eq_norm]
    refine frob_le_of_entries (rn_nonneg _) ?_
    have hX : ∀ i j, (a + ∑ l : Fin 4, Method.vertex (fun l : Fin 4 => rn (h.getD l 0)) s l • b l) i j =
        ((((A i j).cg 0).1 * 2 ^ pp + (l4 fun l => ((A i j).cg (l + 1)).1 *
          (if [s 0, s 1, s 2, s 3].getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum : ℤ) : ℝ) / (T * T) := by
      intro i j
      have e1 : (l4 fun l => ((A i j).cg (l + 1)).1 * (if [s 0, s 1, s 2, s 3].getD l false then (gn h l : ℤ)
          else -(gn h l : ℤ))).sum = ∑ l : Fin 4, ((A i j).cg (l + 1)).1 *
            (if s l then ((h.getD l 0 : ℕ) : ℤ) else -((h.getD l 0 : ℕ) : ℤ)) := by
        rw [l4_sum]; refine Finset.sum_congr rfl fun l _ => ?_; rw [getD_vtx]; rfl
      rw [e1]
      simp only [ha, Matrix.add_apply, Matrix.sum_apply, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
      exact vertex_entry _ (fun l => ((A i j).cg (l + 1)).1) (fun l => h.getD l 0) s
    have hsq : sumsq (a + ∑ l : Fin 4, Method.vertex (fun l : Fin 4 => rn (h.getD l 0)) s l • b l) =
        (((l36 fun e => let A := gT res e
          ((A.cg 0).1 * 2 ^ pp + (l4 fun l => (A.cg (l + 1)).1 *
            (if [s 0, s 1, s 2, s 3].getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum : ℕ)
          : ℝ) / (T * T) ^ 2 := by
      rw [sumsq, l36_sum, Nat.cast_sum, Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Nat.cast_sum, Finset.sum_div]
      refine Finset.sum_congr rfl fun j _ => ?_
      dsimp only
      rw [hX i j, div_pow, cast_natAbs_sq]
    rw [hsq]
    have hs' : (((l36 fun e => let A := gT res e
          ((A.cg 0).1 * 2 ^ pp + (l4 fun l => (A.cg (l + 1)).1 *
            (if [s 0, s 1, s 2, s 3].getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum : ℕ)
          : ℝ) ≤ ((M * 2 ^ pp : ℕ) : ℝ) ^ 2 := by exact_mod_cast hs
    calc _ ≤ ((M * 2 ^ pp : ℕ) : ℝ) ^ 2 / (T * T) ^ 2 := div_le_div_of_nonneg_right hs' (by positivity)
      _ = rn M ^ 2 := by rw [hTdef]; unfold rn; push_cast; field_simp
  -- (ii) the quadratic part
  have h2 : frob (∑ k ∈ Finset.range 10, mono (k + 5) u • H k) ≤ rn Hn := by
    refine (frob_sum_le _ _).trans ?_
    rw [hHn, l10_sum]
    have : rn (∑ k ∈ Finset.range 10, cdivN (isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) *
        monoW h (k + 5)) (pp * 2)) = ∑ k ∈ Finset.range 10, rn (cdivN (isqrtUp ((l36 fun e =>
          ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) * monoW h (k + 5)) (pp * 2)) := by
      unfold rn; push_cast; rw [Finset.sum_div]
    rw [this]
    refine Finset.sum_le_sum fun k _ => ?_
    rw [frob_smul]
    have hm := abs_mono_le hu (k + 5)
    have hdeg : deg (k + 5) = 2 := by unfold deg; split_ifs <;> omega
    rw [hdeg] at hm
    have hH : frob (H k) ≤ (isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) : ℝ) / T := by
      refine frob_le_of_entries (div_nonneg (Nat.cast_nonneg _) hT.le) ?_
      rw [sumsq, div_pow]
      have e : ∑ i : I6, ∑ j : I6, H k i j ^ 2 =
          (((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum : ℕ) : ℝ) / T ^ 2 := by
        rw [l36_sum]; push_cast; rw [Finset.sum_div]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Finset.sum_div]
        refine Finset.sum_congr rfl fun j _ => ?_
        simp only [hH, Matrix.of_apply, div_pow, Nat.cast_natAbs, Int.cast_abs, sq_abs, hA]
      rw [e]
      refine div_le_div_of_nonneg_right ?_ (by positivity)
      have := isqrtUp_spec ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum)
      rw [sq]; exact_mod_cast this
    calc |mono (k + 5) u| * frob (H k) ≤ ((monoW h (k + 5) : ℝ) / 2 ^ (pp * 2)) *
          ((isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) : ℝ) / T) :=
          mul_le_mul hm hH (frob_nonneg _) (div_nonneg (Nat.cast_nonneg _) (two_pow_pos _).le)
      _ = (((isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) * monoW h (k + 5) : ℕ) : ℝ) /
          2 ^ (pp * 2)) / 2 ^ pp := by push_cast; ring
      _ ≤ _ := by unfold rn; exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)
  -- (iii) the remainders
  have h3 : frob err ≤ rn ρn := by
    refine frob_le_of_entries (rn_nonneg _) ?_
    have hent : ∀ i j, err i j ^ 2 ≤ ((A i j).ρ : ℝ) ^ 2 / T ^ 2 := by
      intro i j
      have hh := hR i j
      unfold CT.Has at hh
      have : |err i j| ≤ rn (A i j).ρ := by
        refine le_trans ?_ hh
        have e : err i j = (((R i j : ℂ) - (A i j).eval u)).re := by simp [herr]
        rw [e]; exact Complex.abs_re_le_norm _
      rw [← div_pow]
      exact sq_le_sq' (by unfold rn at this; linarith [abs_le.1 this]) (by unfold rn at this; linarith [abs_le.1 this])
    calc sumsq err ≤ ∑ i : I6, ∑ j : I6, ((A i j).ρ : ℝ) ^ 2 / T ^ 2 :=
          Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => hent i j
      _ = (((l36 fun e => (gT res e).ρ ^ 2).sum : ℕ) : ℝ) / T ^ 2 := by
          rw [l36_sum]; push_cast; rw [Finset.sum_div]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [Finset.sum_div]
      _ ≤ ((ρn : ℝ) * ρn) / T ^ 2 := by
          refine div_le_div_of_nonneg_right ?_ (by positivity)
          have := isqrtUp_spec ((l36 fun e => (gT res e).ρ ^ 2).sum)
          rw [← hρn] at this
          exact_mod_cast this
      _ = rn ρn ^ 2 := by rw [hTdef]; unfold rn; ring
  -- total
  have hMn : rn M + rn Hn + rn ρn = rn n := by
    have e : M + Hn + ρn = n := by rw [hM, Nat.sub_sub, add_assoc, Nat.sub_add_cancel hsum]
    rw [← rn_add, ← rn_add, e]
  have t1 := frob_add_le ((a + ∑ l : Fin 4, u l • b l) + ∑ k ∈ Finset.range 10, mono (k + 5) u • H k) err
  have t2 := frob_add_le (a + ∑ l : Fin 4, u l • b l) (∑ k ∈ Finset.range 10, mono (k + 5) u • H k)
  linarith

end Frob

end NoFourMUBs.KernelAtlas.Seed
