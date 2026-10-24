import KernelAtlas.Seed.T1PLin

/-!
# T1′ soundness, part 3: the tube box (`tube_sound`)

For `u` in a tube box (`η = η_c + u`), the models of `tubeOK` enclose `δ(u) = (P − Pg) + Tη + ν̃(u)`, the 90
exponentials and `Φ_Pg(δ(u))`; the bounds give the hypotheses of `Method.tube_enclosure` with the predictor
`x̃(u)` (`N_b x̃(u) = ν̃(u)`), and `tube_sound` concludes: every normal component `ν` of a Hadamard
`e^{i(P + Tη + ν)}` (`ν ∈ N`, `‖ν‖ ≤ n0`) has `|ν_e − ν̃_e(u)| ≤ ρ_e r_K`, so the phase models `qmT` enclose
`P + Tη + ν` and the entry models `kmT` enclose `e^{i(P + Tη + ν)}`.
-/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Small facts -/

lemma int_div_floor (q : ℤ) {D : ℕ} (hD : 0 < D) :
    0 ≤ (q : ℝ) / D - ((q / (D : ℤ) : ℤ) : ℝ) ∧ (q : ℝ) / D - ((q / (D : ℤ) : ℤ) : ℝ) < 1 := by
  have hD' : (0 : ℤ) < D := by exact_mod_cast hD
  have h1 := Int.mul_ediv_add_emod q (D : ℤ)
  have h2 := Int.emod_nonneg q hD'.ne'
  have h3 := Int.emod_lt_of_pos q hD'
  have hDr : (0 : ℝ) < D := by exact_mod_cast hD
  have hq : (q : ℝ) = D * ((q / (D : ℤ) : ℤ) : ℝ) + ((q % (D : ℤ) : ℤ) : ℝ) := by exact_mod_cast h1.symm
  have e : (q : ℝ) / D - ((q / (D : ℤ) : ℤ) : ℝ) = ((q % (D : ℤ) : ℤ) : ℝ) / D := by
    rw [hq]; field_simp; ring
  rw [e]
  have h2' : (0 : ℝ) ≤ ((q % (D : ℤ) : ℤ) : ℝ) := by exact_mod_cast h2
  have h3' : ((q % (D : ℤ) : ℤ) : ℝ) < D := by exact_mod_cast h3
  exact ⟨div_nonneg h2' hDr.le, (div_lt_one hDr).2 h3'⟩

lemma cz_re_eq (z : ℤ × ℤ) : (cz z).re = rq z.1 := by
  rw [cz_eq]
  simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
  unfold rq; ring

lemma eval_re_eq (A : CT) (u : Fin 4 → ℝ) : (A.eval u).re = ∑ m ∈ Finset.range 15, rq (A.cg m).1 * mono m u := by
  unfold CT.eval
  rw [Complex.re_sum]
  exact Finset.sum_congr rfl fun m _ => by rw [Complex.re_mul_ofReal, cz_re_eq]

lemma has_self_re (A : CT) (u : Fin 4 → ℝ) : (re A).Has u (((A.eval u).re : ℝ) : ℂ) :=
  has_re (show A.Has u (A.eval u) by unfold CT.Has; rw [sub_self, norm_zero]; exact rn_nonneg _)

lemma rn_l4 (f : ℕ → ℕ) : rn ((l4 f).sum) = ∑ k : Fin 4, rn (f k) := by
  rw [l4_sum]; unfold rn; push_cast; rw [Finset.sum_div]

lemma gi_l36' (f : ℕ → ℤ) {j : ℕ} (hj : j < 36) : gi (l36 f) j = f j := by interval_cases j <;> rfl
lemma gLZ_eq (l : List (List (ℤ × ℤ))) (i : ℕ) : gLZ l i = l.getD i [] := rfl

/-! ### The real objects of a tube box -/

/-- `η = η_c + u`. -/
def etaOf (D : TubeD) (u : Fin 4 → ℝ) : Fin 4 → ℝ := fun k => rq (gi D.ec k) + u k

/-- The predictor `ν̃(u)`. -/
def nuR (D : TubeD) (u : Fin 4 → ℝ) : RMat6 := fun a c => ((gT D.nu (ix a c)).eval u).re

