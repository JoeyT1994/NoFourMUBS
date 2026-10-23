import NoFourMUBs.PRM.CoverageSignedGauge

/-!
# The weighted signed sum on the curve `K_min` (return K, `REPORT.md` §5)

`X = 4k²/h²` and `Y, Z` the roots of `T² − A T + 4/h²`, `A = (9k⁴ + 10k² + 5)/h² = p − X` ((10) and
(12)).  In the gauge `s = t = 1` with `w = s̄ r̄ t` real: `r s/t = J/(2Y) = kZ` and `r̄ t/s = J/(2X) = 1/k`.
The circuits are in `k` with the quadratic element `ζ = Y` (`ζ² = Aζ − 4/h²`), so `Z = A − ζ`.  With
`a_σ = g_σ + 9z_σ`, `L_{0,σ} = a_σ − z_σ Z`, `L_{1,σ} = a_σ − z_σ Y` and
`L_{0,σ} L_{1,σ} = N_σ`, `N₊ = −8(3k² + 1)²(3k³ − k² + k + 1)/h⁵`, `N₋ = 8(3k² + 1)²(3k³ + k² + k − 1)/h⁵`,
so `1/L_{0,σ} = (a_σ − z_σ ζ)/N_σ` and `1/L_{1,σ} = (a_σ − z_σ Z)/N_σ`; `L_{2,+} = −2(3k² + 2k + 3)(3k³ − k² + k + 1)/h³`,
`L_{2,−} = 2(3k² − 2k + 3)(3k³ + k² + k − 1)/h³`.  The weighted sum is `−64k²(1 + k²Z)/(h(3k² + 1))`
(`Kmin_gauge`).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.SignedKmin

open NoFourMUBs.Kronecker StripMoments Side

abbrev V := Circ 1

def vk : V := Circ.var 0
def ch : V := 1 + vk ^ 2

/-- The denominators `h, 2, k, 3k² + 2k + 3, 3k³ − k² + k + 1, 3k² − 2k + 3, 3k³ + k² + k − 1, 3k² + 1`
and `ζ² = ((9k⁴ + 10k² + 5)/h²) ζ − 4/h²`. -/
def C0 : Ctx 1 8 :=
  ⟨![ch, 2, vk, 3 * vk ^ 2 + 2 * vk + 3, 3 * vk ^ 3 - vk ^ 2 + vk + 1, 3 * vk ^ 2 - 2 * vk + 3,
    3 * vk ^ 3 + vk ^ 2 + vk - 1, 3 * vk ^ 2 + 1],
    (9 * vk ^ 4 + 10 * vk ^ 2 + 5, ![2, 0, 0, 0, 0, 0, 0, 0]), (-4, ![2, 0, 0, 0, 0, 0, 0, 0])⟩

abbrev Q := QF C0

def fr (c : V) (d : Fin 8 → ℕ) : Q := QF.ofFrac ⟨c, d⟩

def qX : Q := fr (4 * vk ^ 2) ![2, 0, 0, 0, 0, 0, 0, 0]
def qZ : Q := fr (9 * vk ^ 4 + 10 * vk ^ 2 + 5) ![2, 0, 0, 0, 0, 0, 0, 0] - QF.z
def qr : Q := fr vk ![0, 0, 0, 0, 0, 0, 0, 0] * qZ
def qR : Q := fr 1 ![0, 0, 1, 0, 0, 0, 0, 0]
def qzA : Q := fr (-(2 * (1 + vk))) ![1, 0, 0, 0, 0, 0, 0, 0]
def qzB : Q := fr (-(2 * (1 - vk))) ![1, 0, 0, 0, 0, 0, 0, 0]
/-- `a_σ = g_σ + 9z_σ = (12h + 8σk − 18(1 + σk)h)/h²`. -/
def qaA : Q := fr (12 * ch + 8 * vk - 18 * (1 + vk) * ch) ![2, 0, 0, 0, 0, 0, 0, 0]
def qaB : Q := fr (12 * ch - 8 * vk - 18 * (1 - vk) * ch) ![2, 0, 0, 0, 0, 0, 0, 0]
def iNA : Q := fr (-(ch ^ 5)) ![0, 3, 0, 0, 1, 0, 0, 2]
def iNB : Q := fr (ch ^ 5) ![0, 3, 0, 0, 0, 0, 1, 2]
def iA : Fin 3 → Q := ![(qaA - qzA * QF.z) * iNA, (qaA - qzA * qZ) * iNA, fr (-(ch ^ 3)) ![0, 1, 0, 1, 1, 0, 0, 0]]
def iB : Fin 3 → Q := ![(qaB - qzB * QF.z) * iNB, (qaB - qzB * qZ) * iNB, fr (ch ^ 3) ![0, 1, 0, 0, 0, 1, 1, 0]]
def qV : Q := fr (-(64 * vk ^ 2)) ![1, 0, 0, 0, 0, 0, 0, 1] * (1 + fr (vk ^ 2) ![0, 0, 0, 0, 0, 0, 0, 0] * qZ)

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem valid : qvalidR (weightedPolyQ (gaugeSum qX QF.z qZ qr qR qzA qzB iA iB) - qV) 0 = true := by
  decide +kernel

