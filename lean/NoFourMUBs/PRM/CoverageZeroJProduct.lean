import NoFourMUBs.PRM.CoverageMixedSums
import NoFourMUBs.PRM.CoverageMixedCheckG
import NoFourMUBs.PRM.CoverageMixedCheckR
import NoFourMUBs.PRM.CoverageStripReduce
import NoFourMUBs.PRM.CoverageStripIdFormal

/-!
# The zero-`J` product `K = (1 − z)(z + 3)³` from two unsquared mixed-corner sums (return O)

`MinimalReconstruction/returns/O_zeroj_unsquared/REPORT.md` §§2–7.  At a corner `l` of the top strip of a Hadamard
matrix whose twenty top corners are critical, with invertible halves `l`, `19 − l`, `J = 0` and
`z ∉ {−3, −2}` (`ZCtx`), put `τ = z + 3` and `K = XYZ`.

* `mixed_zero` (`CoverageMixedSums`): the sums `2 T_x`, `2 T_{x|y}` over the nine mixed corners vanish.
* §2, the gauge (`gauge_zero`): in the half moments of the `λ`-substitution (`block_moment`) both sums have
  row weight `(1, 0)`, `(1, 1)`, so they vanish in the gauge `s = t = 1, s̄ = X, t̄ = Y`, where
  `r s/t = h/Y`, `r̄ t/s = −h/X` with `h = s r t̄` purely imaginary, `h² = −K` (`zero_h`).
* §4, identity (12) (`CoverageMixedCheckG.validG`, `generic_alg`): `X(X − 1) e_X e_Y² e_Z² T_x =
  c (X τ P_X − h Q_X)` modulo `G_W`, `c = 18 z (z + 2) τ (τ − X)(Y − Z)`; at `X = 1` too.  Real and
  imaginary parts give (13) (`generic_facts`): `(τ − X)(Y − Z) P_X = 0` and `K (τ − X)(Y − Z) Q_X = 0`.
* §7.2, identity (27a) (`CoverageMixedCheckR.validR`, `repeated_alg`): on `X = Y = v` the real part of
  `2 T_{x|y}` is `3 (C + 2vD)/(8τ⁵)` modulo `C₂`, so `C + 2vD = 0` (`repeated_facts`).
* The scalar steps: (7) `modulus_at_tau`; §5 `zeroK_core` (zero product: (15), (17), (18), (19));
  §6 `distinct_core` (three roots of the quadratic `Q`); §7 `repeated_core` ((22), (25a), (25b), (27b) and
  the Bézout identity (28) with constant `746496`).  All are `linear_combination` identities.
* Row relabellings (`ZCtx.swap01`, `…02`, `…12`) put the vanishing or repeated moduli in place; the
  assembly is `product_core` and `zeroJProduct : ZeroJProduct`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open NoFourMUBs.Kronecker StripMoments StripId Side Mixed

/-! ### Real points -/

theorem circ_eval_real {n : ℕ} (c : Circ n) (ρ : Fin n → ℝ) :
    c.eval (fun i => (ρ i : ℂ)) = ((c.eval ρ : ℝ) : ℂ) := by
  induction c with
  | var i => rfl
  | const k => simp [Circ.eval]
  | add a b ha hb => simp [Circ.eval, ha, hb]
  | sub a b ha hb => simp [Circ.eval, ha, hb]
  | mul a b ha hb => simp [Circ.eval, ha, hb]
  | pow a k ha => simp [Circ.eval, ha]

theorem frac_val_real {n m : ℕ} {C : Ctx n m} (x : Frac C) (ρ : Fin n → ℝ) :
    x.val (fun i => (ρ i : ℂ)) = ((x.val ρ : ℝ) : ℂ) := by
  simp [Frac.val, Frac.dval, circ_eval_real]

/-! ### The scalar polynomials -/

/-- `P_X` of (11). -/
def Pz (z X : ℝ) : ℝ :=
  z ^ 4 + 3 * z ^ 3 * X + 3 * z ^ 3 + 19 * z ^ 2 * X - 9 * z ^ 2 + 3 * z * X ^ 2 + 24 * z * X - 27 * z +
    10 * X ^ 2 - 18 * X
/-- `Q(T) = (τ² − T)(zτ − (z + 2)T)`, (20). -/
def Qz (z T : ℝ) : ℝ := ((z + 3) ^ 2 - T) * (z * (z + 3) - (z + 2) * T)
/-- `C`, `D` of (26). -/
def Cz (z : ℝ) : ℝ :=
  6 * z ^ 8 + 111 * z ^ 7 + 798 * z ^ 6 + 2942 * z ^ 5 + 5568 * z ^ 4 + 3096 * z ^ 3 - 7344 * z ^ 2 -
    14256 * z - 7776
def Dz (z : ℝ) : ℝ := 6 * z ^ 6 + 63 * z ^ 5 + 358 * z ^ 4 + 1266 * z ^ 3 + 2592 * z ^ 2 + 2808 * z + 1296

/-! ### Identity (12) at a point -/

theorem tx_moments : ∀ t ∈ txTerms, t.p ∈ usedMoments ∧ t.q ∈ usedMoments ∧ t.r ∈ usedMoments := by
  decide
theorem tp_moments : ∀ t ∈ tpTerms, t.p ∈ usedMoments ∧ t.q ∈ usedMoments ∧ t.r ∈ usedMoments := by
  decide

set_option maxHeartbeats 1000000 in
/-- The value of the gauged `mixedPolyQ` circuits. -/
theorem mixed_val {n m : ℕ} {C : Ctx n m} {ρ : Fin n → ℂ} {ζ : ℂ} (good : QF.Good C ρ ζ) (L : List MT)
    (hL : ∀ t ∈ L, t.p ∈ usedMoments ∧ t.q ∈ usedMoments ∧ t.r ∈ usedMoments)
    {qX qY qZ qr qR qz : QF C} {iA : Fin 3 → QF C} {X Y Z r R z : ℂ} {LA : Fin 3 → ℂ}
    (vX : qX.val ρ ζ = X) (vY : qY.val ρ ζ = Y) (vZ : qZ.val ρ ζ = Z) (vr : qr.val ρ ζ = r)
    (vR : qR.val ρ ζ = R) (vz : qz.val ρ ζ = z) (viA : ∀ j, (iA j).val ρ ζ = (LA j)⁻¹) :
    (mixedPolyQ L (halfQ 1 qX 1 qY qr qR qX qY qZ (iA 0) (iA 1) (iA 2) qz).mom
      (halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iA 0) (iA 1) (iA 2) qz).mom).val ρ ζ =
    mixedPoly L (fData 1 X 1 Y r R X Y Z (LA 0) (LA 1) (LA 2) z).mom
      (fData (-1) (-X) (-1) (-Y) (-r) (-R) X Y Z (LA 0) (LA 1) (LA 2) z).mom := by
  rw [val_mixedPolyQ good]
  have v1 : (1 : QF C).val ρ ζ = 1 := QF.val_one'
  have hA : (halfQ 1 qX 1 qY qr qR qX qY qZ (iA 0) (iA 1) (iA 2) qz).val ρ ζ =
      fData 1 X 1 Y r R X Y Z (LA 0) (LA 1) (LA 2) z := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ (viA 0) (viA 1) (viA 2), v1, vX, vY, vZ, vr, vR, vz]
  have hB : (halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iA 0) (iA 1) (iA 2) qz).val ρ ζ =
      fData (-1) (-X) (-1) (-Y) (-r) (-R) X Y Z (LA 0) (LA 1) (LA 2) z := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ (viA 0) (viA 1) (viA 2)]
    simp only [QF.val_neg]
    rw [v1, vX, vY, vZ, vr, vR, vz]
  apply mixedPoly_congr L usedMoments hL <;> intro p hp
  · rw [HalfQ.val_mom good _ hp, hA]
  · rw [HalfQ.val_mom good _ hp, hB]

