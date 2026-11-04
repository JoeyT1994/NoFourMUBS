import KernelAtlas.Joint2
import KernelAtlas.Joint2K

/-!
# The joint edge test in the kernel: soundness

`jointOB_sound` / `jointUB_sound`: a pair accepted by the joint checker (`Joint2K.lean`, any hint) is excluded
(`EdgeOExcl` / `EdgeUExcl`) for every admissible `δ`, through `jointO_excl` / `jointU_excl` (`Joint2.lean`).
`stageCK2`: the Stage C certificate from the v2 bin cover, `edgesOK2` and `noTwo`.
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### Table facts and label centres -/

lemma tabB_facts {tb : Tab} {c : Cfg} {pq : ParQ} {L1 L2 L3 L4 L5 : List CT}
    (h : tabB tb c pq L1 L2 L3 L4 L5 = true) :
    c.Z = 2 ^ tb.p ∧ 1 ≤ tb.p ∧ (0 : ℝ) ≤ tb.epsU ∧
    1 / 2 ^ tb.p + (tb.epsU : ℝ) * (1 + tb.epsP) + tb.epsP ≤ pq.eps1 ∧ euB tb = true ∧ epB tb = true := by
  unfold tabB at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hZ, hp1⟩, hU0⟩, -⟩, heps⟩, -⟩, hU⟩, hP⟩, -⟩, -⟩, -⟩, -⟩, -⟩, -⟩ := h
  refine ⟨hZ, hp1, by exact_mod_cast hU0, ?_, hU, hP⟩
  have := (Rat.cast_le (K := ℝ)).mpr heps
  push_cast at this; exact this

