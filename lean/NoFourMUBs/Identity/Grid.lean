import NoFourMUBs.Identity.Sparse
import Mathlib.Combinatorics.Nullstellensatz

/-!
# Grids in two variables, Kronecker in the rest

A circuit vanishes identically if, for every value `vᵢ ∈ Sᵢ`, `vⱼ ∈ Sⱼ` on a grid larger than its degrees
in variables `i` and `j`, the circuit with those two variables substituted passes `Circ.valid`
(`toPoly_eq_zero_of_grid`, by the Combinatorial Nullstellensatz).  The substituted circuits are evaluated
with small integer values for `i, j`, so the remaining Kronecker numbers stay small, and each grid line can
be checked in its own declaration.
-/

namespace NoFourMUBs.Kronecker

namespace Circ

variable {n : ℕ}

/-- Replace variable `i` by the constant `v`. -/
def subst (i : Fin n) (v : ℤ) : Circ n → Circ n
  | var j => if j = i then const v else var j
  | const z => const z
  | add a b => add (a.subst i v) (b.subst i v)
  | sub a b => sub (a.subst i v) (b.subst i v)
  | mul a b => mul (a.subst i v) (b.subst i v)
  | pow a k => pow (a.subst i v) k

theorem eval_subst {R : Type*} [CommRing R] (ρ : Fin n → R) (i : Fin n) (v : ℤ) (c : Circ n) :
    (c.subst i v).eval ρ = c.eval (Function.update ρ i (v : R)) := by
  induction c with
  | var j => by_cases h : j = i <;> simp [subst, eval, h, Function.update_of_ne]
  | const z => rfl
  | add a b ha hb => simp [subst, eval, ha, hb]
  | sub a b ha hb => simp [subst, eval, ha, hb]
  | mul a b ha hb => simp [subst, eval, ha, hb]
  | pow a k ha => simp [subst, eval, ha]

/-- Restrict to the variables `i, j` (as `0, 1`), fixing the others at `x`. -/
def restrict2 (i j : Fin n) (x : Fin n → ℤ) : Circ n → Circ 2
  | var k => if k = i then var 0 else if k = j then var 1 else const (x k)
  | const z => const z
  | add a b => add (a.restrict2 i j x) (b.restrict2 i j x)
  | sub a b => sub (a.restrict2 i j x) (b.restrict2 i j x)
  | mul a b => mul (a.restrict2 i j x) (b.restrict2 i j x)
  | pow a k => pow (a.restrict2 i j x) k

theorem eval_restrict2 (i j : Fin n) (x : Fin n → ℤ) (y : Fin 2 → ℤ) (c : Circ n) :
    (c.restrict2 i j x).eval y = c.eval (fun k => if k = i then y 0 else if k = j then y 1 else x k) := by
  induction c with
  | var k => simp only [restrict2]; split_ifs <;> simp_all [eval]
  | const z => rfl
  | add a b ha hb => simp [restrict2, eval, ha, hb]
  | sub a b ha hb => simp [restrict2, eval, ha, hb]
  | mul a b ha hb => simp [restrict2, eval, ha, hb]
  | pow a k ha => simp [restrict2, eval, ha]

theorem deg_restrict2 {i j : Fin n} (hij : i ≠ j) (x : Fin n → ℤ) (c : Circ n) :
    (c.restrict2 i j x).deg 0 ≤ c.deg i ∧ (c.restrict2 i j x).deg 1 ≤ c.deg j := by
  induction c with
  | var k =>
    by_cases h1 : k = i
    · subst h1; simp [restrict2, deg]
    · by_cases h2 : k = j
      · subst h2; simp [restrict2, deg, h1]
      · simp [restrict2, deg, h1, h2]
  | const z => simp [restrict2, deg]
  | add a b ha hb => exact ⟨max_le_max ha.1 hb.1, max_le_max ha.2 hb.2⟩
  | sub a b ha hb => exact ⟨max_le_max ha.1 hb.1, max_le_max ha.2 hb.2⟩
  | mul a b ha hb => exact ⟨add_le_add ha.1 hb.1, add_le_add ha.2 hb.2⟩
  | pow a k ha => exact ⟨Nat.mul_le_mul_left _ ha.1, Nat.mul_le_mul_left _ ha.2⟩

/-- **Grid soundness.** -/
theorem toPoly_eq_zero_of_grid (c : Circ n) {i j : Fin n} (hij : i ≠ j) {Si Sj : List ℤ}
    (hSi : Si.Nodup) (hSj : Sj.Nodup) (hdi : c.deg i < Si.length) (hdj : c.deg j < Sj.length)
    (h : ∀ vi ∈ Si, ∀ vj ∈ Sj, ((c.subst i vi).subst j vj).valid 0 = true) : c.toPoly = 0 := by
  apply MvPolynomial.funext
  intro x
  rw [map_zero, ← eval_eq_eval]
  set P := (c.restrict2 i j x).toPoly
  have hP : P = 0 := by
    refine MvPolynomial.eq_zero_of_eval_zero_at_prod_finset P ![Si.toFinset, Sj.toFinset] ?_ ?_
    · intro k
      fin_cases k
      · simpa [List.toFinset_card_of_nodup hSi] using
          lt_of_le_of_lt ((degreeOf_le 0 _).trans (deg_restrict2 hij x c).1) hdi
      · simpa [List.toFinset_card_of_nodup hSj] using
          lt_of_le_of_lt ((degreeOf_le 1 _).trans (deg_restrict2 hij x c).2) hdj
    · intro y hy
      have h0 : y 0 ∈ Si := by simpa using hy 0
      have h1 : y 1 ∈ Sj := by simpa using hy 1
      rw [← eval_eq_eval, eval_restrict2]
      have := eval_eq_zero_of_valid (h _ h0 _ h1) x
      rw [eval_subst, eval_subst] at this
      convert this using 2
      funext k
      by_cases hk1 : k = i
      · subst hk1; simp
      · by_cases hk2 : k = j
        · subst hk2; simp [hk1]
        · simp [hk1, hk2, Function.update_of_ne]
  have := congrArg (MvPolynomial.eval ![x i, x j]) hP
  rw [map_zero, ← eval_eq_eval, eval_restrict2] at this
  convert this using 2
  funext k
  by_cases hk1 : k = i
  · subst hk1; simp
  · by_cases hk2 : k = j
    · subst hk2; simp [hk1]
    · simp [hk1, hk2]

end Circ

end NoFourMUBs.Kronecker