set_option maxHeartbeats 4000000 in
/-- **Identity (12) at a point** (zero `J`, `G_W = 0`, no pole): if `T_x` vanishes in the gauge, then
`c (X τ P_X − h Q_X) = 0`. -/
theorem generic_alg {z X Y : ℝ} {h : ℂ} (hX : X ≠ 0) (hY : Y ≠ 0) (hz : z ≠ 0)
    (heZ : X + Y + z ^ 2 + 3 * z ≠ 0) (heY : 3 * z + 9 - Y ≠ 0) (heX : 3 * z + 9 - X ≠ 0)
    (hrel : h ^ 2 = -((X : ℂ) * Y * (9 - (z : ℂ) ^ 2 - X - Y)))
    (hGW : X * Y + X * (9 - z ^ 2 - X - Y) + Y * (9 - z ^ 2 - X - Y) - X * Y * (9 - z ^ 2 - X - Y) -
      z ^ 2 * (z + 3) ^ 2 = 0)
    {r R Zc : ℂ} {L : Fin 3 → ℂ} (hr : r = h / Y) (hR : R = -h / X) (hZ : Zc = 9 - (z : ℂ) ^ 2 - X - Y)
    (hL0 : L 0 = z * (X + Y + (z : ℂ) ^ 2 + 3 * z)) (hL1 : L 1 = z * (3 * (z : ℂ) + 9 - Y))
    (hL2 : L 2 = z * (3 * (z : ℂ) + 9 - X))
    (hT : mixedPoly txTerms (fData 1 X 1 Y r R X Y Zc (L 0) (L 1) (L 2) z).mom
      (fData (-1) (-X) (-1) (-Y) (-r) (-R) X Y Zc (L 0) (L 1) (L 2) z).mom = 0) :
    (((18 * z * (z + 2) * (z + 3) * (z + 3 - X) * (Y - (9 - z ^ 2 - X - Y))) * X * (z + 3) * Pz z X : ℝ) : ℂ) -
      (((18 * z * (z + 2) * (z + 3) * (z + 3 - X) * (Y - (9 - z ^ 2 - X - Y))) * Qz z X : ℝ) : ℂ) * h = 0 := by
  set ρ : Fin 3 → ℂ := ![(z : ℂ), (X : ℂ), (Y : ℂ)] with hρ
  have cX : (X : ℂ) ≠ 0 := by exact_mod_cast hX
  have cY : (Y : ℂ) ≠ 0 := by exact_mod_cast hY
  have cz : (z : ℂ) ≠ 0 := by exact_mod_cast hz
  have ceZ' : (X : ℂ) + Y + (z : ℂ) ^ 2 + 3 * z ≠ 0 := by exact_mod_cast heZ
  have ceY' : 3 * (z : ℂ) + 9 - Y ≠ 0 := by exact_mod_cast heY
  have ceX' : 3 * (z : ℂ) + 9 - X ≠ 0 := by exact_mod_cast heX
  have ev : ∀ k : Fin 6, (CG.f k).eval ρ =
      ![(X : ℂ), Y, z, X + Y + (z : ℂ) ^ 2 + 3 * z, 3 * (z : ℂ) + 9 - Y, 3 * (z : ℂ) + 9 - X] k := by
    intro k; fin_cases k <;> simp [CG, ceZ, ceY, ceX, vz, vX, vY, hρ]
  have good : QF.Good CG ρ h := by
    refine ⟨fun k => ?_, ?_⟩
    · rw [ev]; fin_cases k <;> simp [cX, cY, cz, ceZ', ceY', ceX']
    · simp only [QF.relA, QF.relB, CG, Frac.val, Frac.dval]
      simp [cZ, vz, vX, vY, hρ, hrel]
  have vfq : ∀ c : V, (fq c).val ρ h = c.eval ρ := fun c => by simp [fq, QF.val_ofFrac, Frac.val_ofCirc]
  have vX' : qX.val ρ h = X := by rw [qX, vfq]; simp [vX, hρ]
  have vY' : qY.val ρ h = Y := by rw [qY, vfq]; simp [vY, hρ]
  have vZ' : qZ.val ρ h = Zc := by rw [qZ, vfq, hZ]; simp [cZ, vz, vX, vY, hρ]
  have vz' : qz.val ρ h = z := by rw [qz, vfq]; simp [vz, hρ]
  have h0 : ((0 : Frac CG)).val ρ = 0 := by rw [Frac.val_ofNat]; simp
  have vr : qr.val ρ h = r := by
    have e1 : (⟨1, ![0, 1, 0, 0, 0, 0]⟩ : Frac CG).val ρ = 1 / Y := by
      simp only [Frac.val, Frac.dval, Fin.prod_univ_six, ev]; simp
    simp only [qr, QF.val, e1]; rw [h0, zero_add, hr]; ring
  have vR : qR.val ρ h = R := by
    have e1 : (⟨-1, ![1, 0, 0, 0, 0, 0]⟩ : Frac CG).val ρ = -1 / X := by
      simp only [Frac.val, Frac.dval, Fin.prod_univ_six, ev]; simp
    simp only [qR, QF.val, e1]; rw [h0, zero_add, hR]; ring
  have viL : ∀ j, (iL j).val ρ h = (L j)⁻¹ := by
    intro j
    fin_cases j <;> simp only [iL, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons] <;>
      rw [QF.val_ofFrac, Frac.val_mul, Frac.val_inv, Frac.val_inv, ev, ev] <;>
      simp [hL0, hL1, hL2] <;> ring
  have e := QF.eq_of_validR good validG
  rw [QF.val_mul good, show mixedPolyQ txTerms gA.mom gB.mom = mixedPolyQ txTerms
      (halfQ 1 qX 1 qY qr qR qX qY qZ (iL 0) (iL 1) (iL 2) qz).mom
      (halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iL 0) (iL 1) (iL 2) qz).mom from rfl,
    mixed_val good txTerms tx_moments vX' vY' vZ' vr vR vz' viL, hT, mul_zero] at e
  rw [QF.val_mul good, QF.val_two, QF.val_add good, QF.val_mul good, QF.val_mul good, vfq, vfq] at e
  have hGWc : cGW.eval ρ = 0 := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hGW
    simp only [cGW, cZ, cτ, vz, vX, vY, hρ]; push_cast at this; simp; linear_combination this
  rw [hGWc, zero_mul, add_zero] at e
  have e2 : qtarget.val ρ h = 0 := by
    have hz2 : (2 : ℂ) * (Circ.eval ρ (vz ^ 2)) ≠ 0 := by simp [vz, hρ, cz]
    have : (2 : ℂ) * (Circ.eval ρ (vz ^ 2)) * qtarget.val ρ h = 0 := by linear_combination -e
    exact (mul_eq_zero.1 this).resolve_left hz2
  simp only [qtarget, QF.val, Frac.val_ofCirc] at e2
  simp only [cc, cτ, cP, cQ, cZ, vz, vX, vY, hρ, Circ.eval_mul', Circ.eval_sub', Circ.eval_add',
    Circ.eval_pow', Circ.eval_neg', Circ.eval_ofNat, Circ.eval_var, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons] at e2
  simp only [Pz, Qz]
  push_cast
  linear_combination e2

/-! ### Identity (27a) at a point -/

