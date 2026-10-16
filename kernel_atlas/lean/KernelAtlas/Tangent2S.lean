import KernelAtlas.Tangent2K

/-!
# The sharper tangent test (v2): soundness of the kernel checker

`tang2B_sound`: a bin accepted by the hinted v2 test (`Tangent2K.lean`) is rejected (`LeafRej`) for every admissible
`δ` of the exact frame, through `lin2_real` / `scal2_real` (`Tangent2.lean`).  `binH_sound`, `subH_sound`: the
hinted traversal yields `Covered`, whatever the hints are.
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

/-! ### Signed pairs -/

@[simp] lemma zv_zadd (a b : ZP) : zv (zadd a b) = zv a + zv b := by
  simp only [zv, zadd, Nat.add_eq]; push_cast; ring

@[simp] lemma zv_zsub (a b : ZP) : zv (zsub a b) = zv a - zv b := by
  simp only [zv, zsub, Nat.add_eq]; push_cast; ring

@[simp] lemma zv_zmul (a b : ZP) : zv (zmul a b) = zv a * zv b := by
  simp only [zv, zmul, Nat.add_eq, Nat.mul_eq]; push_cast; ring

@[simp] lemma zv_zsc (n : ℕ) (a : ZP) : zv (zsc n a) = n * zv a := by
  simp only [zv, zsc, Nat.mul_eq]; push_cast; ring

@[simp] lemma zv_znorm (a : ZP) : zv (znorm a) = zv a := by
  unfold znorm zv
  cases h : Nat.ble a.2 a.1
  · have : a.1 < a.2 := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp only [cond_false, Nat.sub_eq]; push_cast [Nat.cast_sub this.le]; ring
  · have : a.2 ≤ a.1 := Nat.le_of_ble_eq_true h
    simp only [cond_true, Nat.sub_eq]; push_cast [Nat.cast_sub this]; ring

lemma zabs_int (a : ZP) : ((zabs a : ℕ) : ℤ) = |zv a| := by
  unfold zabs zv; rw [sqd_int]

lemma zabs_real (a : ZP) : ((zabs a : ℕ) : ℝ) = |((zv a : ℤ) : ℝ)| := by
  rw [← Int.cast_abs, ← zabs_int]; push_cast; rfl

lemma zabs_sq (a : ZP) : ((zabs a : ℕ) : ℝ) * (zabs a : ℕ) = ((zv a : ℤ) : ℝ) ^ 2 := by
  rw [zabs_real, ← sq, sq_abs]

lemma zv_sum6Z (f : I6 → ZP) : zv (sum6Z f) = ∑ i, zv (f i) := by
  simp only [sum6Z, zv_zadd, sum_I6Z]; ring

lemma sum6N_cast (f : I6 → ℕ) : ((sum6N f : ℕ) : ℝ) = ∑ i, ((f i : ℕ) : ℝ) := by
  simp only [sum6N, Nat.add_eq, sum_I6]; push_cast; ring

lemma sum5N_cast (f : I6 → ℕ) : ((sum5N f : ℕ) : ℝ) = ∑ j ∈ Finset.univ.erase j0, ((f j : ℕ) : ℝ) := by
  rw [Finset.sum_erase_eq_sub (Finset.mem_univ _), sum_I6]
  simp only [sum5N, Nat.add_eq, j0]; push_cast; ring

lemma sum4N_cast (f : ℕ → ℕ) : ((sum4N f : ℕ) : ℝ) = ∑ k : Fin 4, ((f k : ℕ) : ℝ) := by
  simp only [sum4N, Nat.add_eq, Fin.sum_univ_four]; push_cast; rfl

