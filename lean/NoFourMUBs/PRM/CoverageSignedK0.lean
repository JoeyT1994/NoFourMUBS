import NoFourMUBs.PRM.CoverageSignedGauge

/-!
# The weighted signed sum on the curve `K₀` (return K, `REPORT.md` §5)

`X = Y = 2/h`, `Z = (9k² + 1)/h`.  In the gauge `s = t = 1` the circuits are in the variable `k`
(`Circ 1`) with the quadratic element `ζ = r s/t`: `ζ² = (J/X) ζ − Z = (4k/h) ζ − Z` and
`r̄ t/s = 4k/h − ζ`.  The six moment denominators are
`L_{0,±} = 4(k ∓ 1)(3k ± 1)/h²`, `L_{1,±} = L_{2,±} = ∓2(3k ± 1)(3k² + 1)/h²`.
The kernel check `valid` gives the weighted sum `32k²(3k⁴ + 2k² + 3)/h³` (`K0_main`).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.SignedK0

open NoFourMUBs.Kronecker StripMoments Side

abbrev V := Circ 1

def vk : V := Circ.var 0
def ch : V := 1 + vk ^ 2

/-- The denominators `h, 2, 3k + 1, 3k² + 1, k − 1, 3k − 1, k + 1` and `ζ² = (4k/h) ζ − (9k² + 1)/h`. -/
def C0 : Ctx 1 7 :=
  ⟨![ch, 2, 3 * vk + 1, 3 * vk ^ 2 + 1, vk - 1, 3 * vk - 1, vk + 1], (4 * vk, ![1, 0, 0, 0, 0, 0, 0]),
    (-(9 * vk ^ 2 + 1), ![1, 0, 0, 0, 0, 0, 0])⟩

abbrev Q := QF C0

def fr (c : V) (d : Fin 7 → ℕ) : Q := QF.ofFrac ⟨c, d⟩

def qX : Q := fr 2 ![1, 0, 0, 0, 0, 0, 0]
def qZ : Q := fr (9 * vk ^ 2 + 1) ![1, 0, 0, 0, 0, 0, 0]
def qR : Q := fr (4 * vk) ![1, 0, 0, 0, 0, 0, 0] - QF.z
def qzA : Q := fr (-(2 * (1 + vk))) ![1, 0, 0, 0, 0, 0, 0]
def qzB : Q := fr (-(2 * (1 - vk))) ![1, 0, 0, 0, 0, 0, 0]
def iA : Fin 3 → Q := ![fr (ch ^ 2) ![0, 2, 1, 0, 1, 0, 0], fr (-(ch ^ 2)) ![0, 1, 1, 1, 0, 0, 0],
  fr (-(ch ^ 2)) ![0, 1, 1, 1, 0, 0, 0]]
def iB : Fin 3 → Q := ![fr (ch ^ 2) ![0, 2, 0, 0, 0, 1, 1], fr (ch ^ 2) ![0, 1, 0, 1, 0, 1, 0],
  fr (ch ^ 2) ![0, 1, 0, 1, 0, 1, 0]]
def qV : Q := fr (32 * vk ^ 2 * (3 * vk ^ 4 + 2 * vk ^ 2 + 3)) ![3, 0, 0, 0, 0, 0, 0]

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem valid : qvalidR (weightedPolyQ (gaugeSum qX qX qZ QF.z qR qzA qzB iA iB) - qV) 1 = true := by
  decide +kernel

/-! ### Evaluation at the data -/

section Eval

variable {k : ℝ} {ζ : ℂ}

theorem val_fr (c : V) (d : Fin 7 → ℕ) :
    (fr c d).val ![(k : ℂ)] ζ = c.eval ![(k : ℂ)] / ∏ j, ((C0.f j).eval ![(k : ℂ)]) ^ d j := by
  simp [fr, QF.val_ofFrac, Frac.val, Frac.dval]

theorem ev_table (j : Fin 7) : (C0.f j).eval ![(k : ℂ)] =
    (![1 + (k : ℂ) ^ 2, 2, 3 * k + 1, 3 * k ^ 2 + 1, k - 1, 3 * k - 1, k + 1] : Fin 7 → ℂ) j := by
  fin_cases j <;> simp [C0, ch, vk]

end Eval

/-- `X = Y = 2/h`, `Z = (9k² + 1)/h`. -/
def Xc (k : ℂ) : ℂ := 2 / (1 + k ^ 2)
def Zc (k : ℂ) : ℂ := (9 * k ^ 2 + 1) / (1 + k ^ 2)

