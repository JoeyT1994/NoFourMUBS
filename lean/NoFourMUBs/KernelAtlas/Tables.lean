import NoFourMUBs.KernelAtlas.Bins

/-!
# Verified exponential tables and coordinate trees

The node values of the bin checker (`Bins.lean`) are products of two rounded exponential tables:

* `EU[k] ≈ 2^p e(k/192)` for `k < 192`, from `cisRound` at `x̃ = 2π̃k'/192` (`k' ≡ k mod 192`, `|k'| ≤ 96`,
  `π̃ = 3.14159265358979323846`), with error `‖e(k/192) − EU[k]/2^p‖ ≤ ε_U` (`euB_spec`; the π approximation adds
  `≤ π_hi − π_lo = 10⁻²⁰`, Mathlib's `pi_gt_d20`/`pi_lt_d20`);
* `EP[j][i] ≈ 2^p exp(−i P_ji)` for the Record centre `P` (radians, exact binary64 rationals), error `ε_P`
  (`epB_spec`);
* a node of coordinate `m` at midpoint `k` stores `round(EU[k]·EP[m][i]/2^p) + boff` (`colB`), hence
  `NodeOK` with `ε₁ ≥ 2^{-p} + ε_U(1 + ε_P) + ε_P` (`nodeB_spec`).

`tabB` packages all checks for one Record; `tabB_spec` yields `NodeOK` for `W0` and `TreeOK` for every tree of the
five root lists, which is what `topOK_sound` needs.
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### Rounding a Gaussian-integer product -/

/-- Round `x / 2^p` (half up): `⌊(x + 2^{p−1}) / 2^p⌋`. -/
def rdiv (x : ℤ) (p : ℕ) : ℤ := (x + 2 ^ (p - 1)) / 2 ^ p

lemma rdiv_err (x : ℤ) {p : ℕ} (hp : 1 ≤ p) : |(rdiv x p : ℝ) / 2 ^ p - (x : ℝ) / 2 ^ p / 2 ^ p| ≤ 1 / 2 / 2 ^ p := by
  have hD : (0 : ℤ) < 2 ^ p := by positivity
  have h1 := Int.mul_ediv_add_emod (x + 2 ^ (p - 1)) (2 ^ p)
  have h2 := Int.emod_nonneg (x + 2 ^ (p - 1)) hD.ne'
  have h3 := Int.emod_lt_of_pos (x + 2 ^ (p - 1)) hD
  set q := (x + 2 ^ (p - 1)) / 2 ^ p
  set r := (x + 2 ^ (p - 1)) % 2 ^ p
  have hh : (2 : ℤ) ^ p = 2 * 2 ^ (p - 1) := by
    rw [← pow_succ']; congr 1; omega
  have e1 : (2 ^ p * q + r : ℝ) = x + 2 ^ (p - 1) := by exact_mod_cast h1
  have e2 : (0 : ℝ) ≤ r := by exact_mod_cast h2
  have e3 : (r : ℝ) < 2 ^ p := by exact_mod_cast h3
  have e4 : (2 : ℝ) ^ p = 2 * 2 ^ (p - 1) := by exact_mod_cast hh
  have hDr : (0 : ℝ) < 2 ^ p := by positivity
  show |(q : ℝ) / 2 ^ p - (x : ℝ) / 2 ^ p / 2 ^ p| ≤ 1 / 2 / 2 ^ p
  rw [← sub_div, abs_div, abs_of_pos hDr]
  apply div_le_div_of_nonneg_right _ hDr.le
  have : (q : ℝ) - x / 2 ^ p = (2 ^ (p - 1) - r) / 2 ^ p := by
    field_simp; linarith
  rw [this, abs_div, abs_of_pos hDr, div_le_iff₀ hDr, abs_le]
  constructor <;> nlinarith

/-- Gaussian-integer product. -/
def gmul (z w : ℤ × ℤ) : ℤ × ℤ := (z.1 * w.1 - z.2 * w.2, z.1 * w.2 + z.2 * w.1)

/-- `(a, b) ↦ (a + bi)/2^p`. -/
def gval (p : ℕ) (z : ℤ × ℤ) : ℂ := ((z.1 : ℂ) + (z.2 : ℂ) * I) / 2 ^ p

lemma gval_gmul (p : ℕ) (z w : ℤ × ℤ) :
    ((gmul z w).1 : ℂ) + ((gmul z w).2 : ℂ) * I = (2 : ℂ) ^ p * gval p z * (2 ^ p * gval p w) := by
  have h2p : (2 : ℂ) ^ p ≠ 0 := pow_ne_zero _ two_ne_zero
  have hz : (2 : ℂ) ^ p * gval p z = (z.1 : ℂ) + (z.2 : ℂ) * I := by unfold gval; field_simp
  have hw : (2 : ℂ) ^ p * gval p w = (w.1 : ℂ) + (w.2 : ℂ) * I := by unfold gval; field_simp
  rw [hz, hw]; simp only [gmul]; push_cast
  linear_combination (-(z.2 : ℂ) * (w.2 : ℂ)) * Complex.I_sq

lemma norm_mul_sub_le {a b x y : ℂ} {εa εb : ℝ} (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) (ha : ‖a - x‖ ≤ εa)
    (hb : ‖b - y‖ ≤ εb) : ‖a * b - x * y‖ ≤ εa * (1 + εb) + εb := by
  have hb' : ‖b‖ ≤ 1 + εb := by
    calc ‖b‖ = ‖(b - y) + y‖ := by ring_nf
      _ ≤ ‖b - y‖ + ‖y‖ := norm_add_le _ _
      _ ≤ _ := by rw [hy]; linarith
  have e : a * b - x * y = (a - x) * b + x * (b - y) := by ring
  rw [e]
  calc ‖(a - x) * b + x * (b - y)‖ ≤ ‖a - x‖ * ‖b‖ + ‖x‖ * ‖b - y‖ := by
        refine (norm_add_le _ _).trans ?_; rw [norm_mul, norm_mul]
    _ ≤ εa * (1 + εb) + 1 * εb := by
        rw [hx]; gcongr
        · exact (norm_nonneg _).trans ha
    _ = _ := by ring

/-! ### Table checks -/

def allNat (n : ℕ) (f : ℕ → Bool) : Bool := Nat.rec (motive := fun _ => Bool) true (fun k r => f k && r) n

lemma allNat_spec {n : ℕ} {f : ℕ → Bool} (h : allNat n f = true) : ∀ k < n, f k = true := by
  induction n with
  | zero => intro k hk; omega
  | succ n ih =>
    have h' : (f n && allNat n f) = true := h
    rw [Bool.and_eq_true] at h'
    intro k hk
    rcases Nat.lt_succ_iff_lt_or_eq.mp hk with hk | rfl
    · exact ih h'.2 k hk
    · exact h'.1

def allI6 (f : I6 → Bool) : Bool :=
  f (.inl 0) && f (.inl 1) && f (.inl 2) && f (.inr 0) && f (.inr 1) && f (.inr 2)

lemma allI6_spec {f : I6 → Bool} (h : allI6 f = true) : ∀ i, f i = true := by
  unfold allI6 at h
  simp only [Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩, h5⟩ := h
  intro i; rcases i with i | i <;> fin_cases i <;> assumption

/-- `I6 → Fin 6` (order `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`). -/
def idx : I6 → ℕ
  | .inl i => i.val
  | .inr i => i.val + 3

/-- The rational `π̃ = 3.14159265358979323846` (`< π`). -/
def piLo : ℚ := 314159265358979323846 / 10 ^ 20

/-- The reduced argument `k' = k` or `k − 192`, and `x̃ = 2π̃k'/192`. -/
def kred (k : ℕ) : ℤ := if k ≤ 96 then (k : ℤ) else (k : ℤ) - 192
def euArg (k : ℕ) : ℚ := 2 * piLo * (kred k : ℚ) / 192

/-- The per-Record table data. -/
structure Tab where
  /-- precision `p` (`Z = 2^p`) and Taylor order `n` -/
  p : ℕ
  nT : ℕ
  EUL : List (ℤ × ℤ)
  /-- `EPL[j][i]`, rows `j`, columns `i` in `idx` order -/
  EPL : List (List (ℤ × ℤ))
  /-- the Record centre (radians) in the same layout -/
  PqL : List (List ℚ)
  epsU : ℚ
  epsP : ℚ

def Tab.eu (t : Tab) (k : ℕ) : ℤ × ℤ := t.EUL.getD k (0, 0)
def Tab.ep (t : Tab) (j i : I6) : ℤ × ℤ := (t.EPL.getD (idx j) []).getD (idx i) (0, 0)
def Tab.pq (t : Tab) (j i : I6) : ℚ := (t.PqL.getD (idx j) []).getD (idx i) 0

/-- `EU` is the rounded Taylor enclosure of `e(k/192)`, with error budget `ε_U`. -/
def euB (t : Tab) : Bool :=
  allNat 192 fun k => decide (t.eu k = cisRound (euArg k) t.nT t.p) &&
    decide (|euArg k| / (t.nT + 1) ≤ 1 / 2) &&
    decide (cisRem (euArg k) t.nT + 1 / 2 ^ t.p + 1 / 10 ^ 20 ≤ t.epsU)

/-- `EP` is the rounded Taylor enclosure of `exp(−i P_ji)`, with error budget `ε_P`. -/
def epB (t : Tab) : Bool :=
  allI6 fun j => allI6 fun i => decide (t.ep j i = cisRound (-t.pq j i) t.nT t.p) &&
    decide (|(-t.pq j i)| / (t.nT + 1) ≤ 1 / 2) &&
    decide (cisRem (-t.pq j i) t.nT + 1 / 2 ^ t.p ≤ t.epsP)

/-- One column of a node: `(re, im) = round(EU[k]·EP[m][i]/2^p) + boff`. -/
def colB (p boff : ℕ) (eu ep : ℤ × ℤ) (re im : ℕ) : Bool :=
  decide ((re : ℤ) = rdiv (gmul eu ep).1 p + boff) && decide ((im : ℤ) = rdiv (gmul eu ep).2 p + boff)

def nodeB (t : Tab) (boff : ℕ) (m : I6) (k : ℕ) (v : V12) : Bool :=
  Nat.blt k 192 && allI6 fun i => colB t.p boff (t.eu k) (t.ep m i) (v.re i) (v.im i)

def isNode (t : CT) : Bool := CT.rec (motive := fun _ => Bool) false (fun _ _ _ _ _ _ => true) t

/-- A coordinate tree of depth `d` with verified nodes and geometry. -/
def treeB (tb : Tab) (boff : ℕ) (m : I6) (d : ℕ) : CT → Bool :=
  Nat.rec (motive := fun _ => CT → Bool) (fun t => isNode t && nodeB tb boff m t.k t.v)
    (fun d ih t => isNode t && nodeB tb boff m t.k t.v && Nat.beq (t.l.k + 2 ^ d) t.k &&
      Nat.beq t.r.k (t.k + 2 ^ d) && ih t.l && ih t.r) d

/-- `W0` is row `0` of `EP`, offset `boff`. -/
def w0B (tb : Tab) (boff : ℕ) (W0 : V12) : Bool :=
  allI6 fun i => decide ((W0.re i : ℤ) = (tb.ep j0 i).1 + boff) && decide ((W0.im i : ℤ) = (tb.ep j0 i).2 + boff)

/-- All table checks of one Record. -/
def tabB (tb : Tab) (c : Cfg) (pq : ParQ) (L1 L2 L3 L4 L5 : List CT) : Bool :=
  decide (c.Z = 2 ^ tb.p) && decide (1 ≤ tb.p) && decide (0 ≤ tb.epsU) && decide (0 ≤ tb.epsP) &&
    decide (1 / 2 ^ tb.p + tb.epsU * (1 + tb.epsP) + tb.epsP ≤ pq.eps1) && decide (tb.epsP ≤ pq.eps1) &&
    euB tb && epB tb && w0B tb c.boff c.W0 &&
    allL L1 (treeB tb c.boff m1 3) && allL L2 (treeB tb c.boff m2 3) && allL L3 (treeB tb c.boff m3 3) &&
    allL L4 (treeB tb c.boff m4 3) && allL L5 (treeB tb c.boff m5 3)

/-! ### Soundness -/

lemma e_eq_exp (t : ℝ) : e t = Complex.exp (((2 * Real.pi * t : ℝ) : ℂ) * I) := rfl

lemma euB_spec {tb : Tab} (h : euB tb = true) {k : ℕ} (hk : k < 192) :
    ‖e ((k : ℝ) / 192) - gval tb.p (tb.eu k)‖ ≤ tb.epsU := by
  have hk' := allNat_spec h k hk
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hk'
  obtain ⟨⟨heq, hx⟩, hrem⟩ := hk'
  have hx' : |((euArg k : ℚ) : ℝ)| / (tb.nT + 1) ≤ 1 / 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hx; push_cast at this; exact this
  have hT := cisRound_spec (euArg k) tb.nT tb.p hx'
  rw [← heq] at hT
  -- e(k/192) = exp(i 2π k'/192)
  have hred : e ((k : ℝ) / 192) = e ((kred k : ℝ) / 192) := by
    unfold kred
    split_ifs with h96
    · push_cast; rfl
    · have : (k : ℝ) / 192 = (((k : ℤ) - 192 : ℤ) : ℝ) / 192 + ((1 : ℤ) : ℝ) := by push_cast; ring
      rw [this, e_add_int]
  have hkr : -96 ≤ (kred k : ℝ) ∧ (kred k : ℝ) ≤ 96 := by
    unfold kred; split_ifs with h96
    · push_cast
      have : (k : ℝ) ≤ 96 := by exact_mod_cast h96
      constructor <;> linarith [(Nat.cast_nonneg k : (0 : ℝ) ≤ k)]
    · push_cast
      have h1 : (k : ℝ) ≥ 97 := by exact_mod_cast (by omega : k ≥ 97)
      have h2 : (k : ℝ) < 192 := by exact_mod_cast hk
      constructor <;> linarith
  have hpl : ((piLo : ℚ) : ℝ) < Real.pi := by
    have := Real.pi_gt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith
  have hph : Real.pi < ((piLo : ℚ) : ℝ) + 1 / 10 ^ 20 := by
    have := Real.pi_lt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith
  have harg : ((euArg k : ℚ) : ℝ) = 2 * ((piLo : ℚ) : ℝ) * (kred k : ℝ) / 192 := by unfold euArg; push_cast; ring
  have hpi : |2 * Real.pi * ((kred k : ℝ) / 192) - ((euArg k : ℚ) : ℝ)| ≤ 1 / 10 ^ 20 := by
    rw [harg]
    have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ Real.pi - piLo) (by linarith [hkr.1] : (0 : ℝ) ≤ 96 + kred k)
    have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ Real.pi - piLo) (by linarith [hkr.2] : (0 : ℝ) ≤ 96 - kred k)
    rw [abs_le]; constructor <;> nlinarith
  have hlip := norm_exp_mul_I_sub_le (2 * Real.pi * ((kred k : ℝ) / 192)) ((euArg k : ℚ) : ℝ)
  rw [hred, e_eq_exp]
  have hrem' : ((cisRem (euArg k) tb.nT : ℚ) : ℝ) + 1 / 2 ^ tb.p + 1 / 10 ^ 20 ≤ tb.epsU := by
    have := (Rat.cast_le (K := ℝ)).mpr hrem; push_cast at this; exact this
  calc ‖Complex.exp (((2 * Real.pi * ((kred k : ℝ) / 192) : ℝ) : ℂ) * I) - gval tb.p (tb.eu k)‖
      ≤ ‖Complex.exp (((2 * Real.pi * ((kred k : ℝ) / 192) : ℝ) : ℂ) * I) -
          Complex.exp ((((euArg k : ℚ) : ℝ) : ℂ) * I)‖ +
        ‖Complex.exp ((((euArg k : ℚ) : ℝ) : ℂ) * I) - gval tb.p (tb.eu k)‖ := norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ 1 / 10 ^ 20 + (((cisRem (euArg k) tb.nT : ℚ) : ℝ) + 1 / 2 ^ tb.p) := by
        gcongr
        · exact hlip.trans hpi
        · exact hT
    _ ≤ _ := by linarith

lemma epB_spec {tb : Tab} (h : epB tb = true) (j i : I6) :
    ‖Complex.exp (((-(tb.pq j i : ℝ) : ℝ) : ℂ) * I) - gval tb.p (tb.ep j i)‖ ≤ tb.epsP := by
  have hj := allI6_spec (allI6_spec h j) i
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hj
  obtain ⟨⟨heq, hx⟩, hrem⟩ := hj
  have hx' : |((-tb.pq j i : ℚ) : ℝ)| / (tb.nT + 1) ≤ 1 / 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hx; push_cast at this ⊢; exact this
  have hT := cisRound_spec (-tb.pq j i) tb.nT tb.p hx'
  rw [← heq] at hT
  have hrem' : ((cisRem (-tb.pq j i) tb.nT : ℚ) : ℝ) + 1 / 2 ^ tb.p ≤ tb.epsP := by
    have := (Rat.cast_le (K := ℝ)).mpr hrem; push_cast at this; exact this
  have hc : (((-tb.pq j i : ℚ) : ℝ) : ℂ) = (((-(tb.pq j i : ℝ) : ℝ)) : ℂ) := by push_cast; rfl
  rw [hc] at hT
  exact hT.trans hrem'

lemma cval_of_col {p boff : ℕ} {eu ep : ℤ × ℤ} {v : V12} {i : I6} (h : colB p boff eu ep (v.re i) (v.im i) = true) :
    cval boff v i = ((rdiv (gmul eu ep).1 p : ℝ) : ℂ) + ((rdiv (gmul eu ep).2 p : ℝ) : ℂ) * I := by
  unfold colB at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨h1, h2⟩ := h
  have h1' : ((v.re i : ℤ) : ℝ) = (rdiv (gmul eu ep).1 p : ℝ) + boff := by rw [h1]; push_cast; ring
  have h2' : ((v.im i : ℤ) : ℝ) = (rdiv (gmul eu ep).2 p : ℝ) + boff := by rw [h2]; push_cast; ring
  push_cast at h1' h2'
  unfold cval; rw [h1', h2']; push_cast; ring

lemma nodeB_spec {tb : Tab} {c : Cfg} {pq : ParQ} (hZ : c.Z = 2 ^ tb.p) (hp1 : 1 ≤ tb.p)
    (hεU : (0 : ℝ) ≤ tb.epsU)
    (heps : 1 / 2 ^ tb.p + (tb.epsU : ℝ) * (1 + tb.epsP) + tb.epsP ≤ pq.eps1)
    (hU : euB tb = true) (hP : epB tb = true) {m : I6} {k : ℕ} {v : V12}
    (h : nodeB tb c.boff m k v = true) :
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m k v := by
  unfold nodeB at h
  rw [Bool.and_eq_true] at h
  obtain ⟨hk, hcols⟩ := h
  have hk' : k < 192 := by simpa using hk
  intro i
  have hcol := allI6_spec hcols i
  rw [cval_of_col hcol, hZ]
  set eu := tb.eu k
  set ep := tb.ep m i
  have hUk := euB_spec hU hk'
  have hPk := epB_spec hP m i
  -- rounding of the product
  have hDr : (0 : ℝ) < 2 ^ tb.p := by positivity
  have hround : ‖(((rdiv (gmul eu ep).1 tb.p : ℝ) : ℂ) + ((rdiv (gmul eu ep).2 tb.p : ℝ) : ℂ) * I) /
      ((2 ^ tb.p : ℕ) : ℂ) - gval tb.p eu * gval tb.p ep‖ ≤ 1 / 2 ^ tb.p := by
    have hg := gval_gmul tb.p eu ep
    have h2p : (2 : ℂ) ^ tb.p ≠ 0 := pow_ne_zero _ two_ne_zero
    have e : gval tb.p eu * gval tb.p ep = (((gmul eu ep).1 : ℂ) + ((gmul eu ep).2 : ℂ) * I) / 2 ^ tb.p / 2 ^ tb.p := by
      rw [hg]; field_simp
    rw [e]
    have e2 : (((rdiv (gmul eu ep).1 tb.p : ℝ) : ℂ) + ((rdiv (gmul eu ep).2 tb.p : ℝ) : ℂ) * I) / ((2 ^ tb.p : ℕ) : ℂ) -
        (((gmul eu ep).1 : ℂ) + ((gmul eu ep).2 : ℂ) * I) / 2 ^ tb.p / 2 ^ tb.p =
        ((((rdiv (gmul eu ep).1 tb.p : ℝ) / 2 ^ tb.p - ((gmul eu ep).1 : ℝ) / 2 ^ tb.p / 2 ^ tb.p : ℝ)) : ℂ) +
        ((((rdiv (gmul eu ep).2 tb.p : ℝ) / 2 ^ tb.p - ((gmul eu ep).2 : ℝ) / 2 ^ tb.p / 2 ^ tb.p : ℝ)) : ℂ) * I := by
      push_cast; ring
    rw [e2]
    refine (norm_le_abs_re_add_abs_im' _ _).trans ?_
    have r1 := rdiv_err (gmul eu ep).1 hp1
    have r2 := rdiv_err (gmul eu ep).2 hp1
    have : (1 : ℝ) / 2 / 2 ^ tb.p + 1 / 2 / 2 ^ tb.p = 1 / 2 ^ tb.p := by ring
    linarith
  have hsplit := norm_sub_le_norm_sub_add_norm_sub
    ((((rdiv (gmul eu ep).1 tb.p : ℝ) : ℂ) + ((rdiv (gmul eu ep).2 tb.p : ℝ) : ℂ) * I) / ((2 ^ tb.p : ℕ) : ℂ))
    (gval tb.p eu * gval tb.p ep) (e ((k : ℝ) / 192) * Complex.exp (((-Pmat tb.pq m i : ℝ) : ℂ) * I))
  have hPm : ((-Pmat tb.pq m i : ℝ) : ℂ) = (((-(tb.pq m i : ℝ) : ℝ)) : ℂ) := rfl
  rw [hPm] at hsplit ⊢
  have hprod' : ‖gval tb.p eu * gval tb.p ep - e ((k : ℝ) / 192) * Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I)‖ ≤
      tb.epsU * (1 + tb.epsP) + tb.epsP := by
    rw [norm_sub_rev]
    have hb' : ‖gval tb.p ep‖ ≤ 1 + tb.epsP := by
      calc ‖gval tb.p ep‖ = ‖(gval tb.p ep - Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I)) +
            Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I)‖ := by ring_nf
        _ ≤ ‖gval tb.p ep - Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I)‖ +
            ‖Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I)‖ := norm_add_le _ _
        _ ≤ tb.epsP + 1 := by
          rw [Complex.norm_exp_ofReal_mul_I, norm_sub_rev]; linarith
        _ = _ := by ring
    have hEq : e ((k : ℝ) / 192) * Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I) - gval tb.p eu * gval tb.p ep =
        (e ((k : ℝ) / 192) - gval tb.p eu) * gval tb.p ep +
          e ((k : ℝ) / 192) * (Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I) - gval tb.p ep) := by ring
    rw [hEq]
    calc _ ≤ ‖e ((k : ℝ) / 192) - gval tb.p eu‖ * ‖gval tb.p ep‖ +
          ‖e ((k : ℝ) / 192)‖ * ‖Complex.exp (((-(tb.pq m i : ℝ) : ℝ) : ℂ) * I) - gval tb.p ep‖ := by
          refine (norm_add_le _ _).trans ?_; rw [norm_mul, norm_mul]
      _ ≤ tb.epsU * (1 + tb.epsP) + 1 * tb.epsP := by
          rw [norm_e]
          gcongr
      _ = _ := by ring
  linarith

