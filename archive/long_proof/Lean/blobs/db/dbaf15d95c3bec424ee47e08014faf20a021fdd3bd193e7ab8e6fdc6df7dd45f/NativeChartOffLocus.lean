import SideConstructorUnit

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

def assembleBlocks (E B C T : Mat3) : Mat6 := fun i j =>
  if hi : i.val<3 then
    if hj : j.val<3 then E ⟨i.val,hi⟩ ⟨j.val,hj⟩
    else B ⟨i.val,hi⟩ ⟨j.val-3,by omega⟩
  else if hj : j.val<3 then C ⟨i.val-3,by omega⟩ ⟨j.val,hj⟩
    else T ⟨i.val-3,by omega⟩ ⟨j.val-3,by omega⟩

def constructedB (E : Mat3) (z : Fin 3 → ℂ) : Mat3 :=
  fun i j => z i*constructedSideK E z i j
def constructedC (E : Mat3) (w : Fin 3 → ℂ) : Mat3 :=
  fun i j => constructedSideK Eᵀ w j i*w j
def constructedT (E : Mat3) (z w : Fin 3 → ℂ) : Mat3 :=
  -(constructedC E w*Eᴴ*Matrix.diagonal z)*nativeInverse (constructedSideK E z)ᴴ
def auxiliaryModel (E : Mat3) (z w : Fin 3 → ℂ) : Mat6 :=
  assembleBlocks E (constructedB E z) (constructedC E w) (constructedT E z w)
def anchorTriple (z w : ℂ) : Fin 3 → ℂ := ![1,z,w]

/-- Exact-complex native model with its four anchor inputs. Its upper-left
block is supplied explicitly; no binary64 or interval semantics are asserted. -/
def nativeChart (E : Mat3) (anchors : Fin 4 → ℂ) : Mat6 :=
  auxiliaryModel E (anchorTriple (anchors 0) (anchors 1))
    (anchorTriple (anchors 2) (anchors 3))

theorem assembleBlocks_unit_outside (E B C T : Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1)
    (hB : ∀ i j, Complex.normSq (B i j)=1)
    (hC : ∀ i j, Complex.normSq (C i j)=1) :
    UnitOutsideLowerBlock (assembleBlocks E B C T) := by
  intro i j hij
  by_cases hi : i.val<3
  · by_cases hj : j.val<3
    · simp [assembleBlocks,hi,hj,hE]
    · simp [assembleBlocks,hi,hj,hB]
  · by_cases hj : j.val<3
    · simp [assembleBlocks,hi,hj,hC]
    · rcases hij with h | h <;> contradiction

theorem constructedB_unit (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope) (i j : Fin 3) :
    Complex.normSq (constructedB E z i j)=1 := by
  simp only [constructedB,Complex.normSq_mul,hz,
    constructedSideK_unit_from_sums E z hz r hs hr,one_mul]

theorem constructedC_unit (E : Mat3) (w : Fin 3 → ℂ)
    (hw : ∀ i, Complex.normSq (w i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum Eᵀ i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope) (i j : Fin 3) :
    Complex.normSq (constructedC E w i j)=1 := by
  simp only [constructedC,Complex.normSq_mul,hw,
    constructedSideK_unit_from_sums Eᵀ w hw r hs hr,mul_one]

theorem auxiliaryModel_unit_outside (E : Mat3) (z w : Fin 3 → ℂ)
    (hE : ∀ i j, Complex.normSq (E i j)=1)
    (hz : ∀ i, Complex.normSq (z i)=1) (hw : ∀ i, Complex.normSq (w i)=1)
    (r : ℝ) (hr : r ≤ radiusEnvelope)
    (hrow : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hcol : ∀ i : Fin 3, i ≠ 0 → ‖sideSum Eᵀ i‖ ≤ 2*r) :
    UnitOutsideLowerBlock (auxiliaryModel E z w) := by
  exact assembleBlocks_unit_outside _ _ _ _ hE
    (constructedB_unit E z hz r hrow hr) (constructedC_unit E w hw r hcol hr)

theorem anchorTriple_unit (z w : ℂ) (hz : Complex.normSq z=1)
    (hw : Complex.normSq w=1) (i : Fin 3) : Complex.normSq (anchorTriple z w i)=1 := by
  fin_cases i <;> simp [anchorTriple,hz,hw]

/-- All 81 literal and corrected-fast residual expressions agree on this
actual auxiliary model. No lower-block unit hypothesis or physicality is used. -/
theorem nativeChart_signed_identity (E : Mat3) (anchors : Fin 4 → ℂ)
    (hE : ∀ i j, Complex.normSq (E i j)=1)
    (ha : ∀ i, Complex.normSq (anchors i)=1) (r : ℝ)
    (hr : r ≤ radiusEnvelope)
    (hrow : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hcol : ∀ i : Fin 3, i ≠ 0 → ‖sideSum Eᵀ i‖ ≤ 2*r)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned (nativeChart E anchors) rowPair colPair bottomRow rightCol =
      SignedDeterminant.cornerSigned (nativeChart E anchors)
        (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) := by
  apply mixedSigned_eq_fast_off_locus
  exact auxiliaryModel_unit_outside _ _ _ hE
    (anchorTriple_unit _ _ (ha 0) (ha 1)) (anchorTriple_unit _ _ (ha 2) (ha 3))
    r hr hrow hcol

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.assembleBlocks_unit_outside
#print axioms Centiradian20261006.ChartExtension20261006.constructedB_unit
#print axioms Centiradian20261006.ChartExtension20261006.constructedC_unit
#print axioms Centiradian20261006.ChartExtension20261006.auxiliaryModel_unit_outside
#print axioms Centiradian20261006.ChartExtension20261006.anchorTriple_unit
#print axioms Centiradian20261006.ChartExtension20261006.nativeChart_signed_identity