lemma lab_nodes {tb : Tab} {c : Cfg} {pq : ParQ} {L1 L2 L3 L4 L5 : List CT}
    (htab : tabB tb c pq L1 L2 L3 L4 L5 = true) {L : Lab} (h : labNodesB tb c L = true) :
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m1 (labCT tb c.boff m1 L.w1).k (labCT tb c.boff m1 L.w1).v ∧
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m2 (labCT tb c.boff m2 L.w2).k (labCT tb c.boff m2 L.w2).v ∧
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m3 (labCT tb c.boff m3 L.w3).k (labCT tb c.boff m3 L.w3).v ∧
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m4 (labCT tb c.boff m4 L.w4).k (labCT tb c.boff m4 L.w4).v ∧
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m5 (labCT tb c.boff m5 L.w5).k (labCT tb c.boff m5 L.w5).v := by
  obtain ⟨hZ, hp1, hU0, heps, hU, hP⟩ := tabB_facts htab
  unfold labNodesB at h
  simp only [Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
  exact ⟨nodeB_spec hZ hp1 hU0 heps hU hP h1, nodeB_spec hZ hp1 hU0 heps hU hP h2, nodeB_spec hZ hp1 hU0 heps hU hP h3,
    nodeB_spec hZ hp1 hU0 heps hU hP h4, nodeB_spec hZ hp1 hU0 heps hU hP h5⟩

lemma lab_v (tb : Tab) (c : Cfg) (L : Lab) :
    uvec (labCT tb c.boff m1 L.w1).k (labCT tb c.boff m2 L.w2).k (labCT tb c.boff m3 L.w3).k
      (labCT tb c.boff m4 L.w4).k (labCT tb c.boff m5 L.w5).k = L.v := rfl

/-! ### One label: the integer bounds -/

set_option maxHeartbeats 8000000 in
theorem lab_int {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {tb : Tab} {L1 L2 L3 L4 L5 : List CT}
    (hp : ParOK c pq) (ht : T2ParOK c pq t tq) (htab : tabB tb c pq L1 L2 L3 L4 L5 = true) {L : Lab}
    (hnodes : labNodesB tb c L = true) {y : I6 → ZP} (hok : lOK c t (lacc tb c L) (lrow tb c L) y = true) :
    LabBounds (Pmat tb.pq) L.v (fun i => ((zv (y i) : ℤ) : ℝ)) (Tmat t.tc tq) (c.Z : ℝ)
      ((6 + (pq.E : ℝ)) * pq.eps1 + pq.E) ((pq.E : ℝ) * (12 + pq.E))
      (fun j => ((zv (lGJ c (lacc tb c L) (lrow tb c L) y j) : ℤ) : ℝ))
      (fun k => ((zv (lBk c t (lacc tb c L) (lrow tb c L) y k) : ℤ) : ℝ))
      ((lC c (lacc tb c L) y : ℤ) : ℝ) ((isqU (lGX c (lacc tb c L) (lrow tb c L) y) : ℕ) : ℝ) ((lY1 y : ℕ) : ℝ)
      ((lYinf y : ℕ) : ℝ) ((isqU (lSX c t (lacc tb c L) y) : ℕ) : ℝ) ((lSY1 c t (lacc tb c L) y : ℕ) : ℝ)
      ((lSYinf c t (lacc tb c L) y : ℕ) : ℝ) ((isqU (lNX c (lacc tb c L) (lrow tb c L) y) : ℕ) : ℝ) ∧
    ∀ k, |Bty ((1 / (2 * Real.pi)) • Pmat tb.pq) L.v (fun i => ((zv (y i) : ℤ) : ℝ)) (Tmat t.tc tq) k +
      ((zv (lBk c t (lacc tb c L) (lrow tb c L) y k) : ℤ) : ℝ) / (6 * (tq.DT : ℝ) * (c.Z : ℝ) ^ 2)| ≤
      ((lY1 y : ℕ) : ℝ) * ((6 + (pq.E : ℝ)) * pq.eps1 + pq.E) * tq.tcol / 6 := by
  set acc := lacc tb c L with haccdef
  set row := lrow tb c L with hrowdef
  obtain ⟨hW, -⟩ := tabB_spec htab
  obtain ⟨h1, h2, h3, h4, h5⟩ := lab_nodes htab hnodes
  obtain ⟨hsum, hw, hs⟩ := bin_hyps hp hW h1 h2 h3 h4 h5
  rw [lab_v] at hw hs
  have hp' := hp
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, he0, -, hZpos, hsixZ, -⟩ := hp'
  obtain ⟨hke, heZ, hDT, -, -, htcolB, -⟩ := ht
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have he0r : (0 : ℝ) ≤ pq.eps1 := by exact_mod_cast he0
  have hDTr : (0 : ℝ) < tq.DT := by exact_mod_cast hDT
  have cq : ∀ {x y : ℚ}, x ≤ y → (x : ℝ) ≤ y := fun h => by exact_mod_cast h
  have htcol : ∀ (k : Fin 4) i, ∑ j, |(((t.tc.Tp k j i : ℤ) - t.tc.OT : ℤ) : ℝ)| ≤ (tq.tcol : ℝ) * tq.DT := by
    intro k i
    have := of_decide_eq_true (allI6_spec (allNat_spec htcolB k.val k.isLt) i)
    unfold sum6Q at this
    have h' := (Rat.cast_le (K := ℝ)).mpr this
    push_cast at h'
    rw [sum_I6]; push_cast; linarith
  unfold lOK at hok
  simp only [Bool.and_eq_true, Nat.ble_eq] at hok
  obtain ⟨⟨⟨hsq, hN⟩, hG⟩, hS⟩ := hok
  set s : I6 → ℂ := fun i => cval (6 * c.boff) acc i with hsdef
  set wt : I6 → I6 → ℂ := fun j i => cval c.boff (row j) i with hwtdef
  set yr : I6 → ℝ := fun i => ((zv (y i) : ℤ) : ℝ) with hyrdef
  have hya : ∀ i, |yr i| = ((zabs (y i) : ℕ) : ℝ) := fun i => by simp only [hyrdef, zabs_real]
  have hy2 : ∀ i, yr i ^ 2 = ((zabs (y i) : ℕ) : ℝ) * (zabs (y i) : ℕ) := fun i => by rw [← hya, ← sq, sq_abs]
  have hJ : ∀ i j, ((zv (JtZ c acc row i j) : ℤ) : ℝ) = (star (s i) * wt j i).im := fun i j => JtZ_val c acc row i j
  have hR : ∀ i j, ((zv (RtZ c acc row i j) : ℤ) : ℝ) = (star (s i) * wt j i).re := fun i j => RtZ_val c acc row i j
  have eS : ∀ i, ‖s i‖ ≤ (SqN c acc i : ℝ) := by
    intro i
    refine le_of_sq_le_sq' (Nat.cast_nonneg _) ?_
    have h1 := all6_spec hsq i
    simp only [Nat.ble_eq] at h1
    rw [hsdef, ← NN_val c acc i, sq]; exact_mod_cast h1
  have hEZ : (pq.E : ℝ) * c.Z ≤ t.eZ := by have := cq heZ; push_cast at this; exact this
  have eSp : ∀ i, ((jSp c t acc i : ℕ) : ℝ) = (SqN c acc i : ℝ) + t.eZ := fun i => by
    simp only [jSp, Nat.add_eq]; push_cast; rfl
  refine labBnd (Z := (c.Z : ℝ)) (ε1 := (pq.eps1 : ℝ)) (E := (pq.E : ℝ)) (wt := wt) (s := s) hZr he0r hw hs yr
    (T := Tmat t.tc tq) (Th := fun k j i => (((t.tc.Tp k j i : ℤ) - t.tc.OT : ℤ) : ℝ)) (DT := (tq.DT : ℝ))
    (tcol := (tq.tcol : ℝ)) hDTr (fun k j i => rfl) htcol (Sp := fun i => ((jSp c t acc i : ℕ) : ℝ))
    (Nat.cast_nonneg _) ?_ ?_ ?_ ?_ (Nat.cast_nonneg _) ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · -- NJ
    have eNX : ((lNX c acc row y : ℕ) : ℝ) = ∑ i, yr i ^ 2 * ∑ j, (star (s i) * wt j i).im ^ 2 := by
      rw [lNX, sum6N_cast]
      refine Finset.sum_congr rfl fun i _ => ?_
      simp only [Nat.mul_eq]; push_cast; rw [hy2, sum6N_cast]; congr 1
      refine Finset.sum_congr rfl fun j _ => ?_
      (try simp only [Nat.mul_eq]); push_cast; rw [zabs_sq, hJ]
    rw [← eNX]; exact isqU_real hN
  · -- Gb
    intro j
    refine norm_le_of_re_im (Nat.cast_nonneg _) ?_
    have hre : (∑ i, (yr i : ℂ) * (star (s i) * wt j i)).re = ((zv (lGR c acc row y j) : ℤ) : ℝ) := by
      simp only [lGR, zv_sum6Z, zv_zmul]; push_cast; rw [Complex.re_sum]
      exact Finset.sum_congr rfl fun i _ => by rw [Complex.re_ofReal_mul, hR]
    have him : (∑ i, (yr i : ℂ) * (star (s i) * wt j i)).im = ((zv (lGJ c acc row y j) : ℤ) : ℝ) := by
      simp only [lGJ, zv_sum6Z, zv_zmul]; push_cast; rw [Complex.im_sum]
      exact Finset.sum_congr rfl fun i _ => by rw [Complex.im_ofReal_mul, hJ]
    rw [hre, him]
    have h1 : ((zv (lGR c acc row y j) : ℤ) : ℝ) ^ 2 + ((zv (lGJ c acc row y j) : ℤ) : ℝ) ^ 2 ≤
        ((lGX c acc row y : ℕ) : ℝ) := by
      have := le_max6N (fun j => Nat.add (Nat.mul (zabs (lGR c acc row y j)) (zabs (lGR c acc row y j)))
        (Nat.mul (zabs (lGJ c acc row y j)) (zabs (lGJ c acc row y j)))) j
      have h' : ((Nat.add (Nat.mul (zabs (lGR c acc row y j)) (zabs (lGR c acc row y j)))
          (Nat.mul (zabs (lGJ c acc row y j)) (zabs (lGJ c acc row y j))) : ℕ) : ℝ) ≤ ((lGX c acc row y : ℕ) : ℝ) := by
        exact_mod_cast this
      simp only [Nat.add_eq, Nat.mul_eq] at h'; push_cast at h'
      rw [zabs_sq, zabs_sq] at h'; exact h'
    exact h1.trans (isqU_real hG)
  · -- Sp
    intro i; rw [eSp]; linarith [eS i]
  · -- SY2
    have eSX : ((lSX c t acc y : ℕ) : ℝ) = ∑ i, yr i ^ 2 * ((jSp c t acc i : ℕ) : ℝ) ^ 2 := by
      rw [lSX, sum6N_cast]
      exact Finset.sum_congr rfl fun i _ => by simp only [Nat.mul_eq]; push_cast; rw [hy2]; ring
    rw [← eSX]; exact isqU_real hS
  · -- SY1
    rw [lSY1, sum6N_cast]
    exact Finset.sum_congr rfl fun i _ => by simp only [Nat.mul_eq]; push_cast; rw [hya]
  · -- SYinf
    intro i
    have := le_max6N (fun i => Nat.mul (zabs (y i)) (jSp c t acc i)) i
    have h' : ((Nat.mul (zabs (y i)) (jSp c t acc i) : ℕ) : ℝ) ≤ ((lSYinf c t acc y : ℕ) : ℝ) := by exact_mod_cast this
    simp only [Nat.mul_eq] at h'; push_cast at h'
    rw [hya]; exact h'
  · -- Yinf
    intro i
    have := le_max6N (fun i => zabs (y i)) i
    rw [hya]; exact_mod_cast this
  · -- Y1
    rw [lY1, sum6N_cast]; exact Finset.sum_congr rfl fun i _ => (hya i).symm
  · -- GJ
    intro j
    simp only [lGJ, zv_sum6Z, zv_zmul]; push_cast
    exact Finset.sum_congr rfl fun i _ => by rw [hJ]
  · -- Bt
    intro k
    simp only [lBk, zv_sum6Z, zv_zmul, BtZ_val c t acc row hsum]; push_cast
    refine Finset.sum_congr rfl fun i _ => ?_
    congr 1; exact Finset.sum_congr rfl fun j _ => by rw [hJ]
  · -- Cl
    simp only [lC, zv_sum6Z, zv_zmul]; push_cast
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [zv]; push_cast
    have : (c.six : ℝ) = 6 * (c.Z : ℝ) ^ 2 := by exact_mod_cast hsixZ
    rw [this, NN_val]
    simp only [hyrdef, zv]; push_cast; ring

