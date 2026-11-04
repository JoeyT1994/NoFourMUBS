import NoFourMUBs.PRM.CoverageStripBlock
import NoFourMUBs.PRM.CoverageSignedData
import NoFourMUBs.Identity.Fast

/-!
# Laurent terms of a corner and strip moments (`CRITICAL_STRIP_CLASSIFICATION.md` §1)

For the top three rows of a Hadamard matrix, dephased by row `0` (`xs u = H₁ᵤ H̄₀ᵤ`, `ys u = H₂ᵤ H̄₀ᵤ`,
`xsH`, `ysH`), with the whole-strip moments `M(i, j) = Σ_u xsᵤ^i ysᵤ^j` (`momentOf`):

* `termVal`: the value of a Laurent term `c · x_a^i0 y_a^j0 · x_b^i1 y_b^j1 · x_c^i2 y_c^j2` (`LT`) at three
  columns; the circuits `cPi`, `cH`, `cUV`, `cPit`, `cHt` in the six column entries, from which
  `CoverageSignedMoments` builds the kernel-checked expansion of the signed corner value;
* `sum_terms`: summing a Laurent term over ordered column triples gives a product of three moments;
* `sig_triBlock`: the side signature of the corner `l` of the top strip in these entries; it is symmetric
  in the columns and vanishes on repeated columns (`TS_swap01`, `TS_swap12`, `TS_rep01`, `TS_rep12`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open NoFourMUBs.Kronecker Side

/-- The value of a Laurent term at the columns `(x₀, y₀), (x₁, y₁), (x₂, y₂)`. -/
def termVal (x y : Fin 3 → ℂ) (t : LT) : ℂ :=
  t.c * (x 0 ^ t.i0 * y 0 ^ t.j0) * (x 1 ^ t.i1 * y 1 ^ t.j1) * (x 2 ^ t.i2 * y 2 ^ t.j2)

/-! ### Circuits in the six column entries -/

abbrev V6 := Circ 6

def vx (i : Fin 3) : V6 := Circ.var ⟨i.val, by omega⟩
def vy (i : Fin 3) : V6 := Circ.var ⟨i.val + 3, by omega⟩

def cPi : V6 := vx 0 * vy 1 + vx 0 * vy 2 + vx 1 * vy 0 + vx 1 * vy 2 + vx 2 * vy 0 + vx 2 * vy 1
def cH : V6 := vx 1 * vy 2 - vx 2 * vy 1 - vx 0 * vy 2 + vx 2 * vy 0 + vx 0 * vy 1 - vx 1 * vy 0
def cUV : V6 := vx 0 * vx 1 * vx 2 * (vy 0 * vy 1 * vy 2)
def xo0 : V6 := vx 1 * vx 2
def xo1 : V6 := vx 0 * vx 2
def xo2 : V6 := vx 0 * vx 1
def yo0 : V6 := vy 1 * vy 2
def yo1 : V6 := vy 0 * vy 2
def yo2 : V6 := vy 0 * vy 1
/-- `uv · π(1/x, 1/y)`. -/
def cPit : V6 := xo0 * yo1 + xo0 * yo2 + xo1 * yo0 + xo1 * yo2 + xo2 * yo0 + xo2 * yo1
/-- `uv · h(1/x, 1/y)`. -/
def cHt : V6 := xo1 * yo2 - xo2 * yo1 - xo0 * yo2 + xo2 * yo0 + xo0 * yo1 - xo1 * yo0

/-! ### Evaluation -/

def ρ6 (x y : Fin 3 → ℂ) : Fin 6 → ℂ := fun k =>
  if h : k.val < 3 then x ⟨k.val, h⟩ else y ⟨k.val - 3, by omega⟩

@[simp] theorem eval_vx (x y : Fin 3 → ℂ) (i : Fin 3) : (vx i).eval (ρ6 x y) = x i := by
  simp [vx, ρ6]

@[simp] theorem eval_vy (x y : Fin 3 → ℂ) (i : Fin 3) : (vy i).eval (ρ6 x y) = y i := by
  simp [vy, ρ6]

/-! ### Summing over ordered triples -/

/-- The whole-strip moments. -/
def momentOf (xs ys : Fin 6 → ℂ) (p : ℤ × ℤ) : ℂ := ∑ a, xs a ^ p.1 * ys a ^ p.2

theorem triple_prod (f g h : Fin 6 → ℂ) :
    (∑ a, f a) * (∑ b, g b) * (∑ c, h c) = ∑ a, ∑ b, ∑ c, f a * g b * h c := by
  rw [Finset.sum_mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.mul_sum]

theorem sum_term (xs ys : Fin 6 → ℂ) (t : LT) :
    ∑ a, ∑ b, ∑ c, termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t =
      t.c * momentOf xs ys (t.i0, t.j0) * momentOf xs ys (t.i1, t.j1) * momentOf xs ys (t.i2, t.j2) := by
  rw [mul_assoc, mul_assoc, ← mul_assoc (momentOf xs ys (t.i0, t.j0)), momentOf, momentOf, momentOf,
    triple_prod, Finset.mul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [termVal, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem sum_terms (xs ys : Fin 6 → ℂ) (L : List LT) :
    ∑ a, ∑ b, ∑ c, (L.map (termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c])).sum =
      (L.map fun t => t.c * momentOf xs ys (t.i0, t.j0) * momentOf xs ys (t.i1, t.j1) *
        momentOf xs ys (t.i2, t.j2)).sum := by
  induction L with
  | nil => simp
  | cons t L ih =>
    simp only [List.map_cons, List.sum_cons, Finset.sum_add_distrib, ih, sum_term]

/-! ### The strip -/

/-- Dephased rows of the top strip: `xs u = H₁ᵤ H̄₀ᵤ`, `ys u = H₂ᵤ H̄₀ᵤ` (columns in `Fin 6` order). -/
def xsH (H : Mat6) (u : Fin 6) : ℂ := H (Sum.inl 1) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u))
def ysH (H : Mat6) (u : Fin 6) : ℂ := H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u))