set_option maxHeartbeats 4000000 in
/-- **Identity (27a) at a point** (`X = Y = v`, zero `J`, `C₂ = 0`, no pole): if `T_{x|y}` vanishes in the
gauge, then `C + 2vD = 0`. -/
theorem repeated_alg {z v : ℝ} {h : ℂ} (hv : v ≠ 0) (hz : z ≠ 0) (heZ : z ^ 2 + 3 * z + 2 * v ≠ 0)
    (hev : 3 * z + 9 - v ≠ 0) (hτ : z + 3 ≠ 0) (hre : h.re = 0)
    (hrel : h ^ 2 = -((v : ℂ) ^ 2 * (9 - (z : ℂ) ^ 2 - 2 * v)))
    (hC2 : 2 * v ^ 2 + (z ^ 2 + 2 * z - 6) * v + z ^ 2 * (z + 3) = 0)
    {r R Zc : ℂ} {L : Fin 3 → ℂ} (hr : r = h / v) (hR : R = -h / v) (hZ : Zc = 9 - (z : ℂ) ^ 2 - 2 * v)
    (hL0 : L 0 = z * ((z : ℂ) ^ 2 + 3 * z + 2 * v)) (hL1 : L 1 = z * (3 * (z : ℂ) + 9 - v))
    (hL2 : L 2 = z * (3 * (z : ℂ) + 9 - v))
    (hT : mixedPoly tpTerms (fData 1 v 1 v r R v v Zc (L 0) (L 1) (L 2) z).mom
      (fData (-1) (-v) (-1) (-v) (-r) (-R) v v Zc (L 0) (L 1) (L 2) z).mom = 0) :
    Cz z + 2 * v * Dz z = 0 := by
  set ρR : Fin 2 → ℝ := ![z, v] with hρR
  set ρ : Fin 2 → ℂ := fun i => (ρR i : ℂ) with hρ
  have r0 : ρ 0 = z := by simp [hρ, hρR]
  have r1 : ρ 1 = v := by simp [hρ, hρR]
  have cv : (v : ℂ) ≠ 0 := by exact_mod_cast hv
  have cz : (z : ℂ) ≠ 0 := by exact_mod_cast hz
  have ceZ' : (z : ℂ) ^ 2 + 3 * z + 2 * v ≠ 0 := by exact_mod_cast heZ
  have cev : 3 * (z : ℂ) + 9 - v ≠ 0 := by exact_mod_cast hev
  have cτ' : (z : ℂ) + 3 ≠ 0 := by exact_mod_cast hτ
  have ev : ∀ k : Fin 6, (CR.f k).eval ρ =
      ![(v : ℂ), z, (z : ℂ) ^ 2 + 3 * z + 2 * v, 3 * (z : ℂ) + 9 - v, (z : ℂ) + 3, 2] k := by
    intro k; fin_cases k <;> simp [CR, deZ, dev, dτ, wz, wv, r0, r1]
  have good : QF.Good CR ρ h := by
    refine ⟨fun k => ?_, ?_⟩
    · rw [ev]; fin_cases k <;> simp [cv, cz, ceZ', cev, cτ']
    · simp only [QF.relA, QF.relB, CR, Frac.val, Frac.dval]
      simp [dZ, wz, wv, r0, r1, hrel]
  have vfq : ∀ c : W2, (rq c).val ρ h = c.eval ρ := fun c => by simp [rq, QF.val_ofFrac, Frac.val_ofCirc]
  have vv : rv.val ρ h = v := by rw [rv, vfq]; simp [wv, r1]
  have vZ' : rZ.val ρ h = Zc := by rw [rZ, vfq, hZ]; simp [dZ, wz, wv, r0, r1]
  have vz' : rz.val ρ h = z := by rw [rz, vfq]; simp [wz, r0]
  have h0 : ((0 : Frac CR)).val ρ = 0 := by rw [Frac.val_ofNat]; simp
  have vr : rr.val ρ h = r := by
    have e1 : (⟨1, ![1, 0, 0, 0, 0, 0]⟩ : Frac CR).val ρ = 1 / v := by
      simp only [Frac.val, Frac.dval, Fin.prod_univ_six, ev]; simp
    simp only [rr, QF.val, e1]; rw [h0, zero_add, hr]; ring
  have vR : rR.val ρ h = R := by
    have e1 : (⟨-1, ![1, 0, 0, 0, 0, 0]⟩ : Frac CR).val ρ = -1 / v := by
      simp only [Frac.val, Frac.dval, Fin.prod_univ_six, ev]; simp
    simp only [rR, QF.val, e1]; rw [h0, zero_add, hR]; ring
  have viL : ∀ j, (jL j).val ρ h = (L j)⁻¹ := by
    intro j
    fin_cases j <;> simp only [jL, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons] <;>
      rw [QF.val_ofFrac, Frac.val_mul, Frac.val_inv, Frac.val_inv, ev, ev] <;>
      simp [hL0, hL1, hL2] <;> ring
  have e := mixed_val good tpTerms tp_moments vv vv vZ' vr vR vz' viL
  rw [hT] at e
  set x := mixedPolyQ tpTerms rA.mom rB.mom with hx
  have ex : x = mixedPolyQ tpTerms
      (halfQ 1 rv 1 rv rr rR rv rv rZ (jL 0) (jL 1) (jL 2) rz).mom
      (halfQ (-1) (-rv) (-1) (-rv) (-rr) (-rR) rv rv rZ (jL 0) (jL 1) (jL 2) rz).mom := rfl
  rw [← ex] at e
  -- the real part
  have hx0 : x.x0.val ρR = 0 := by
    have e' : ((x.x0.val ρR : ℝ) : ℂ) + ((x.x1.val ρR : ℝ) : ℂ) * h = 0 := by
      rw [← frac_val_real, ← frac_val_real]; exact e
    have := congrArg Complex.re e'
    simpa [hre] using this
  -- the kernel check
  have c := Frac.val_eq_zero_of_validR (ρ := ρ) validR
  rw [Frac.val_sub good.ne, Frac.val_sub good.ne, Frac.val_mul, Frac.val_ofCirc, frac_val_real] at c
  rw [← hx, hx0] at c
  have hC2c : dC2.eval ρ = 0 := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hC2
    simp only [dC2, wz, wv, Circ.eval_add', Circ.eval_mul', Circ.eval_sub', Circ.eval_pow',
      Circ.eval_ofNat, Circ.eval_var, r0, r1]
    push_cast at this; linear_combination this
  rw [hC2c, zero_mul, sub_zero] at c
  have k : rtarget.val ρ = 0 := by push_cast at c; linear_combination -c
  rw [Frac.val, div_eq_zero_iff] at k
  have k2 := k.resolve_right (Frac.dval_ne_zero good.ne _)
  simp only [rtarget, dC, dD, wz, wv, Circ.eval_add', Circ.eval_mul', Circ.eval_sub', Circ.eval_pow',
    Circ.eval_ofNat, Circ.eval_var, r0, r1] at k2
  have : ((Cz z + 2 * v * Dz z : ℝ) : ℂ) = 0 := by
    simp only [Cz, Dz]; push_cast; linear_combination k2 / 3
  exact_mod_cast this

/-! ### The gauge -/