lemma treeB_node {tb : Tab} {boff : ℕ} {m : I6} {d : ℕ} {t : CT} (h : treeB tb boff m d t = true) :
    isNode t = true := by
  cases d with
  | zero =>
    have h' : (isNode t && nodeB tb boff m t.k t.v) = true := h
    rw [Bool.and_eq_true] at h'; exact h'.1
  | succ d =>
    have h' : (isNode t && nodeB tb boff m t.k t.v && Nat.beq (t.l.k + 2 ^ d) t.k && Nat.beq t.r.k (t.k + 2 ^ d) &&
        treeB tb boff m d t.l && treeB tb boff m d t.r) = true := h
    simp only [Bool.and_eq_true] at h'; exact h'.1.1.1.1.1

lemma treeB_spec {tb : Tab} {c : Cfg} {pq : ParQ} (hZ : c.Z = 2 ^ tb.p) (hp1 : 1 ≤ tb.p)
    (hεU : (0 : ℝ) ≤ tb.epsU) (hεP : (0 : ℝ) ≤ tb.epsP)
    (heps : 1 / 2 ^ tb.p + (tb.epsU : ℝ) * (1 + tb.epsP) + tb.epsP ≤ pq.eps1)
    (hU : euB tb = true) (hP : epB tb = true) {m : I6} :
    ∀ d t, treeB tb c.boff m d t = true → TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m d t := by
  intro d
  induction d with
  | zero =>
    intro t h
    cases t with
    | leaf => exact absurd (treeB_node h) (by decide)
    | node k v l r =>
      have h' : (true && nodeB tb c.boff m k v) = true := h
      rw [Bool.true_and] at h'
      exact nodeB_spec hZ hp1 hεU heps hU hP h'
  | succ d ih =>
    intro t h
    cases t with
    | leaf => exact absurd (treeB_node h) (by decide)
    | node k v l r =>
      have h' : (true && nodeB tb c.boff m k v && Nat.beq (l.k + 2 ^ d) k && Nat.beq r.k (k + 2 ^ d) &&
          treeB tb c.boff m d l && treeB tb c.boff m d r) = true := h
      simp only [Bool.true_and, Bool.and_eq_true] at h'
      obtain ⟨⟨⟨⟨hn, hl⟩, hr⟩, htl⟩, htr⟩ := h'
      exact ⟨nodeB_spec hZ hp1 hεU heps hU hP hn, Nat.eq_of_beq_eq_true hl, Nat.eq_of_beq_eq_true hr, ih l htl,
        ih r htr⟩