theorem TS_swap01 (a b c d e f : ℂ) : TS ![b, a, c] ![e, d, f] = TS ![a, b, c] ![d, e, f] := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_swap12 (a b c d e f : ℂ) : TS ![a, c, b] ![d, f, e] = TS ![a, b, c] ![d, e, f] := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_rep01 (a c d f : ℂ) : TS ![a, a, c] ![d, d, f] = 0 := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_rep12 (a b d e : ℂ) : TS ![a, b, b] ![d, e, e] = 0 := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

section Strip

variable {H : Mat6} (hH : Hadamard6.IsHadamard H)
include hH

theorem sig_triBlock (l : Fin 20) :
    Step2.sideSignature (triBlock H 0 l) =
      TS ![xsH H (tri l 0), xsH H (tri l 1), xsH H (tri l 2)]
        ![ysH H (tri l 0), ysH H (tri l 1), ysH H (tri l 2)] := by
  have hB := triBlock_unit hH 0 l
  rw [← dephase_sig hB, Step2.sig_rows _ (dephase_row0 hB)]
  congr 1 <;> funext i <;> fin_cases i <;> simp [dephase, triBlock, xsH, ysH, tri0_row]

theorem xsH_unit (u : Fin 6) : Complex.normSq (xsH H u) = 1 := by
  rw [xsH, Complex.normSq_mul, Complex.normSq_conj, hH.1, hH.1, mul_one]

theorem ysH_unit (u : Fin 6) : Complex.normSq (ysH H u) = 1 := by
  rw [ysH, Complex.normSq_mul, Complex.normSq_conj, hH.1, hH.1, mul_one]

omit hH in
theorem sum_e6 (g : I6 → ℂ) : ∑ u : Fin 6, g (e6.symm u) = ∑ j : I6, g j := Equiv.sum_comp e6.symm g

end Strip

end NoFourMUBs.PRM.Coverage.StripMoments
