import NoFourMUBs.Step2.Statements

/-!
# PR-M in Lean: shared definitions

`AllCornersMatched H`: at every positional corner of `H` (every reordering of its rows and columns), the side
signatures of the upper-right and lower-left blocks are conjugate.  Return G (`PRM.md` §5.4) proves this for
the two Fourier families; a strict nonmatched corner therefore excludes them.
-/

open Matrix Hadamard6 ComplexConjugate

namespace NoFourMUBs.PRM

/-- Every positional corner of `H` is matched. -/
def AllCornersMatched (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ)) =
    conj (Step2.sideSignature (Step2.lowerBlock (H.submatrix σ τ)))

/-- **Strict-corner coverage** (MC1, `PRM.md` §7.2): every Hadamard matrix not equivalent to `F6` has a
positional corner whose side signature is not real (by `Side.RS_eq_im_sq`, a corner with `R > 0`). -/
def StrictCornerCoverage : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ¬ Equivalent H Step2.fourierHadamard.1 →
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

end NoFourMUBs.PRM