/-- `δ(u) = (P − Pg) + Tη + ν̃(u)`. -/
def deltaR (R : RecP) (P : RMat6) (D : TubeD) (u : Fin 4 → ℝ) : RMat6 :=
  (P - Mq R.Pg) + tang (Tq R) (etaOf D u) + nuR D u

lemma tang_apply (U : Fin 4 → RMat6) (w : Fin 4 → ℝ) (a c : I6) : tang U w a c = ∑ k, w k * U k a c := by
  simp [tang, Matrix.sum_apply]

/-! ### `Tη` -/

theorem has_tau (R : RecP) (hDT : 0 < R.DT) (D : TubeD) {u : Fin 4 → ℝ} (hu : InBox D.hb u) (e : ℕ) :
    (tauT R D.ec D.hb e).Has u
      (((∑ k : Fin 4, (rq (gi D.ec k) + u k) * ((gi (gL R.Tn k) e : ℝ) / R.DT)) : ℝ) : ℂ) := by
  unfold CT.Has tauT
  rw [eval_affine ((l4 fun k => gi D.ec k * gi (gL R.Tn k) e).sum / (R.DT : ℤ))
    (fun j => gi (gL R.Tn j) e * 2 ^ pp / (R.DT : ℤ)), ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  show _ ≤ rn (1 + (l4 fun k => cdivN (gn D.hb k) pp).sum)
  rw [rn_add, rn_l4]
  set S : ℤ := (l4 fun k => gi D.ec k * gi (gL R.Tn k) e).sum
  have hT := two_pow_pos pp
  have hDr : (0 : ℝ) < R.DT := by exact_mod_cast hDT
  have hS : (S : ℝ) = ∑ k : Fin 4, (gi D.ec k : ℝ) * gi (gL R.Tn k) e := by
    simp only [S, l4_sum]; push_cast; rfl
  -- the constant
  set c0 : ℤ := S / (R.DT : ℤ)
  have hc0 := int_div_floor S hDT
  -- the slopes
  set g : ℕ → ℤ := fun k => gi (gL R.Tn k) e * 2 ^ pp / (R.DT : ℤ)
  have hg : ∀ k, 0 ≤ ((gi (gL R.Tn k) e * 2 ^ pp : ℤ) : ℝ) / R.DT - ((g k : ℤ) : ℝ) ∧
      ((gi (gL R.Tn k) e * 2 ^ pp : ℤ) : ℝ) / R.DT - ((g k : ℤ) : ℝ) < 1 := fun k => int_div_floor _ hDT
  have key : (∑ k : Fin 4, (rq (gi D.ec k) + u k) * ((gi (gL R.Tn k) e : ℝ) / R.DT)) -
      (rq c0 + rq (g 0) * u 0 + rq (g 1) * u 1 + rq (g 2) * u 2 + rq (g 3) * u 3) =
      ((S : ℝ) / R.DT - c0) / 2 ^ pp + ∑ k : Fin 4, u k *
        ((((gi (gL R.Tn k) e * 2 ^ pp : ℤ) : ℝ) / R.DT - ((g k : ℤ) : ℝ)) / 2 ^ pp) := by
    rw [hS]; simp only [Fin.sum_univ_four, rq, Fin.val_zero, Fin.val_one, Fin.val_two]
    rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]
    push_cast; field_simp; ring
  rw [key]
  refine (abs_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [abs_div, abs_of_pos hT, abs_of_nonneg hc0.1]
    unfold rn; push_cast
    exact div_le_div_of_nonneg_right hc0.2.le hT.le
  · refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
    rw [abs_mul, abs_div, abs_of_pos hT, abs_of_nonneg (hg k).1]
    have hk := hu k
    calc |u k| * ((((gi (gL R.Tn k) e * 2 ^ pp : ℤ) : ℝ) / R.DT - ((g k : ℤ) : ℝ)) / 2 ^ pp)
        ≤ rn (D.hb.getD k 0) * (1 / 2 ^ pp) :=
          mul_le_mul hk (div_le_div_of_nonneg_right (hg k).2.le hT.le) (div_nonneg (hg k).1 hT.le) (rn_nonneg _)
      _ ≤ rn (cdivN (gn D.hb k) pp) := by
          have := cdivN_spec (gn D.hb k) pp
          have e : rn (D.hb.getD k 0) * (1 / 2 ^ pp) = ((gn D.hb k : ℝ) / 2 ^ pp) / 2 ^ pp := by unfold rn gn; ring
          rw [e]; unfold rn; exact div_le_div_of_nonneg_right this hT.le

/-! ### The predictor lies in `N` -/

lemma nuR_eq (D : TubeD) (u : Fin 4 → ℝ) (a c : I6) :
    nuR D u a c = ∑ m ∈ Finset.range 15, rq ((gT D.nu (ix a c)).cg m).1 * mono m u := eval_re_eq _ _

lemma nuCoef_gi (nu : List CT) (m : ℕ) (a c : I6) : gi (nuCoef nu m) (ix a c) = ((gT nu (ix a c)).cg m).1 := by
  unfold nuCoef; rw [gi_l36' _ (ix_lt a c)]

lemma memN_of {R : RecP} {z : List ℤ} (hz : horZ z = true) (hd : ∀ k : Fin 4, dot36 (gL R.Tn k) z = 0) :
    Mq z ∈ Method.normalSpace (Tq R) := by
  refine ⟨isHorizontal_zq hz _, fun k => ?_⟩
  have hk := hd k
  rw [dot36_eq] at hk
  have hk' : ∑ a : I6, ∑ c : I6, (gi (gL R.Tn k) (ix a c) : ℝ) * (gi z (ix a c) : ℝ) = 0 := by exact_mod_cast hk
  simp only [Tq, Mq, zq, rq]
  have e : ∀ a c, (gi (gL R.Tn k) (ix a c) : ℝ) / R.DT * ((gi z (ix a c) : ℝ) / 2 ^ pp) =
      (gi (gL R.Tn k) (ix a c) : ℝ) * (gi z (ix a c) : ℝ) / (R.DT * 2 ^ pp) := fun a c => by field_simp
  simp only [e, ← Finset.sum_div, hk', zero_div]

lemma nuR_sum (D : TubeD) (u : Fin 4 → ℝ) : nuR D u = ∑ m ∈ Finset.range 15, mono m u • Mq (nuCoef D.nu m) := by
  ext a c
  rw [nuR_eq, Matrix.sum_apply]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [Matrix.smul_apply, smul_eq_mul, Mq, nuCoef_gi]; ring

theorem nuR_mem {R : RecP} {D : TubeD} (h : nuOK R D.nu = true) (u : Fin 4 → ℝ) :
    nuR D u ∈ Method.normalSpace (Tq R) := by
  rw [nuR_sum]
  refine Submodule.sum_mem _ fun m hm => Submodule.smul_mem _ _ ?_
  have := all_l15 h (Finset.mem_range.1 hm)
  rw [Bool.and_eq_true] at this
  exact memN_of this.1 fun k => of_decide_eq_true (all_l4 this.2 k.2)

/-! ### `δ`, the exponentials and `Φ` -/

theorem has_dl {R : RecP} (hDT : 0 < R.DT) {P : RMat6} (hP : ∀ a c, |P a c - rq (gi R.Pg (ix a c))| ≤ rn R.pe)
    (D : TubeD) {u : Fin 4 → ℝ} (hu : InBox D.hb u) (a c : I6) :
    (gT (dlT R D) (ix a c)).Has u ((deltaR R P D u a c : ℝ) : ℂ) := by
  unfold dlT; rw [gT_l36 _ (ix_lt a c)]
  have h1 := has_add (has_tau R hDT D hu (ix a c)) (has_self_re (gT D.nu (ix a c)) u)
  refine has_addRho h1 ?_
  rw [← Complex.ofReal_add, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have e : deltaR R P D u a c - ((∑ k : Fin 4, (rq (gi D.ec k) + u k) * ((gi (gL R.Tn k) (ix a c) : ℝ) / R.DT)) +
      ((gT D.nu (ix a c)).eval u).re) = P a c - rq (gi R.Pg (ix a c)) := by
    simp only [deltaR, Matrix.add_apply, Matrix.sub_apply, tang_apply, Mq, Tq, zq, nuR, etaOf]; ring
  rw [e]; exact hP a c

lemma has_sumT_l6 {f : ℕ → CT} {x : I6 → ℂ} {u : Fin 4 → ℝ} (h : ∀ c : I6, (f (sidx c)).Has u (x c)) :
    (sumT (l6 f)).Has u (∑ c, x c) := by
  have H := has_sumT_cons (h (.inl 0)) (has_sumT_cons (h (.inl 1)) (has_sumT_cons (h (.inl 2))
    (has_sumT_cons (h (.inr 0)) (has_sumT_cons (h (.inr 1)) (has_sumT_cons (h (.inr 2)) (has_sumT_nil u))))))
  have e : ∑ c, x c = x (.inl 0) + (x (.inl 1) + (x (.inl 2) + (x (.inr 0) + (x (.inr 1) + (x (.inr 2) + 0))))) := by
    simp only [Fintype.sum_sum_type, Fin.sum_univ_three]; ring
  rw [e]; exact H

lemma phaseMat_mul_star (X : RMat6) (a b c : I6) :
    phaseMat X a c * star (phaseMat X b c) = Complex.exp (((X a c - X b c : ℝ) : ℂ) * I) := by
  simp only [phaseMat, of_apply]
  rw [star_exp_mul_I, ← Complex.exp_add]; congr 1; push_cast; ring

lemma phi_apply_ne (P δ : RMat6) {a b : I6} (h : a ≠ b) :
    Phi P δ a b = ∑ c, Complex.exp ((((P + δ) a c - (P + δ) b c : ℝ) : ℂ) * I) := by
  simp only [Phi, Matrix.sub_apply, Matrix.mul_apply, conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply_ne h, smul_zero, sub_zero, phaseMat_mul_star]

lemma phi_diag (P δ : RMat6) (a : I6) : Phi P δ a a = 0 := by
  simp only [Phi, Matrix.sub_apply, Matrix.mul_apply, conjTranspose_apply, Matrix.smul_apply, Matrix.one_apply_eq,
    phaseMat_mul_star, sub_self, Complex.ofReal_zero, zero_mul, Complex.exp_zero, Finset.sum_const, Finset.card_univ]
  simp

lemma sidx_inj {a b : I6} (h : sidx a = sidx b) : a = b := by
  rw [← toI6_sidx a, ← toI6_sidx b, h]

section Tube

variable {R : RecP} {L : LinD} {D : TubeD} {P : RMat6}

lemma tubeOK_parts (h : tubeOK R L D = true) :
    nuOK R D.nu = true ∧ (l15 fun p => (l6 fun c => expOK (gT (gLT (dL (dlT R D)) p) c) nTs).all id).all id = true ∧
    boundOK D.hb D.bphi (phiR (FL (EL R D.hb (dL (dlT R D))))) = true ∧ boundOK D.hb D.su (suL (dlT R D) L.c) = true ∧
    boundOK D.hb D.snu (nuL D.nu) = true ∧ iterOK R L D = true := by
  unfold tubeOK at h
  simp only [Bool.and_eq_true] at h
  exact ⟨h.1.1.1.1.1, h.1.1.1.1.2, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

theorem has_E (hR : RecFacts R) (hP : ∀ a c, |P a c - rq (gi R.Pg (ix a c))| ≤ rn R.pe) (ht : tubeOK R L D = true)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) {a b : I6} (hab : sidx a < sidx b) (c : I6) :
    (gT (gLT (EL R D.hb (dL (dlT R D))) (pidx15 (sidx a) (sidx b))) (sidx c)).Has u
      (Complex.exp ((((Mq R.Pg + deltaR R P D u) a c - (Mq R.Pg + deltaR R P D u) b c : ℝ) : ℂ) * I)) := by
  obtain ⟨hp, hpa, hpb⟩ := pair_facts _ (sidx_lt a) _ (sidx_lt b) hab
  set p := pidx15 (sidx a) (sidx b)
  have hdm : gT (gLT (dL (dlT R D)) p) (sidx c) = sub (gT (dlT R D) (ix a c)) (gT (dlT R D) (ix b c)) := by
    unfold dL; rw [gLT_l15 _ hp, gT_l6 _ (sidx_lt c)]; unfold dT; rw [hpa, hpb]; rfl
  have hd : (gT (gLT (dL (dlT R D)) p) (sidx c)).Has u
      (((deltaR R P D u a c - deltaR R P D u b c : ℝ) : ℂ)) := by
    rw [hdm, Complex.ofReal_sub]; exact has_sub (has_dl hR.dt hP D hu a c) (has_dl hR.dt hP D hu b c)
  have hok := all_l6 (all_l15 (tubeOK_parts ht).2.1 hp) (sidx_lt c)
  have he := has_smul hu (gz (gLZ R.KP p) (sidx c)) (has_expI hu hok hd)
  have hE : gT (gLT (EL R D.hb (dL (dlT R D))) p) (sidx c) =
      addRho (smul D.hb (gz (gLZ R.KP p) (sidx c)) (expI D.hb nTs (gT (gLT (dL (dlT R D)) p) (sidx c)))) R.kpe := by
    unfold EL; rw [gLT_l15 _ hp, gT_l6 _ (sidx_lt c)]
  rw [hE]
  refine has_addRho he ?_
  have hθ : (Mq R.Pg) a c - (Mq R.Pg) b c = rq (thP R.Pg p (sidx c)) := by
    simp only [Mq, thP, hpa, hpb, rq, ix]; push_cast; ring
  have e : ((((Mq R.Pg + deltaR R P D u) a c - (Mq R.Pg + deltaR R P D u) b c : ℝ) : ℂ) * I) =
      ((rq (thP R.Pg p (sidx c)) : ℝ) : ℂ) * I + (((deltaR R P D u a c - deltaR R P D u b c : ℝ) : ℂ) * I) := by
    rw [← hθ]; simp only [Matrix.add_apply]; push_cast; ring
  rw [e, Complex.exp_add, ← sub_mul, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one, norm_sub_rev]
  exact hR.kp p hp (sidx c) (sidx_lt c)

theorem has_F (hR : RecFacts R) (hP : ∀ a c, |P a c - rq (gi R.Pg (ix a c))| ≤ rn R.pe) (ht : tubeOK R L D = true)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) {a b : I6} (hab : sidx a < sidx b) :
    (gT (FL (EL R D.hb (dL (dlT R D)))) (pidx15 (sidx a) (sidx b))).Has u (Phi (Mq R.Pg) (deltaR R P D u) a b) := by
  obtain ⟨hp, -, -⟩ := pair_facts _ (sidx_lt a) _ (sidx_lt b) hab
  have hne : a ≠ b := fun h => by rw [h] at hab; exact lt_irrefl _ hab
  rw [phi_apply_ne _ _ hne]
  unfold FL; rw [gT_l15 _ hp]
  have hl : gLT (EL R D.hb (dL (dlT R D))) (pidx15 (sidx a) (sidx b)) =
      l6 fun c => gT (gLT (EL R D.hb (dL (dlT R D))) (pidx15 (sidx a) (sidx b))) c := by
    unfold EL; rw [gLT_l15 _ hp]; rfl
  rw [hl]
  exact has_sumT_l6 fun c => has_E hR hP ht hu hab c

/-! ### `‖Φ‖` as the Frobenius norm of a real matrix -/

/-- `Re w_ab` above the diagonal, `Im w_ba` below. -/
def RmOf (w : Mat6) : RMat6 := fun a b =>
  if sidx a < sidx b then (w a b).re else if sidx b < sidx a then (w b a).im else 0

lemma outNorm_le_frob_Rm (w : Mat6) (hw : wᴴ = w) (hd : ∀ a, w a a = 0) : outNorm w ≤ frob (RmOf w) := by
  have hstar : ∀ a b, w b a = star (w a b) := fun a b => by
    have := congrFun (congrFun hw b) a; rw [conjTranspose_apply] at this; exact this.symm
  have hn : ∀ a b, ‖w a b‖ ^ 2 = (w a b).re ^ 2 + (w a b).im ^ 2 := fun a b => by
    rw [Complex.sq_norm, Complex.normSq_apply]; ring
  have key : ∀ a b, ‖w a b‖ ^ 2 + ‖w b a‖ ^ 2 = 2 * (RmOf w a b ^ 2 + RmOf w b a ^ 2) := fun a b => by
    rcases lt_trichotomy (sidx a) (sidx b) with h | h | h
    · have h' : ¬ sidx b < sidx a := by omega
      simp only [RmOf, if_pos h, if_neg h']
      rw [hstar a b, norm_star, hn]; ring
    · have := sidx_inj h; subst this
      simp only [RmOf, lt_irrefl, if_false, hd, norm_zero]; ring
    · have h' : ¬ sidx a < sidx b := by omega
      simp only [RmOf, if_pos h, if_neg h']
      rw [hstar b a, norm_star, hn]; ring
  refine outNorm_le_of_sq_le (frob_nonneg _) ?_
  rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg _)]
  have h2 : 2 * ∑ a, ∑ b, ‖w a b‖ ^ 2 = 2 * (2 * sumsq (RmOf w)) := by
    have hs : ∑ a, ∑ b, ‖w a b‖ ^ 2 = ∑ a, ∑ b, ‖w b a‖ ^ 2 := Finset.sum_comm
    have hs2 : ∑ a, ∑ b, RmOf w a b ^ 2 = ∑ a, ∑ b, RmOf w b a ^ 2 := Finset.sum_comm
    calc 2 * ∑ a, ∑ b, ‖w a b‖ ^ 2 = ∑ a, ∑ b, (‖w a b‖ ^ 2 + ‖w b a‖ ^ 2) := by
          rw [two_mul]; nth_rewrite 2 [hs]; simp only [← Finset.sum_add_distrib]
      _ = ∑ a, ∑ b, 2 * (RmOf w a b ^ 2 + RmOf w b a ^ 2) := by simp only [key]
      _ = 2 * (2 * sumsq (RmOf w)) := by
          simp only [← Finset.mul_sum, Finset.sum_add_distrib, sumsq]; rw [← hs2]; ring
  linarith

/-! ### The iteration -/

lemma stepsOK_spec {yn bphi eps0 nn su : ℕ} : ∀ (l : List ℕ), stepsOK yn bphi eps0 nn su l = true →
    ∀ k, k + 1 < l.length → stepOK yn bphi eps0 nn su (gn l k) (gn l (k + 1)) = true
  | [], _, k, hk => by simp at hk
  | [_], _, k, hk => by simp at hk
  | r :: r' :: l, h, k, hk => by
    simp only [stepsOK, Bool.and_eq_true] at h
    rcases k with _ | k
    · exact h.1
    · have := stepsOK_spec (r' :: l) h.2 k (by simp at hk ⊢; omega)
      simpa [gn] using this

/-- `L` as a real. -/
def Lr : ℝ := (Lnum : ℝ) / Lden

lemma Lr_facts : 0 ≤ Lr ∧ 12 ≤ Lr ^ 2 := by
  unfold Lr Lnum Lden; norm_num

lemma step_alg (G Ln Ld yn bphi eps0 nn su r : ℝ) (hG : 0 < G) (hL : 0 < Ld) :
    yn / G * (bphi / G) + (eps0 / G + yn / G * (Ln / Ld) * (nn / G) * (su / G + nn / G * (r / G))) * (r / G) =
      (yn * bphi * G ^ 3 * Ld + eps0 * r * G ^ 3 * Ld + yn * Ln * nn * su * r * G + yn * Ln * nn * nn * r * r) /
        G ^ 5 / Ld := by
  field_simp; ring

lemma stepOK_real {yn bphi eps0 nn su r r' : ℕ} (h : stepOK yn bphi eps0 nn su r r' = true) :
    rn yn * rn bphi + Method.tubeQ Lr (rn eps0) (rn yn) (rn nn) (rn su) (rn r) * rn r ≤ rn r' := by
  have h' := of_decide_eq_true h
  have hA : ((yn * bphi * 2 ^ (3 * pp) * Lden + eps0 * r * 2 ^ (3 * pp) * Lden + yn * Lnum * nn * su * r * 2 ^ pp +
      yn * Lnum * nn * nn * r * r : ℕ) : ℝ) ≤ ((r' * 2 ^ (4 * pp) * Lden : ℕ) : ℝ) := by exact_mod_cast h'
  have hT := two_pow_pos pp
  have hL : (0 : ℝ) < Lden := by unfold Lden; norm_num
  have e3 : (2 : ℝ) ^ (3 * pp) = ((2 : ℝ) ^ pp) ^ 3 := by rw [← pow_mul, mul_comm]
  have e4 : (2 : ℝ) ^ (4 * pp) = ((2 : ℝ) ^ pp) ^ 4 := by rw [← pow_mul, mul_comm]
  push_cast at hA
  rw [e3, e4] at hA
  unfold rn Method.tubeQ Lr
  rw [step_alg _ _ _ _ _ _ _ _ _ hT hL]
  have e5 : (r' : ℝ) / 2 ^ pp = ((r' : ℝ) * ((2 : ℝ) ^ pp) ^ 4 * Lden) / ((2 : ℝ) ^ pp) ^ 5 / Lden := by
    field_simp
  rw [e5]
  exact div_le_div_of_nonneg_right (div_le_div_of_nonneg_right hA (by positivity)) hL.le

/-! ### The tube box -/

/-- The radii as reals. -/
def rsR (D : TubeD) (k : ℕ) : ℝ := rn (gn D.rs k)

/-- **The normal tube of a kernel tube box.**  For `u` in the box and every `ν ∈ N`, `‖ν‖ ≤ n ≤ n0`, with
`e^{i(P + Tη + ν)}` Hadamard, the models `wqT` enclose `(P + Tη + ν)_e − Pg_e`. -/
theorem tube_sound (hR : RecFacts R) (hlin : linOK R L = true) (ht : tubeOK R L D = true)
    (hP : ∀ a c, |P a c - rq (gi R.Pg (ix a c))| ≤ rn R.pe) {n : ℝ} (hn : n ≤ rn R.n0)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) {ν : RMat6} (hνh : IsHorizontal ν)
    (hνT : ∀ k, ∑ a, ∑ c, Tq R k a c * ν a c = 0) (hν : frob ν ≤ n)
    (hH : Hadamard6.IsHadamard (phaseMat (P + tang (Tq R) (etaOf D u) + ν))) (a c : I6) :
    (gT (wqT R D) (ix a c)).Has u
      ((((P + tang (Tq R) (etaOf D u) + ν) a c - rq (gi R.Pg (ix a c)) : ℝ) : ℂ)) := by
  obtain ⟨hnu, -, hbphi, hsu, hsnu, hiter⟩ := tubeOK_parts ht
  obtain ⟨hY, heps⟩ := linOK_sound hlin
  set B := Bq R
  -- the predictor in coordinates
  have hBinj : ∀ x, Method.nbMap B x = 0 → x = 0 := Method.nbMap_injective_of hR.cN
  obtain ⟨xt, hxt⟩ := Method.exists_nbMap_eq hR.hor hR.inj hR.memN hBinj (nuR_mem hnu u)
  obtain ⟨xs, hxs⟩ := Method.exists_nbMap_eq hR.hor hR.inj hR.memN hBinj (ν := ν) ⟨hνh, hνT⟩
  set u' := (P - Mq R.Pg) + tang (Tq R) (etaOf D u)
  have hδ : u' + Method.nbMap B xt = deltaR R P D u := by rw [hxt]; rfl
  -- A1: `‖Y Φ‖ ≤ y_N bphi`
  have hRm : ∀ i j, (gT (phiR (FL (EL R D.hb (dL (dlT R D))))) (ix i j)).Has u
      ((RmOf (Phi (Mq R.Pg) (deltaR R P D u)) i j : ℝ) : ℂ) := fun i j => by
    unfold phiR; rw [gT_l36 _ (ix_lt i j), ix_div6, ix_mod6]
    by_cases h1 : sidx i < sidx j
    · rw [if_pos h1]; simp only [RmOf, if_pos h1]; exact has_re (has_F hR hP ht hu h1)
    · rw [if_neg h1]
      by_cases h2 : sidx j < sidx i
      · rw [if_pos h2]; simp only [RmOf, if_neg h1, if_pos h2]; exact has_im (has_F hR hP ht hu h2)
      · rw [if_neg h2]; simp only [RmOf, if_neg h1, if_neg h2]; exact has_zero' u
  have hPhi := (outNorm_le_frob_Rm _ (Method.phi_herm _ _) (phi_diag _ _)).trans (boundOK_sound hu hRm hbphi)
  have hb : Method.xnorm (Method.yMap (Yre L) (Yim L) (Phi (Mq R.Pg) (u' + Method.nbMap B xt))) ≤
      rn L.yn * rn D.bphi := by
    rw [hδ]
    exact (hY _ (Method.phi_herm _ _)).trans (mul_le_mul_of_nonneg_left hPhi (rn_nonneg _))
  -- `s_u`
  have hs : frob (u' + Method.nbMap B xt - Mq L.c) ≤ rn D.su := by
    rw [hδ]
    refine boundOK_sound hu (fun i j => ?_) hsu
    unfold suL; rw [gT_l36 _ (ix_lt i j)]
    have := has_sub (has_dl hR.dt hP D hu i j) (has_const (gi L.c (ix i j), 0) u)
    rw [cz_real] at this
    simpa [Mq, rq] using this
  -- the start
  have hnuB : frob (nuR D u) ≤ rn D.snu :=
    boundOK_sound hu (fun i j => by unfold nuL; rw [gT_l36 _ (ix_lt i j)]; exact has_self_re _ u) hsnu
  have hx : Method.xnorm xt ≤ rn R.cn * rn D.snu := by
    refine (hR.cN xt).trans (mul_le_mul_of_nonneg_left ?_ (rn_nonneg _))
    rw [hxt]; exact hnuB
  have hit := hiter
  unfold iterOK at hit
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hit
  have h0 : Method.xnorm (xs - xt) ≤ rsR D 0 := by
    have hst := Method.tube_start (Method.nbMap B) (n0 := rn R.n0) (rn_nonneg R.cn) hR.cN
      (by rw [hxs]; exact hν.trans hn) hx
    refine hst.trans ?_
    have h1 : ((R.cn * R.n0 + R.cn * D.snu : ℕ) : ℝ) ≤ ((gn D.rs 0 * 2 ^ pp : ℕ) : ℝ) := by exact_mod_cast hit.1
    push_cast at h1
    have hT := two_pow_pos pp
    have e : rn R.cn * rn R.n0 + rn R.cn * rn D.snu = ((R.cn : ℝ) * R.n0 + R.cn * D.snu) / 2 ^ pp / 2 ^ pp := by
      unfold rn; field_simp
    rw [e]; unfold rsR rn
    rw [div_le_div_iff_of_pos_right hT, div_le_iff₀ hT]
    exact h1
  have hstep : ∀ k < D.rs.length - 1, rn L.yn * rn D.bphi +
      Method.tubeQ Lr (rn L.eps0) (rn L.yn) (rn R.nn) (rn D.su) (rsR D k) * rsR D k ≤ rsR D (k + 1) :=
    fun k hk => stepOK_real (stepsOK_spec D.rs hit.2 k (by omega))
  have hH' : Hadamard6.IsHadamard (phaseMat (Mq R.Pg + u' + Method.nbMap B xs)) := by
    rw [hxs]; convert hH using 2; simp only [u']; abel
  have hK := Method.tube_enclosure Lr_facts.1 Lr_facts.2 (rn_nonneg _) (rn_nonneg _) (rn_nonneg _) hR.nN hY
    heps hb hs hH' (rsR D) (D.rs.length - 1) h0 hstep
  have hentry := Method.tube_entry hK (rn_nonneg (gn R.rho (ix a c))) (hR.rho a c)
  rw [hxs, hxt] at hentry
  -- the phase model
  unfold wqT; rw [gT_l36 _ (ix_lt a c)]
  refine has_addRho (has_dl hR.dt hP D hu a c) ?_
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have e : (P + tang (Tq R) (etaOf D u) + ν) a c - rq (gi R.Pg (ix a c)) - deltaR R P D u a c =
      ν a c - nuR D u a c := by
    simp only [deltaR, Matrix.add_apply, Matrix.sub_apply, Mq]; ring
  rw [e]
  refine hentry.trans ?_
  have hc := cdivN_spec (gn R.rho (ix a c) * rK D) pp
  have e2 : rn (gn R.rho (ix a c)) * rsR D (D.rs.length - 1) =
      ((gn R.rho (ix a c) * rK D : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by
    unfold rsR rK rn; push_cast; field_simp
  rw [e2]; unfold rn; exact div_le_div_of_nonneg_right hc (two_pow_pos pp).le

end Tube

end NoFourMUBs.KernelAtlas.Seed