lemma le_max6N (f : I6 → ℕ) (i : I6) : f i ≤ max6N f := by
  unfold max6N
  have m1 := mx_ge (mx (mx (mx (mx (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))) (f (.inr 2))
  have m2 := mx_ge (mx (mx (mx (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))
  have m3 := mx_ge (mx (mx (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))
  have m4 := mx_ge (mx (f (.inl 0)) (f (.inl 1))) (f (.inl 2))
  have m5 := mx_ge (f (.inl 0)) (f (.inl 1))
  rcases i with i | i <;> fin_cases i <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] <;> omega

lemma all6_spec {f : I6 → Bool} (h : all6 f = true) (i : I6) : f i = true := by
  unfold all6 at h; simp only [Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩, h5⟩ := h
  rcases i with i | i <;> fin_cases i <;> assumption

lemma mn_real (a b : ℕ) : ((mn a b : ℕ) : ℝ) = min (a : ℝ) b := by
  rw [mn_eq]; push_cast; rfl

/-! ### The per-bin data as real numbers -/

section bin

variable (c : Cfg) (t : T2Cfg) (acc : V12) (row : Rows)

/-- The column sums are the sums of the rows. -/
def SumRows : Prop :=
  ∀ i, (acc.re i : ℤ) = ∑ j, ((row j).re i : ℤ) ∧ (acc.im i : ℤ) = ∑ j, ((row j).im i : ℤ)

lemma JtZ_val (i j : I6) :
    ((zv (JtZ c acc row i j) : ℤ) : ℝ) = (star (cval (6 * c.boff) acc i) * cval c.boff (row j) i).im := by
  simp only [JtZ, sZ, wZ, zv_znorm, zv_zsub, zv_zmul]
  simp only [zv, cval, Nat.mul_eq]
  rw [im_star_mul]; push_cast; ring

lemma RtZ_val (i j : I6) :
    ((zv (RtZ c acc row i j) : ℤ) : ℝ) = (star (cval (6 * c.boff) acc i) * cval c.boff (row j) i).re := by
  simp only [RtZ, sZ, wZ, zv_znorm, zv_zadd, zv_zmul]
  simp only [zv, cval, Nat.mul_eq]
  simp [Complex.mul_re]; ring

lemma sum_JtZ (h : SumRows acc row) (i : I6) : ∑ j, zv (JtZ c acc row i j) = 0 := by
  simp only [JtZ, sZ, wZ, zv_znorm, zv_zsub, zv_zmul]
  simp only [zv, Nat.mul_eq]
  obtain ⟨h1, h2⟩ := h i
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum, Finset.sum_sub_distrib, Finset.sum_sub_distrib,
    ← h1, ← h2]
  simp only [Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul]; push_cast; ring

lemma BtZ_val (h : SumRows acc row) (i : I6) (k : ℕ) :
    zv (BtZ c t acc row i k) = ∑ j, ((t.tc.Tp k j i : ℤ) - t.tc.OT) * zv (JtZ c acc row i j) := by
  simp only [BtZ, zv_znorm, zv_sum6Z, zv_zsc]
  have hz := sum_JtZ c acc row h i
  have e : ∑ j, ((t.tc.Tp k j i : ℤ) - t.tc.OT) * zv (JtZ c acc row i j) =
      ∑ j, (t.tc.Tp k j i : ℤ) * zv (JtZ c acc row i j) - t.tc.OT * ∑ j, zv (JtZ c acc row i j) := by
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => by ring
  rw [e, hz]; ring

lemma NN_val (i : I6) : ((NN c acc i : ℕ) : ℝ) = ‖cval (6 * c.boff) acc i‖ ^ 2 := by
  rw [NN, Nat.mul_eq, norm_sq_cval]

end bin

/-! ### The quantities of `lin2B`, named -/

section named

variable (c : Cfg) (t : T2Cfg) (acc : V12) (row : Rows) (h : ℕ)

def GJf (j : I6) : ZP := sum6Z fun i => zmul (yZ h i) (JtZ c acc row i j)
def GRf (j : I6) : ZP := sum6Z fun i => zmul (yZ h i) (RtZ c acc row i j)
def Bkf (k : ℕ) : ZP := sum6Z fun i => zmul (yZ h i) (BtZ c t acc row i k)
def SJf : ℕ := sum5N fun j => zabs (GJf c acc row h j)
def UXf : ℕ := sum4N fun k => Nat.mul (zabs (Bkf c t acc row h k)) (zabs (Bkf c t acc row h k))
def GXf : ℕ := max6N fun j => Nat.add (Nat.mul (zabs (GRf c acc row h j)) (zabs (GRf c acc row h j)))
  (Nat.mul (zabs (GJf c acc row h j)) (zabs (GJf c acc row h j)))
def NXf : ℕ := sum6N fun i => Nat.mul (Nat.mul (ymag h i) (ymag h i))
  (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j)))
def Spf (i : I6) : ℕ := Nat.add (SqN c acc i) t.eZ
def SXf : ℕ := sum6N fun i => Nat.mul (Nat.mul (ymag h i) (ymag h i)) (Nat.mul (Spf c t acc i) (Spf c t acc i))
def SY1f : ℕ := sum6N fun i => Nat.mul (ymag h i) (Spf c t acc i)
def SYinff : ℕ := max6N fun i => Nat.mul (ymag h i) (Spf c t acc i)
def Y1f : ℕ := sum6N (ymag h)
def Yinff : ℕ := max6N (ymag h)
def Ctf : ℕ := zabs (sum6Z fun i => zmul (yZ h i) (NN c acc i, c.six))

/-- What `lin2B = true` says. -/
lemma lin2B_spec {d : ℕ} (hb : lin2B c t d h acc row = true) :
    (∀ i, NN c acc i ≤ SqN c acc i * SqN c acc i) ∧
    UXf c t acc row h ≤ isqU (UXf c t acc row h) * isqU (UXf c t acc row h) ∧
    NXf c acc row h ≤ isqU (NXf c acc row h) * isqU (NXf c acc row h) ∧
    GXf c acc row h ≤ isqU (GXf c acc row h) * isqU (GXf c acc row h) ∧
    SXf c t acc h ≤ isqU (SXf c t acc h) * isqU (SXf c t acc h) ∧
    t.ke * Y1f h < Ctf c acc h ∧
    (t.lv d).kV * SJf c acc row h + (t.lv d).kU * isqU (UXf c t acc row h) + (t.lv d).kN * isqU (NXf c acc row h) +
      min ((t.lv d).kA * Yinff h) ((t.lv d).kB * Y1f h) +
      min ((t.lv d).kG * isqU (GXf c acc row h)) ((t.lv d).kP * isqU (SXf c t acc h)) +
      min ((t.lv d).kC1 * isqU (SXf c t acc h)) ((t.lv d).kC2 * SY1f c t acc h) +
      min ((t.lv d).kD1 * SYinff c t acc h) ((t.lv d).kD2 * SY1f c t acc h) + (t.lv d).k1 * Y1f h <
      (Ctf c acc h - t.ke * Y1f h) * 2 ^ t.g := by
  have hb' : (all6 (fun i => Nat.ble (NN c acc i) (Nat.mul (SqN c acc i) (SqN c acc i))) &&
      (Nat.ble (UXf c t acc row h) (Nat.mul (isqU (UXf c t acc row h)) (isqU (UXf c t acc row h))) &&
      (Nat.ble (NXf c acc row h) (Nat.mul (isqU (NXf c acc row h)) (isqU (NXf c acc row h))) &&
      (Nat.ble (GXf c acc row h) (Nat.mul (isqU (GXf c acc row h)) (isqU (GXf c acc row h))) &&
      (Nat.ble (SXf c t acc h) (Nat.mul (isqU (SXf c t acc h)) (isqU (SXf c t acc h))) &&
      (Nat.blt (Nat.mul t.ke (Y1f h)) (Ctf c acc h) &&
      Nat.blt (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add
        (Nat.mul (t.lv d).kV (SJf c acc row h)) (Nat.mul (t.lv d).kU (isqU (UXf c t acc row h))))
        (Nat.mul (t.lv d).kN (isqU (NXf c acc row h)))) (mn (Nat.mul (t.lv d).kA (Yinff h)) (Nat.mul (t.lv d).kB (Y1f h))))
        (mn (Nat.mul (t.lv d).kG (isqU (GXf c acc row h))) (Nat.mul (t.lv d).kP (isqU (SXf c t acc h)))))
        (mn (Nat.mul (t.lv d).kC1 (isqU (SXf c t acc h))) (Nat.mul (t.lv d).kC2 (SY1f c t acc h))))
        (mn (Nat.mul (t.lv d).kD1 (SYinff c t acc h)) (Nat.mul (t.lv d).kD2 (SY1f c t acc h))))
        (Nat.mul (t.lv d).k1 (Y1f h)))
        (Nat.shiftLeft (Nat.sub (Ctf c acc h) (Nat.mul t.ke (Y1f h))) t.g))))))) = true := hb
  simp only [Bool.and_eq_true, Nat.ble_eq, Nat.blt_eq] at hb'
  obtain ⟨ha, h1, h2, h3, h4, h5, h6⟩ := hb'
  refine ⟨fun i => by have := all6_spec ha i; simpa using this, h1, h2, h3, h4, h5, ?_⟩
  simp only [Nat.add_eq, Nat.mul_eq, Nat.sub_eq, mn_eq] at h6
  rw [show ∀ x g : ℕ, Nat.shiftLeft x g = x <<< g from fun _ _ => rfl, Nat.shiftLeft_eq] at h6
  exact h6

end named

/-! ### The rational side conditions (decided once per Record) -/

