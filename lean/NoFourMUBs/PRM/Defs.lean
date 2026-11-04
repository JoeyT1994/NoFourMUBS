import NoFourMUBs.Step2.Statements

/-!
# PR-M in Lean: shared definitions

`AllCornersMatched H`: at every positional corner of `H` (every reordering of its rows and columns), the side
signatures of the upper-right and lower-left blocks are conjugate (used by `FourierMatch` and
`FourierVanishing`, outside `Final`).  `StrictCornerCoverage` is MC1.  The sorted triples `tri`, the corners
`triBlock` on them and `cover` (every injection `Fin 3 → Fin 6` is a sorted triple after a permutation).
-/

open Matrix Hadamard6 ComplexConjugate

namespace NoFourMUBs.PRM

/-- Every positional corner of `H` is matched. -/
def AllCornersMatched (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ)) =
    conj (Step2.sideSignature (Step2.lowerBlock (H.submatrix σ τ)))

/-- **Strict-corner coverage** (MC1, `PRM.md` §7.2): every Hadamard matrix outside the Fourier family
(`Step2.InFourierFamily`) has a positional corner whose side signature is not real (by `Side.RS_eq_im_sq`,
a corner with `R > 0`). -/
def StrictCornerCoverage : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ¬ Step2.InFourierFamily H →
    ∃ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im ≠ 0

/-! ### Column indexing: `I6 ≃ Fin 6` and the twenty sorted 3-subsets -/

/-- `I6 ≃ Fin 6`: `inl i ↦ i`, `inr i ↦ i + 3`. -/
def e6 : I6 ≃ Fin 6 where
  toFun := Sum.elim (fun i => ⟨i.val, by omega⟩) (fun i => ⟨i.val + 3, by omega⟩)
  invFun u := if h : u.val < 3 then Sum.inl ⟨u.val, h⟩ else Sum.inr ⟨u.val - 3, by omega⟩
  left_inv := by decide
  right_inv := by decide

/-- The 3-subsets of `Fin 6`, sorted, in lexicographic order. -/
def tri (k : Fin 20) : Fin 3 → Fin 6 :=
  ![![0, 1, 2], ![0, 1, 3], ![0, 1, 4], ![0, 1, 5], ![0, 2, 3], ![0, 2, 4], ![0, 2, 5], ![0, 3, 4],
    ![0, 3, 5], ![0, 4, 5], ![1, 2, 3], ![1, 2, 4], ![1, 2, 5], ![1, 3, 4], ![1, 3, 5], ![1, 4, 5],
    ![2, 3, 4], ![2, 3, 5], ![2, 4, 5], ![3, 4, 5]] k

/-- The six permutations of `Fin 3`. -/
def p3 : Fin 6 → Equiv.Perm (Fin 3) :=
  ![1, Equiv.swap 0 1, Equiv.swap 0 2, Equiv.swap 1 2, Equiv.swap 0 1 * Equiv.swap 1 2,
    Equiv.swap 1 2 * Equiv.swap 0 1]

theorem cover3 : ∀ a b c : Fin 6, a ≠ b → a ≠ c → b ≠ c →
    ∃ k : Fin 20, ∃ m : Fin 6, tri k (p3 m 0) = a ∧ tri k (p3 m 1) = b ∧ tri k (p3 m 2) = c := by
  decide

/-- Every injection `Fin 3 → Fin 6` is a sorted triple after a permutation. -/
theorem cover (f : Fin 3 → Fin 6) (hf : Function.Injective f) :
    ∃ k : Fin 20, ∃ m : Fin 6, ∀ i, f i = tri k (p3 m i) := by
  obtain ⟨k, m, h0, h1, h2⟩ := cover3 (f 0) (f 1) (f 2) (hf.ne (by decide)) (hf.ne (by decide))
    (hf.ne (by decide))
  refine ⟨k, m, fun i => ?_⟩
  fin_cases i
  · exact h0.symm
  · exact h1.symm
  · exact h2.symm

/-- The corner restricted to the sorted triples `tri k` (rows) and `tri l` (columns). -/
def triBlock (H : Mat6) (k l : Fin 20) : Mat3 :=
  Matrix.of fun i j => H (e6.symm (tri k i)) (e6.symm (tri l j))

end NoFourMUBs.PRM
