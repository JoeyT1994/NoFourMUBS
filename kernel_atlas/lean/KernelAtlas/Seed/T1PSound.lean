import KernelAtlas.Seed.T1PTube

/-!
# T1′ soundness, part 4: the corner test and the record target (`t1p_holds`)

* `qm_has`, `km_has`: the phase and entry models of a tube box enclose `Q = P + Tη + ν` and `e^{iQ}` for every record
  Hadamard over the box (`tube_sound`);
* `sgnOK_sound` (the two `Ψ` signs, on the tube box) and `ellOK_sound` (the ellipsoid part of the T1 test, on a
  sub-box): the two halves of `t1OK_sound`;
* `t1p_holds`: a sub-box of a checked tube box gives the semantic claim `RecTargetHolds … (.t1' l kk σ τ) η` for every
  `η` in the sub-box, from the links of the record (`P`, `T`, `n`) and of the target ball (as `BallLink`).
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

section Models

variable {R : RecP} {L : LinD} {D : TubeD} {P : RMat6}

lemma wqT_length (R : RecP) (D : TubeD) : (wqT R D).length = 36 := rfl
lemma qmT_length (R : RecP) (D : TubeD) : (qmT R D).length = 36 := rfl
lemma kmT_length (R : RecP) (D : TubeD) : (kmT R D).length = 36 := rfl

/-- The phase models enclose `Q = P + Tη + ν`. -/
theorem qm_has {u : Fin 4 → ℝ} {Q : RMat6}
    (hw : ∀ a c, (gT (wqT R D) (ix a c)).Has u (((Q a c - rq (gi R.Pg (ix a c)) : ℝ)) : ℂ)) (a c : I6) :
    (gT (qmT R D) (ix a c)).Has u ((Q a c : ℝ) : ℂ) := by
  unfold qmT; rw [gT_l36 _ (ix_lt a c)]
  have := has_add (has_const (gi R.Pg (ix a c), 0) u) (hw a c)
  rw [cz_real] at this
  convert this using 1; unfold rq; push_cast; ring

/-- The entry models enclose `e^{iQ}`. -/
theorem km_has (hR : RecFacts R) (hexp : (l36 fun e => expOK (gT (wqT R D) e) nTs).all id = true)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) {Q : RMat6}
    (hw : ∀ a c, (gT (wqT R D) (ix a c)).Has u (((Q a c - rq (gi R.Pg (ix a c)) : ℝ)) : ℂ)) (a c : I6) :
    (gT (kmT R D) (ix a c)).Has u (phaseMat Q a c) := by
  unfold kmT; rw [gT_l36 _ (ix_lt a c)]
  have he := has_smul hu (gz R.KQ (ix a c)) (has_expI hu (all_l36 hexp (ix_lt a c)) (hw a c))
  refine has_addRho he ?_
  have e : phaseMat Q a c = Complex.exp (((rq (gi R.Pg (ix a c)) : ℝ) : ℂ) * I) *
      Complex.exp ((((Q a c - rq (gi R.Pg (ix a c)) : ℝ)) : ℂ) * I) := by
    simp only [phaseMat, of_apply]; rw [← Complex.exp_add]; congr 1; push_cast; ring
  rw [e, ← sub_mul, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one, norm_sub_rev]
  exact hR.kq _ (ix_lt a c)

end Models

/-! ### The two halves of the T1 test -/