/-! ### The pair -/

lemma lab_v_lw (L : Lab) (j : I6) : L.v j = ((lw L j : ℕ) : ℝ) / 192 := by
  rcases j with j | j <;> fin_cases j <;> simp [Lab.v, uvec, lw]

lemma lw_lt {L : Lab} (h : L.w1 < 192 ∧ L.w2 < 192 ∧ L.w3 < 192 ∧ L.w4 < 192 ∧ L.w5 < 192) (j : I6) : lw L j < 192 := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := h
  rcases j with j | j <;> fin_cases j <;> simp [lw] <;> assumption

lemma pair_close {tb : Tab} (hU : euB tb = true) {A B : Lab}
    (hB : B.w1 < 192 ∧ B.w2 < 192 ∧ B.w3 < 192 ∧ B.w4 < 192 ∧ B.w5 < 192) (j : I6) :
    ‖Qe A.v B.v j - gval tb.p (pq_ tb A B j)‖ ≤ tb.epsU := by
  rw [Qe, lab_v_lw, lab_v_lw, e_dIdx (lw_lt hB j)]
  exact euB_spec hU (dIdx_lt _ _)

lemma gval_re (p : ℕ) (z : ℤ × ℤ) : (gval p z).re = (z.1 : ℝ) / 2 ^ p := by
  have : ((2 : ℂ) ^ p) = (((2 : ℝ) ^ p : ℝ) : ℂ) := by push_cast; ring
  rw [gval, this, Complex.div_ofReal_re]; simp