/-! ### Evaluation at the data -/

section Eval

variable {k : ℝ} {ζ : ℂ}

theorem val_fr (c : V) (d : Fin 8 → ℕ) :
    (fr c d).val ![(k : ℂ)] ζ = c.eval ![(k : ℂ)] / ∏ j, ((C0.f j).eval ![(k : ℂ)]) ^ d j := by
  simp [fr, QF.val_ofFrac, Frac.val, Frac.dval]

theorem ev_table (j : Fin 8) : (C0.f j).eval ![(k : ℂ)] =
    (![1 + (k : ℂ) ^ 2, 2, k, 3 * k ^ 2 + 2 * k + 3, 3 * k ^ 3 - k ^ 2 + k + 1, 3 * k ^ 2 - 2 * k + 3,
      3 * k ^ 3 + k ^ 2 + k - 1, 3 * k ^ 2 + 1] : Fin 8 → ℂ) j := by
  fin_cases j <;> simp [C0, ch, vk]

end Eval

/-- `X = 4k²/h²`. -/
def Xc (k : ℂ) : ℂ := 4 * k ^ 2 / (1 + k ^ 2) ^ 2

set_option maxHeartbeats 4000000 in
/-- **The weighted signed sum on `K_min`**, in the gauge. -/
theorem Kmin_gauge {k : ℝ} (hk : 0 < k) {Y Z : ℂ}
    (hsum : Y + Z = (9 * k ^ 4 + 10 * k ^ 2 + 5) / (1 + (k : ℂ) ^ 2) ^ 2)
    (hprod : Y * Z = 4 / (1 + (k : ℂ) ^ 2) ^ 2) {LA LB : Fin 3 → ℂ}
    (hLA : ∀ j, LA j = gC 1 k + (9 - ![Z, Y, Xc k] j) * zC 1 k)
    (hLB : ∀ j, LB j = gC (-1) k + (9 - ![Z, Y, Xc k] j) * zC (-1) k)
    (hA0 : ∀ j, LA j ≠ 0) (hB0 : ∀ j, LB j ≠ 0) :
    weightedPoly (fun p => (fData 1 (Xc k) 1 Y (k * Z) (1 / k) (Xc k) Y Z (LA 0) (LA 1) (LA 2)
        (zC 1 k)).mom p +
      (fData (-1) (-Xc k) (-1) (-Y) (-(k * Z)) (-(1 / k)) (Xc k) Y Z (LB 0) (LB 1) (LB 2)
        (zC (-1) k)).mom p) =
      -(64 * k ^ 2 * (1 + k ^ 2 * Z)) / ((1 + (k : ℂ) ^ 2) * (3 * k ^ 2 + 1)) := by
  have hh : (1 + (k : ℂ) ^ 2) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  have hk0 : (k : ℂ) ≠ 0 := by exact_mod_cast hk.ne'
  have p1 : (3 * (k : ℂ) ^ 2 + 2 * k + 3) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 2 + 2 * k + 3 : ℝ) ≠ 0 by positivity)
  have p2 : (3 * (k : ℂ) ^ 3 - k ^ 2 + k + 1) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 3 - k ^ 2 + k + 1 : ℝ) ≠ 0 by nlinarith [sq_nonneg (k - 1 / 6), mul_pos hk hk])
  have p3 : (3 * (k : ℂ) ^ 2 - 2 * k + 3) ≠ 0 := by
    exact_mod_cast (show (3 * k ^ 2 - 2 * k + 3 : ℝ) ≠ 0 by nlinarith [sq_nonneg (k - 1 / 3)])
  have p5 : (3 * (k : ℂ) ^ 2 + 1) ≠ 0 := by exact_mod_cast (show (3 * k ^ 2 + 1 : ℝ) ≠ 0 by positivity)
  have eA2 : LA 2 = -2 * (3 * k ^ 2 + 2 * k + 3) * (3 * k ^ 3 - k ^ 2 + k + 1) / (1 + (k : ℂ) ^ 2) ^ 3 := by
    rw [hLA]; simp [gC, zC, Xc]; field_simp; ring
  have eB2 : LB 2 = 2 * (3 * k ^ 2 - 2 * k + 3) * (3 * k ^ 3 + k ^ 2 + k - 1) / (1 + (k : ℂ) ^ 2) ^ 3 := by
    rw [hLB]; simp [gC, zC, Xc]; field_simp; ring
  have p4 : (3 * (k : ℂ) ^ 3 + k ^ 2 + k - 1) ≠ 0 := by
    intro h0; apply hB0 2; rw [eB2]; simp [h0]
  -- `L_{0,σ} L_{1,σ} = N_σ`
  have eA01 : LA 0 * LA 1 = -8 * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 - k ^ 2 + k + 1) / (1 + (k : ℂ) ^ 2) ^ 5 := by
    rw [hLA, hLA]; simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
    have e : (gC 1 k + (9 - Z) * zC 1 k) * (gC 1 k + (9 - Y) * zC 1 k) =
        (gC 1 k + 9 * zC 1 k) ^ 2 - (gC 1 k + 9 * zC 1 k) * zC 1 k * (Y + Z) + zC 1 k ^ 2 * (Y * Z) := by
      ring
    rw [e, hsum, hprod]; simp only [gC, zC]; push_cast; field_simp; ring
  have eB01 : LB 0 * LB 1 = 8 * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 + k ^ 2 + k - 1) / (1 + (k : ℂ) ^ 2) ^ 5 := by
    rw [hLB, hLB]; simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
    have e : (gC (-1) k + (9 - Z) * zC (-1) k) * (gC (-1) k + (9 - Y) * zC (-1) k) =
        (gC (-1) k + 9 * zC (-1) k) ^ 2 - (gC (-1) k + 9 * zC (-1) k) * zC (-1) k * (Y + Z) +
          zC (-1) k ^ 2 * (Y * Z) := by
      ring
    rw [e, hsum, hprod]; simp only [gC, zC]; push_cast; field_simp; ring
  set ρ : Fin 1 → ℂ := ![(k : ℂ)]
  have good : QF.Good C0 ρ Y := by
    refine ⟨fun j => ?_, ?_⟩
    · rw [ev_table]; fin_cases j <;> simp [hh, hk0, p1, p2, p3, p4, p5]
    · simp only [QF.relA, QF.relB, C0, Frac.val, Frac.dval, Fin.prod_univ_succ, Fin.prod_univ_zero]
      simp [ρ, ch, vk]
      rw [← hsum]; linear_combination (-1 : ℂ) * hprod
  have vA : (fr (9 * vk ^ 4 + 10 * vk ^ 2 + 5) ![2, 0, 0, 0, 0, 0, 0, 0]).val ρ Y =
      (9 * k ^ 4 + 10 * k ^ 2 + 5) / (1 + (k : ℂ) ^ 2) ^ 2 := by
    rw [val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ, vk]
  have vX : qX.val ρ Y = Xc k := by
    rw [qX, val_fr]; simp [Fin.prod_univ_succ, ev_table, Xc, ρ, vk]
  have vZ : qZ.val ρ Y = Z := by
    rw [qZ, QF.val_sub good, vA, QF.val_z, ← hsum]; ring
  have vk' : (fr vk ![0, 0, 0, 0, 0, 0, 0, 0]).val ρ Y = k := by
    rw [val_fr]; simp [Fin.prod_univ_succ, ρ, vk]
  have vr : qr.val ρ Y = k * Z := by rw [qr, QF.val_mul good, vk', vZ]
  have vR : qR.val ρ Y = 1 / k := by rw [qR, val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ]
  have vzA : qzA.val ρ Y = zC 1 k := by
    rw [qzA, val_fr]; simp [Fin.prod_univ_succ, ev_table, zC, ρ, vk] <;> ring
  have vzB : qzB.val ρ Y = zC (-1) k := by
    rw [qzB, val_fr]; simp [Fin.prod_univ_succ, ev_table, zC, ρ, vk] <;> ring
  have vaA : qaA.val ρ Y = gC 1 k + 9 * zC 1 k := by
    rw [qaA, val_fr]; simp [Fin.prod_univ_succ, ev_table, gC, zC, ρ, ch, vk]; field_simp; ring
  have vaB : qaB.val ρ Y = gC (-1) k + 9 * zC (-1) k := by
    rw [qaB, val_fr]; simp [Fin.prod_univ_succ, ev_table, gC, zC, ρ, ch, vk]; field_simp; ring
  have vNA : iNA.val ρ Y = (1 + (k : ℂ) ^ 2) ^ 5 / (-8 * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 - k ^ 2 + k + 1)) := by
    rw [iNA, val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have vNB : iNB.val ρ Y = (1 + (k : ℂ) ^ 2) ^ 5 / (8 * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 + k ^ 2 + k - 1)) := by
    rw [iNB, val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have inv_of : ∀ {a b N : ℂ}, a ≠ 0 → N ≠ 0 → a * b = N → b * N⁻¹ = a⁻¹ := by
    intro a b N ha hN hab
    have hb : b ≠ 0 := right_ne_zero_of_mul (hab ▸ hN)
    rw [← hab]; field_simp
  have hNA : -8 * (3 * (k : ℂ) ^ 2 + 1) ^ 2 * (3 * k ^ 3 - k ^ 2 + k + 1) / (1 + (k : ℂ) ^ 2) ^ 5 ≠ 0 :=
    div_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) (pow_ne_zero 2 p5)) p2) (pow_ne_zero 5 hh)
  have hNB : 8 * (3 * (k : ℂ) ^ 2 + 1) ^ 2 * (3 * k ^ 3 + k ^ 2 + k - 1) / (1 + (k : ℂ) ^ 2) ^ 5 ≠ 0 :=
    div_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) (pow_ne_zero 2 p5)) p4) (pow_ne_zero 5 hh)
  have viA : ∀ j, (iA j).val ρ Y = (LA j)⁻¹ := by
    intro j; fin_cases j
    · show ((qaA - qzA * QF.z) * iNA).val ρ Y = (LA 0)⁻¹
      rw [QF.val_mul good, QF.val_sub good, QF.val_mul good, vaA, vzA, QF.val_z, vNA, ← inv_div]
      refine inv_of (hA0 0) hNA ?_
      rw [show (gC 1 k + 9 * zC 1 k - zC 1 k * Y) = LA 1 by rw [hLA]; simp; ring, eA01]
    · show ((qaA - qzA * qZ) * iNA).val ρ Y = (LA 1)⁻¹
      rw [QF.val_mul good, QF.val_sub good, QF.val_mul good, vaA, vzA, vZ, vNA, ← inv_div]
      refine inv_of (hA0 1) hNA ?_
      rw [show (gC 1 k + 9 * zC 1 k - zC 1 k * Z) = LA 0 by rw [hLA]; simp; ring, mul_comm, eA01]
    · show (fr (-(ch ^ 3)) ![0, 1, 0, 1, 1, 0, 0, 0]).val ρ Y = (LA 2)⁻¹
      rw [eA2, inv_div, val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have viB : ∀ j, (iB j).val ρ Y = (LB j)⁻¹ := by
    intro j; fin_cases j
    · show ((qaB - qzB * QF.z) * iNB).val ρ Y = (LB 0)⁻¹
      rw [QF.val_mul good, QF.val_sub good, QF.val_mul good, vaB, vzB, QF.val_z, vNB, ← inv_div]
      refine inv_of (hB0 0) hNB ?_
      rw [show (gC (-1) k + 9 * zC (-1) k - zC (-1) k * Y) = LB 1 by rw [hLB]; simp; ring, eB01]
    · show ((qaB - qzB * qZ) * iNB).val ρ Y = (LB 1)⁻¹
      rw [QF.val_mul good, QF.val_sub good, QF.val_mul good, vaB, vzB, vZ, vNB, ← inv_div]
      refine inv_of (hB0 1) hNB ?_
      rw [show (gC (-1) k + 9 * zC (-1) k - zC (-1) k * Z) = LB 0 by rw [hLB]; simp; ring, mul_comm,
        eB01]
    · show (fr (ch ^ 3) ![0, 1, 0, 0, 0, 1, 1, 0]).val ρ Y = (LB 2)⁻¹
      rw [eB2, inv_div, val_fr]; simp [Fin.prod_univ_succ, ev_table, ρ, ch, vk] <;> field_simp <;> ring
  have e := gauge_check good vX QF.val_z vZ vr vR vzA vzB viA viB valid
  rw [e, qV, QF.val_mul good, val_fr, QF.val_add good, QF.val_mul good, val_fr, vZ, QF.val_one']
  simp [Fin.prod_univ_succ, ev_table, ρ, vk] <;> field_simp

end NoFourMUBs.PRM.Coverage.StripId.SignedKmin