/-- **The signs** (second half of `t1OK_sound`). -/
theorem sgnOK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {km : List CT} {Q : RMat6}
    (hH : Hadamard6.IsHadamard (phaseMat Q)) (hK : ∀ i j, (gT km (ix i j)).Has u (phaseMat Q i j))
    {Sg : SgnD} (hok : sgnOK h km Sg = true) {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun Sg.rows i)
    (hτ : ∀ j, τ j = permFun Sg.cols j) {kk : Fin 4} (hk : (kk : ℕ) = Sg.g) {ol : ℤˣ} (hol : Sg.o = (ol : ℤ)) :
    0 < osgn ol * (psi (rightBlock (cornerMat kk σ τ (phaseMat Q)))).im ∧
      0 < -osgn ol * (psi (lowerBlock (cornerMat kk σ τ (phaseMat Q)))).im := by
  unfold sgnOK at hok
  rw [Bool.and_eq_true] at hok
  obtain ⟨hsB, hsC⟩ := hok
  have hos : osgn ol = (Sg.o : ℝ) := by simp [osgn, hol]
  have ho' : Sg.o = 1 ∨ Sg.o = -1 := by rcases Int.units_eq_one_or ol with h1 | h1 <;> simp [hol, h1]
  have ho'' : -Sg.o = 1 ∨ -Sg.o = -1 := by rcases ho' with h1 | h1 <;> simp [h1]
  refine ⟨?_, ?_⟩
  · rw [psi_rightBlock_cornerMat kk σ τ hH, hos]
    have hb := has3_blockR hK kk hσ hτ
    rw [hk] at hb
    exact signOK_sound hu (has_psi3T hu hb) ho' hsB
  · rw [psi_lowerBlock_cornerMat kk σ τ hH, hos]
    have hb := has3_blockC hK kk hσ hτ
    rw [hk] at hb
    have := signOK_sound hu (has_psi3T hu hb) ho'' hsC
    push_cast at this; linarith

/-! ### Four-entry bounds -/

/-- Four models padded to a `6 × 6` list. -/
def pad4 (vl : List CT) : List CT := l36 fun e => if e < 4 then gT vl e else const (0, 0)

lemma pad4_lt (vl : List CT) {e : ℕ} (he : e < 4) : gT (pad4 vl) e = gT vl e := by
  unfold pad4; rw [gT_l36 _ (by omega), if_pos he]

lemma pad4_ge (vl : List CT) {e : ℕ} (he : 4 ≤ e) : gT (pad4 vl) e = const (0, 0) := by
  by_cases h36 : e < 36
  · unfold pad4; rw [gT_l36 _ h36, if_neg (by omega)]
  · exact gT_ge _ (by simp [pad4, l36]; omega)

lemma cg_const0 (m : ℕ) : (const (0, 0)).cg m = (0, 0) := by
  unfold CT.cg; split <;> rfl

lemma l36_sum_range {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l36 f).sum = ∑ e ∈ Finset.range 36, f e := by
  simp only [l36, List.sum_cons, List.sum_nil, Finset.sum_range_succ, Finset.sum_range_zero]; abel

lemma l4_sum_range {M : Type} [AddCommMonoid M] (f : ℕ → M) : (l4 f).sum = ∑ e ∈ Finset.range 4, f e := by
  simp only [l4, List.sum_cons, List.sum_nil, Finset.sum_range_succ, Finset.sum_range_zero]; abel

lemma pad4_sum {M : Type} [AddCommMonoid M] (g : CT → M) (hg : g (const (0, 0)) = 0) (vl : List CT) :
    (l36 fun e => g (gT (pad4 vl) e)).sum = (l4 fun e => g (gT vl e)).sum := by
  rw [l36_sum_range, l4_sum_range, ← Finset.sum_range_add_sum_Ico _ (show 4 ≤ 36 by norm_num)]
  have h1 : ∑ e ∈ Finset.Ico 4 36, g (gT (pad4 vl) e) = 0 :=
    Finset.sum_eq_zero fun e he => by rw [pad4_ge vl (Finset.mem_Ico.1 he).1]; exact hg
  rw [h1, add_zero]
  exact Finset.sum_congr rfl fun e he => by rw [pad4_lt vl (Finset.mem_range.1 he)]

