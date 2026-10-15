import NoFourMUBs.PRM.CoverageStripIdNonzeroStage
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataN
import NoFourMUBs.PRM.CoverageStripIdNonzeroDataQ

/-!
# Critical strip classification (I4): the nonzero-`J` identity from the kernel checks

`nonzeroJ_of_checks`: `NonzeroJAlgebra` follows from the kernel checks (stated as hypotheses here and
discharged in `CoverageStripIdNonzero`):

* the staged half data (`λ`'s, products, half moments) and their combination `mD`;
* `momentPolyQ mD = n / (2⁵ h⁴ Π ℓ⁵)`;
* `n h⁸ + 2¹⁷ k² (3k² + 1)³ Q_h (Π ℓ)³ = q G`.

On the actual data `G = 0`, `L_{j,±} = 2 ℓ_{j,±}/h²` and `Q_h = h⁴ Q(k, K)`, which gives (6)–(7).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments Side

section Eval

variable (X Y k : ℂ)

def pt (X Y k : ℂ) : Fin 3 → ℂ := ![X, Y, k]

@[simp] theorem ev_vX : vX.eval (pt X Y k) = X := rfl
@[simp] theorem ev_vY : vY.eval (pt X Y k) = Y := rfl
@[simp] theorem ev_vk : vk.eval (pt X Y k) = k := rfl

def lA0 (X Y k : ℂ) : ℂ := 6 * k ^ 2 + 2 - (1 + k) * (1 + k ^ 2) * (X + Y)
def lA1 (X Y k : ℂ) : ℂ := 6 * (1 + k ^ 2) + 4 * k - (1 + k) * (1 + k ^ 2) * (9 - Y)
def lA2 (X Y k : ℂ) : ℂ := 6 * (1 + k ^ 2) + 4 * k - (1 + k) * (1 + k ^ 2) * (9 - X)
def lB0 (X Y k : ℂ) : ℂ := 6 * k ^ 2 + 2 - (1 - k) * (1 + k ^ 2) * (X + Y)
def lB1 (X Y k : ℂ) : ℂ := 6 * (1 + k ^ 2) - 4 * k - (1 - k) * (1 + k ^ 2) * (9 - Y)
def lB2 (X Y k : ℂ) : ℂ := 6 * (1 + k ^ 2) - 4 * k - (1 - k) * (1 + k ^ 2) * (9 - X)

theorem ev_ch : ch.eval (pt X Y k) = 1 + k ^ 2 := by simp [ch]
theorem ev_chZ : chZ.eval (pt X Y k) = 9 * (1 + k ^ 2) - 4 - (1 + k ^ 2) * X - (1 + k ^ 2) * Y := by
  simp [chZ, ch]

theorem ev_table (j : Fin 10) : (C1.f j).eval (pt X Y k) =
    ![X, Y, 1 + k ^ 2, 2, lA0 X Y k, lA1 X Y k, lA2 X Y k, lB0 X Y k, lB1 X Y k, lB2 X Y k] j := by
  fin_cases j <;> simp [C1, ch, cl0A, cl1A, cl2A, cl0B, cl1B, cl2B, lA0, lA1, lA2, lB0, lB1, lB2]

theorem ev_cP : cP.eval (pt X Y k) =
    lA0 X Y k * lA1 X Y k * lA2 X Y k * (lB0 X Y k * lB1 X Y k * lB2 X Y k) := by
  simp [cP, ch, cl0A, cl1A, cl2A, cl0B, cl1B, cl2B, lA0, lA1, lA2, lB0, lB1, lB2]

theorem ev_cG : cG.eval (pt X Y k) = (1 + k ^ 2) ^ 3 * X * Y +
    (1 + k ^ 2) ^ 2 * (X + Y) * (9 * (1 + k ^ 2) - 4 - (1 + k ^ 2) * X - (1 + k ^ 2) * Y) -
    (1 + k ^ 2) ^ 2 * X * Y * (9 * (1 + k ^ 2) - 4 - (1 + k ^ 2) * X - (1 + k ^ 2) * Y) -
    2 * (16 - 32 * (1 + k ^ 2) + 18 * (1 + k ^ 2) ^ 2) := by
  simp [cG, ch, chZ]

/-- `Q_h = h⁴ Q(k, K)` when `hK = XY·hZ`. -/
theorem ev_cQh (Kc : ℂ) (hK : (X * Y * (9 * (1 + k ^ 2) - 4 - (1 + k ^ 2) * X - (1 + k ^ 2) * Y)) =
    (1 + k ^ 2) * Kc) :
    cQh.eval (pt X Y k) =
      (1 + k ^ 2) ^ 4 * (Quartic.qCoeffs.map fun c => (c.1 : ℂ) * k ^ c.2.1 * Kc ^ c.2.2).sum := by
  have key : ∀ L : List (ℤ × ℕ × ℕ), (∀ c ∈ L, c.2.2 ≤ 4) →
      ((L.map fun c : ℤ × ℕ × ℕ => Circ.const c.1 * vk ^ c.2.1 * cKh ^ c.2.2 * ch ^ (4 - c.2.2)).foldr
        (· + ·) 0).eval (pt X Y k) =
        (1 + k ^ 2) ^ 4 * (L.map fun c : ℤ × ℕ × ℕ => (c.1 : ℂ) * k ^ c.2.1 * Kc ^ c.2.2).sum := by
    intro L hL
    induction L with
    | nil => simp
    | cons c L ih =>
      simp only [List.map_cons, List.foldr_cons, Circ.eval_add', List.sum_cons]
      rw [ih (fun d hd => hL d (List.mem_cons_of_mem _ hd))]
      have hc : c.2.2 ≤ 4 := hL c List.mem_cons_self
      have e1 : cKh.eval (pt X Y k) = (1 + k ^ 2) * Kc := by
        rw [← hK]; simp [cKh, chZ, ch]
      simp only [Circ.eval_mul', Circ.eval_pow', Circ.eval_const, e1, ev_ch, ev_vk]
      have : (1 + k ^ 2) ^ 4 = (1 + k ^ 2) ^ c.2.2 * (1 + k ^ 2) ^ (4 - c.2.2) := by
        rw [← pow_add, Nat.add_sub_cancel' hc]
      rw [mul_pow, this]; ring
  exact key _ (by decide)

end Eval

theorem cast_Q (k K : ℝ) : ((Quartic.Q k K : ℝ) : ℂ) =
    (Quartic.qCoeffs.map fun c => (c.1 : ℂ) * (k : ℂ) ^ c.2.1 * (K : ℂ) ^ c.2.2).sum := by
  rw [Quartic.Q, ← Complex.ofRealHom_eq_coe, map_list_sum, List.map_map]
  congr 1; apply List.map_congr_left; intro c _; simp

theorem val_fq {ρ : Fin 3 → ℂ} {ζ : ℂ} (c : V) : (fq c).val ρ ζ = c.eval ρ := by
  simp [fq, QF.val_ofFrac, Frac.val_ofCirc]

theorem rel_zeta_nz {s t r J : ℂ} (hs : s ≠ 0) (ht : t ≠ 0)
    (hJc : conj s * conj r * t + s * r * conj t = J) :
    (r * s / t) ^ 2 = J / (t * conj t) * (r * s / t) + -(s * conj s * (r * conj r)) / (t * conj t) := by
  have : conj t ≠ 0 := by simpa using ht
  rw [← hJc]; field_simp; ring

theorem R_zeta_nz {s t r J : ℂ} (hs : s ≠ 0) (ht : t ≠ 0)
    (hJc : conj s * conj r * t + s * r * conj t = J) :
    J / (s * conj s) + -(t * conj t) / (s * conj s) * (r * s / t) = conj r * t / s := by
  have : conj s ≠ 0 := by simpa using hs
  rw [← hJc]; field_simp; ring

/-- The `λ` inputs of the two halves. -/
abbrev insA := lamS (C := C1) 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6)
abbrev insB := lamS (C := C1) (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9)

/-- The denominator `2⁵ h⁴ Π ℓ⁵` of the square sum. -/
def Dn : Fin 10 → ℕ := ![0, 0, 4, 5, 5, 5, 5, 5, 5, 5]

set_option maxHeartbeats 10000000 in
/-- **`NonzeroJAlgebra` from the kernel checks.** -/
theorem nonzeroJ_of_checks
    (hlamA : ∀ i, i < 6 → qvalidD (insA i - lamA i) = true)
    (hlamB : ∀ i, i < 6 → qvalidD (insB i - lamB i) = true)
    (hfldA : ∀ i, i < 12 → qvalidD (fldS lamA qzA i - fldA i) = true)
    (hfldB : ∀ i, i < 12 → qvalidD (fldS lamB qzB i - fldB i) = true)
    (hmomA : ∀ p ∈ usedMoments, qvalidD ((halfOf 1 qX 1 qY QF.z qR fldA).mom p - momA p) = true)
    (hmomB : ∀ p ∈ usedMoments,
      qvalidD ((halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB).mom p - momB p) = true)
    (hcomb : ∀ p ∈ usedMoments, qvalidD (momA p + momB p - mD p) = true)
    (hsum : ∀ (ρ : Fin 3 → ℂ) (ζ : ℂ), QF.Good C1 ρ ζ →
      (momentPolyQ mD).val ρ ζ = (⟨⟨nC, Dn⟩, 0⟩ : Q).val ρ ζ)
    (hquot : ∀ ρ : Fin 3 → ℂ,
      (nC * ch ^ 8 + 131072 * vk ^ 2 * (3 * vk ^ 2 + 1) ^ 3 * cQh * cP ^ 3 - qC * cG).eval ρ = 0) :
    NonzeroJAlgebra := by
  intro s t r k hk hs ht hr hp hJ hW hLA hLB
  -- the scalar data
  set X : ℂ := (Complex.normSq s : ℂ) with hXdef
  set Y : ℂ := (Complex.normSq t : ℂ) with hYdef
  set Zr : ℂ := (Complex.normSq r : ℂ) with hZdef
  set kc : ℂ := (k : ℂ) with hkc
  have hX : X ≠ 0 := by simpa [hXdef] using hs
  have hY : Y ≠ 0 := by simpa [hYdef] using ht
  have hh : (1 + kc ^ 2) ≠ 0 := by
    rw [hkc]; exact_mod_cast (show (1 + k ^ 2 : ℝ) ≠ 0 by positivity)
  have hZ : Zr = 9 - 4 / (1 + kc ^ 2) - X - Y := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hp
    simp only [pS, Quartic.pk, Quartic.qk, Quartic.hk] at this; push_cast at this
    rw [hXdef, hYdef, hZdef, hkc]; linear_combination this
  have hJc : conj s * conj r * t + s * r * conj t = 8 * kc / (1 + kc ^ 2) ^ 2 := by
    rw [← cast_jS, hJ]; simp [Quartic.Jk, Quartic.hk, hkc]
  have hG : X * Y + X * Zr + Y * Zr - X * Y * Zr =
      4 / (1 + kc ^ 2) * ((4 / (1 + kc ^ 2)) ^ 2 - 8 * (4 / (1 + kc ^ 2)) + 18) / 2 := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hW
    simp only [Quartic.Wk, Quartic.qk, Quartic.hk] at this; push_cast at this
    rw [hXdef, hYdef, hZdef, hkc]; linear_combination this
  -- the denominators
  have hLc : ∀ j, ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ) ≠ 0 :=
    fun j => by exact_mod_cast hLA j
  have hLc' : ∀ j, ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j : ℝ) : ℂ) ≠ 0 :=
    fun j => by exact_mod_cast hLB j
  have eA0 : ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 0 : ℝ) : ℂ) = 2 * lA0 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_zero]
    push_cast; rw [← hZdef, hZ, ← hkc, lA0]; field_simp; ring
  have eA1 : ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 1 : ℝ) : ℂ) = 2 * lA1 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_one,
      Matrix.head_cons]
    push_cast; rw [← hYdef, ← hkc, lA1]; field_simp; ring
  have eA2 : ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 2 : ℝ) : ℂ) = 2 * lA2 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_two,
      Matrix.tail_cons, Matrix.head_cons]
    push_cast; rw [← hXdef, ← hkc, lA2]; field_simp; ring
  have eB0 : ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 0 : ℝ) : ℂ) =
      2 * lB0 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_zero,
      Complex.normSq_neg]
    push_cast; rw [← hZdef, hZ, ← hkc, lB0]; field_simp; ring
  have eB1 : ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 1 : ℝ) : ℂ) =
      2 * lB1 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_one,
      Matrix.head_cons, Complex.normSq_neg]
    push_cast; rw [← hYdef, ← hkc, lB1]; field_simp; ring
  have eB2 : ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 2 : ℝ) : ℂ) =
      2 * lB2 X Y kc / (1 + kc ^ 2) ^ 2 := by
    simp only [lamL, Quartic.zS, Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, Matrix.cons_val_two,
      Matrix.tail_cons, Matrix.head_cons, Complex.normSq_neg]
    push_cast; rw [← hXdef, ← hkc, lB2]; field_simp; ring
  have nz : ∀ {a : ℂ}, 2 * a / (1 + kc ^ 2) ^ 2 ≠ 0 → a ≠ 0 := fun h h0 => h (by rw [h0]; simp)
  have hA0 := nz (eA0 ▸ hLc 0); have hA1 := nz (eA1 ▸ hLc 1); have hA2 := nz (eA2 ▸ hLc 2)
  have hB0 := nz (eB0 ▸ hLc' 0); have hB1 := nz (eB1 ▸ hLc' 1); have hB2 := nz (eB2 ▸ hLc' 2)
  -- the scaling
  rw [halves_scaled s t r (Quartic.zS 1 k) (Quartic.gS 1 k) (Quartic.zS (-1) k) (Quartic.gS (-1) k) hs ht
    hLA hLB]
  rw [← hXdef, ← hYdef, ← hZdef]
  set ζ : ℂ := r * s / t with hζ
  set ρ := pt X Y kc with hρ
  have hXc : X = s * conj s := cast_normSq' s
  have hYc : Y = t * conj t := cast_normSq' t
  have hZc : Zr = r * conj r := cast_normSq' r
  have hev : ∀ j, (C1.f j).eval ρ =
      ![X, Y, 1 + kc ^ 2, 2, lA0 X Y kc, lA1 X Y kc, lA2 X Y kc, lB0 X Y kc, lB1 X Y kc, lB2 X Y kc] j :=
    fun j => by rw [hρ, ev_table]
  have hdv : ∀ e : Fin 10 → ℕ, Frac.dval ρ C1 e = X ^ e 0 * Y ^ e 1 * (1 + kc ^ 2) ^ e 2 * 2 ^ e 3 *
      lA0 X Y kc ^ e 4 * lA1 X Y kc ^ e 5 * lA2 X Y kc ^ e 6 * lB0 X Y kc ^ e 7 * lB1 X Y kc ^ e 8 *
      lB2 X Y kc ^ e 9 := by
    intro e
    simp only [Frac.dval, Fin.prod_univ_succ, Fin.prod_univ_zero, hev]
    simp [Fin.succ]
    ring
  have good : QF.Good C1 ρ ζ := by
    refine ⟨fun j => ?_, ?_⟩
    · rw [hev]; fin_cases j <;> simp [hX, hY, hh, hA0, hA1, hA2, hB0, hB1, hB2]
    · have vA : (QF.relA C1).val ρ = 8 * kc / (1 + kc ^ 2) ^ 2 / Y := by
        rw [show (QF.relA C1).val ρ = (8 * vk : V).eval ρ / Frac.dval ρ C1 ![0, 1, 2, 0, 0, 0, 0, 0, 0, 0]
          from rfl, hdv]
        simp [hρ, vk, pt]; field_simp
      have vB : (QF.relB C1).val ρ = -(X * Zr) / Y := by
        rw [show (QF.relB C1).val ρ = (-(vX * chZ) : V).eval ρ /
          Frac.dval ρ C1 ![0, 1, 1, 0, 0, 0, 0, 0, 0, 0] from rfl, hdv]
        simp [hρ, vX, vY, vk, chZ, ch, pt]; rw [hZ]; field_simp
      rw [vA, vB, hXc, hYc, hZc]
      have := rel_zeta_nz hs ht hJc
      rw [hζ]; convert this using 2
  have v1 : (1 : Q).val ρ ζ = 1 := QF.val_one'
  have vX' : qX.val ρ ζ = X := by rw [qX, val_fq, hρ]; rfl
  have vY' : qY.val ρ ζ = Y := by rw [qY, val_fq, hρ]; rfl
  have vR : qR.val ρ ζ = conj r * t / s := by
    have e0 : (⟨8 * vk, ![1, 0, 2, 0, 0, 0, 0, 0, 0, 0]⟩ : Frac C1).val ρ = 8 * kc / (1 + kc ^ 2) ^ 2 / X := by
      simp only [Frac.val, hdv]; simp [hρ, vk, pt] <;> field_simp
    have e1 : (⟨-vY, ![1, 0, 0, 0, 0, 0, 0, 0, 0, 0]⟩ : Frac C1).val ρ = -Y / X := by
      simp only [Frac.val, hdv]; simp [hρ, vY, pt]
    simp only [qR, QF.val, e0, e1]
    rw [hζ, hXc, hYc]
    have := R_zeta_nz hs ht hJc
    rw [← this]
  have vZ : qZ.val ρ ζ = Zr := by
    simp only [qZ, QF.val_ofFrac, Frac.val, hdv]; simp [hρ, chZ, ch, vX, vY, vk, pt]
    rw [hZ]; field_simp
  have vzA : qzA.val ρ ζ = ((Quartic.zS 1 k : ℝ) : ℂ) := by
    simp only [qzA, QF.val_ofFrac, Frac.val, hdv]; simp [hρ, vk, pt, Quartic.zS, Quartic.hk, hkc]
  have vzB : qzB.val ρ ζ = ((Quartic.zS (-1) k : ℝ) : ℂ) := by
    simp only [qzB, QF.val_ofFrac, Frac.val, hdv]; simp [hρ, vk, pt, Quartic.zS, Quartic.hk, hkc]; ring
  have viA0 : (iL 4).val ρ ζ = ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 0 : ℝ) : ℂ)⁻¹ := by
    rw [eA0]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have viA1 : (iL 5).val ρ ζ = ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 1 : ℝ) : ℂ)⁻¹ := by
    rw [eA1]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have viA2 : (iL 6).val ρ ζ = ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 2 : ℝ) : ℂ)⁻¹ := by
    rw [eA2]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have viB0 : (iL 7).val ρ ζ = ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 0 : ℝ) : ℂ)⁻¹ := by
    rw [eB0]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have viB1 : (iL 8).val ρ ζ = ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 1 : ℝ) : ℂ)⁻¹ := by
    rw [eB1]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have viB2 : (iL 9).val ρ ζ = ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 2 : ℝ) : ℂ)⁻¹ := by
    rw [eB2]; simp only [iL, QF.val_ofFrac, Frac.val, hdv]
    simp [hρ, ch, vk, pt] <;> field_simp
  have v1 : (1 : Q).val ρ ζ = 1 := QF.val_one'
  have vX' : qX.val ρ ζ = X := by rw [qX, val_fq, hρ]; rfl
  have vY' : qY.val ρ ζ = Y := by rw [qY, val_fq, hρ]; rfl
  have hAh : (halfQ 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) qzA).val ρ ζ =
      fData 1 X 1 Y ζ (conj r * t / s) X Y Zr ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 0 : ℝ))
        ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 1 : ℝ))
        ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) 2 : ℝ)) ((Quartic.zS 1 k : ℝ)) := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ viA0 viA1 viA2, v1, vX', vY', QF.val_z, vR, vZ, vzA]
  have hBh : (halfQ (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) qzB).val ρ ζ =
      fData (-1) (-X) (-1) (-Y) (-ζ) (-(conj r * t / s)) X Y Zr
        ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 0 : ℝ))
        ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 1 : ℝ))
        ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) 2 : ℝ)) ((Quartic.zS (-1) k : ℝ)) := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ viB0 viB1 viB2]
    simp only [QF.val_neg]
    rw [v1, vX', vY', QF.val_z, vR, vZ, vzB]
  have sA := halfOf_val good 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) qzA lamA fldA
    (fun i hi => (QF.eq_of_validD good (hlamA i hi)).symm)
    (fun i hi => (QF.eq_of_validD good (hfldA i hi)).symm)
  have sB := halfOf_val good (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) qzB lamB fldB
    (fun i hi => (QF.eq_of_validD good (hlamB i hi)).symm)
    (fun i hi => (QF.eq_of_validD good (hfldB i hi)).symm)
  rw [← hAh, ← hBh, ← sA, ← sB]
  rw [momentPoly_congr (M' := fun p => (mD p).val ρ ζ) (fun p hp => by
    rw [← HalfQ.val_mom good _ hp, ← HalfQ.val_mom good _ hp,
      QF.eq_of_validD good (hmomA p hp), QF.eq_of_validD good (hmomB p hp), ← QF.val_add good,
      QF.eq_of_validD good (hcomb p hp)])]
  rw [← val_momentPolyQ good, hsum ρ ζ good]
  have en : (⟨⟨nC, Dn⟩, 0⟩ : Q).val ρ ζ = nC.eval ρ / Frac.dval ρ C1 Dn := by
    simp only [QF.val, Frac.val]; rw [show ((0 : Frac C1)).num = 0 from rfl]; simp
  rw [en]
  -- the quotient identity
  have q := hquot ρ
  simp only [Circ.eval_sub', Circ.eval_add', Circ.eval_mul', Circ.eval_pow', Circ.eval_ofNat,
    Circ.eval_one'] at q
  have hGe : cG.eval ρ = 0 := by
    rw [hρ, ev_cG]
    have e : 9 * (1 + kc ^ 2) - 4 - (1 + kc ^ 2) * X - (1 + kc ^ 2) * Y = (1 + kc ^ 2) * Zr := by
      rw [hZ]; field_simp
    have hG' : (1 + kc ^ 2) ^ 3 * (X * Y + X * Zr + Y * Zr - X * Y * Zr) =
        2 * (16 - 32 * (1 + kc ^ 2) + 18 * (1 + kc ^ 2) ^ 2) := by
      rw [hG]; field_simp; ring
    rw [e]; linear_combination hG'
  have hQe : cQh.eval ρ = (1 + kc ^ 2) ^ 4 * ((Quartic.Q k
      (Complex.normSq s * Complex.normSq t * Complex.normSq r) : ℝ) : ℂ) := by
    rw [hρ, ev_cQh X Y kc (X * Y * Zr) (by rw [hZ]; field_simp), cast_Q]
    push_cast; rw [← hXdef, ← hYdef, ← hZdef, ← hkc]
  have hPe : cP.eval ρ = lA0 X Y kc * lA1 X Y kc * lA2 X Y kc * (lB0 X Y kc * lB1 X Y kc * lB2 X Y kc) := by
    rw [hρ, ev_cP]
  have hch : ch.eval ρ = 1 + kc ^ 2 := by rw [hρ, ev_ch]
  have hvk : vk.eval ρ = kc := by rw [hρ]; rfl
  rw [hGe, hQe, hPe, hch, hvk, mul_zero, sub_zero] at q
  rw [hdv Dn, Fin.prod_univ_three, Fin.prod_univ_three, eA0, eA1, eA2, eB0, eB1, eB2]
  simp only [Dn, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons, Matrix.cons_val_two,
    Matrix.tail_cons, Matrix.cons_val_succ', pow_zero, one_mul]
  push_cast
  rw [← hkc]
  generalize ((Quartic.Q k (Complex.normSq s * Complex.normSq t * Complex.normSq r) : ℝ) : ℂ) = QQ at q ⊢
  generalize nC.eval ρ = N at q ⊢
  generalize lA0 X Y kc = a0 at q hA0 ⊢
  generalize lA1 X Y kc = a1 at q hA1 ⊢
  generalize lA2 X Y kc = a2 at q hA2 ⊢
  generalize lB0 X Y kc = b0 at q hB0 ⊢
  generalize lB1 X Y kc = b1 at q hB1 ⊢
  generalize lB2 X Y kc = b2 at q hB2 ⊢
  generalize 1 + kc ^ 2 = H at q hh ⊢
  have hN : N = -(131072 * kc ^ 2 * (3 * kc ^ 2 + 1) ^ 3 * (H ^ 4 * QQ) * (a0 * a1 * a2 * (b0 * b1 * b2)) ^ 3) /
      H ^ 8 := by
    rw [eq_div_iff (pow_ne_zero 8 hh)]; linear_combination q
  rw [hN]
  field_simp
  ring


end NoFourMUBs.PRM.Coverage.StripId.Nonzero