set_option maxHeartbeats 4000000 in
/-- **The weighted signed sum on `K₀`**, in the gauge. -/
theorem K0_gauge {k : ℝ} (hk : 0 < k) {ζ R : ℂ} (hR : R = 4 * k / (1 + (k : ℂ) ^ 2) - ζ)
    (hrel : ζ ^ 2 = 4 * k / (1 + (k : ℂ) ^ 2) * ζ - Zc k) {LA LB : Fin 3 → ℂ}
    (hLA : ∀ j, LA j = gC 1 k + (9 - ![Zc k, Xc k, Xc k] j) * zC 1 k)
    (hLB : ∀ j, LB j = gC (-1) k + (9 - ![Zc k, Xc k, Xc k] j) * zC (-1) k)
    (hA0 : ∀ j, LA j ≠ 0) (hB0 : ∀ j, LB j ≠ 0) :
    weightedPoly (fun p => (fData 1 (Xc k) 1 (Xc k) ζ R (Xc k) (Xc k) (Zc k) (LA 0) (LA 1) (LA 2)
        (zC 1 k)).mom p +
      (fData (-1) (-Xc k) (-1) (-Xc k) (-ζ) (-R) (Xc k) (Xc k) (Zc k) (LB 0) (LB 1) (LB 2)
        (zC (-1) k)).mom p) =
      32 * k ^ 2 * (3 * k ^ 4 + 2 * k ^ 2 + 3) / (1 + (k : ℂ) ^ 2) ^ 3 := by
  have hh : (1 + (k : ℂ) ^ 2) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  have hk0 : (k : ℂ) ≠ 0 := by exact_mod_cast hk.ne'
  have p1 : (3 * (k : ℂ) + 1) ≠ 0 := by exact_mod_cast (show (3 * k + 1 : ℝ) ≠ 0 by positivity)
  have p2 : (3 * (k : ℂ) ^ 2 + 1) ≠ 0 := by exact_mod_cast (show (3 * k ^ 2 + 1 : ℝ) ≠ 0 by positivity)
  have p3 : ((k : ℂ) + 1) ≠ 0 := by exact_mod_cast (show (k + 1 : ℝ) ≠ 0 by positivity)
  -- the six denominators, factored
  have eA : ∀ j, LA j = (![4 * (k - 1) * (3 * k + 1), -2 * (3 * k + 1) * (3 * k ^ 2 + 1),
      -2 * (3 * k + 1) * (3 * k ^ 2 + 1)] : Fin 3 → ℂ) j / (1 + (k : ℂ) ^ 2) ^ 2 := by
    intro j; rw [hLA]; fin_cases j <;> simp [gC, zC, Xc, Zc] <;> field_simp <;> ring
  have eB : ∀ j, LB j = (![4 * (k + 1) * (3 * k - 1), 2 * (3 * k - 1) * (3 * k ^ 2 + 1),
      2 * (3 * k - 1) * (3 * k ^ 2 + 1)] : Fin 3 → ℂ) j / (1 + (k : ℂ) ^ 2) ^ 2 := by
    intro j; rw [hLB]; fin_cases j <;> simp [gC, zC, Xc, Zc] <;> field_simp <;> ring
  have p4 : (k : ℂ) - 1 ≠ 0 := by
    intro h0; apply hA0 0; rw [eA]; simp [h0]
  have p5 : 3 * (k : ℂ) - 1 ≠ 0 := by
    intro h0; apply hB0 1; rw [eB]; simp [h0]
  set ρ : Fin 1 → ℂ := ![(k : ℂ)]
  have good : QF.Good C0 ρ ζ := by
    refine ⟨fun j => ?_, ?_⟩
    · rw [ev_table]; fin_cases j <;> simp [hh, p1, p2, p3, p4, p5]
    · simp only [QF.relA, QF.relB, C0, Frac.val, Frac.dval, Fin.prod_univ_succ, Fin.prod_univ_zero]
      simp [ρ, ch, vk]
      rw [hrel, Zc]; ring
  have vX : qX.val ρ ζ = Xc k := by
    rw [qX, val_fr]; simp [Fin.prod_univ_succ, ev_table, Xc]
  have vZ : qZ.val ρ ζ = Zc k := by
    rw [qZ, val_fr]; simp [Fin.prod_univ_succ, ev_table, Zc, ρ, vk]
  have vR : qR.val ρ ζ = R := by
    rw [qR, QF.val_sub good, val_fr, QF.val_z, hR]; simp [Fin.prod_univ_succ, ev_table, ρ, vk]
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
  simp [Fin.prod_univ_succ, ev_table, ρ, vk]

end NoFourMUBs.PRM.Coverage.StripId.SignedK0