/-- The coefficients of depth `d` dominate the rational bounds of `lin2_real` and `scal2_real`. -/
def T2LevelOK (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) (d : ℕ) : Prop :=
  let a := ahalf d
  let G := (2 : ℚ) ^ t.g
  let eW := (6 + pq.E) * pq.eps1 + pq.E
  let Xb := pq.x29hi * a
  let l := t.lv d
  let sc := t.sc d
  4 * pq.pihi * a * G ≤ (l.kV : ℚ) ∧ 4 * pq.pihi * tq.rHbar * G / tq.DT ≤ (l.kU : ℚ) ∧
  4 * pq.pihi * tq.nbar * G ≤ (l.kN : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (pq.Kbar * Xb + pq.rFbar) ^ 2 * G ≤ (l.kA : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (pq.Kbar * Xb + pq.rbar) ^ 2 * G ≤ (l.kB : ℚ) ∧
  4 * pq.pihi ^ 2 * Xb ^ 2 * G ≤ (l.kG : ℚ) ∧
  4 * pq.s6hi * pq.pihi ^ 2 * c.Z * pq.Kbar * (3 / 2 * a) * Xb * G ≤ (l.kP : ℚ) ∧
  8 * pq.pihi ^ 2 * c.Z * Xb * pq.rFbar * G ≤ (l.kC1 : ℚ) ∧ 8 * pq.pihi ^ 2 * c.Z * Xb * pq.rbar * G ≤ (l.kC2 : ℚ) ∧
  4 * pq.pihi ^ 2 * c.Z * pq.rFbar ^ 2 * G ≤ (l.kD1 : ℚ) ∧ 4 * pq.pihi ^ 2 * c.Z * pq.rbar ^ 2 * G ≤ (l.kD2 : ℚ) ∧
  (20 * pq.pihi * a + 8 * pq.pihi * tq.rHbar * tq.tcol + 4 * pq.s6hi * pq.pihi * tq.nbar + 4 * pq.pihi ^ 2 * Xb ^ 2) *
    eW * c.Z ^ 2 * G ≤ (l.k1 : ℚ) ∧
  4 * pq.pihi * a * G ≤ (sc.sV : ℚ) ∧ 4 * pq.pihi * pq.rbar * G ≤ (sc.sR : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (pq.Kbar * Xb + pq.rbar) ^ 2 * G ≤ (sc.sA1 : ℚ) ∧
  4 * pq.s6hi * pq.pihi ^ 2 * c.Z * (pq.Kbar * (3 / 2 * a) * Xb + (2 * Xb * pq.rbar + pq.rbar ^ 2) * pq.i6hi) * G ≤
    (sc.sB1 : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (5 * a * pq.i6hi + pq.rbar) ^ 2 * G ≤ (sc.sA2 : ℚ) ∧
  4 * pq.s6hi * pq.pihi ^ 2 * c.Z * ((Xb + pq.rbar) ^ 2 * pq.i6hi) * G ≤ (sc.sB2 : ℚ) ∧
  (20 * pq.pihi * a + 4 * pq.s6hi * pq.pihi * pq.rbar) * eW * c.Z ^ 2 * G ≤ (sc.s1 : ℚ)

def T2ParOK (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) : Prop :=
  pq.E * (12 + pq.E) * c.Z ^ 2 ≤ (t.ke : ℚ) ∧ pq.E * c.Z ≤ (t.eZ : ℚ) ∧ 0 < tq.DT ∧ 0 ≤ tq.rHbar ∧ 0 ≤ tq.nbar ∧
  (allNat 4 fun k => allI6 fun i =>
    decide (sum6Q (fun j => |(t.tc.Tp k j i : ℚ) - t.tc.OT|) ≤ tq.tcol * tq.DT)) = true ∧
  T2LevelOK c pq t tq 0 ∧ T2LevelOK c pq t tq 1 ∧ T2LevelOK c pq t tq 2 ∧ T2LevelOK c pq t tq 3

instance (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) (d : ℕ) : Decidable (T2LevelOK c pq t tq d) := by
  unfold T2LevelOK; infer_instance

instance (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) : Decidable (T2ParOK c pq t tq) := by
  unfold T2ParOK; infer_instance

/-! ### Soundness of the linear test -/

lemma le_of_sq_le_sq' {x y : ℝ} (hy : 0 ≤ y) (h : x ^ 2 ≤ y ^ 2) : x ≤ y := by
  by_contra hc; push_neg at hc; nlinarith

lemma norm_le_of_re_im {z : ℂ} {s : ℝ} (hs : 0 ≤ s) (h : z.re ^ 2 + z.im ^ 2 ≤ s ^ 2) : ‖z‖ ≤ s := by
  refine le_of_sq_le_sq' hs ?_
  rw [Complex.sq_norm, Complex.normSq_apply]; nlinarith

lemma isqU_real {X : ℕ} (h : X ≤ isqU X * isqU X) : (X : ℝ) ≤ ((isqU X : ℕ) : ℝ) ^ 2 := by
  rw [sq]; exact_mod_cast h

set_option maxHeartbeats 4000000 in
/-- **Soundness of the linear test**: a bin accepted by `lin2B` (any hint) is rejected for every admissible `δ` of
the exact frame `Tmat`. -/
theorem lin2B_sound {P : RMat6} {u : I6 → ℝ} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) {d : ℕ} (hd : d ≤ 3) {h : ℕ} {acc : V12} {row : Rows} (hsum : SumRows acc row)
    (hw : ∀ j i, ‖cval c.boff (row j) i / ((c.Z : ℝ) : ℂ) - wexp P u j i‖ ≤ pq.eps1)
    (hs : ∀ i, ‖cval (6 * c.boff) acc i / ((c.Z : ℝ) : ℂ) - sigma P u i‖ ≤ pq.E)
    (hb : lin2B c t d h acc row = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u ((2 : ℝ) ^ d / 192) := by
  obtain ⟨hsq, hU, hN, hG, hS, hC0, hfin⟩ := lin2B_spec c t acc row h hb
  have F := realFacts hp
  obtain ⟨hke, heZ, hDT, -, -, htcolB, hL0, hL1, hL2, hL3⟩ := ht
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, he0, -, hZpos, hsixZ, -⟩ := hp
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have he0r : (0 : ℝ) ≤ pq.eps1 := by exact_mod_cast he0
  set s : I6 → ℂ := fun i => cval (6 * c.boff) acc i with hsdef
  set wt : I6 → I6 → ℂ := fun j i => cval c.boff (row j) i with hwtdef
  set y : I6 → ℝ := fun i => ((zv (yZ h i) : ℤ) : ℝ) with hydef
  have hya : ∀ i, |y i| = ((ymag h i : ℕ) : ℝ) := fun i => by simp only [hydef, ymag, zabs_real]
  have hy2 : ∀ i, y i ^ 2 = ((ymag h i : ℕ) : ℝ) * (ymag h i : ℕ) := fun i => by rw [← hya, ← sq, sq_abs]
  have hJ : ∀ i j, ((zv (JtZ c acc row i j) : ℤ) : ℝ) = (star (s i) * wt j i).im := fun i j => JtZ_val c acc row i j
  have hR : ∀ i j, ((zv (RtZ c acc row i j) : ℤ) : ℝ) = (star (s i) * wt j i).re := fun i j => RtZ_val c acc row i j
  have hDTr : (0 : ℝ) < tq.DT := by exact_mod_cast hDT
  have htcol : ∀ (k : Fin 4) i, ∑ j, |(((t.tc.Tp k j i : ℤ) - t.tc.OT : ℤ) : ℝ)| ≤ (tq.tcol : ℝ) * tq.DT := by
    intro k i
    have := of_decide_eq_true (allI6_spec (allNat_spec htcolB k.val k.isLt) i)
    unfold sum6Q at this
    have h' := (Rat.cast_le (K := ℝ)).mpr this
    push_cast at h'
    rw [sum_I6]; push_cast; linarith
  have hlev : T2LevelOK c pq t tq d := by interval_cases d <;> assumption
  simp only [T2LevelOK] at hlev
  obtain ⟨lV, lU, lN, lA, lB, lG, lP, lC1, lC2, lD1, lD2, l1, -⟩ := hlev
  have ahr : ((ahalf d : ℚ) : ℝ) = (2 : ℝ) ^ d / 192 := by unfold ahalf; push_cast; ring
  have cq : ∀ {x y : ℚ}, x ≤ y → (x : ℝ) ≤ y := fun h => by exact_mod_cast h
  -- the casts of the integer quantities
  have eSJ : ((SJf c acc row h : ℕ) : ℝ) = ∑ j ∈ Finset.univ.erase j0, |∑ i, y i * (star (s i) * wt j i).im| := by
    rw [SJf, sum5N_cast]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [zabs_real]; congr 1
    simp only [GJf, zv_sum6Z, zv_zmul]; push_cast
    exact Finset.sum_congr rfl fun i _ => by rw [hJ]
  have eUX : ((UXf c t acc row h : ℕ) : ℝ) =
      ∑ k : Fin 4, (∑ i, y i * ∑ j, (((t.tc.Tp k j i : ℤ) - t.tc.OT : ℤ) : ℝ) * (star (s i) * wt j i).im) ^ 2 := by
    rw [UXf, sum4N_cast]
    refine Finset.sum_congr rfl fun k _ => ?_
    simp only [Nat.mul_eq]; push_cast; rw [zabs_sq]; congr 1
    simp only [Bkf, zv_sum6Z, zv_zmul, BtZ_val c t acc row hsum]; push_cast
    refine Finset.sum_congr rfl fun i _ => ?_
    congr 1; exact Finset.sum_congr rfl fun j _ => by rw [hJ]
  have eNX : ((NXf c acc row h : ℕ) : ℝ) = ∑ i, y i ^ 2 * ∑ j, (star (s i) * wt j i).im ^ 2 := by
    rw [NXf, sum6N_cast]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [Nat.mul_eq]; push_cast; rw [hy2, sum6N_cast]; congr 1
    refine Finset.sum_congr rfl fun j _ => ?_
    (try simp only [Nat.mul_eq]); push_cast; rw [zabs_sq, hJ]
  have eS : ∀ i, ‖s i‖ ≤ (SqN c acc i : ℝ) := by
    intro i
    refine le_of_sq_le_sq' (Nat.cast_nonneg _) ?_
    rw [hsdef, ← NN_val c acc i, sq]; exact_mod_cast hsq i
  have hEZ : (pq.E : ℝ) * c.Z ≤ t.eZ := by have := cq heZ; push_cast at this; exact this
  have eSp : ∀ i, ((Spf c t acc i : ℕ) : ℝ) = (SqN c acc i : ℝ) + t.eZ := fun i => by
    simp only [Spf, Nat.add_eq]; push_cast; rfl
  have eSX : ((SXf c t acc h : ℕ) : ℝ) = ∑ i, y i ^ 2 * ((Spf c t acc i : ℕ) : ℝ) ^ 2 := by
    rw [SXf, sum6N_cast]
    exact Finset.sum_congr rfl fun i _ => by simp only [Nat.mul_eq]; push_cast; rw [hy2]; ring
  have eSY1 : ((SY1f c t acc h : ℕ) : ℝ) = ∑ i, |y i| * ((Spf c t acc i : ℕ) : ℝ) := by
    rw [SY1f, sum6N_cast]
    exact Finset.sum_congr rfl fun i _ => by simp only [Nat.mul_eq]; push_cast; rw [hya]
  have eY1 : ((Y1f h : ℕ) : ℝ) = ∑ i, |y i| := by
    rw [Y1f, sum6N_cast]; exact Finset.sum_congr rfl fun i _ => (hya i).symm
  have eCt : ((Ctf c acc h : ℕ) : ℝ) = |∑ i, y i * (‖s i‖ ^ 2 - 6 * (c.Z : ℝ) ^ 2)| := by
    rw [Ctf, zabs_real]; congr 1
    simp only [zv_sum6Z, zv_zmul]; push_cast
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [zv]; push_cast
    have : (c.six : ℝ) = 6 * (c.Z : ℝ) ^ 2 := by exact_mod_cast hsixZ
    rw [this, NN_val]
    simp only [hydef, zv]; push_cast; ring
  -- the final comparison as reals
  have hfinr : ((t.lv d).kV : ℝ) * (SJf c acc row h : ℕ) + ((t.lv d).kU : ℝ) * (isqU (UXf c t acc row h) : ℕ) +
      ((t.lv d).kN : ℝ) * (isqU (NXf c acc row h) : ℕ) +
      min (((t.lv d).kA : ℝ) * (Yinff h : ℕ)) (((t.lv d).kB : ℝ) * (Y1f h : ℕ)) +
      min (((t.lv d).kG : ℝ) * (isqU (GXf c acc row h) : ℕ)) (((t.lv d).kP : ℝ) * (isqU (SXf c t acc h) : ℕ)) +
      min (((t.lv d).kC1 : ℝ) * (isqU (SXf c t acc h) : ℕ)) (((t.lv d).kC2 : ℝ) * (SY1f c t acc h : ℕ)) +
      min (((t.lv d).kD1 : ℝ) * (SYinff c t acc h : ℕ)) (((t.lv d).kD2 : ℝ) * (SY1f c t acc h : ℕ)) +
      ((t.lv d).k1 : ℝ) * (Y1f h : ℕ) <
      (((Ctf c acc h : ℕ) : ℝ) - (t.ke : ℝ) * (Y1f h : ℕ)) * (2 : ℝ) ^ t.g := by
    have := (Nat.cast_lt (α := ℝ)).mpr hfin
    rw [Nat.cast_mul, Nat.cast_sub hC0.le] at this
    push_cast at this
    exact this
  refine lin2_real (Z := (c.Z : ℝ)) (ε1 := (pq.eps1 : ℝ)) (E := (pq.E : ℝ)) (wt := wt) (s := s) hZr he0r hw hs y
    (T := Tmat t.tc tq) (Th := fun k j i => (((t.tc.Tp k j i : ℤ) - t.tc.OT : ℤ) : ℝ)) (DT := (tq.DT : ℝ))
    (tcol := (tq.tcol : ℝ)) hDTr (fun k j i => rfl) htcol
    (SJ := (SJf c acc row h : ℝ)) (Ub := (isqU (UXf c t acc row h) : ℝ)) (NJ := (isqU (NXf c acc row h) : ℝ))
    (Gb := (isqU (GXf c acc row h) : ℝ)) (SY2 := (isqU (SXf c t acc h) : ℝ)) (SY1 := (SY1f c t acc h : ℝ))
    (SYinf := (SYinff c t acc h : ℝ)) (Yinf := (Yinff h : ℝ)) (Y1 := (Y1f h : ℝ)) (Ct := (Ctf c acc h : ℝ))
    (ke := (t.ke : ℝ)) (Sp := fun i => ((Spf c t acc i : ℕ) : ℝ))
    eSJ (Nat.cast_nonneg _) (by rw [← eUX]; exact isqU_real hU) (Nat.cast_nonneg _) (by rw [← eNX]; exact isqU_real hN)
    (Nat.cast_nonneg _) ?_ ?_ (Nat.cast_nonneg _) (by rw [← eSX]; exact isqU_real hS) eSY1 ?_ ?_ eY1.symm.symm
    (le_of_eq eCt.symm.symm |>.trans le_rfl) (a := (2 : ℝ) ^ d / 192) (pihi := (pq.pihi : ℝ)) (s6hi := (pq.s6hi : ℝ))
    (x29hi := (pq.x29hi : ℝ)) (Kbar := (pq.Kbar : ℝ)) (rbar := (pq.rbar : ℝ)) (rFbar := (pq.rFbar : ℝ))
    (rHbar := (tq.rHbar : ℝ)) (nbar := (tq.nbar : ℝ)) (G2 := (2 : ℝ) ^ t.g) (by positivity) (by positivity)
    F.pi F.s6hi F.x29 ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ hfinr hK0 hK hKb hr hrF hrH hn
  · -- Gb
    intro j
    refine norm_le_of_re_im (Nat.cast_nonneg _) ?_
    have hre : (∑ i, (y i : ℂ) * (star (s i) * wt j i)).re = ((zv (GRf c acc row h j) : ℤ) : ℝ) := by
      simp only [GRf, zv_sum6Z, zv_zmul]; push_cast; rw [Complex.re_sum]
      exact Finset.sum_congr rfl fun i _ => by rw [Complex.re_ofReal_mul, hR]
    have him : (∑ i, (y i : ℂ) * (star (s i) * wt j i)).im = ((zv (GJf c acc row h j) : ℤ) : ℝ) := by
      simp only [GJf, zv_sum6Z, zv_zmul]; push_cast; rw [Complex.im_sum]
      exact Finset.sum_congr rfl fun i _ => by rw [Complex.im_ofReal_mul, hJ]
    rw [hre, him]
    have h1 : ((zv (GRf c acc row h j) : ℤ) : ℝ) ^ 2 + ((zv (GJf c acc row h j) : ℤ) : ℝ) ^ 2 ≤
        ((GXf c acc row h : ℕ) : ℝ) := by
      have := le_max6N (fun j => Nat.add (Nat.mul (zabs (GRf c acc row h j)) (zabs (GRf c acc row h j)))
        (Nat.mul (zabs (GJf c acc row h j)) (zabs (GJf c acc row h j)))) j
      have h' : ((Nat.add (Nat.mul (zabs (GRf c acc row h j)) (zabs (GRf c acc row h j)))
          (Nat.mul (zabs (GJf c acc row h j)) (zabs (GJf c acc row h j))) : ℕ) : ℝ) ≤ ((GXf c acc row h : ℕ) : ℝ) := by
        exact_mod_cast this
      simp only [Nat.add_eq, Nat.mul_eq] at h'; push_cast at h'
      rw [zabs_sq, zabs_sq] at h'; exact h'
    exact h1.trans (isqU_real hG)
  · -- Sp
    intro i; rw [eSp]; linarith [eS i]
  · -- SYinf
    intro i
    have := le_max6N (fun i => Nat.mul (ymag h i) (Spf c t acc i)) i
    have h' : ((Nat.mul (ymag h i) (Spf c t acc i) : ℕ) : ℝ) ≤ ((SYinff c t acc h : ℕ) : ℝ) := by exact_mod_cast this
    simp only [Nat.mul_eq] at h'; push_cast at h'
    rw [hya]; exact h'
  · -- Yinf
    intro i
    have := le_max6N (ymag h) i
    rw [hya]; exact_mod_cast this
  · have := cq lV; push_cast [ahr] at this; linarith
  · have := cq lU; push_cast at this; linarith
  · have := cq lN; push_cast at this; linarith
  · have := cq lA; push_cast [ahr] at this; linarith
  · have := cq lB; push_cast [ahr] at this; linarith
  · have := cq lG; push_cast [ahr] at this; linarith
  · have := cq lP; push_cast [ahr] at this; linarith
  · have := cq lC1; push_cast [ahr] at this; linarith
  · have := cq lC2; push_cast [ahr] at this; linarith
  · have := cq lD1; push_cast [ahr] at this; linarith
  · have := cq lD2; push_cast [ahr] at this; linarith
  · have := cq l1; push_cast [ahr] at this; linarith
  · have := cq hke; push_cast at this; linarith

/-! ### Soundness of the scalar test and of the hint dispatch -/

lemma scal2B_spec {c : Cfg} {t : T2Cfg} {d : ℕ} {i : I6} {acc : V12} {row : Rows}
    (hb : scal2B c t d i acc row = true) :
    NN c acc i ≤ SqN c acc i * SqN c acc i ∧
    (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j))) ≤
      isqU (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j))) *
      isqU (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j))) ∧
    t.ke < sqd c.six (NN c acc i) ∧
    (t.sc d).sV * (sum5N fun j => zabs (JtZ c acc row i j)) +
      (t.sc d).sR * isqU (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j))) +
      min ((t.sc d).sA1 + (t.sc d).sB1 * (SqN c acc i + t.eZ)) ((t.sc d).sA2 + (t.sc d).sB2 * (SqN c acc i + t.eZ)) +
      (t.sc d).s1 < (sqd c.six (NN c acc i) - t.ke) * 2 ^ t.g := by
  unfold scal2B at hb
  simp only [Bool.and_eq_true, Nat.ble_eq, Nat.blt_eq] at hb
  obtain ⟨h1, h2, h3, h4⟩ := hb
  refine ⟨by simpa using h1, by simpa using h2, h3, ?_⟩
  simp only [Nat.add_eq, Nat.mul_eq, Nat.sub_eq, mn_eq] at h4
  rw [show ∀ x g : ℕ, Nat.shiftLeft x g = x <<< g from fun _ _ => rfl, Nat.shiftLeft_eq] at h4
  exact h4