set_option maxHeartbeats 1000000 in
/-- **The mixed sums in the gauge `s = t = 1`**: a mixed sum of row weight `w` of the two halves
`(s, t, r)`, `(−s, −t, −r)` (same `z, g`) vanishes iff it vanishes in the gauge. -/
theorem gauge_zero (L : List MT) (w : ℤ × ℤ) (hw : L.all (MT.hasWeight w) = true)
    (hL : ∀ t ∈ L, t.p ∈ usedMoments ∧ t.q ∈ usedMoments ∧ t.r ∈ usedMoments)
    {s t r : ℂ} {z g : ℝ} (hs : s ≠ 0) (ht : t ≠ 0) (hLne : ∀ j, lamL s t r z g j ≠ 0)
    (h0 : mixedPoly L (lamData s t r z g).mom (lamData (-s) (-t) (-r) z g).mom = 0) :
    mixedPoly L
      (fData 1 (Complex.normSq s) 1 (Complex.normSq t) (r * s / t) (conj r * t / s) (Complex.normSq s)
        (Complex.normSq t) (Complex.normSq r) (lamL s t r z g 0) (lamL s t r z g 1) (lamL s t r z g 2) z).mom
      (fData (-1) (-Complex.normSq s) (-1) (-Complex.normSq t) (-(r * s / t)) (-(conj r * t / s))
        (Complex.normSq s) (Complex.normSq t) (Complex.normSq r) (lamL s t r z g 0) (lamL s t r z g 1)
        (lamL s t r z g 2) z).mom = 0 := by
  have ha : s⁻¹ ≠ 0 := inv_ne_zero hs
  have hb : t⁻¹ ≠ 0 := inv_ne_zero ht
  have c : ∀ j, ((lamL s t r z g j : ℝ) : ℂ) ≠ 0 := fun j => by exact_mod_cast hLne j
  have eL : ∀ j, lamL (-s) (-t) (-r) z g j = lamL s t r z g j := by
    intro j; fin_cases j <;> simp [lamL, Complex.normSq_neg]
  have key := mixedPoly_scale L w hw (lamData s t r z g).mom (lamData (-s) (-t) (-r) z g).mom ha hb
  rw [h0, mul_zero] at key
  rw [← key]
  have e1 : s⁻¹ * s = 1 := inv_mul_cancel₀ hs
  have e2 : t⁻¹ * t = 1 := inv_mul_cancel₀ ht
  have e3 : conj s / s⁻¹ = (Complex.normSq s : ℂ) := by rw [cast_normSq']; field_simp
  have e4 : conj t / t⁻¹ = (Complex.normSq t : ℂ) := by rw [cast_normSq']; field_simp
  have e5 : t⁻¹ / s⁻¹ * r = r * s / t := by field_simp
  have e6 : s⁻¹ / t⁻¹ * conj r = conj r * t / s := by field_simp
  have e7 : s⁻¹ * -s = -1 := by field_simp
  have e8 : t⁻¹ * -t = -1 := by field_simp
  have e9 : conj (-s) / s⁻¹ = -(Complex.normSq s : ℂ) := by rw [cast_normSq', map_neg]; field_simp
  have e10 : conj (-t) / t⁻¹ = -(Complex.normSq t : ℂ) := by rw [cast_normSq', map_neg]; field_simp
  have e11 : t⁻¹ / s⁻¹ * -r = -(r * s / t) := by field_simp
  have e12 : s⁻¹ / t⁻¹ * conj (-r) = -(conj r * t / s) := by rw [map_neg]; field_simp
  apply mixedPoly_congr L usedMoments hL <;> intro p hp
  · rw [lamData_eq_fData, ← fData_mom_scale _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ha hb (c 0) (c 1) (c 2) hp,
      e1, e2, e3, e4, e5, e6]
  · rw [lamData_eq_fData, ← fData_mom_scale _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ha hb (by rw [eL]; exact c 0)
      (by rw [eL]; exact c 1) (by rw [eL]; exact c 2) hp, e7, e8, e9, e10, e11, e12]
    simp only [Complex.normSq_neg, eL]

/-! ### The corner context -/

/-- The rows `0, 1, 2` relabelled by `π`. -/
abbrev rowperm (H : Mat6) (π : Equiv.Perm (Fin 3)) : Mat6 := H.submatrix (Equiv.sumCongr π (Equiv.refl _)) id

/-- The hypotheses at the corner `l` of the top strip. -/
structure ZCtx (H : Mat6) (l : Fin 20) : Prop where
  had : Hadamard6.IsHadamard H
  crit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0
  d : (triBlock H 0 l).det ≠ 0
  d' : (triBlock H 0 (19 - l)).det ≠ 0
  J : blockJ (triBlock H 0 l) = 0
  z3 : blockTheta (triBlock H 0 l) ≠ -3
  z2 : blockTheta (triBlock H 0 l) ≠ -2

variable {H : Mat6} {l : Fin 20}

theorem ZCtx.perm (h : ZCtx H l) (π : Equiv.Perm (Fin 3))
    (hJ : blockJ ((triBlock H 0 l).submatrix π id) = 0)
    (hθ : blockTheta ((triBlock H 0 l).submatrix π id) = blockTheta (triBlock H 0 l)) :
    ZCtx (rowperm H π) l where
  had := isHadamard_rowperm h.had π
  crit := fun m => by rw [triBlock_rowperm, sig_submatrix]; exact h.crit m
  d := by rw [triBlock_rowperm]; exact det_submatrix_ne h.d π
  d' := by rw [triBlock_rowperm]; exact det_submatrix_ne h.d' π
  J := by rw [triBlock_rowperm]; exact hJ
  z3 := by rw [triBlock_rowperm, hθ]; exact h.z3
  z2 := by rw [triBlock_rowperm, hθ]; exact h.z2

/-- The relabelling `0 ↔ 1`: `(X, Y, Z) ↦ (X, Z, Y)`. -/
theorem ZCtx.swap01 (h : ZCtx H l) : ZCtx (rowperm H (Equiv.swap 0 1)) l ∧
    blockX (triBlock (rowperm H (Equiv.swap 0 1)) 0 l) = blockX (triBlock H 0 l) ∧
    blockY (triBlock (rowperm H (Equiv.swap 0 1)) 0 l) = blockZ (triBlock H 0 l) ∧
    blockZ (triBlock (rowperm H (Equiv.swap 0 1)) 0 l) = blockY (triBlock H 0 l) ∧
    blockTheta (triBlock (rowperm H (Equiv.swap 0 1)) 0 l) = blockTheta (triBlock H 0 l) := by
  obtain ⟨a1, a2, a3, a4⟩ := swap01_data (triBlock H 0 l)
  have pw := blockP_of_perm (B := triBlock H 0 l) (C := (triBlock H 0 l).submatrix (Equiv.swap 0 1) id)
    (Or.inl ⟨a1, a2, a3⟩)
  have hθ := blockTheta_congr pw.1 a4 pw.2
  rw [triBlock_rowperm]
  exact ⟨h.perm _ (by rw [a4]; exact h.J) hθ, a1, a2, a3, hθ⟩

/-- The relabelling `0 ↔ 2`: `(X, Y, Z) ↦ (Z, Y, X)`. -/
theorem ZCtx.swap02 (h : ZCtx H l) : ZCtx (rowperm H (Equiv.swap 0 2)) l ∧
    blockX (triBlock (rowperm H (Equiv.swap 0 2)) 0 l) = blockZ (triBlock H 0 l) ∧
    blockY (triBlock (rowperm H (Equiv.swap 0 2)) 0 l) = blockY (triBlock H 0 l) ∧
    blockZ (triBlock (rowperm H (Equiv.swap 0 2)) 0 l) = blockX (triBlock H 0 l) ∧
    blockTheta (triBlock (rowperm H (Equiv.swap 0 2)) 0 l) = blockTheta (triBlock H 0 l) := by
  obtain ⟨a1, a2, a3, a4⟩ := swap02_data (triBlock H 0 l)
  have pw := blockP_of_perm (B := triBlock H 0 l) (C := (triBlock H 0 l).submatrix (Equiv.swap 0 2) id)
    (Or.inr (Or.inl ⟨a1, a2, a3⟩))
  have hθ := blockTheta_congr pw.1 a4 pw.2
  rw [triBlock_rowperm]
  exact ⟨h.perm _ (by rw [a4]; exact h.J) hθ, a1, a2, a3, hθ⟩

/-- The relabelling `1 ↔ 2`: `(X, Y, Z) ↦ (Y, X, Z)`. -/
theorem ZCtx.swap12 (h : ZCtx H l) : ZCtx (rowperm H (Equiv.swap 1 2)) l ∧
    blockX (triBlock (rowperm H (Equiv.swap 1 2)) 0 l) = blockY (triBlock H 0 l) ∧
    blockY (triBlock (rowperm H (Equiv.swap 1 2)) 0 l) = blockX (triBlock H 0 l) ∧
    blockZ (triBlock (rowperm H (Equiv.swap 1 2)) 0 l) = blockZ (triBlock H 0 l) ∧
    blockTheta (triBlock (rowperm H (Equiv.swap 1 2)) 0 l) = blockTheta (triBlock H 0 l) := by
  obtain ⟨a1, a2, a3, a4⟩ := swap12_data (triBlock H 0 l)
  have pw : blockP ((triBlock H 0 l).submatrix (Equiv.swap 1 2) id) = blockP (triBlock H 0 l) ∧
      blockW ((triBlock H 0 l).submatrix (Equiv.swap 1 2) id) = blockW (triBlock H 0 l) :=
    ⟨by rw [blockP_eq, blockP_eq, a1, a2, a3]; ring, by simp only [blockW, a1, a2, a3]; ring⟩
  have hθ := blockTheta_congr pw.1 a4 pw.2
  rw [triBlock_rowperm]
  exact ⟨h.perm _ (by rw [a4]; exact h.J) hθ, a1, a2, a3, hθ⟩

/-! ### The corner data -/

/-- `h = s r t̄` at zero `J`: purely imaginary, `h² = −XYZ`, and the gauge values of `r`, `r̄`. -/
theorem zero_h {s t r : ℂ} {z : ℝ} (hs : s ≠ 0) (ht : t ≠ 0) (hJ : jS s t r = 0)
    (hp : pS s t r = 9 - z ^ 2) :
    (s * r * conj t).re = 0 ∧
      (s * r * conj t) ^ 2 = -((Complex.normSq s : ℂ) * Complex.normSq t * (9 - (z : ℂ) ^ 2 -
        Complex.normSq s - Complex.normSq t)) ∧
      r * s / t = s * r * conj t / Complex.normSq t ∧ conj r * t / s = -(s * r * conj t) / Complex.normSq s ∧
      (Complex.normSq r : ℂ) = 9 - (z : ℂ) ^ 2 - Complex.normSq s - Complex.normSq t ∧
      (s * r * conj t).im ^ 2 = Complex.normSq s * Complex.normSq t * Complex.normSq r := by
  have hJc : conj s * conj r * t + s * r * conj t = 0 := by rw [← cast_jS, hJ]; simp
  have hZ : (Complex.normSq r : ℂ) = 9 - (z : ℂ) ^ 2 - Complex.normSq s - Complex.normSq t := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hp
    simp only [pS] at this; push_cast at this; linear_combination this
  have hct : conj t ≠ 0 := by simpa using ht
  have hcs : conj s ≠ 0 := by simpa using hs
  have hre : (s * r * conj t).re = 0 := by
    have := congrArg Complex.re hJc
    simp only [Complex.add_re, Complex.zero_re] at this
    have e : (conj s * conj r * t).re = (s * r * conj t).re := by
      rw [show conj s * conj r * t = conj (s * r * conj t) by rw [map_mul, map_mul, Complex.conj_conj],
        Complex.conj_re]
    linarith
  refine ⟨hre, ?_, ?_, ?_, hZ, ?_⟩
  · rw [← hZ, cast_normSq', cast_normSq', cast_normSq']
    linear_combination (s * r * conj t) * hJc
  · rw [cast_normSq', div_eq_div_iff ht (mul_ne_zero ht hct)]; ring
  · rw [cast_normSq', div_eq_div_iff hs (mul_ne_zero hs hcs)]; linear_combination s * hJc
  · have e1 : Complex.normSq (s * r * conj t) = Complex.normSq s * Complex.normSq t * Complex.normSq r := by
      simp only [Complex.normSq_mul, Complex.normSq_conj]; ring
    rw [← e1, Complex.normSq_apply, hre]; ring

/-- The data of the corner `l` at zero `J`: the scalar data, no pole, and the vanishing of the two mixed
sums of the halves in their `λ`-data. -/
theorem corner_data (h : ZCtx H l) :
    blockP (triBlock H 0 l) = 9 - blockTheta (triBlock H 0 l) ^ 2 ∧
      blockW (triBlock H 0 l) = blockTheta (triBlock H 0 l) ^ 2 * (blockTheta (triBlock H 0 l) + 3) ^ 2 ∧
      blockTheta (triBlock H 0 l) ≠ 0 ∧ -3 < blockTheta (triBlock H 0 l) ∧
      (∀ j, lamL (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2) j ≠ 0) ∧
      mixedPoly txTerms
        (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
          (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom
        (lamData (-blockS (triBlock H 0 l)) (-blockT (triBlock H 0 l)) (-blockR (triBlock H 0 l))
          (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom = 0 ∧
      mixedPoly tpTerms
        (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
          (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom
        (lamData (-blockS (triBlock H 0 l)) (-blockT (triBlock H 0 l)) (-blockR (triBlock H 0 l))
          (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom = 0 := by
  have hH := h.had
  obtain ⟨hg, hp, hW, hz0, hz3⟩ := zero_data (triBlock_unit hH 0 l) h.d (h.crit l) h.J
  have hpole := zero_poles hg hp hW hz0 h.z2 h.z3
  have hth' : blockTheta (triBlock H 0 (19 - l)) = blockTheta (triBlock H 0 l) :=
    blockTheta_congr (blockP_compl hH 0 l) (by rw [blockJ_compl hH, h.J, neg_zero]) (blockW_compl hH 0 l)
  have hg' : blockG (triBlock H 0 (19 - l)) = 3 * blockTheta (triBlock H 0 l) ^ 2 := by
    rw [blockG_compl hH, h.J, hp]; ring
  have hL' : ∀ j, blockL (triBlock H 0 (19 - l)) j ≠ 0 := by
    intro j
    have e : blockL (triBlock H 0 (19 - l)) j = blockL (triBlock H 0 l) j := by
      rw [blockL, blockL, hth', hg', hg, blockC_eq, blockC_eq, blockMod_compl hH]
    rw [e]; exact hpole j
  obtain ⟨m1, m2⟩ := mixed_zero hH h.crit l
  have hA : ∀ p ∈ usedMoments, halfMom (xsH H) (ysH H) (tri l) p =
      (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom p := by
    intro p hp'
    rw [halfMom, block_moment hH l (h.crit l) h.d hpole hp', hg]
  have hB : ∀ p ∈ usedMoments, halfMom (xsH H) (ysH H) (tri (19 - l)) p =
      (lamData (-blockS (triBlock H 0 l)) (-blockT (triBlock H 0 l)) (-blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (3 * blockTheta (triBlock H 0 l) ^ 2)).mom p := by
    intro p hp'
    rw [halfMom, block_moment hH (19 - l) (h.crit (19 - l)) h.d' hL' hp', blockS_compl hH, blockT_compl hH,
      blockR_compl hH, hth', hg']
  refine ⟨hp, hW, hz0, lt_of_le_of_ne hz3 (Ne.symm h.z3), fun j => ?_, ?_, ?_⟩
  · have e := lamL_block (triBlock H 0 l) j
    rw [hg] at e
    rw [e]; exact hpole j
  · rw [← mixedPoly_congr txTerms usedMoments tx_moments hA hB]; exact m1
  · rw [← mixedPoly_congr tpTerms usedMoments tp_moments hA hB]; exact m2

/-! ### (13) and (27a) at the corner -/

/-- **(13)** in the Gram data `s, t, r` of the first half (`X = |s|²`, …). -/
theorem generic_st {s t r : ℂ} {z : ℝ} (hs : s ≠ 0) (ht : t ≠ 0) (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hz3 : z ≠ -3)
    (hJ : jS s t r = 0) (hp : pS s t r = 9 - z ^ 2)
    (hW : Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
      Complex.normSq t * Complex.normSq r - Complex.normSq s * Complex.normSq t * Complex.normSq r =
        z ^ 2 * (z + 3) ^ 2)
    (hLne : ∀ j, lamL s t r z (3 * z ^ 2) j ≠ 0)
    (hG : mixedPoly txTerms
      (fData 1 (Complex.normSq s) 1 (Complex.normSq t) (r * s / t) (conj r * t / s) (Complex.normSq s)
        (Complex.normSq t) (Complex.normSq r) (lamL s t r z (3 * z ^ 2) 0) (lamL s t r z (3 * z ^ 2) 1)
        (lamL s t r z (3 * z ^ 2) 2) z).mom
      (fData (-1) (-Complex.normSq s) (-1) (-Complex.normSq t) (-(r * s / t)) (-(conj r * t / s))
        (Complex.normSq s) (Complex.normSq t) (Complex.normSq r) (lamL s t r z (3 * z ^ 2) 0)
        (lamL s t r z (3 * z ^ 2) 1) (lamL s t r z (3 * z ^ 2) 2) z).mom = 0) :
    (z + 3 - Complex.normSq s) * (Complex.normSq t - Complex.normSq r) * Pz z (Complex.normSq s) = 0 ∧
      Complex.normSq s * Complex.normSq t * Complex.normSq r *
        ((z + 3 - Complex.normSq s) * (Complex.normSq t - Complex.normSq r) * Qz z (Complex.normSq s)) = 0 := by
  obtain ⟨hre, hrel, hr, hR, hZ, him⟩ := zero_h hs ht hJ hp
  have hX : Complex.normSq s ≠ 0 := by simpa using hs
  have hY : Complex.normSq t ≠ 0 := by simpa using ht
  have hZr : Complex.normSq r = 9 - z ^ 2 - Complex.normSq s - Complex.normSq t := by
    simp only [pS] at hp; linarith
  have eL : ∀ j, lamL s t r z (3 * z ^ 2) j =
      ![z * (Complex.normSq s + Complex.normSq t + z ^ 2 + 3 * z), z * (3 * z + 9 - Complex.normSq t),
        z * (3 * z + 9 - Complex.normSq s)] j := by
    intro j; fin_cases j <;> simp [lamL, hZr] <;> ring
  have ne : ∀ j, (![z * (Complex.normSq s + Complex.normSq t + z ^ 2 + 3 * z), z * (3 * z + 9 - Complex.normSq t),
      z * (3 * z + 9 - Complex.normSq s)] : Fin 3 → ℝ) j ≠ 0 := fun j => by rw [← eL]; exact hLne j
  have heZ : Complex.normSq s + Complex.normSq t + z ^ 2 + 3 * z ≠ 0 := fun h0 => ne 0 (by simp [h0])
  have heY : 3 * z + 9 - Complex.normSq t ≠ 0 := fun h0 => ne 1 (by simp [h0])
  have heX : 3 * z + 9 - Complex.normSq s ≠ 0 := fun h0 => ne 2 (by simp [h0])
  have e := generic_alg (h := s * r * conj t) hX hY hz0 heZ heY heX hrel
    (by rw [← hZr]; linarith) hr hR hZ
    (L := fun j => ((lamL s t r z (3 * z ^ 2) j : ℝ) : ℂ))
    (by simp only [eL]; push_cast; ring) (by simp only [eL]; push_cast; ring)
    (by simp only [eL]; push_cast; ring) hG
  rw [← hZr] at e
  generalize s * r * conj t = hh at e hre him
  have h2 : z + 2 ≠ 0 := fun h0 => hz2 (by linarith)
  have h3 : z + 3 ≠ 0 := fun h0 => hz3 (by linarith)
  have hre' := congrArg Complex.re e
  have him' := congrArg Complex.im e
  simp only [Complex.sub_re, Complex.sub_im, Complex.ofReal_re, Complex.ofReal_im, Complex.mul_re,
    Complex.mul_im, hre, Complex.zero_re, Complex.zero_im] at hre' him'
  have c2 : 18 * z * (z + 2) * (z + 3) ≠ 0 :=
    mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hz0) h2) h3
  have c1 : (18 * z * (z + 2) * (z + 3)) * ((z + 3) * Complex.normSq s) ≠ 0 :=
    mul_ne_zero c2 (mul_ne_zero h3 hX)
  constructor
  · have : (18 * z * (z + 2) * (z + 3)) * ((z + 3) * Complex.normSq s) *
        ((z + 3 - Complex.normSq s) * (Complex.normSq t - Complex.normSq r) * Pz z (Complex.normSq s)) = 0 := by
      linear_combination hre'
    exact (mul_eq_zero.1 this).resolve_left c1
  · have : (18 * z * (z + 2) * (z + 3)) * (Complex.normSq s * Complex.normSq t * Complex.normSq r *
        ((z + 3 - Complex.normSq s) * (Complex.normSq t - Complex.normSq r) * Qz z (Complex.normSq s))) = 0 := by
      rw [← him]; linear_combination (-hh.im) * him'
    exact (mul_eq_zero.1 this).resolve_left c2

/-- **(27a) gives `C + 2vD = 0`** on `X = Y = v`, in the Gram data `s, t, r` of the first half. -/
theorem repeated_st {s t r : ℂ} {z : ℝ} (hs : s ≠ 0) (ht : t ≠ 0) (hz0 : z ≠ 0) (hz3 : z ≠ -3)
    (hJ : jS s t r = 0) (hp : pS s t r = 9 - z ^ 2) (hXY : Complex.normSq s = Complex.normSq t)
    (hW : Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
      Complex.normSq t * Complex.normSq r - Complex.normSq s * Complex.normSq t * Complex.normSq r =
        z ^ 2 * (z + 3) ^ 2)
    (hvτ : Complex.normSq s ≠ z + 3)
    (hLne : ∀ j, lamL s t r z (3 * z ^ 2) j ≠ 0)
    (hG : mixedPoly tpTerms
      (fData 1 (Complex.normSq s) 1 (Complex.normSq t) (r * s / t) (conj r * t / s) (Complex.normSq s)
        (Complex.normSq t) (Complex.normSq r) (lamL s t r z (3 * z ^ 2) 0) (lamL s t r z (3 * z ^ 2) 1)
        (lamL s t r z (3 * z ^ 2) 2) z).mom
      (fData (-1) (-Complex.normSq s) (-1) (-Complex.normSq t) (-(r * s / t)) (-(conj r * t / s))
        (Complex.normSq s) (Complex.normSq t) (Complex.normSq r) (lamL s t r z (3 * z ^ 2) 0)
        (lamL s t r z (3 * z ^ 2) 1) (lamL s t r z (3 * z ^ 2) 2) z).mom = 0) :
    Cz z + 2 * Complex.normSq s * Dz z = 0 := by
  obtain ⟨hre, hrel, hr, hR, hZ, -⟩ := zero_h hs ht hJ hp
  have hX : Complex.normSq s ≠ 0 := by simpa using hs
  set v := Complex.normSq s with hv
  have hZr : Complex.normSq r = 9 - z ^ 2 - 2 * v := by
    simp only [pS] at hp; rw [← hXY] at hp; linarith
  rw [← hXY] at hG hrel hr hZ
  have eL : ∀ j, lamL s t r z (3 * z ^ 2) j =
      ![z * (z ^ 2 + 3 * z + 2 * v), z * (3 * z + 9 - v), z * (3 * z + 9 - v)] j := by
    intro j; fin_cases j <;> simp [lamL, hZr, ← hXY] <;> ring
  have ne : ∀ j, (![z * (z ^ 2 + 3 * z + 2 * v), z * (3 * z + 9 - v), z * (3 * z + 9 - v)] : Fin 3 → ℝ) j ≠ 0 :=
    fun j => by rw [← eL]; exact hLne j
  have heZ : z ^ 2 + 3 * z + 2 * v ≠ 0 := fun h0 => ne 0 (by simp [h0])
  have hev : 3 * z + 9 - v ≠ 0 := fun h0 => ne 1 (by simp [h0])
  have hτ : z + 3 ≠ 0 := fun h0 => hz3 (by linarith)
  -- `C₂ = 0` from the `W`-relation (22)
  have hC2 : 2 * v ^ 2 + (z ^ 2 + 2 * z - 6) * v + z ^ 2 * (z + 3) = 0 := by
    have e : (v - (z + 3)) * (2 * v ^ 2 + (z ^ 2 + 2 * z - 6) * v + z ^ 2 * (z + 3)) = 0 := by
      rw [← hXY, hZr] at hW; linear_combination hW
    exact (mul_eq_zero.1 e).resolve_left (sub_ne_zero.2 hvτ)
  exact repeated_alg (h := s * r * conj t) hX hz0 heZ hev hτ hre
    (by rw [hrel]; ring) hC2 hr hR (by rw [hZ]; ring)
    (L := fun j => ((lamL s t r z (3 * z ^ 2) j : ℝ) : ℂ))
    (by simp only [eL]; push_cast; ring) (by simp only [eL]; push_cast; ring)
    (by simp only [eL]; push_cast; ring) hG

/-- **(13) at the corner**: with `X, Y > 0`, `(τ − X)(Y − Z) P_X = 0` and `K (τ − X)(Y − Z) Q_X = 0`. -/
theorem generic_facts (h : ZCtx H l) (hX : 0 < blockX (triBlock H 0 l)) (hY : 0 < blockY (triBlock H 0 l)) :
    (blockTheta (triBlock H 0 l) + 3 - blockX (triBlock H 0 l)) *
        (blockY (triBlock H 0 l) - blockZ (triBlock H 0 l)) *
        Pz (blockTheta (triBlock H 0 l)) (blockX (triBlock H 0 l)) = 0 ∧
      blockK (triBlock H 0 l) * ((blockTheta (triBlock H 0 l) + 3 - blockX (triBlock H 0 l)) *
        (blockY (triBlock H 0 l) - blockZ (triBlock H 0 l)) *
        Qz (blockTheta (triBlock H 0 l)) (blockX (triBlock H 0 l))) = 0 := by
  obtain ⟨hp, hW, hz0, -, hLne, hT, -⟩ := corner_data h
  have hs : blockS (triBlock H 0 l) ≠ 0 := ne_zero_of_normSq_pos hX
  have ht : blockT (triBlock H 0 l) ≠ 0 := ne_zero_of_normSq_pos hY
  exact generic_st hs ht hz0 h.z2 h.z3 h.J hp hW hLne
    (gauge_zero txTerms (1, 0) (by decide) tx_moments hs ht hLne hT)

/-- **(27a) at the corner**: on `X = Y ≠ τ`, `C + 2XD = 0`. -/
theorem repeated_facts (h : ZCtx H l) (hX : 0 < blockX (triBlock H 0 l))
    (hXY : blockX (triBlock H 0 l) = blockY (triBlock H 0 l))
    (hvτ : blockX (triBlock H 0 l) ≠ blockTheta (triBlock H 0 l) + 3) :
    Cz (blockTheta (triBlock H 0 l)) + 2 * blockX (triBlock H 0 l) * Dz (blockTheta (triBlock H 0 l)) = 0 := by
  obtain ⟨hp, hW, hz0, -, hLne, -, hT⟩ := corner_data h
  have hs : blockS (triBlock H 0 l) ≠ 0 := ne_zero_of_normSq_pos hX
  have ht : blockT (triBlock H 0 l) ≠ 0 := ne_zero_of_normSq_pos (lt_of_lt_of_eq hX hXY)
  exact repeated_st hs ht hz0 h.z3 h.J hp hXY hW hvτ hLne
    (gauge_zero tpTerms (1, 1) (by decide) tp_moments hs ht hLne hT)

/-! ### The scalar steps (§§5–7) -/

/-- **(7)**: `(τ − X)(τ − Y)(τ − Z) = (z + 2) Δ`, `Δ = K + (z − 1)τ³` (certificate `modulus_at_tau`). -/
theorem modulus_at_tau {z X Y Z : ℝ} (hp : X + Y + Z = 9 - z ^ 2)
    (hW : X * Y + X * Z + Y * Z - X * Y * Z = z ^ 2 * (z + 3) ^ 2) :
    (z + 3 - X) * (z + 3 - Y) * (z + 3 - Z) = (z + 2) * (X * Y * Z + (z - 1) * (z + 3) ^ 3) := by
  linear_combination (-(z + 3) ^ 2) * hp + (z + 3) * hW

/-- **§5.2**: on a zero-product corner, a positive modulus `a ≠ 1` with `P(a) = 0` is impossible
(certificates `root_from_sum_product`, `boundary_P_reduction`, `q_product_norm`, `q_at_one`,
`linear_coefficient_guard`, `q_difference`). -/
theorem zeroK_one {z a b : ℝ} (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hτ : z + 3 ≠ 0) (hsum : a + b = 9 - z ^ 2)
    (hprod : a * b = z ^ 2 * (z + 3) ^ 2) (hP : Pz z a = 0) (ha1 : a ≠ 1) : False := by
  have h2 : z + 2 ≠ 0 := fun h0 => hz2 (by linarith)
  -- `f(a) = 0`
  have hf : a ^ 2 - (9 - z ^ 2) * a + z ^ 2 * (z + 3) ^ 2 = 0 := by linear_combination a * hsum - hprod
  -- (17): `q(a) = 0`
  have hq : z * (z + 3) * (z ^ 2 + 3 * z + 1) - (3 * z + 8) * a = 0 := by
    have : 3 * (z + 3) * (z * (z + 3) * (z ^ 2 + 3 * z + 1) - (3 * z + 8) * a) = 0 := by
      simp only [Pz] at hP; linear_combination -hP + (3 * z + 10) * hf
    exact (mul_eq_zero.1 this).resolve_left (mul_ne_zero (by norm_num) hτ)
  -- (18): `u = 0`
  have hu : z ^ 2 + 2 * z - 2 = 0 := by
    have : z * (z + 2) ^ 2 * (z + 3) ^ 3 * (z ^ 2 + 2 * z - 2) = 0 := by
      linear_combination (z * (z + 3) * (z ^ 2 + 3 * z + 1) - (3 * z + 8) * b) * hq +
        z * (z + 3) * (z ^ 2 + 3 * z + 1) * (3 * z + 8) * hsum - (3 * z + 8) ^ 2 * hprod
    exact (mul_eq_zero.1 this).resolve_left
      (mul_ne_zero (mul_ne_zero hz0 (pow_ne_zero 2 h2)) (pow_ne_zero 3 hτ))
  -- (19): `3z + 8 ≠ 0`, and `q(a) − q(1) = −(3z + 8)(a − 1)` with `q(1) = (z + 2)² u = 0`
  have hB : 3 * z + 8 ≠ 0 := by
    intro h0
    have : (9 : ℝ) * (z ^ 2 + 2 * z - 2) = (3 * z + 8) * (3 * z - 2) - 2 := by ring
    rw [hu, h0] at this; norm_num at this
  have : (3 * z + 8) * (a - 1) = 0 := by linear_combination -hq + (z + 2) ^ 2 * hu
  exact ha1 (by linarith [(mul_eq_zero.1 this).resolve_left hB])

/-- **§5**: a zero-product corner (`Z = 0`, `X, Y > 0`) has `Δ = 0` (certificates
`both_moduli_one_impossible`, `root_at_z_plus_three`). -/
theorem zeroK_scalar {z X Y : ℝ} (hX : 0 < X) (hY : 0 < Y) (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hτ : z + 3 ≠ 0)
    (hp : X + Y = 9 - z ^ 2) (hW : X * Y = z ^ 2 * (z + 3) ^ 2)
    (hPX : (z + 3 - X) * Y * Pz z X = 0) (hPY : (z + 3 - Y) * X * Pz z Y = 0) :
    (z - 1) * (z + 3) ^ 3 = 0 := by
  by_contra hΔ
  have h2 : z + 2 ≠ 0 := fun h1 => hz2 (by linarith)
  have hmod := modulus_at_tau (z := z) (X := X) (Y := Y) (Z := 0) (by linarith) (by linear_combination hW)
  have hτX : z + 3 - X ≠ 0 := by
    intro h0; apply hΔ; rw [h0] at hmod
    have : (z + 2) * ((z - 1) * (z + 3) ^ 3) = 0 := by linear_combination -hmod
    exact (mul_eq_zero.1 this).resolve_left h2
  have hτY : z + 3 - Y ≠ 0 := by
    intro h0; apply hΔ; rw [h0] at hmod
    have : (z + 2) * ((z - 1) * (z + 3) ^ 3) = 0 := by linear_combination -hmod
    exact (mul_eq_zero.1 this).resolve_left h2
  by_cases hX1 : X = 1
  · have hY1 : Y ≠ 1 := by
      intro hY1
      rw [hX1, hY1] at hp hW
      have : (9 : ℝ) = 0 := by
        linear_combination (-(14 * z - 37)) * hW - (14 * z ^ 3 + 47 * z ^ 2 + 2 * z - 4) * hp
      norm_num at this
    have hPY' := (mul_eq_zero.1 hPY).resolve_left (mul_ne_zero hτY hX.ne')
    exact zeroK_one (b := X) hz0 hz2 hτ (by linarith) (by linear_combination hW) hPY' hY1
  · have hPX' := (mul_eq_zero.1 hPX).resolve_left (mul_ne_zero hτX hY.ne')
    exact zeroK_one hz0 hz2 hτ hp hW hPX' hX1

/-- **§6**: three pairwise distinct roots of the quadratic `Q` force `z = −2`. -/
theorem distinct_core {z X Y Z : ℝ} (hz2 : z ≠ -2) (hXY : X ≠ Y) (hXZ : X ≠ Z) (hYZ : Y ≠ Z)
    (hX : Qz z X = 0) (hY : Qz z Y = 0) (hZ : Qz z Z = 0) : False := by
  simp only [Qz] at hX hY hZ
  have e1 : (X - Y) * ((z + 2) * (X + Y) - (z * (z + 3) + (z + 2) * (z + 3) ^ 2)) = 0 := by
    linear_combination hX - hY
  have e2 : (X - Z) * ((z + 2) * (X + Z) - (z * (z + 3) + (z + 2) * (z + 3) ^ 2)) = 0 := by
    linear_combination hX - hZ
  have f1 := (mul_eq_zero.1 e1).resolve_left (sub_ne_zero.2 hXY)
  have f2 := (mul_eq_zero.1 e2).resolve_left (sub_ne_zero.2 hXZ)
  have : (z + 2) * (Y - Z) = 0 := by linear_combination f1 - f2
  rcases mul_eq_zero.1 this with h0 | h0
  · exact hz2 (by linarith)
  · exact hYZ (by linarith)

/-- **§7**: a repeated modulus `X = Y = v ≠ τ` is impossible (certificates `repeated_W_factor`,
`repeated_imag_reduction`, `repeated_imag_norm`, `repeated_norm_pair`, `bezout_746496`). -/
theorem repeated_core {z v Z : ℝ} (hz0 : z ≠ 0) (hz2 : z ≠ -2) (hτ : z + 3 ≠ 0) (hZ : Z = 9 - z ^ 2 - 2 * v)
    (hW : v * v + v * Z + v * Z - v * v * Z = z ^ 2 * (z + 3) ^ 2) (hvτ : v ≠ z + 3)
    (hN : (v - Z) * Qz z v = 0) (hCD : Cz z + 2 * v * Dz z = 0) : False := by
  subst hZ
  have h2 : z + 2 ≠ 0 := fun h0 => hz2 (by linarith)
  -- (22): `C₂ = 0`
  have hC2 : 2 * v ^ 2 + (z ^ 2 + 2 * z - 6) * v + z ^ 2 * (z + 3) = 0 := by
    have : (v - (z + 3)) * (2 * v ^ 2 + (z ^ 2 + 2 * z - 6) * v + z ^ 2 * (z + 3)) = 0 := by
      linear_combination hW
    exact (mul_eq_zero.1 this).resolve_left (sub_ne_zero.2 hvτ)
  -- (25a): `a + bv = 0`
  have hab : (z + 3) * (11 * z ^ 4 + 86 * z ^ 3 + 156 * z ^ 2 - 108 * z - 324) +
      (3 * z ^ 4 + 46 * z ^ 3 + 256 * z ^ 2 + 588 * z + 468) * v = 0 := by
    have : z * ((z + 3) * (11 * z ^ 4 + 86 * z ^ 3 + 156 * z ^ 2 - 108 * z - 324) +
        (3 * z ^ 4 + 46 * z ^ 3 + 256 * z ^ 2 + 588 * z + 468) * v) = 0 := by
      simp only [Qz] at hN
      linear_combination 4 * hN - (6 * (z + 2) * v - (7 * z ^ 3 + 62 * z ^ 2 + 156 * z + 108)) * hC2
    exact (mul_eq_zero.1 this).resolve_left hz0
  -- (25b): `F⋆ = 0`
  have hF : (z ^ 2 - 6 * z - 18) * (z ^ 2 + 2 * z - 2) * (z ^ 2 + 6 * z + 6) = 0 := by
    have : 24 * (z + 2) * (z + 3) ^ 4 *
        ((z ^ 2 - 6 * z - 18) * (z ^ 2 + 2 * z - 2) * (z ^ 2 + 6 * z + 6)) = 0 := by
      linear_combination (-(2 * ((z + 3) * (11 * z ^ 4 + 86 * z ^ 3 + 156 * z ^ 2 - 108 * z - 324)) -
        (3 * z ^ 4 + 46 * z ^ 3 + 256 * z ^ 2 + 588 * z + 468) * (z ^ 2 + 2 * z - 6) -
        2 * (3 * z ^ 4 + 46 * z ^ 3 + 256 * z ^ 2 + 588 * z + 468) * v)) * hab -
        (3 * z ^ 4 + 46 * z ^ 3 + 256 * z ^ 2 + 588 * z + 468) ^ 2 * hC2
    exact (mul_eq_zero.1 this).resolve_left
      (mul_ne_zero (mul_ne_zero (by norm_num) h2) (pow_ne_zero 4 hτ))
  -- (27b): `G = 0`
  have hG : 6 * z ^ 5 + 43 * z ^ 4 + 128 * z ^ 3 + 216 * z ^ 2 + 216 * z + 108 = 0 := by
    have : 48 * z ^ 3 * (z + 2) * (z + 3) ^ 6 *
        (6 * z ^ 5 + 43 * z ^ 4 + 128 * z ^ 3 + 216 * z ^ 2 + 216 * z + 108) = 0 := by
      simp only [Cz, Dz] at hCD
      linear_combination ((6 * z ^ 8 + 111 * z ^ 7 + 798 * z ^ 6 + 2942 * z ^ 5 + 5568 * z ^ 4 +
        3096 * z ^ 3 - 7344 * z ^ 2 - 14256 * z - 7776) -
        (6 * z ^ 6 + 63 * z ^ 5 + 358 * z ^ 4 + 1266 * z ^ 3 + 2592 * z ^ 2 + 2808 * z + 1296) *
          (z ^ 2 + 2 * z - 6) -
        2 * v * (6 * z ^ 6 + 63 * z ^ 5 + 358 * z ^ 4 + 1266 * z ^ 3 + 2592 * z ^ 2 + 2808 * z + 1296)) * hCD +
        2 * (6 * z ^ 6 + 63 * z ^ 5 + 358 * z ^ 4 + 1266 * z ^ 3 + 2592 * z ^ 2 + 2808 * z + 1296) ^ 2 * hC2
    exact (mul_eq_zero.1 this).resolve_left
      (mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) (pow_ne_zero 3 hz0)) h2) (pow_ne_zero 6 hτ))
  -- (28): the Bézout identity
  have : (746496 : ℝ) = 0 := by
    linear_combination (-28284 * z ^ 4 - 126868 * z ^ 3 - 269543 * z ^ 2 - 317298 * z - 201258) * hF +
      (4714 * z ^ 5 - 3211 * z ^ 4 - 226040 * z ^ 3 - 527112 * z ^ 2 - 50088 * z + 409428) * hG
  norm_num at this

/-! ### The cases -/

theorem blockK_nonneg (B : Mat3) : 0 ≤ blockK B :=
  mul_nonneg (mul_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _)) (Complex.normSq_nonneg _)

/-- If `K + (z − 1)τ³ ≠ 0`, no modulus equals `τ` ((7)). -/
theorem ne_tau {B : Mat3} {z : ℝ} (hz2 : z ≠ -2) (hp : blockP B = 9 - z ^ 2)
    (hW : blockW B = z ^ 2 * (z + 3) ^ 2) (hΔ : blockK B ≠ (1 - z) * (z + 3) ^ 3) :
    z + 3 - blockX B ≠ 0 ∧ z + 3 - blockY B ≠ 0 ∧ z + 3 - blockZ B ≠ 0 := by
  have hmod := modulus_at_tau (z := z) (X := blockX B) (Y := blockY B) (Z := blockZ B) hp hW
  have h2 : z + 2 ≠ 0 := fun h0 => hz2 (by linarith)
  have hne : (z + 3 - blockX B) * (z + 3 - blockY B) * (z + 3 - blockZ B) ≠ 0 := by
    rw [hmod]
    refine mul_ne_zero h2 fun h0 => hΔ ?_
    simp only [blockK]; linear_combination h0
  exact ⟨fun h0 => hne (by rw [h0]; ring), fun h0 => hne (by rw [h0]; ring), fun h0 => hne (by rw [h0]; ring)⟩

/-- **§5 at the corner**: a zero product with `Z = 0`. -/
theorem zeroK_case (h : ZCtx H l) (hZ0 : blockZ (triBlock H 0 l) = 0) :
    blockK (triBlock H 0 l) = (1 - blockTheta (triBlock H 0 l)) * (blockTheta (triBlock H 0 l) + 3) ^ 3 := by
  obtain ⟨hp, hW, hz0, hz3, -⟩ := corner_data h
  obtain ⟨h12, a1, a2, a3, a4⟩ := h.swap12
  have hτ : blockTheta (triBlock H 0 l) + 3 ≠ 0 := (by linarith : 0 < blockTheta (triBlock H 0 l) + 3).ne'
  have hW' : blockX (triBlock H 0 l) * blockY (triBlock H 0 l) =
      blockTheta (triBlock H 0 l) ^ 2 * (blockTheta (triBlock H 0 l) + 3) ^ 2 := by
    simp only [blockW, hZ0, mul_zero, add_zero, sub_zero] at hW; exact hW
  have hp' : blockX (triBlock H 0 l) + blockY (triBlock H 0 l) = 9 - blockTheta (triBlock H 0 l) ^ 2 := by
    rw [blockP_eq, hZ0] at hp; linarith
  have hpos : 0 < blockX (triBlock H 0 l) * blockY (triBlock H 0 l) := by rw [hW']; positivity
  have hX : 0 < blockX (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by rw [← h0, zero_mul] at hpos; exact lt_irrefl _ hpos)
  have hY : 0 < blockY (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by rw [← h0, mul_zero] at hpos; exact lt_irrefl _ hpos)
  have g1 := (generic_facts h hX hY).1
  have g2 := (generic_facts h12 (by rw [a1]; exact hY) (by rw [a2]; exact hX)).1
  rw [a1, a2, a3, a4] at g2
  rw [hZ0] at g1 g2
  have := zeroK_scalar hX hY hz0 h.z2 hτ hp' hW' (by linear_combination g1) (by linear_combination g2)
  simp only [blockK, hZ0, mul_zero]
  linear_combination this

/-- **§7 at the corner**: a positive product with `X = Y`. -/
theorem repeated_case (h : ZCtx H l) (hK : 0 < blockK (triBlock H 0 l))
    (hXY : blockX (triBlock H 0 l) = blockY (triBlock H 0 l)) :
    blockK (triBlock H 0 l) = (1 - blockTheta (triBlock H 0 l)) * (blockTheta (triBlock H 0 l) + 3) ^ 3 := by
  obtain ⟨hp, hW, hz0, hz3, -⟩ := corner_data h
  have hτ : blockTheta (triBlock H 0 l) + 3 ≠ 0 := (by linarith : 0 < blockTheta (triBlock H 0 l) + 3).ne'
  by_contra hΔ
  obtain ⟨hτX, -, -⟩ := ne_tau h.z2 hp hW hΔ
  have hX : 0 < blockX (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by simp only [blockK] at hK; rw [← h0, zero_mul, zero_mul] at hK; exact lt_irrefl _ hK)
  have g := (generic_facts h hX (lt_of_lt_of_eq hX hXY)).2
  simp only [mul_eq_zero, hK.ne', hτX, false_or] at g
  have rf := repeated_facts h hX hXY (fun e => hτX (by rw [e]; ring))
  refine repeated_core (v := blockX (triBlock H 0 l)) (Z := blockZ (triBlock H 0 l)) hz0 h.z2 hτ
    (by rw [blockP_eq, ← hXY] at hp; linarith) (by simp only [blockW, ← hXY] at hW; exact hW)
    (fun e => hτX (by rw [e]; ring)) ?_ rf
  rw [← hXY] at g
  rcases g with g | g
  · rw [g, zero_mul]
  · rw [g, mul_zero]

/-- **§6 at the corner**: a positive product with pairwise distinct moduli. -/
theorem distinct_case (h : ZCtx H l) (hK : 0 < blockK (triBlock H 0 l))
    (hXY : blockX (triBlock H 0 l) ≠ blockY (triBlock H 0 l))
    (hXZ : blockX (triBlock H 0 l) ≠ blockZ (triBlock H 0 l))
    (hYZ : blockY (triBlock H 0 l) ≠ blockZ (triBlock H 0 l)) :
    blockK (triBlock H 0 l) = (1 - blockTheta (triBlock H 0 l)) * (blockTheta (triBlock H 0 l) + 3) ^ 3 := by
  obtain ⟨hp, hW, -, -, -⟩ := corner_data h
  by_contra hΔ
  obtain ⟨hτX, hτY, hτZ⟩ := ne_tau h.z2 hp hW hΔ
  have hK' := hK
  simp only [blockK] at hK'
  have hX : 0 < blockX (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by rw [← h0, zero_mul, zero_mul] at hK'; exact lt_irrefl _ hK')
  have hY : 0 < blockY (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by rw [← h0, mul_zero, zero_mul] at hK'; exact lt_irrefl _ hK')
  have hZ : 0 < blockZ (triBlock H 0 l) := lt_of_le_of_ne (Complex.normSq_nonneg _)
    (fun h0 => by rw [← h0, mul_zero] at hK'; exact lt_irrefl _ hK')
  obtain ⟨h12, a1, a2, a3, a4⟩ := h.swap12
  obtain ⟨h02, b1, b2, b3, b4⟩ := h.swap02
  have g1 := (generic_facts h hX hY).2
  have g2 := (generic_facts h12 (by rw [a1]; exact hY) (by rw [a2]; exact hX)).2
  have g3 := (generic_facts h02 (by rw [b1]; exact hZ) (by rw [b2]; exact hY)).2
  simp only [blockK] at g1 g2 g3
  rw [a1, a2, a3, a4] at g2
  rw [b1, b2, b3, b4] at g3
  simp only [mul_eq_zero, hX.ne', hY.ne', hZ.ne', hτX, hτY, hτZ, sub_ne_zero.2 hXZ, sub_ne_zero.2 hYZ,
    sub_ne_zero.2 hXY.symm, false_or] at g1 g2 g3
  exact distinct_core h.z2 hXY hXZ hYZ g1 g2 g3

/-- **`K = (1 − z)(z + 3)³`** at a zero-`J` corner. -/
theorem product_core (h : ZCtx H l) :
    blockK (triBlock H 0 l) = (1 - blockTheta (triBlock H 0 l)) * (blockTheta (triBlock H 0 l) + 3) ^ 3 := by
  obtain ⟨h01, a1, a2, a3, a4⟩ := h.swap01
  obtain ⟨h02, b1, b2, b3, b4⟩ := h.swap02
  rcases (blockK_nonneg (triBlock H 0 l)).lt_or_eq with hK | hK
  · by_cases hXY : blockX (triBlock H 0 l) = blockY (triBlock H 0 l)
    · exact repeated_case h hK hXY
    by_cases hXZ : blockX (triBlock H 0 l) = blockZ (triBlock H 0 l)
    · have e := repeated_case h01 (hK.trans_eq (by simp only [blockK]; rw [a1, a2, a3]; ring))
        (by rw [a1, a2]; exact hXZ)
      simp only [blockK] at e ⊢; rw [a1, a2, a3, a4] at e; linear_combination e
    by_cases hYZ : blockY (triBlock H 0 l) = blockZ (triBlock H 0 l)
    · have e := repeated_case h02 (hK.trans_eq (by simp only [blockK]; rw [b1, b2, b3]; ring))
        (by rw [b1, b2]; exact hYZ.symm)
      simp only [blockK] at e ⊢; rw [b1, b2, b3, b4] at e; linear_combination e
    exact distinct_case h hK hXY hXZ hYZ
  · have h0 := hK.symm
    simp only [blockK, mul_eq_zero] at h0
    rcases h0 with (h0 | h0) | h0
    · have e := zeroK_case h02 (by rw [b3]; exact h0)
      simp only [blockK] at e ⊢; rw [b1, b2, b3, b4] at e; linear_combination e
    · have e := zeroK_case h01 (by rw [a3]; exact h0)
      simp only [blockK] at e ⊢; rw [a1, a2, a3, a4] at e; linear_combination e
    · exact zeroK_case h h0

/-- **The zero-`J` product** (return O, `REPORT.md` Z1): `K = (1 − z)(z + 3)³`. -/
theorem zeroJProduct : ZeroJProduct := by
  intro H hH hc hinv l hJ hz3 hz2
  exact product_core ⟨hH, hc.triBlock_im 0, triBlock_det_ne hinv 0 l, triBlock_det_ne hinv 0 (19 - l), hJ,
    hz3, hz2⟩

end NoFourMUBs.PRM.Coverage