lemma gval_im (p : ℕ) (z : ℤ × ℤ) : (gval p z).im = (z.2 : ℝ) / 2 ^ p := by
  have : ((2 : ℂ) ^ p) = (((2 : ℝ) ^ p : ℝ) : ℂ) := by push_cast; ring
  rw [gval, this, Complex.div_ofReal_im]; simp

lemma sum_gval_re (p : ℕ) (f : I6 → ℤ × ℤ) : (∑ j, gval p (f j)).re = ((∑ j, (f j).1 : ℤ) : ℝ) / 2 ^ p := by
  rw [Complex.re_sum]; simp only [gval_re]; push_cast; rw [Finset.sum_div]

lemma sum_gval_im (p : ℕ) (f : I6 → ℤ × ℤ) : (∑ j, gval p (f j)).im = ((∑ j, (f j).2 : ℤ) : ℝ) / 2 ^ p := by
  rw [Complex.im_sum]; simp only [gval_im]; push_cast; rw [Finset.sum_div]

lemma toNat_sq_le {x : ℤ} {s : ℕ} (h0 : 0 ≤ x) (h : x ≤ (s : ℤ) ^ 2) : (x : ℝ) ≤ (s : ℝ) ^ 2 := by
  exact_mod_cast h

lemma sum_sq_nonneg' {ι : Type*} [Fintype ι] (f : ι → ℤ) : 0 ≤ ∑ i, f i ^ 2 := Finset.sum_nonneg fun i _ => sq_nonneg _

/-! ### Soundness of the joint O test -/

