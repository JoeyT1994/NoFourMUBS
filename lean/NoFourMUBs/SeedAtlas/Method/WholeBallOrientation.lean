import NoFourMUBs.SeedAtlas.Transfer
import NoFourMUBs.SeedAtlas.Method.WholeBallBounds

/-!
# Whole-ball orientation and the horizontal representative

Return Z, THEOREM.md §6. The input phase lift need not be dephased or horizontal.
Dephasing preserves the two signatures; the existing side-signature theorem
therefore gives strictness and the requested matched orientation. Horizontal
projection then gives exactly the representative used in Z's enclosure.

The Taylor bound (14) and its finite 24-frequency Hessian identity are separate
obligations: this file consumes verified signed variation bounds.
-/

open Matrix Hadamard6 NoFourMUBs.Step2 ComplexConjugate

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

theorem rowColEquiv_trans {H K M : Mat6} (hHK : RowColEquiv H K) (hKM : RowColEquiv K M) :
    RowColEquiv H M := by
  obtain ⟨r, c, hr, hc, h⟩ := hHK
  obtain ⟨r', c', hr', hc', h'⟩ := hKM
  refine ⟨fun i => r' i * r i, fun j => c j * c' j, ?_, ?_, ?_⟩
  · intro i; rw [Complex.normSq_mul, hr' i, hr i, mul_one]
  · intro j; rw [Complex.normSq_mul, hc j, hc' j, mul_one]
  · intro i j; rw [h' i j, h i j]; ring

theorem rowColEquiv_from_dephase {H : Mat6} (hH : EntrywiseUnit H) : RowColEquiv (dephase H) H := by
  refine ⟨fun i => conj (dephaseRowFactor H i), fun j => conj (dephaseColumnFactor H j), ?_, ?_, ?_⟩
  · intro i; rw [Complex.normSq_conj]; exact dephaseRowFactor_unit hH i
  · intro j; rw [Complex.normSq_conj]; exact dephaseColumnFactor_unit hH j
  · intro i j
    have hr : dephaseRowFactor H i * conj (dephaseRowFactor H i) = 1 := by
      rw [Complex.mul_conj, dephaseRowFactor_unit hH i, Complex.ofReal_one]
    have hc : dephaseColumnFactor H j * conj (dephaseColumnFactor H j) = 1 := by
      rw [Complex.mul_conj, dephaseColumnFactor_unit hH j, Complex.ofReal_one]
    symm
    calc
      _ = (dephaseRowFactor H i * conj (dephaseRowFactor H i)) * H i j *
          (dephaseColumnFactor H j * conj (dephaseColumnFactor H j)) := by
            simp only [dephase, phaseTransform]
            ring
      _ = H i j := by rw [hr, hc, one_mul, mul_one]

/-- The seed map `L` in Z is `cornerTheta Q 1 1`. Positive signed side signatures
on any Hadamard lift give strictness and a horizontal `RepO` representative. -/
theorem horizontal_rep_of_signs {Q : RMat6} {θ : Fin 4 → ℝ} {o : ℤˣ}
    (hH : Hadamard6.IsHadamard (phaseMat Q)) (hL : cornerTheta Q 1 1 = θ)
    (hB : 0 < osgn o * (psi (rightBlock (phaseMat Q))).im)
    (hC : 0 < -osgn o * (psi (lowerBlock (phaseMat Q))).im) :
    0 < seedR (seedOf θ) ∧ RepO o (seedOf θ) (phaseMat (hor Q)) := by
  have hE := leadingBlock_cornerMat_phaseMat 0 1 1 Q
  change leadingBlock (cornerMat 0 1 1 (phaseMat Q)) = seedCorner (seedOf (cornerTheta Q 1 1)) at hE
  rw [hL] at hE
  have hψB := psi_rightBlock_cornerMat 0 1 1 hH
  change psi (rightBlock (cornerMat 0 1 1 (phaseMat Q))) = psi (rightBlock (phaseMat Q)) at hψB
  have hψC := psi_lowerBlock_cornerMat 0 1 1 hH
  change psi (lowerBlock (cornerMat 0 1 1 (phaseMat Q))) = psi (lowerBlock (phaseMat Q)) at hψC
  have hD := isHadamard_cornerMat 0 1 1 hH
  obtain ⟨hR, hM⟩ := matchedO_of_signs hD (dephased_cornerMat 0 1 1 hH) hE
    (by rwa [hψB]) (by rwa [hψC])
  refine ⟨hR, cornerMat 0 1 1 (phaseMat Q), hD, hM, ?_⟩
  apply rowColEquiv_trans (K := phaseMat Q) ?_ (rowColEquiv_hor Q)
  change RowColEquiv (dephase (phaseMat Q)) (phaseMat Q)
  exact rowColEquiv_from_dephase hH.1

/-- Z (14)–(15), followed by the existing matched-root criterion. The two errors
are absolute variation bounds for the *actual* side signatures on the ball. -/
theorem horizontal_rep_of_margins {Q : RMat6} {θ : Fin 4 → ℝ} {o : ℤˣ}
    {ψh0 ψv0 vh vv : ℝ}
    (hH : Hadamard6.IsHadamard (phaseMat Q)) (hL : cornerTheta Q 1 1 = θ)
    (hh : |(psi (rightBlock (phaseMat Q))).im - ψh0| ≤ vh)
    (hv : |(psi (lowerBlock (phaseMat Q))).im - ψv0| ≤ vv)
    (hmh : 0 < osgn o * ψh0 - vh) (hmv : 0 < -osgn o * ψv0 - vv) :
    0 < seedR (seedOf θ) ∧ RepO o (seedOf θ) (phaseMat (hor Q)) := by
  have ho : osgn o = 1 ∨ osgn o = -1 := (osgn_cases o).imp And.right And.right
  have ho' : -osgn o = 1 ∨ -osgn o = -1 := by rcases ho with h | h <;> simp [h]
  exact horizontal_rep_of_signs hH hL (orientation_of_margin ho hh hmh).2
    (orientation_of_margin ho' hv hmv).2

end NoFourMUBs.SeedAtlas.Method.WholeBall
