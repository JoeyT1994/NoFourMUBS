import NoFourMUBs.PRM.FourierMatch
import NoFourMUBs.PRM.CoverageGap

/-!
# All-critical matrices: corners by sorted triples, and invariance

`AllCritical H` quantifies over positional corners `rightBlock (H.submatrix σ τ)`.  Here:

* every corner `triBlock H k l` (rows `tri k`, columns `tri l`, as in `FourierMatch`) is a positional
  corner (`rightBlock_triPerm`), so an all-critical matrix has real signature there
  (`AllCritical.triBlock_im`);
* `AllCritical` is invariant under Hadamard equivalence (`allCritical_of_equivalent`) and under
  transposition (`allCritical_transpose`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

/-- A permutation of `I6` given by a table on `Fin 6` (through `e6`). -/
def tabPerm (f : Fin 6 → Fin 6) (hf : Function.Bijective f) : Equiv.Perm I6 :=
  e6.trans ((Equiv.ofBijective f hf).trans e6.symm)

theorem tabPerm_apply (f : Fin 6 → Fin 6) (hf : Function.Bijective f) (a : I6) :
    tabPerm f hf a = e6.symm (f (e6 a)) := rfl

/-- `tri (19 - k)` on the first three places, `tri k` on the last three. -/
def triTab (k : Fin 20) (u : Fin 6) : Fin 6 :=
  if h : u.val < 3 then tri (19 - k) ⟨u.val, h⟩ else tri k ⟨u.val - 3, by omega⟩

theorem triTab_bijective : ∀ k : Fin 20, Function.Bijective (triTab k) := by decide

/-- A permutation of `I6` sending `inr i` to the `i`-th element of `tri k`. -/
def triPerm (k : Fin 20) : Equiv.Perm I6 := tabPerm (triTab k) (triTab_bijective k)

theorem triPerm_inr : ∀ (k : Fin 20) (i : Fin 3), triPerm k (Sum.inr i) = e6.symm (tri k i) := by
  decide

theorem triPerm_inl : ∀ (k : Fin 20) (i : Fin 3), triPerm (19 - k) (Sum.inl i) = e6.symm (tri k i) := by
  decide

theorem rightBlock_triPerm (H : Mat6) (k l : Fin 20) :
    Step2.rightBlock (H.submatrix (triPerm (19 - k)) (triPerm l)) = triBlock H k l := by
  ext i j
  simp only [Step2.rightBlock, Matrix.submatrix_apply, triPerm_inl, triPerm_inr, triBlock,
    Matrix.of_apply]

theorem AllCritical.triBlock_im {H : Mat6} (h : AllCritical H) (k l : Fin 20) :
    (Step2.sideSignature (triBlock H k l)).im = 0 := by
  rw [← rightBlock_triPerm]; exact h _ _

/-! ### Invariance -/

private lemma mul_conj_of_normSq {z : ℂ} (h : Complex.normSq z = 1) : z * conj z = 1 := by
  rw [Complex.mul_conj, h]; simp

/-- Permutations and unit row/column phases preserve the all-critical property. -/
theorem allCritical_of_equivalent {H K : Mat6} (hHK : Equivalent H K) (hH : AllCritical H) :
    AllCritical K := by
  obtain ⟨σ, τ, r, c, hr, hc, hK⟩ := hHK
  intro σ' τ'
  have hR : Step2.rightBlock (K.submatrix σ' τ') = Matrix.of fun i j =>
      r (σ' (.inl i)) * Step2.rightBlock (H.submatrix (σ'.trans σ) (τ'.trans τ)) i j *
        c (τ' (.inr j)) := by
    ext i j; simp [Step2.rightBlock, hK]
  rw [hR, Step2.sideSignature_scale _ _ _ (fun i => mul_conj_of_normSq (hr _))
      (fun j => mul_conj_of_normSq (hc _))]
  exact hH _ _

theorem allCritical_equivalent_iff {H K : Mat6} (hHK : Equivalent H K) :
    AllCritical H ↔ AllCritical K :=
  ⟨allCritical_of_equivalent hHK, allCritical_of_equivalent (equivalent_symm hHK)⟩

/-- Transposition preserves the all-critical property. -/
theorem allCritical_transpose {H : Mat6} (h : AllCritical H) : AllCritical Hᵀ := by
  intro σ τ
  have e : Step2.rightBlock (Hᵀ.submatrix σ τ) =
      (Step2.rightBlock (H.submatrix ((Equiv.sumComm I3 I3).trans τ)
        ((Equiv.sumComm I3 I3).trans σ)))ᵀ := by
    ext i j; rfl
  rw [e, sideSignature_transpose]
  exact h _ _

theorem allCritical_transpose_iff {H : Mat6} : AllCritical Hᵀ ↔ AllCritical H :=
  ⟨fun h => by simpa using allCritical_transpose h, allCritical_transpose⟩

end NoFourMUBs.PRM.Coverage