set_option maxHeartbeats 16000000 in
theorem jointOB_sound {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {tb : Tab} {L1 L2 L3 L4 L5 : List CT}
    (hp : ParOK c pq) (ht : T2ParOK c pq t tq) (htab : tabB tb c pq L1 L2 L3 L4 L5 = true) {A B : Lab}
    (hB : B.w1 < 192 ∧ B.w2 < 192 ∧ B.w3 < 192 ∧ B.w4 < 192 ∧ B.w5 < 192) {h : ℕ}
    (hj : jointOB tb c pq t tq A B h = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → EdgeOExcl ((1 / (2 * Real.pi)) • Pmat tb.pq) δ A.v A.s B.v B.s := by
  have F := realFacts hp
  obtain ⟨hZp, -, hU0, -, hU, -⟩ := tabB_facts htab
  have hp' := hp
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, he0, -, hZpos, -, -⟩ := hp'
  have ht' := ht
  obtain ⟨-, -, hDT, -, -, -, -⟩ := ht'
  unfold jointOB at hj
  simp only [Bool.and_eq_true, decide_eq_true_eq, Nat.ble_eq] at hj
  obtain ⟨⟨⟨⟨hc, hVA⟩, hVB⟩, hyN⟩, hfin⟩ := hj
  unfold jCommon at hc
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hc
  obtain ⟨⟨⟨⟨hnA, hnB⟩, hokA⟩, hokB⟩, hUX⟩ := hc
  obtain ⟨LA, hBa⟩ := lab_int hp ht htab hnA hokA
  obtain ⟨LB, hBb⟩ := lab_int hp ht htab hnB hokB
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have hZ2p : (c.Z : ℝ) = 2 ^ tb.p := by exact_mod_cast hZp
  have hDTr : (0 : ℝ) < tq.DT := by exact_mod_cast hDT
  have he0r : (0 : ℝ) ≤ pq.eps1 := by exact_mod_cast he0
  have heW : (0 : ℝ) ≤ (6 + (pq.E : ℝ)) * pq.eps1 + pq.E := by have := F.E0; positivity
  have heN : (0 : ℝ) ≤ (pq.E : ℝ) * (12 + pq.E) := by have := F.E0; positivity
  have htcol0 : (0 : ℝ) ≤ tq.tcol := by
    obtain ⟨-, -, -, -, -, htcolB, -⟩ := ht
    have := of_decide_eq_true (allI6_spec (allNat_spec htcolB 0 (by norm_num)) (.inl 0))
    have h0 : (0 : ℚ) ≤ sum6Q (fun j => |(t.tc.Tp 0 j (.inl 0) : ℚ) - t.tc.OT|) := by
      unfold sum6Q; positivity
    have h1 : (0 : ℚ) ≤ tq.tcol * tq.DT := h0.trans this
    have hDTq : (0 : ℚ) < tq.DT := by exact_mod_cast hDT
    have : (0 : ℚ) ≤ tq.tcol := nonneg_of_mul_nonneg_left h1 hDTq
    exact_mod_cast this
  set ye1 : ℝ := ((zv (jy h 12) : ℤ) : ℝ) with hye1
  set ye2 : ℝ := ((zv (jy h 13) : ℤ) : ℝ) with hye2
  have ha1 : |ye1| = ((zabs (jy h 12) : ℕ) : ℝ) := by rw [hye1, zabs_real]
  have ha2 : |ye2| = ((zabs (jy h 13) : ℕ) : ℝ) := by rw [hye2, zabs_real]
  set qc : I6 → ℂ := fun j => gval tb.p (pq_ tb A B j) with hqc
  have eD : ∀ j, 6 * (c.Z : ℝ) ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im) = ((jDO tb c A B h j : ℤ) : ℝ) := by
    intro j
    simp only [hqc, gval_re, gval_im, jDO, hye1, hye2]; push_cast; rw [← hZ2p]; field_simp
  have eVA : ∑ j, (-((zv (lGJ c (lacc tb c A) (lrow tb c A) (jy0 h) j) : ℤ) : ℝ) +
      6 * (c.Z : ℝ) ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im)) ^ 2 = ((jVXA tb c A h (jDO tb c A B h) : ℤ) : ℝ) := by
    simp only [jVXA, jGJA]; push_cast
    exact Finset.sum_congr rfl fun j _ => by rw [eD]
  have eVB : ∑ j, (-((zv (lGJ c (lacc tb c B) (lrow tb c B) (jy1 h) j) : ℤ) : ℝ) -
      6 * (c.Z : ℝ) ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im)) ^ 2 = ((jVXB tb c B h (jDO tb c A B h) : ℤ) : ℝ) := by
    simp only [jVXB, jGJB]; push_cast
    exact Finset.sum_congr rfl fun j _ => by rw [eD]
  have nnA : (0 : ℤ) ≤ jVXA tb c A h (jDO tb c A B h) := sum_sq_nonneg' _
  have nnB : (0 : ℤ) ≤ jVXB tb c B h (jDO tb c A B h) := sum_sq_nonneg' _
  have nnU : (0 : ℤ) ≤ jUX tb c t A B h := sum_sq_nonneg' _
  have eUX : ∑ k : Fin 4, (((zv (lBk c t (lacc tb c A) (lrow tb c A) (jy0 h) k) : ℤ) : ℝ) +
      ((zv (lBk c t (lacc tb c B) (lrow tb c B) (jy1 h) k) : ℤ) : ℝ)) ^ 2 = ((jUX tb c t A B h : ℤ) : ℝ) := by
    simp only [jUX]; push_cast; rfl
  have hsA : (0 : ℝ) ≤ A.s := by unfold Lab.s; positivity
  have hsB : (0 : ℝ) ≤ B.s := by unfold Lab.s; positivity
  have eSA : A.s = (((labS A : ℚ)) : ℝ) := by unfold Lab.s labS; push_cast; rfl
  have eSB : B.s = (((labS B : ℚ)) : ℝ) := by unfold Lab.s labS; push_cast; rfl
  -- the comparison, as reals
  have hQ1 : (∑ j, qc j).re = ((pQ tb A B).1 : ℝ) / c.Z := by
    rw [hZ2p]; simp only [hqc, pQ]; rw [sum_gval_re]
  have hQ2 : (∑ j, qc j).im = ((pQ tb A B).2 : ℝ) / c.Z := by
    rw [hZ2p]; simp only [hqc, pQ]; rw [sum_gval_im]
  have hfr := (Rat.cast_lt (K := ℝ)).mpr hfin
  unfold jRhs lEB EBqQ at hfr
  push_cast at hfr
  refine jointO_excl (P := Pmat tb.pq) (Z := (c.Z : ℝ)) (DT := (tq.DT : ℝ)) (tcol := (tq.tcol : ℝ))
    (eU := (tb.epsU : ℝ)) hZr hDTr heW heN htcol0 hU0 LA LB hBa hBb (qc := qc) (pair_close hU hB) ye1 ye2
    (VNa := ((isqU (jVXA tb c A h (jDO tb c A B h)).toNat : ℕ) : ℝ))
    (VNb := ((isqU (jVXB tb c B h (jDO tb c A B h)).toNat : ℕ) : ℝ))
    (UB := ((isqU (jUX tb c t A B h).toNat : ℕ) : ℝ))
    (yN := ((isqU (Nat.add (Nat.mul (zabs (jy h 12)) (zabs (jy h 12))) (Nat.mul (zabs (jy h 13)) (zabs (jy h 13)))) : ℕ) : ℝ))
    (Nat.cast_nonneg _) (by rw [eVA]; exact_mod_cast hVA) (Nat.cast_nonneg _) (by rw [eVB]; exact_mod_cast hVB)
    (Nat.cast_nonneg _) (by rw [eUX]; exact_mod_cast hUX) (Nat.cast_nonneg _) ?_ hsA hsB F.pi F.s6hi hK0 hK hKb hr
    hrF hrH hn (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _)
    (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _)
    (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) ?_
  · -- yN
    have h1 : ((Nat.add (Nat.mul (zabs (jy h 12)) (zabs (jy h 12))) (Nat.mul (zabs (jy h 13)) (zabs (jy h 13))) : ℕ) : ℝ) ≤
        ((isqU (Nat.add (Nat.mul (zabs (jy h 12)) (zabs (jy h 12))) (Nat.mul (zabs (jy h 13)) (zabs (jy h 13)))) : ℕ) : ℝ) ^ 2 :=
      isqU_real hyN
    simp only [Nat.add_eq, Nat.mul_eq] at h1; push_cast at h1
    rw [← ha1, ← ha2, abs_mul_abs_self, abs_mul_abs_self] at h1
    simp only [Nat.add_eq, Nat.mul_eq]
    nlinarith [h1]
  · -- the comparison
    rw [hQ1, hQ2, ha1, ha2, eSA, eSB]
    have e12 : 12 * (c.Z : ℝ) ^ 2 * (ye1 * (((pQ tb A B).1 : ℝ) / c.Z) + ye2 * (((pQ tb A B).2 : ℝ) / c.Z)) =
        12 * (c.Z : ℝ) * (ye1 * ((pQ tb A B).1 : ℝ) + ye2 * ((pQ tb A B).2 : ℝ)) := by field_simp
    rw [e12]
    unfold EBq
    simp only [hye1, hye2, labS] at hfr ⊢
    push_cast at hfr ⊢
    linarith [hfr]