lemma w0B_spec {tb : Tab} {c : Cfg} {pq : ParQ} (hZ : c.Z = 2 ^ tb.p) (hεP : tb.epsP ≤ (pq.eps1 : ℝ))
    (hP : epB tb = true) (h : w0B tb c.boff c.W0 = true) : NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 j0 0 c.W0 := by
  intro i
  have hi := allI6_spec h i
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hi
  obtain ⟨h1, h2⟩ := hi
  have h1' : ((c.W0.re i : ℤ) : ℝ) = ((tb.ep j0 i).1 : ℝ) + c.boff := by rw [h1]; push_cast; ring
  have h2' : ((c.W0.im i : ℤ) : ℝ) = ((tb.ep j0 i).2 : ℝ) + c.boff := by rw [h2]; push_cast; ring
  push_cast at h1' h2'
  have hcv : cval c.boff c.W0 i / (c.Z : ℂ) = gval tb.p (tb.ep j0 i) := by
    unfold cval gval; rw [h1', h2', hZ]; push_cast; ring
  rw [hcv, Nat.cast_zero, zero_div]
  have he0 : e 0 = 1 := by rw [e_eq_exp]; simp
  rw [he0, one_mul, norm_sub_rev]
  exact (epB_spec hP j0 i).trans hεP

