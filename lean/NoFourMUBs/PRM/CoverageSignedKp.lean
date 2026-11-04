import NoFourMUBs.PRM.CoverageSignedGauge

/-!
# The weighted signed sum on the curve `K₊` (return K, `REPORT.md` §5)

`X = Y = (3k² + 2k + 1)/h`, `Z = (3k² − 4k + 3)/h`; gauge and circuits as for `K₀`
(`CoverageSignedK0`), with `ζ² = (J/X) ζ − Z`, `J/X = 8k/(h(3k² + 2k + 1))`.  The moment denominators
are `L_{0,+} = −4k(3k² + 2k + 3)/h²`, `L_{1,+} = L_{2,+} = −4(3k³ − k² + k + 1)/h²`,
`L_{0,−} = 4k(k + 1)(3k − 1)/h²`, `L_{1,−} = L_{2,−} = 4(3k − 1)h/h²`.  The weighted sum is
`−64k²(3k² + 1)²/(h⁴(3k² + 2k + 1))` (`Kp_gauge`).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.SignedKp

open NoFourMUBs.Kronecker StripMoments Side

abbrev V := Circ 1

def vk : V := Circ.var 0
def ch : V := 1 + vk ^ 2

/-- The denominators `h, 2, 3k³ − k² + k + 1, k, 3k² + 2k + 3, 3k − 1, k + 1, 3k² + 2k + 1` and
`ζ² = (8k/(h(3k² + 2k + 1))) ζ − (3k² − 4k + 3)/h`. -/
def C0 : Ctx 1 8 :=
  ⟨![ch, 2, 3 * vk ^ 3 - vk ^ 2 + vk + 1, vk, 3 * vk ^ 2 + 2 * vk + 3, 3 * vk - 1, vk + 1,
    3 * vk ^ 2 + 2 * vk + 1], (8 * vk, ![1, 0, 0, 0, 0, 0, 0, 1]),
    (-(3 * vk ^ 2 - 4 * vk + 3), ![1, 0, 0, 0, 0, 0, 0, 0])⟩

abbrev Q := QF C0

def fr (c : V) (d : Fin 8 → ℕ) : Q := QF.ofFrac ⟨c, d⟩

def qX : Q := fr (3 * vk ^ 2 + 2 * vk + 1) ![1, 0, 0, 0, 0, 0, 0, 0]
def qZ : Q := fr (3 * vk ^ 2 - 4 * vk + 3) ![1, 0, 0, 0, 0, 0, 0, 0]
def qR : Q := fr (8 * vk) ![1, 0, 0, 0, 0, 0, 0, 1] - QF.z
def qzA : Q := fr (-(2 * (1 + vk))) ![1, 0, 0, 0, 0, 0, 0, 0]
def qzB : Q := fr (-(2 * (1 - vk))) ![1, 0, 0, 0, 0, 0, 0, 0]
def iA : Fin 3 → Q := ![fr (-(ch ^ 2)) ![0, 2, 0, 1, 1, 0, 0, 0], fr (-(ch ^ 2)) ![0, 2, 1, 0, 0, 0, 0, 0],
  fr (-(ch ^ 2)) ![0, 2, 1, 0, 0, 0, 0, 0]]
def iB : Fin 3 → Q := ![fr (ch ^ 2) ![0, 2, 0, 1, 0, 1, 1, 0], fr ch ![0, 2, 0, 0, 0, 1, 0, 0],
  fr ch ![0, 2, 0, 0, 0, 1, 0, 0]]
def qV : Q := fr (-(64 * vk ^ 2 * (3 * vk ^ 2 + 1) ^ 2)) ![4, 0, 0, 0, 0, 0, 0, 1]

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem valid : qvalidR (weightedPolyQ (gaugeSum qX qX qZ QF.z qR qzA qzB iA iB) - qV) 0 = true := by
  decide +kernel

/-! ### Evaluation at the data -/

section Eval

variable {k : ℝ} {ζ : ℂ}

theorem val_fr (c : V) (d : Fin 8 → ℕ) :
    (fr c d).val ![(k : ℂ)] ζ = c.eval ![(k : ℂ)] / ∏ j, ((C0.f j).eval ![(k : ℂ)]) ^ d j := by
  simp [fr, QF.val_ofFrac, Frac.val, Frac.dval]

theorem ev_table (j : Fin 8) : (C0.f j).eval ![(k : ℂ)] =
    (![1 + (k : ℂ) ^ 2, 2, 3 * k ^ 3 - k ^ 2 + k + 1, k, 3 * k ^ 2 + 2 * k + 3, 3 * k - 1, k + 1,
      3 * k ^ 2 + 2 * k + 1] : Fin 8 → ℂ) j := by
  fin_cases j <;> simp [C0, ch, vk]

end Eval

/-- `X = Y = (3k² + 2k + 1)/h`, `Z = (3k² − 4k + 3)/h`. -/
def Xc (k : ℂ) : ℂ := (3 * k ^ 2 + 2 * k + 1) / (1 + k ^ 2)
def Zc (k : ℂ) : ℂ := (3 * k ^ 2 - 4 * k + 3) / (1 + k ^ 2)