/-! ### Soundness of the joint U test -/

set_option maxHeartbeats 16000000 in
theorem jointUB_sound {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {tb : Tab} {L1 L2 L3 L4 L5 : List CT}
    (hp : ParOK c pq) (ht : T2ParOK c pq t tq) (htab : tabB tb c pq L1 L2 L3 L4 L5 = true) {A B : Lab}
    (hB : B.w1 < 192 ∧ B.w2 < 192 ∧ B.w3 < 192 ∧ B.w4 < 192 ∧ B.w5 < 192) {h : ℕ}
    (hj : jointUB tb c pq t tq A B h = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → EdgeUExcl ((1 / (2 * Real.pi)) • Pmat tb.pq) δ A.v A.s B.v B.s := by
  have F := realFacts hp
  obtain ⟨hZp, -, hU0, -, hU, -⟩ := tabB_facts htab
  have hp' := hp
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, he0, -, hZpos, -, -⟩ := hp'
  have ht' := ht
  obtain ⟨-, -, hDT, -, -, -, -⟩ := ht'
  unfold jointUB at hj
  simp only [Bool.and_eq_true, decide_eq_true_eq, Nat.ble_eq] at hj
  obtain ⟨⟨⟨⟨hc, hVA⟩, hVB⟩, hyN⟩, hfin⟩ := hj
  unfold jCommon at hc
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hc
  obtain ⟨⟨⟨⟨hnA, hnB⟩, hokA⟩, hokB⟩, hUX⟩ := hc
  obtain ⟨LA, hBa⟩ := lab_int hp ht htab hnA hokA
  obtain ⟨LB, hBb⟩ := lab_int hp ht htab hnB hokB
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have hZ2p : (c.Z : ℝ) = 2 ^ tb.p := by exact_mod_cast hZp
  have hDTr : (0 : ℝ) < tq.DT := by exact_mod_cast hDT
  have he0r : (0 : ℝ) ≤ pq.eps1 := by exact_mod_cast he0
  have heW : (0 : ℝ) ≤ (6 + (pq.E : ℝ)) * pq.eps1 + pq.E := by have := F.E0; positivity
  have heN : (0 : ℝ) ≤ (pq.E : ℝ) * (12 + pq.E) := by have := F.E0; positivity
  have htcol0 : (0 : ℝ) ≤ tq.tcol := by
    obtain ⟨-, -, -, -, -, htcolB, -⟩ := ht
    have := of_decide_eq_true (allI6_spec (allNat_spec htcolB 0 (by norm_num)) (.inl 0))
    have h0 : (0 : ℚ) ≤ sum6Q (fun j => |(t.tc.Tp 0 j (.inl 0) : ℚ) - t.tc.OT|) := by
      unfold sum6Q; positivity
    have h1 : (0 : ℚ) ≤ tq.tcol * tq.DT := h0.trans this
    have hDTq : (0 : ℚ) < tq.DT := by exact_mod_cast hDT
    have : (0 : ℚ) ≤ tq.tcol := nonneg_of_mul_nonneg_left h1 hDTq
    exact_mod_cast this
  set ye : ℝ := ((zv (jy h 12) : ℤ) : ℝ) with hye
  have ha : |ye| = ((zabs (jy h 12) : ℕ) : ℝ) := by rw [hye, zabs_real]
  set qc : I6 → ℂ := fun j => gval tb.p (pq_ tb A B j) with hqc
  have hQ1 : (∑ j, qc j).re = ((pQ tb A B).1 : ℝ) / c.Z := by
    rw [hZ2p]; simp only [hqc, pQ]; rw [sum_gval_re]
  have hQ2 : (∑ j, qc j).im = ((pQ tb A B).2 : ℝ) / c.Z := by
    rw [hZ2p]; simp only [hqc, pQ]; rw [sum_gval_im]
  have eD : ∀ j, -ye * (c.Z : ℝ) ^ 2 * (star (∑ j', qc j') * qc j).im = ((jDU tb A B h j : ℤ) : ℝ) := by
    intro j
    have e1 : (star (∑ j', qc j') * qc j).im = (∑ j', qc j').re * (qc j).im - (∑ j', qc j').im * (qc j).re := by
      simp [Complex.mul_im]; ring
    rw [e1, hQ1, hQ2]
    simp only [hqc, gval_re, gval_im, jDU, hye]; push_cast; rw [← hZ2p]; field_simp
  have eVA : ∑ j, (-((zv (lGJ c (lacc tb c A) (lrow tb c A) (jy0 h) j) : ℤ) : ℝ) +
      -ye * (c.Z : ℝ) ^ 2 * (star (∑ j', qc j') * qc j).im) ^ 2 = ((jVXA tb c A h (jDU tb A B h) : ℤ) : ℝ) := by
    simp only [jVXA, jGJA]; push_cast
    exact Finset.sum_congr rfl fun j _ => by rw [eD]
  have eVB : ∑ j, (-((zv (lGJ c (lacc tb c B) (lrow tb c B) (jy1 h) j) : ℤ) : ℝ) -
      -ye * (c.Z : ℝ) ^ 2 * (star (∑ j', qc j') * qc j).im) ^ 2 = ((jVXB tb c B h (jDU tb A B h) : ℤ) : ℝ) := by
    simp only [jVXB, jGJB]; push_cast
    exact Finset.sum_congr rfl fun j _ => by rw [eD]
  have nnA : (0 : ℤ) ≤ jVXA tb c A h (jDU tb A B h) := sum_sq_nonneg' _
  have nnB : (0 : ℤ) ≤ jVXB tb c B h (jDU tb A B h) := sum_sq_nonneg' _
  have nnU : (0 : ℤ) ≤ jUX tb c t A B h := sum_sq_nonneg' _
  have eUX : ∑ k : Fin 4, (((zv (lBk c t (lacc tb c A) (lrow tb c A) (jy0 h) k) : ℤ) : ℝ) +
      ((zv (lBk c t (lacc tb c B) (lrow tb c B) (jy1 h) k) : ℤ) : ℝ)) ^ 2 = ((jUX tb c t A B h : ℤ) : ℝ) := by
    simp only [jUX]; push_cast; rfl
  have hsA : (0 : ℝ) ≤ A.s := by unfold Lab.s; positivity
  have hsB : (0 : ℝ) ≤ B.s := by unfold Lab.s; positivity
  have eSA : A.s = (((labS A : ℚ)) : ℝ) := by unfold Lab.s labS; push_cast; rfl
  have eSB : B.s = (((labS B : ℚ)) : ℝ) := by unfold Lab.s labS; push_cast; rfl
  set Q2 : ℤ := (pQ tb A B).1 ^ 2 + (pQ tb A B).2 ^ 2 with hQ2def
  have nnQ : (0 : ℤ) ≤ Q2 := by positivity
  have eQn : (c.Z : ℝ) ^ 2 * ‖∑ j, qc j‖ ^ 2 = ((Q2 : ℤ) : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply, hQ1, hQ2, hQ2def]; push_cast; field_simp
  have hQN : (c.Z : ℝ) * ‖∑ j, qc j‖ ≤ ((isqU Q2.toNat : ℕ) : ℝ) := by
    refine le_of_sq_le_sq' (Nat.cast_nonneg _) ?_
    rw [mul_pow, eQn]; exact_mod_cast hyN
  have hfr := (Rat.cast_lt (K := ℝ)).mpr hfin
  unfold jRhs lEB EBqQ at hfr
  push_cast at hfr
  refine jointU_excl (P := Pmat tb.pq) (Z := (c.Z : ℝ)) (DT := (tq.DT : ℝ)) (tcol := (tq.tcol : ℝ))
    (eU := (tb.epsU : ℝ)) hZr hDTr heW heN htcol0 hU0 LA LB hBa hBb (qc := qc) (pair_close hU hB) ye
    (VNa := ((isqU (jVXA tb c A h (jDU tb A B h)).toNat : ℕ) : ℝ))
    (VNb := ((isqU (jVXB tb c B h (jDU tb A B h)).toNat : ℕ) : ℝ))
    (UB := ((isqU (jUX tb c t A B h).toNat : ℕ) : ℝ)) (QN := ((isqU Q2.toNat : ℕ) : ℝ))
    (Nat.cast_nonneg _) (by rw [eVA]; exact_mod_cast hVA) (Nat.cast_nonneg _) (by rw [eVB]; exact_mod_cast hVB)
    (Nat.cast_nonneg _) (by rw [eUX]; exact_mod_cast hUX) hQN hsA hsB F.pi F.s6hi hK0 hK hKb hr hrF hrH hn
    (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _)
    (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _)
    (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) (Nat.cast_nonneg _) ?_
  rw [eQn, ha, eSA, eSB]
  unfold EBq
  simp only [hye, labS, hQ2def] at hfr ⊢
  push_cast at hfr ⊢
  linarith [hfr]

/-! ### Large `allNat` checks from chunks -/

lemma allNat_iff {n : ℕ} {f : ℕ → Bool} : allNat n f = true ↔ ∀ k < n, f k = true := by
  induction n with
  | zero => simp [allNat]
  | succ n ih =>
    have e : allNat (n + 1) f = (f n && allNat n f) := rfl
    rw [e, Bool.and_eq_true, ih]
    constructor
    · rintro ⟨h1, h2⟩ k hk
      rcases Nat.lt_succ_iff_lt_or_eq.mp hk with hk | rfl
      exacts [h2 k hk, h1]
    · intro h; exact ⟨h n (by omega), fun k hk => h k (by omega)⟩

/-- `allNat n f` from checks on ranges `[lo, lo + len)` that cover `[0, n)`. -/
lemma allNat_of_ranges {n : ℕ} {f : ℕ → Bool} (L : List (ℕ × ℕ))
    (hcov : allNat n (fun i => L.any fun p => decide (p.1 ≤ i ∧ i < p.1 + p.2)) = true)
    (h : ∀ p ∈ L, allNat p.2 (fun k => f (p.1 + k)) = true) : allNat n f = true := by
  rw [allNat_iff] at hcov ⊢
  intro i hi
  obtain ⟨p, hp, hpi⟩ := List.any_eq_true.mp (hcov i hi)
  simp only [decide_eq_true_eq] at hpi
  have := (allNat_iff.mp (h p hp)) (i - p.1) (by omega)
  rwa [show p.1 + (i - p.1) = i by omega] at this

/-! ### Stage C with the joint edge test -/

lemma edgesOK2_spec {tb : Tab} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {labs : List Lab} {oR uR : ℕ → ℕ}
    {HO HU : List (List ℕ)} (h : edgesOK2 tb c pq t tq labs oR uR HO HU = true) (b d : Fin labs.length) :
    ((oR b).testBit d = true ∨ edgeOB tb pq (labs.get b) (labs.get d) = true ∨
      jointOB tb c pq t tq (labs.get b) (labs.get d) (hintAt HO b d) = true) ∧
    ((uR b).testBit d = true ∨ edgeUB tb pq (labs.get b) (labs.get d) = true ∨
      jointUB tb c pq t tq (labs.get b) (labs.get d) (hintAt HU b d) = true) := by
  have h1 := allNat_spec (allNat_spec h b b.isLt) d d.isLt
  simp only [Bool.and_eq_true, Bool.or_eq_true, getD_fin] at h1
  obtain ⟨h1, h2⟩ := h1
  exact ⟨h1.elim (fun h => h.elim Or.inl (fun h => Or.inr (Or.inl h))) (fun h => Or.inr (Or.inr h)),
    h2.elim (fun h => h.elim Or.inl (fun h => Or.inr (Or.inl h))) (fun h => Or.inr (Or.inr h))⟩

/-- **Stage C from the kernel checks**, with the v2 bin cover and the joint edge test. -/
noncomputable def stageCK2 {tb : Tab} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {L1 L2 L3 L4 L5 : List CT}
    {rH n r rF : ℝ} {labs : List Lab} {oR uR : ℕ → ℕ} {HO HU : List (List ℕ)}
    (hcov : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tb.pq) (Tmat t.tc tq) rH n r rF c.W0 (leafL labs) β)
    (hp : ParOK c pq) (ht : T2ParOK c pq t tq) (htab : tabB tb c pq L1 L2 L3 L4 L5 = true)
    (hok : labsOK labs = true) (hsm : labsSmall labs = true) (hed : edgesOK2 tb c pq t tq labs oR uR HO HU = true)
    (hcl : noTwo labs.length oR uR = true)
    {K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (Tmat t.tc tq) rH n r rF :=
  have hEU : euB tb = true := tabB_euB htab
  { ι := {l : (I6 → ℝ) × ℝ // l.1 j0 = 0 ∧ 0 ≤ l.2 ∧
      ((∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • Pmat tb.pq) δ l.1 l.2) ∨
        ∃ L ∈ labs, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * l.2 ^ 2 →
          InLabel L.v L.s (fun j => e (l.1 j + x j)))}
    α := Fin labs.length
    u := fun l => l.1.1
    a := fun l => l.1.2
    v := fun b => (labs.get b).v
    s := fun b => (labs.get b).s
    O := fun b d => (oR b).testBit d = true
    U := fun b d => (uR b).testBit d = true
    hu0 := fun l => l.2.1
    htree := fun β hβ0 hβ => by
      obtain ⟨u, a, hu0, ha0, hin, hcase⟩ := hcov β hβ0 hβ
      refine ⟨⟨(u, a), hu0, ha0, ?_⟩, ha0, hin⟩
      rcases hcase with hrej | ⟨t1, t2, t3, t4, t5, rfl, rfl, hl⟩
      · exact .inl hrej
      · obtain ⟨L, hL, hx⟩ := leafL_sound hok hl
        exact .inr ⟨L, hL, fun x hx0 hx2 => hx x hx0 hx2⟩
    hleaf := fun l => by
      rcases l.2.2.2 with hrej | ⟨L, hL, hx⟩
      · exact .inl hrej
      · obtain ⟨i, rfl⟩ := List.get_of_mem hL
        exact .inr ⟨i, hx⟩
    hsmall := fun b => labsSmall_spec hsm (List.get_mem _ _)
    hO := fun b d hbd δ hδ => by
      rcases (edgesOK2_spec hed b d).1 with h | h | h
      · exact absurd h hbd
      · exact edgeOB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) h _ δ
      · exact jointOB_sound hp ht htab (labsOK_spec hok (List.get_mem _ _)) h hK0 hK hKb hr hrF hrH hn δ hδ
    hU := fun b d hbd δ hδ => by
      rcases (edgesOK2_spec hed b d).2 with h | h | h
      · exact absurd h hbd
      · exact edgeUB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) h _ δ
      · exact jointUB_sound hp ht htab (labsOK_spec hok (List.get_mem _ _)) h hK0 hK hKb hr hrF hrH hn δ hδ
    hgraph := noTwo_sound hcl }

end

end NoFourMUBs.KernelAtlas