/-- **All tables of one Record.** -/
theorem tabB_spec {tb : Tab} {c : Cfg} {pq : ParQ} {L1 L2 L3 L4 L5 : List CT}
    (h : tabB tb c pq L1 L2 L3 L4 L5 = true) :
    NodeOK (Pmat tb.pq) c.Z c.boff pq.eps1 j0 0 c.W0 ∧
    (∀ t ∈ L1, TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m1 3 t) ∧
    (∀ t ∈ L2, TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m2 3 t) ∧
    (∀ t ∈ L3, TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m3 3 t) ∧
    (∀ t ∈ L4, TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m4 3 t) ∧
    (∀ t ∈ L5, TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m5 3 t) := by
  unfold tabB at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hZ, hp1⟩, hU0⟩, hP0⟩, heps⟩, hεP⟩, hU⟩, hP⟩, hW⟩, h1⟩, h2⟩, h3⟩, h4⟩, h5⟩ := h
  have hU0' : (0 : ℝ) ≤ tb.epsU := by exact_mod_cast hU0
  have hP0' : (0 : ℝ) ≤ tb.epsP := by exact_mod_cast hP0
  have heps' : 1 / 2 ^ tb.p + (tb.epsU : ℝ) * (1 + tb.epsP) + tb.epsP ≤ pq.eps1 := by
    have := (Rat.cast_le (K := ℝ)).mpr heps; push_cast at this; exact this
  have hεP' : (tb.epsP : ℝ) ≤ pq.eps1 := by exact_mod_cast hεP
  have T : ∀ m d t, treeB tb c.boff m d t = true → TreeOK (Pmat tb.pq) c.Z c.boff pq.eps1 m d t :=
    fun m => treeB_spec (m := m) hZ hp1 hU0' hP0' heps' hU hP
  exact ⟨w0B_spec hZ hεP' hP hW, fun t ht => T m1 3 t (allL_mem h1 t ht), fun t ht => T m2 3 t (allL_mem h2 t ht),
    fun t ht => T m3 3 t (allL_mem h3 t ht), fun t ht => T m4 3 t (allL_mem h4 t ht),
    fun t ht => T m5 3 t (allL_mem h5 t ht)⟩

end

end NoFourMUBs.KernelAtlas