lemma boundOK_pad4 (h : List ℕ) (n : ℕ) (vl : List CT) : boundOK h n (pad4 vl) = bound4OK h n vl := by
  have hH : ∀ k, (l36 fun e => ((gT (pad4 vl) e).cg (k + 5)).1.natAbs ^ 2).sum =
      (l4 fun e => ((gT vl e).cg (k + 5)).1.natAbs ^ 2).sum := fun k =>
    pad4_sum (fun A => (A.cg (k + 5)).1.natAbs ^ 2) (by simp [cg_const0]) vl
  have hR : (l36 fun e => (gT (pad4 vl) e).ρ ^ 2).sum = (l4 fun e => (gT vl e).ρ ^ 2).sum :=
    pad4_sum (fun A => A.ρ ^ 2) (by simp [const, mk]) vl
  have hV : ∀ s : List Bool, (l36 fun e => (((gT (pad4 vl) e).cg 0).1 * 2 ^ pp + (l4 fun l =>
      ((gT (pad4 vl) e).cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum =
      (l4 fun e => (((gT vl e).cg 0).1 * 2 ^ pp + (l4 fun l =>
      ((gT vl e).cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum :=
    fun s => pad4_sum (fun A => ((A.cg 0).1 * 2 ^ pp + (l4 fun l =>
      (A.cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2)
      (by simp [cg_const0, l4]) vl
  simp only [boundOK, bound4OK, hH, hR, hV]

lemma wnorm_le_of_bound4 {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {vl : List CT} {v : Fin 4 → ℝ}
    (hvk : ∀ i : Fin 4, (gT vl i).Has u (v i : ℂ)) {m : ℕ} (hb : bound4OK h m vl = true) : wnorm v ≤ rn m := by
  rw [← boundOK_pad4] at hb
  exact wnorm_le_of_bound hu (fun i => by rw [pad4_lt vl i.2]; exact hvk i) (fun e he => pad4_ge vl he) hb

/-! ### The ellipsoid on a sub-box -/

lemma has_twoPi (u : Fin 4 → ℝ) :
    (addRho (const (1 * twoPiZ - 0, 0)) (2 * (1 : ℤ).natAbs)).Has u ((2 * Real.pi : ℝ) : ℂ) := by
  have := has_twoPiN u 1 0
  simpa [rq] using this

/-- `v⁰ = G (θ′ − θ₀)` on the tube box. -/
lemma has_vG {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {th : List CT} {θ' : Fin 4 → ℝ}
    (hth : ∀ k : Fin 4, (gT th k).Has u (θ' k : ℂ)) (G : List ℤ) (Bl : BallD) (i : Fin 4) :
    (gT (vG h th G Bl) i).Has u ((Gmat G *ᵥ (θ' - th0R Bl)) i : ℂ) := by
  set ylist := l4 fun k => lin h [(wT 1, gT th k), (wT 1, const (-gi Bl.th0 k, 0))] with hyl
  have hyk : ∀ k : Fin 4, (gT ylist k).Has u (((θ' - th0R Bl) k : ℝ) : ℂ) := fun k => by
    rw [hyl, gT_l4 _ k.2]
    have H := has_lin hu (hasAll_list (p := (wT 1, gT th k)) (q := (wT 1, const (-gi Bl.th0 k, 0)))
      (hth k) (has_const _ u))
    convert H using 1
    simp only [valS, cz_wT, cz_real, Pi.sub_apply, th0R, rq]; push_cast; ring
  have e : gT (vG h th G Bl) i = lin h (l4 fun k => ((gi G (4 * i + k), 0), gT ylist k)) := by
    rw [vG, gT_l4 _ i.2]
  rw [e]
  have H := has_lin hu (hasAll_l4 (g := fun k => ((gi G (4 * i + k), 0), gT ylist k))
    (x := fun k => if hk : k < 4 then (((θ' - th0R Bl) ⟨k, hk⟩ : ℝ) : ℂ) else 0) (fun k hk => by
      simp only [dif_pos hk]; exact hyk ⟨k, hk⟩))
  convert H using 1
  rw [valS_l4]
  simp only [Fin.is_lt, ↓reduceDIte, Fin.eta, cz_real, Matrix.mulVec, dotProduct, Gmat, rq]
  push_cast
  rfl

/-- `v = v⁰ + 2π G N` on a sub-box. -/
lemma has_vS {h : List ℕ} {v : Fin 4 → ℝ} (hv : InBox h v) {v0 : List CT} {w : Fin 4 → ℝ}
    (hv0 : ∀ i : Fin 4, (gT v0 i).Has v (w i : ℂ)) (G N : List ℤ) (i : Fin 4) :
    (gT (vS h v0 G N) i).Has v (((w + Gmat G *ᵥ ((2 * Real.pi) • fun k : Fin 4 => (gi N k : ℝ))) i : ℝ) : ℂ) := by
  rw [vS, gT_l4 _ i.2]
  have H := has_lin hv (hasAll_list (p := (wT 1, gT v0 i))
    (q := (((l4 fun k => gi G (4 * i + k) * gi N k).sum, 0), addRho (const (1 * twoPiZ - 0, 0)) (2 * (1 : ℤ).natAbs)))
    (hv0 i) (has_twoPi v))
  convert H using 1
  simp only [valS, cz_wT, cz_real, Pi.add_apply, Matrix.mulVec, dotProduct, Gmat, rq, Pi.smul_apply, smul_eq_mul,
    l4_sum]
  push_cast
  simp only [Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two, show ((3 : Fin 4) : ℕ) = 3 from rfl]
  ring

/-- **The ellipsoid** on a sub-box. -/
theorem ellS_sound {h : List ℕ} {v : Fin 4 → ℝ} (hv : InBox h v) {v0 : List CT} {G N : List ℤ} {θ' : Fin 4 → ℝ}
    {Bl : BallD} (hv0 : ∀ i : Fin 4, (gT v0 i).Has v ((Gmat G *ᵥ (θ' - th0R Bl)) i : ℂ)) {m qg rl : ℕ}
    (hb : bound4OK h m (vS h v0 G N) = true) (hq1 : qg < 2 ^ pp) (hqok : qOK G Bl.Mth qg = true)
    (hmr : m * 2 ^ pp < (2 ^ pp - qg) * rl) (hM : IsUnit (MthR Bl).det) :
    ∃ w', wnorm w' < rn rl ∧ MthR Bl *ᵥ w' = θ' + (2 * Real.pi) • (fun k : Fin 4 => (gi N k : ℝ)) - th0R Bl := by
  set y : Fin 4 → ℝ := θ' + (2 * Real.pi) • (fun k : Fin 4 => (gi N k : ℝ)) - th0R Bl
  have hvk : ∀ i : Fin 4, (gT (vS h v0 G N) i).Has v ((Gmat G *ᵥ y) i : ℂ) := fun i => by
    have H := has_vS hv hv0 G N i
    convert H using 3
    simp only [y, Matrix.mulVec_add, Matrix.mulVec_sub, Pi.add_apply, Pi.sub_apply]
    ring
  exact ellipsoid hM (rn_nonneg _) (by rw [MthR_eq]; exact qOK_sound hqok) (rn_lt_one hq1)
    (wnorm_le_of_bound4 hv hvk hb) (rn_m_lt hq1 hmr)

/-! ### The record target -/

lemma gS_mem {sgns : List SgnD} {i : ℕ} (h : i < sgns.length) : gS sgns i ∈ sgns := by
  unfold gS; rw [List.getD_eq_getElem _ _ h]; exact List.getElem_mem h

lemma gE_mem {egs : List EllG} {i : ℕ} (h : i < egs.length) : gE egs i ∈ egs := by
  unfold gE; rw [List.getD_eq_getElem _ _ h]; exact List.getElem_mem h

lemma gLT_vGL (R : RecP) (D : TubeD) (sgns : List SgnD) {egs : List EllG} {i : ℕ} (h : i < egs.length) :
    gLT (vGL R D sgns egs) i = vG D.hb (thG D.hb (qmT R D) (gS sgns (gE egs i).sg)) (gE egs i).G (gE egs i).bl := by
  unfold gLT vGL gE
  rw [List.getD_eq_getElem _ _ (by simpa using h), List.getElem_map, List.getD_eq_getElem _ _ h]

/-- The point `η = η_c + c + v` of a sub-box. -/
def subEta (D : TubeD) (s : SubP) (v : Fin 4 → ℝ) : Fin 4 → ℝ := fun k => rq (gi D.ec k) + (rq (gi s.c k) + v k)

/-- **T1′ on a sub-box of a tube box**: for every `η` in the sub-box, every Hadamard `e^{i(P + Tη + ν)}` of record `s`
(`ν ∈ N`, `‖ν‖ ≤ n`) passes the corner test of its target group into seed ball `l`.  The links: the record's `P`,
`T`, `n` against `R`; the ball `l` against the group's `BallD` and `r_l` (the shape of `Seed.BallLink`); the corner
`(kk, σ, τ)` is the group's sign corner. -/
theorem t1p_holds {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {s : ιr}
    {R : RecP} {L : LinD} {D : TubeD} {sgns : List SgnD} {egs : List EllG} {subs : List SubP}
    (hrec : recOK R = true) (hlin : linOK R L = true) (hfull : tubeFull R L D sgns egs subs = true)
    (hP : ∀ a c, |(A s).P a c - rq (gi R.Pg (ix a c))| ≤ rn R.pe) (hT : (A s).T = Tq R) (hn : (A s).n ≤ rn R.n0)
    {sb : SubP} (hsb : sb ∈ subs) {l : σs}
    (hl : (S l).theta0 = th0R (gE egs sb.eg).bl ∧ (S l).Mth = MthR (gE egs sb.eg).bl ∧
      (S l).r = rn (gE egs sb.eg).rl ∧ (S l).o = ((gE egs sb.eg).bl.o : ℤ))
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun (gS sgns (gE egs sb.eg).sg).rows i)
    (hτ : ∀ j, τ j = permFun (gS sgns (gE egs sb.eg).sg).cols j) {kk : Fin 4}
    (hkk : (kk : ℕ) = (gS sgns (gE egs sb.eg).sg).g) {v : Fin 4 → ℝ} (hv : InBox sb.h v) :
    RecTargetHolds S A s (.t1' l kk σ τ) (subEta D sb v) := by
  have hR := recOK_sound hrec
  unfold tubeFull at hfull
  simp only [Bool.and_eq_true] at hfull
  obtain ⟨⟨⟨⟨htube, hexp⟩, hsg⟩, heg⟩, hsubs⟩ := hfull
  rw [List.all_eq_true] at hsg heg hsubs
  have hsub := hsubs sb hsb
  unfold subPOK at hsub
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hsub
  obtain ⟨⟨⟨hin, hlen⟩, hmr⟩, hbd⟩ := hsub
  set E := gE egs sb.eg
  have hE := heg E (gE_mem hlen)
  unfold egOK at hE
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hE
  obtain ⟨⟨⟨⟨hsl, -⟩, hq1⟩, hqok⟩, ho⟩ := hE
  set Sg := gS sgns E.sg
  have hSg : Sg ∈ sgns := gS_mem hsl
  set u : Fin 4 → ℝ := fun k => rq (gi sb.c k) + v k
  have hu : InBox D.hb u := boxIn_spec hin hv
  have heta : subEta D sb v = etaOf D u := rfl
  intro ν hνh hνT hν _ hH
  rw [heta, hT] at hH ⊢
  rw [hT] at hνT
  set Q := (A s).P + tang (Tq R) (etaOf D u) + ν
  have hw := tube_sound hR hlin htube hP hn hu hνh hνT hν hH
  have hQ := qm_has (R := R) (D := D) hw
  have hK := km_has hR hexp hu hw
  -- the signs, on the tube box
  set ol := (S l).o
  have hol : Sg.o = (ol : ℤ) := by rw [ho, hl.2.2.2]
  obtain ⟨hB, hC⟩ := sgnOK_sound hu hH hK (hsg Sg hSg) hσ hτ hkk hol
  -- the ellipsoid, on the sub-box
  have hth : ∀ k : Fin 4, (gT (thG D.hb (qmT R D) Sg) k).Has u (cornerTheta (gphase kk Q) σ τ k : ℂ) := fun k => by
    unfold thG; rw [gT_l4 _ k.2]
    exact has_thpT (T := ⟨Sg.g, Sg.rows, Sg.cols, [], [], 0, 0⟩) hu hQ hσ hτ hkk k
  have hv0 : ∀ i : Fin 4, (gT (shiftL sb.c sb.h (gLT (vGL R D sgns egs) sb.eg)) i).Has v
      ((Gmat E.G *ᵥ (cornerTheta (gphase kk Q) σ τ - th0R E.bl)) i : ℂ) := fun i => by
    rw [gLT_vGL R D sgns hlen, gT_shiftL (by simp [vG, l4])]
    exact has_shift hv (has_vG hu hth E.G E.bl i)
  have hM : IsUnit (MthR E.bl).det := by rw [← hl.2.1]; exact (S l).hMth
  obtain ⟨w', hw', hMw⟩ := ellS_sound hv hv0 hbd hq1 hqok hmr hM
  refine ⟨⟨w', ?_, ?_⟩, hB, hC⟩
  · rw [hl.2.2.1]; exact hw'
  · simp only [SeedBallCert.θ, hl.1, hl.2.1]
    have e : th0R E.bl + MthR E.bl *ᵥ w' = cornerTheta (gphase kk Q) σ τ + (2 * Real.pi) • fun k : Fin 4 => (gi sb.N k : ℝ) := by
      rw [hMw]; abel
    rw [e, seedOf_add_winding, leadingBlock_cornerMat_phaseMat]

end NoFourMUBs.KernelAtlas.Seed