set_option maxHeartbeats 2000000 in
theorem scal2B_sound {P : RMat6} {u : I6 → ℝ} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) {d : ℕ} (hd : d ≤ 3) {i : I6} {acc : V12} {row : Rows}
    (hw : ∀ j i, ‖cval c.boff (row j) i / ((c.Z : ℝ) : ℂ) - wexp P u j i‖ ≤ pq.eps1)
    (hs : ∀ i, ‖cval (6 * c.boff) acc i / ((c.Z : ℝ) : ℂ) - sigma P u i‖ ≤ pq.E)
    (hb : scal2B c t d i acc row = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) :
    ∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u ((2 : ℝ) ^ d / 192) := by
  obtain ⟨hsq, hQ, hC0, hfin⟩ := scal2B_spec hb
  have F := realFacts hp
  obtain ⟨hke, heZ, -, -, -, -, hL0, hL1, hL2, hL3⟩ := ht
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, he0, -, hZpos, hsixZ, -⟩ := hp
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have he0r : (0 : ℝ) ≤ pq.eps1 := by exact_mod_cast he0
  have hlev : T2LevelOK c pq t tq d := by interval_cases d <;> assumption
  simp only [T2LevelOK] at hlev
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, sV, sR, sA1, sB1, sA2, sB2, s1⟩ := hlev
  have ahr : ((ahalf d : ℚ) : ℝ) = (2 : ℝ) ^ d / 192 := by unfold ahalf; push_cast; ring
  have cq : ∀ {x y : ℚ}, x ≤ y → (x : ℝ) ≤ y := fun h => by exact_mod_cast h
  set QX := sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j)) with hQXdef
  have hJ : ∀ j, ((zv (JtZ c acc row i j) : ℤ) : ℝ) = (star (cval (6 * c.boff) acc i) * cval c.boff (row j) i).im :=
    fun j => JtZ_val c acc row i j
  have eSJ : ((sum5N fun j => zabs (JtZ c acc row i j) : ℕ) : ℝ) =
      ∑ j ∈ Finset.univ.erase j0, |(star (cval (6 * c.boff) acc i) * cval c.boff (row j) i).im| := by
    rw [sum5N_cast]; exact Finset.sum_congr rfl fun j _ => by rw [zabs_real, hJ]
  have eQ : ((QX : ℕ) : ℝ) = ∑ j, (star (cval (6 * c.boff) acc i) * cval c.boff (row j) i).im ^ 2 := by
    rw [hQXdef, sum6N_cast]
    exact Finset.sum_congr rfl fun j _ => by (try simp only [Nat.mul_eq]); push_cast; rw [zabs_sq, hJ]
  have eS : ‖cval (6 * c.boff) acc i‖ ≤ (SqN c acc i : ℝ) := by
    refine le_of_sq_le_sq' (Nat.cast_nonneg _) ?_
    rw [← NN_val c acc i, sq]; exact_mod_cast hsq
  have hEZ : (pq.E : ℝ) * c.Z ≤ t.eZ := by have := cq heZ; push_cast at this; exact this
  have eCt : ((sqd c.six (NN c acc i) : ℕ) : ℝ) = |‖cval (6 * c.boff) acc i‖ ^ 2 - 6 * (c.Z : ℝ) ^ 2| := by
    rw [sqd_cast, NN_val]
    have : (c.six : ℝ) = 6 * (c.Z : ℝ) ^ 2 := by exact_mod_cast hsixZ
    rw [this]
  have hfinr : ((t.sc d).sV : ℝ) * ((sum5N fun j => zabs (JtZ c acc row i j) : ℕ) : ℝ) +
      ((t.sc d).sR : ℝ) * ((isqU QX : ℕ) : ℝ) +
      min (((t.sc d).sA1 : ℝ) + (t.sc d).sB1 * (((SqN c acc i : ℕ) : ℝ) + t.eZ))
        (((t.sc d).sA2 : ℝ) + (t.sc d).sB2 * (((SqN c acc i : ℕ) : ℝ) + t.eZ)) + ((t.sc d).s1 : ℝ) <
      (((sqd c.six (NN c acc i) : ℕ) : ℝ) - t.ke) * (2 : ℝ) ^ t.g := by
    have := (Nat.cast_lt (α := ℝ)).mpr hfin
    rw [Nat.cast_mul, Nat.cast_sub hC0.le] at this
    push_cast at this
    exact this
  refine scal2_real (Z := (c.Z : ℝ)) (ε1 := (pq.eps1 : ℝ)) (E := (pq.E : ℝ)) hZr he0r hw hs i
    (SJ := ((sum5N fun j => zabs (JtZ c acc row i j) : ℕ) : ℝ)) (NJ := ((isqU QX : ℕ) : ℝ))
    (Sp := ((SqN c acc i : ℕ) : ℝ) + t.eZ) (Ct := ((sqd c.six (NN c acc i) : ℕ) : ℝ)) (ke := (t.ke : ℝ))
    eSJ (Nat.cast_nonneg _) (by rw [← eQ]; exact isqU_real hQ) (by linarith) (le_of_eq eCt)
    (a := (2 : ℝ) ^ d / 192) (pihi := (pq.pihi : ℝ)) (s6hi := (pq.s6hi : ℝ)) (i6hi := (pq.i6hi : ℝ))
    (x29hi := (pq.x29hi : ℝ)) (Kbar := (pq.Kbar : ℝ)) (rbar := (pq.rbar : ℝ)) (G2 := (2 : ℝ) ^ t.g)
    (by positivity) (by positivity) F.pi F.s6hi F.i6 F.x29 ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ hfinr hK0 hK hKb hr
  · have := cq sV; push_cast [ahr] at this; linarith
  · have := cq sR; push_cast at this; linarith
  · have := cq sA1; push_cast [ahr] at this; linarith
  · have := cq sB1; push_cast [ahr] at this; linarith
  · have := cq sA2; push_cast [ahr] at this; linarith
  · have := cq sB2; push_cast [ahr] at this; linarith
  · have := cq s1; push_cast [ahr] at this; linarith
  · have := cq hke; push_cast at this; linarith