set_option maxHeartbeats 4000000 in
/-- **The weighted signed sum on `K₊`**, in the gauge. -/
theorem Kp_gauge {k : ℝ} (hk : 0 < k) {ζ R : ℂ} (hR : R = 8 * k / ((1 + (k : ℂ) ^ 2) * (3 * k ^ 2 + 2 * k + 1)) - ζ)
    (hrel : ζ ^ 2 = 8 * k / ((1 + (k : ℂ) ^ 2) * (3 * k ^ 2 + 2 * k + 1)) * ζ - Zc k) {LA LB : Fin 3 → ℂ}
    (hLA : ∀ j, LA j = gC 1 k + (9 - ![Zc k, Xc k, Xc k] j) * zC 1 k)
    (hLB : ∀ j, LB j = gC (-1) k + (9 - ![Zc k, Xc k, Xc k] j) * zC (-1) k)
    (hA0 : ∀ j, LA j ≠ 0) (hB0 : ∀ j, LB j ≠ 0) :
    weightedPoly (fun p => (fData 1 (Xc k) 1 (Xc k) ζ R (Xc k) (Xc k) (Zc k) (LA 0) (LA 1) (LA 2)
        (zC 1 k)).mom p +
      (fData (-1) (-Xc k) (-1) (-Xc k) (-ζ) (-R) (Xc k) (Xc k) (Zc k) (LB 0) (LB 1) (LB 2)
        (zC (-1) k)).mom p) =
      -(64 * k ^ 2 * (3 * k ^ 2 + 1) ^ 2) / ((1 + (k : ℂ) ^ 2) ^ 4 * (3 * k ^ 2 + 2 * k + 1)) := by
  have hh : (1 + (k : ℂ) ^ 2) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  have hk0 : (k : ℂ) ≠ 0 := by exact_mod_cast hk.ne'
  have p1 : (3 * (k : ℂ) ^ 3 - k ^ 2 + k + 1) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 3 - k ^ 2 + k + 1 : ℝ) ≠ 0 by nlinarith [sq_nonneg (k - 1 / 6), mul_pos hk hk])
  have p2 : (3 * (k : ℂ) ^ 2 + 2 * k + 3) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 2 + 2 * k + 3 : ℝ) ≠ 0 by positivity)
  have p3 : ((k : ℂ) + 1) ≠ 0 := by exact_mod_cast (show (k + 1 : ℝ) ≠ 0 by positivity)
  have p6 : (3 * (k : ℂ) ^ 2 + 2 * k + 1) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 2 + 2 * k + 1 : ℝ) ≠ 0 by positivity)
  -- the six denominators, factored
  have eA : ∀ j, LA j = (![-4 * k * (3 * k ^ 2 + 2 * k + 3), -4 * (3 * k ^ 3 - k ^ 2 + k + 1), -4 * (3 * k ^ 3 - k ^ 2 + k + 1)] : Fin 3 → ℂ) j / (1 + (k : ℂ) ^ 2) ^ 2 := by
    intro j; rw [hLA]; fin_cases j <;> simp [gC, zC, Xc, Zc] <;> field_simp <;> ring
  have eB : ∀ j, LB j = (![4 * k * (k + 1) * (3 * k - 1), 4 * (3 * k - 1) * (1 + k ^ 2), 4 * (3 * k - 1) * (1 + k ^ 2)] : Fin 3 → ℂ) j / (1 + (k : ℂ) ^ 2) ^ 2 := by
    intro j; rw [hLB]; fin_cases j <;> simp [gC, zC, Xc, Zc] <;> field_simp <;> ring
  have p5 : 3 * (k : ℂ) - 1 ≠ 0 := by
    intro h0; apply hB0 1; rw [eB]; simp [h0]
  set ρ : Fin 1 → ℂ := ![(k : ℂ)]
  have good : QF.Good C0 ρ ζ := by
    refine ⟨fun j => ?_, ?_⟩
    · rw [ev_table]; fin_cases j <;> simp [hh, hk0, p1, p2, p3, p5, p6]
    · simp only [QF.relA, QF.relB, C0, Frac.val, Frac.dval, Fin.prod_univ_succ, Fin.prod_univ_zero]
      simp [ρ, ch, vk]
      rw [hrel, Zc]; field_simp; ring
  have vX : qX.val ρ ζ = Xc k := by
    rw [qX, val_fr]; simp [Fin.prod_univ_succ, ev_table, Xc, ρ, vk]
  have vZ : qZ.val ρ ζ = Zc k := by
    rw [qZ, val_fr]; simp [Fin.prod_univ_succ, ev_table, Zc, ρ, vk]
  have vR : qR.val ρ ζ = R := by
    rw [qR, QF.val_sub good, val_fr, QF.val_z, hR]; simp [Fin.prod_univ_succ, ev_table, ρ, vk] <;> field_simp
  have vzA : qzA.val ρ ζ = zC 1 k := by
    rw [qzA, val_fr]; simp [Fin.prod_univ_succ, ev_table, zC, ρ, vk] <;> ring
  have vzB : qzB.val ρ ζ = zC (-1) k := by
    rw [qzB, val_fr]; simp [Fin.prod_univ_succ, ev_table, zC, ρ, vk] <;> ring
  have viA : ∀ j, (iA j).val ρ ζ = (LA j)⁻¹ := by
    intro j; rw [eA, inv_div]
    fin_cases j <;> simp [iA, val_fr, Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have viB : ∀ j, (iB j).val ρ ζ = (LB j)⁻¹ := by
    intro j; rw [eB, inv_div]
    fin_cases j <;> simp [iB, val_fr, Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have e := gauge_check good vX vX vZ QF.val_z vR vzA vzB viA viB valid
  rw [e, qV, val_fr]
  simp [Fin.prod_univ_succ, ev_table, ρ, vk] <;> field_simp

end NoFourMUBs.PRM.Coverage.StripId.SignedKp
