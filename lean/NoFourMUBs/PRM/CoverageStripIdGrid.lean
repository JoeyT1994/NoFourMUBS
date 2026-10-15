import NoFourMUBs.Identity.Grid
import NoFourMUBs.Identity.Fast

/-!
# A one-variable grid for the kernel identity checker

A circuit vanishes identically if, for each value `v` in a list `S` longer than its degree in the variable
`i`, the circuit with `v` substituted for `i` passes the fast test `Circ.validR`
(`Circ.toPoly_eq_zero_of_grid1`, by the Combinatorial Nullstellensatz in one variable).  Each substituted
circuit has one variable fewer and small integer constants, so its Kronecker numbers stay small, and the
values can be split across declarations.
-/

namespace NoFourMUBs.Kronecker

namespace Circ

variable {n : ℕ}

/-- Restrict to the variable `i` (as `0`), fixing the others at `x`. -/
def restrict1 (i : Fin n) (x : Fin n → ℤ) : Circ n → Circ 1
  | var k => if k = i then var 0 else const (x k)
  | const z => const z
  | add a b => add (a.restrict1 i x) (b.restrict1 i x)
  | sub a b => sub (a.restrict1 i x) (b.restrict1 i x)
  | mul a b => mul (a.restrict1 i x) (b.restrict1 i x)
  | pow a k => pow (a.restrict1 i x) k

theorem eval_restrict1 (i : Fin n) (x : Fin n → ℤ) (y : Fin 1 → ℤ) (c : Circ n) :
    (c.restrict1 i x).eval y = c.eval (fun k => if k = i then y 0 else x k) := by
  induction c with
  | var k => simp only [restrict1]; split_ifs <;> simp_all [eval]
  | const z => rfl
  | add a b ha hb => simp [restrict1, eval, ha, hb]
  | sub a b ha hb => simp [restrict1, eval, ha, hb]
  | mul a b ha hb => simp [restrict1, eval, ha, hb]
  | pow a k ha => simp [restrict1, eval, ha]

theorem deg_restrict1 (i : Fin n) (x : Fin n → ℤ) (c : Circ n) : (c.restrict1 i x).deg 0 ≤ c.deg i := by
  induction c with
  | var k =>
    by_cases h1 : k = i
    · subst h1; simp [restrict1, deg]
    · simp [restrict1, deg, h1]
  | const z => simp [restrict1, deg]
  | add a b ha hb => exact max_le_max ha hb
  | sub a b ha hb => exact max_le_max ha hb
  | mul a b ha hb => exact add_le_add ha hb
  | pow a k ha => exact Nat.mul_le_mul_left _ ha

/-- `subst` by the recursor (faster in the kernel). -/
noncomputable def substR (i : Fin n) (v : ℤ) (c : Circ n) : Circ n :=
  Circ.rec (motive := fun _ => Circ n) (fun j => cond (Nat.beq j.val i.val) (const v) (var j))
    (fun z => const z) (fun _ _ x y => add x y) (fun _ _ x y => sub x y) (fun _ _ x y => mul x y)
    (fun _ k x => pow x k) c

theorem substR_eq (i : Fin n) (v : ℤ) (c : Circ n) : c.substR i v = c.subst i v := by
  induction c with
  | var j =>
    change cond (Nat.beq j.val i.val) (const v) (var j) = _
    cases hb : Nat.beq j.val i.val
    · have : j ≠ i := fun e => by subst e; simp [Nat.beq_refl] at hb
      simp [subst, this]
    · have := Fin.ext (Nat.eq_of_beq_eq_true hb); simp [subst, this]
  | const z => rfl
  | add a b ha hb => change add (a.substR i v) (b.substR i v) = _; rw [ha, hb]; rfl
  | sub a b ha hb => change sub (a.substR i v) (b.substR i v) = _; rw [ha, hb]; rfl
  | mul a b ha hb => change mul (a.substR i v) (b.substR i v) = _; rw [ha, hb]; rfl
  | pow a k ha => change pow (a.substR i v) k = _; rw [ha]; rfl

/-- **One-variable grid soundness.** -/
theorem toPoly_eq_zero_of_grid1 (c : Circ n) (i : Fin n) {S : List ℤ} (hS : S.Nodup)
    (hd : c.deg i < S.length) (h : ∀ v ∈ S, (c.subst i v).validR 0 = true) : c.toPoly = 0 := by
  apply MvPolynomial.funext
  intro x
  rw [map_zero, ← eval_eq_eval]
  set P := (c.restrict1 i x).toPoly
  have hP : P = 0 := by
    refine MvPolynomial.eq_zero_of_eval_zero_at_prod_finset P ![S.toFinset] ?_ ?_
    · intro k
      fin_cases k
      simpa [List.toFinset_card_of_nodup hS] using
        lt_of_le_of_lt ((degreeOf_le 0 _).trans (deg_restrict1 i x c)) hd
    · intro y hy
      have h0 : y 0 ∈ S := by simpa using hy 0
      rw [← eval_eq_eval, eval_restrict1]
      have := eval_eq_zero_of_validR (h _ h0) x
      rw [eval_subst] at this
      convert this using 2
      funext k
      by_cases hk1 : k = i
      · subst hk1; simp
      · simp [hk1, Function.update_of_ne]
  have := congrArg (MvPolynomial.eval ![x i]) hP
  rw [map_zero, ← eval_eq_eval, eval_restrict1] at this
  convert this using 2
  funext k
  by_cases hk1 : k = i
  · subst hk1; simp
  · simp [hk1]

/-- The grid test in evaluation form. -/
theorem eval_eq_zero_of_grid1 (c : Circ n) (i : Fin n) {S : List ℤ} (hS : S.Nodup)
    (hd : c.degR i.val < S.length) (h : ∀ v ∈ S, (c.substR i v).validR 0 = true)
    {R : Type*} [CommRing R] (ρ : Fin n → R) : c.eval ρ = 0 := by
  rw [eval_eq_aeval, toPoly_eq_zero_of_grid1 c i hS (by rw [← degR_eq]; exact hd)
    (fun v hv => by rw [← substR_eq]; exact h v hv), MvPolynomial.eval₂_zero]

end Circ

end NoFourMUBs.Kronecker