/-- **Soundness of the hinted v2 test.** -/
theorem tang2B_sound {P : RMat6} {u : I6 → ℝ} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) {d : ℕ} (hd : d ≤ 3) {h : ℕ} {acc : V12} {row : Rows} (hsum : SumRows acc row)
    (hw : ∀ j i, ‖cval c.boff (row j) i / ((c.Z : ℝ) : ℂ) - wexp P u j i‖ ≤ pq.eps1)
    (hs : ∀ i, ‖cval (6 * c.boff) acc i / ((c.Z : ℝ) : ℂ) - sigma P u i‖ ≤ pq.E)
    (hb : tang2B c t d h acc row = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u ((2 : ℝ) ^ d / 192) := by
  unfold tang2B at hb
  split at hb
  · split at hb
    · exact scal2B_sound hp ht hd hw hs hb hK0 hK hKb hr
    · exact absurd hb Bool.false_ne_true
  · exact lin2B_sound hp ht hd hsum hw hs hb hK0 hK hKb hr hrF hrH hn
  · exact absurd hb Bool.false_ne_true

/-! ### The hinted traversal -/

lemma bind_some {α β : Type} {x : Option α} {f : α → Option β} {y : β} (h : Option.bind x f = some y) :
    ∃ z, x = some z ∧ f z = some y := by
  cases x with
  | none => cases h
  | some z => exact ⟨z, rfl, h⟩

lemma h5H_mem {ih : BinFnH} {a4 : V12} {c1 c2 c3 c4 t5 c5 : CT} {hs hs' : List ℕ}
    (h : h5H ih a4 c1 c2 c3 c4 t5 hs = some hs') (h5 : c5 = t5.l ∨ c5 = t5.r) :
    ∃ x y, ih (a4.add c5.v) c1 c2 c3 c4 c5 x = some y := by
  obtain ⟨z, hz, hz'⟩ := bind_some h
  rcases h5 with rfl | rfl
  exacts [⟨_, _, hz⟩, ⟨_, _, hz'⟩]

lemma h4H_mem {ih : BinFnH} {a3 : V12} {c1 c2 c3 t4 t5 c4 : CT} {hs hs' : List ℕ}
    (h : h4H ih a3 c1 c2 c3 t4 t5 hs = some hs') (h4 : c4 = t4.l ∨ c4 = t4.r) :
    ∃ x y, h5H ih (a3.add c4.v) c1 c2 c3 c4 t5 x = some y := by
  obtain ⟨z, hz, hz'⟩ := bind_some h
  rcases h4 with rfl | rfl
  exacts [⟨_, _, hz⟩, ⟨_, _, hz'⟩]

lemma h3H_mem {ih : BinFnH} {a2 : V12} {c1 c2 t3 t4 t5 c3 : CT} {hs hs' : List ℕ}
    (h : h3H ih a2 c1 c2 t3 t4 t5 hs = some hs') (h3 : c3 = t3.l ∨ c3 = t3.r) :
    ∃ x y, h4H ih (a2.add c3.v) c1 c2 c3 t4 t5 x = some y := by
  obtain ⟨z, hz, hz'⟩ := bind_some h
  rcases h3 with rfl | rfl
  exacts [⟨_, _, hz⟩, ⟨_, _, hz'⟩]

lemma h2H_mem {ih : BinFnH} {a1 : V12} {c1 t2 t3 t4 t5 c2 : CT} {hs hs' : List ℕ}
    (h : h2H ih a1 c1 t2 t3 t4 t5 hs = some hs') (h2 : c2 = t2.l ∨ c2 = t2.r) :
    ∃ x y, h3H ih (a1.add c2.v) c1 c2 t3 t4 t5 x = some y := by
  obtain ⟨z, hz, hz'⟩ := bind_some h
  rcases h2 with rfl | rfl
  exacts [⟨_, _, hz⟩, ⟨_, _, hz'⟩]

lemma kidsH_mem {W0 : V12} {ih : BinFnH} {t1 t2 t3 t4 t5 c1 c2 c3 c4 c5 : CT} {hs hs' : List ℕ}
    (h : kidsH W0 ih t1 t2 t3 t4 t5 hs = some hs') (h1 : c1 = t1.l ∨ c1 = t1.r) (h2 : c2 = t2.l ∨ c2 = t2.r)
    (h3 : c3 = t3.l ∨ c3 = t3.r) (h4 : c4 = t4.l ∨ c4 = t4.r) (h5 : c5 = t5.l ∨ c5 = t5.r) :
    ∃ x y, ih (sumAcc W0 c1 c2 c3 c4 c5) c1 c2 c3 c4 c5 x = some y := by
  have hk : ∃ x y, h2H ih (W0.add c1.v) c1 t2 t3 t4 t5 x = some y := by
    obtain ⟨z, hz, hz'⟩ := bind_some h
    rcases h1 with rfl | rfl
    exacts [⟨_, _, hz⟩, ⟨_, _, hz'⟩]
  obtain ⟨x1, y1, k1⟩ := hk
  obtain ⟨x2, y2, k2⟩ := h2H_mem k1 h2
  obtain ⟨x3, y3, k3⟩ := h3H_mem k2 h3
  obtain ⟨x4, y4, k4⟩ := h4H_mem k3 h4
  exact h5H_mem k4 h5

/-- The hypotheses of `tang2B_sound` for the bin of `(t₁, …, t₅)`. -/
lemma bin_hyps {P : RMat6} {c : Cfg} {pq : ParQ} (hp : ParOK c pq)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0) {t1 t2 t3 t4 t5 : CT}
    (h1 : NodeOK P c.Z c.boff pq.eps1 m1 t1.k t1.v) (h2 : NodeOK P c.Z c.boff pq.eps1 m2 t2.k t2.v)
    (h3 : NodeOK P c.Z c.boff pq.eps1 m3 t3.k t3.v) (h4 : NodeOK P c.Z c.boff pq.eps1 m4 t4.k t4.v)
    (h5 : NodeOK P c.Z c.boff pq.eps1 m5 t5.k t5.v) :
    SumRows (sumAcc c.W0 t1 t2 t3 t4 t5) (rowv c.W0 t1 t2 t3 t4 t5) ∧
    (∀ j i, ‖cval c.boff (rowv c.W0 t1 t2 t3 t4 t5 j) i / ((c.Z : ℝ) : ℂ) -
      wexp P (uvec t1.k t2.k t3.k t4.k t5.k) j i‖ ≤ pq.eps1) ∧
    (∀ i, ‖cval (6 * c.boff) (sumAcc c.W0 t1 t2 t3 t4 t5) i / ((c.Z : ℝ) : ℂ) -
      sigma P (uvec t1.k t2.k t3.k t4.k t5.k) i‖ ≤ pq.E) := by
  have hZc : ((c.Z : ℝ) : ℂ) = ((c.Z : ℕ) : ℂ) := Complex.ofReal_natCast c.Z
  have hrowOK : ∀ j, NodeOK P c.Z c.boff pq.eps1 j (rowk t1 t2 t3 t4 t5 j) (rowv c.W0 t1 t2 t3 t4 t5 j) := by
    intro j; rcases j with j | j <;> fin_cases j
    exacts [hW, h1, h2, h3, h4, h5]
  refine ⟨fun i => acc_rows c.W0 t1 t2 t3 t4 t5 i, ?_, ?_⟩
  · intro j i
    rw [hZc]
    have := hrowOK j i
    rcases j with j | j <;> fin_cases j <;> simpa [wexp, uvec, rowk] using this
  · intro i; rw [hZc]; exact acc_err hp hW h1 h2 h3 h4 h5 i

/-- **Soundness of the hinted traversal**, for any hints. -/
theorem binH_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFn) :
    ∀ d, d ≤ 3 → ∀ t1 t2 t3 t4 t5 : CT,
      TreeOK P c.Z c.boff pq.eps1 m1 d t1 → TreeOK P c.Z c.boff pq.eps1 m2 d t2 →
      TreeOK P c.Z c.boff pq.eps1 m3 d t3 → TreeOK P c.Z c.boff pq.eps1 m4 d t4 →
      TreeOK P c.Z c.boff pq.eps1 m5 d t5 → ∀ hs hs' : List ℕ,
      binH c t leafOK d (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' →
      ∀ β, InBox β d t1 t2 t3 t4 t5 → Covered P (Tmat t.tc tq) rH n r rF c.W0 leafOK β := by
  intro d
  induction d with
  | zero =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 hs hs' h β hβ
    have h0 : baseH c t leafOK (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' := h
    obtain ⟨hsum, hw, hsE⟩ := bin_hyps hp hW h1.node h2.node h3.node h4.node h5.node
    refine ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ 0 / 192, rfl, by positivity, inBox_dist hβ, ?_⟩
    unfold baseH at h0
    cases hrej : rejectB c (c.lv 0) (sumAcc c.W0 t1 t2 t3 t4 t5)
    · rw [hrej, cond_false] at h0
      cases htan : (tang2B c t 0 (NoFourMUBs.KernelAtlas.hd hs) (sumAcc c.W0 t1 t2 t3 t4 t5) (rowv c.W0 t1 t2 t3 t4 t5) ||
          leafOK (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5)
      · rw [htan, cond_false] at h0; cases h0
      · rw [Bool.or_eq_true] at htan
        rcases htan with htan | hleaf
        · exact Or.inl (tang2B_sound hp ht (by omega) hsum hw hsE htan hK0 hK hKb hr hrF hrH hn)
        · exact Or.inr ⟨t1, t2, t3, t4, t5, rfl, by norm_num, hleaf⟩
    · exact Or.inl (rejectB_sound hp hd hsE hrej hK0 hK hKb hr hrF)
  | succ d ih =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 hs hs' h β hβ
    have h0 : stepH c t d (binH c t leafOK d) (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' := h
    obtain ⟨hsum, hw, hsE⟩ := bin_hyps hp hW h1.node h2.node h3.node h4.node h5.node
    unfold stepH at h0
    cases hrej : rejectB c (c.lv (d + 1)) (sumAcc c.W0 t1 t2 t3 t4 t5)
    · rw [hrej, cond_false] at h0
      cases htan : tang2B c t (d + 1) (NoFourMUBs.KernelAtlas.hd hs) (sumAcc c.W0 t1 t2 t3 t4 t5) (rowv c.W0 t1 t2 t3 t4 t5)
      · rw [htan, cond_false] at h0
        obtain ⟨hb0, hb1, hb2, hb3, hb4, hb5⟩ := hβ
        obtain ⟨c1, hc1, hT1, hd1⟩ := child h1 hb1
        obtain ⟨c2, hc2, hT2, hd2⟩ := child h2 hb2
        obtain ⟨c3, hc3, hT3, hd3⟩ := child h3 hb3
        obtain ⟨c4, hc4, hT4, hd4⟩ := child h4 hb4
        obtain ⟨c5, hc5, hT5, hd5⟩ := child h5 hb5
        obtain ⟨x, y, hxy⟩ := kidsH_mem h0 hc1 hc2 hc3 hc4 hc5
        exact ih (by omega) c1 c2 c3 c4 c5 hT1 hT2 hT3 hT4 hT5 x y hxy β ⟨hb0, hd1, hd2, hd3, hd4, hd5⟩
      · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
          Or.inl (tang2B_sound hp ht hd hsum hw hsE htan hK0 hK hKb hr hrF hrH hn)⟩
    · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
        Or.inl (rejectB_sound hp hd hsE hrej hK0 hK hKb hr hrF)⟩

lemma allH_mem {α : Type} {l : List α} {f : α → List ℕ → Option (List ℕ)} {hs hs' : List ℕ}
    (h : allH l f hs = some hs') : ∀ a ∈ l, ∃ x y, f a x = some y := by
  induction l generalizing hs with
  | nil => intro a ha; cases ha
  | cons b bs ihl =>
    have h' : Option.bind (f b hs) (allH bs f) = some hs' := h
    obtain ⟨z, hz, hz'⟩ := bind_some h'
    intro a ha
    rcases List.mem_cons.mp ha with rfl | ha
    · exact ⟨_, _, hz⟩
    · exact ihl hz' a ha

/-- **One sub-slab with its hints.** -/
theorem subH_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFn) {c1 c2 : CT} {L3 L4 L5 : List CT} {hs : List ℕ}
    (hT1 : TreeOK P c.Z c.boff pq.eps1 m1 3 c1) (hT2 : TreeOK P c.Z c.boff pq.eps1 m2 3 c2)
    (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : subH c t leafOK c1 c2 L3 L4 L5 hs = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → |β m1 - c1.k / 192| ≤ 2 ^ 3 / 192 → |β m2 - c2.k / 192| ≤ 2 ^ 3 / 192 →
      (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P (Tmat t.tc tq) rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ1 hβ2 hβ
  obtain ⟨c3, hc3, hd3⟩ := roots_cover hR3 (hβ m3).1 (hβ m3).2
  obtain ⟨c4, hc4, hd4⟩ := roots_cover hR4 (hβ m4).1 (hβ m4).2
  obtain ⟨c5, hc5, hd5⟩ := roots_cover hR5 (hβ m5).1 (hβ m5).2
  have hs1 : ∃ y, top3H c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs = some y := by
    unfold subH at h
    cases hq : top3H c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs with
    | none => rw [hq] at h; cases h
    | some y => exact ⟨y, rfl⟩
  obtain ⟨y0, hy0⟩ := hs1
  obtain ⟨x3, y3, g3⟩ := allH_mem hy0 c3 hc3
  obtain ⟨x4, y4, g4⟩ := allH_mem g3 c4 hc4
  obtain ⟨x5, y5, g5⟩ := allH_mem g4 c5 hc5
  exact binH_sound hp ht hW hK0 hK hKb hr hrF hrH hn leafOK 3 le_rfl c1 c2 c3 c4 c5 hT1 hT2 (hT3 c3 hc3)
    (hT4 c4 hc4) (hT5 c5 hc5) x5 y5 g5 β ⟨hβ0, hβ1, hβ2, hd3, hd4, hd5⟩

/-- **The whole bin tree with the v2 test**, from one hinted check per sub-slab. -/
theorem topH_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFn) {L1 L2 L3 L4 L5 : List CT}
    (hT1 : ∀ t ∈ L1, TreeOK P c.Z c.boff pq.eps1 m1 3 t) (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t)
    (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR1 : RootsK L1) (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : ∀ c1 ∈ L1, ∀ c2 ∈ L2, ∃ hs, subH c t leafOK c1 c2 L3 L4 L5 hs = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P (Tmat t.tc tq) rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ
  obtain ⟨c1, hc1, hd1⟩ := roots_cover hR1 (hβ m1).1 (hβ m1).2
  obtain ⟨c2, hc2, hd2⟩ := roots_cover hR2 (hβ m2).1 (hβ m2).2
  obtain ⟨hs, hsub⟩ := h c1 hc1 c2 hc2
  exact subH_sound hp ht hW hK0 hK hKb hr hrF hrH hn leafOK (hT1 c1 hc1) (hT2 c2 hc2) hT3 hT4 hT5 hR3 hR4 hR5 hsub
    β hβ0 hd1 hd2 hβ

end NoFourMUBs.KernelAtlas
