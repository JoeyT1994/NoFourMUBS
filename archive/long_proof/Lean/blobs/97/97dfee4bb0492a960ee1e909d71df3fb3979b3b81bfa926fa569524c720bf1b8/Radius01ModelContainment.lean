import Radius01CanonicalPermutations
import Mathlib.Analysis.SpecialFunctions.Complex.Arg

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

theorem normalizedSideK_entry (H : Mat6) (i j : Fin 3) :
    normalizedSideK H i j=sideRowNormalized H i j := by
  simp [normalizedSideK,anchorDiagonal,Matrix.mul_apply,Matrix.conjTranspose_apply,
    Matrix.diagonal,sideRowNormalized,mul_comm,apply_ite]

/-- Once the physically available finite orientation is fixed, the actual
normalized side block is literally the source's canonical square-root chart. -/
theorem canonical_normalizedSideK {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hc : CanonicalRows H) :
    normalizedSideK H=constructedSideK (blockE H) (fun i => blockB H i 0) := by
  have h1 := hc.1
  have h2 := hc.2.1
  simp only [rowOrientation,↓reduceIte,Bool.false_eq_true] at h1 h2
  have htop (j : Fin 3) : sideRowNormalized H 0 j=1 := by
    simp [sideRowNormalized,blockB,upperIndex,hd.1]
  have hleft (i : Fin 3) : sideRowNormalized H i 0=1 := by
    simp [sideRowNormalized,Complex.mul_conj,blockB,hH.1]
  ext i j
  rw [normalizedSideK_entry]
  fin_cases i <;> fin_cases j <;> simp [constructedSideK,htop,hleft,h1.1,h1.2,h2.1,h2.2]

theorem canonical_blockB {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hc : CanonicalRows H) : blockB H=constructedB (blockE H) (fun i => blockB H i 0) := by
  calc
    blockB H=anchorDiagonal H*normalizedSideK H := physical_blockB_anchor_factor hH
    _ = anchorDiagonal H*constructedSideK (blockE H) (fun i => blockB H i 0) :=
      congrArg (fun K => anchorDiagonal H*K) (canonical_normalizedSideK hH hd hc)
    _ = _ := by
      ext i j
      simp [anchorDiagonal,constructedB,Matrix.mul_apply,Matrix.diagonal]

theorem canonical_blockC {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hc : CanonicalColumns H) : blockC H=constructedC (blockE H) (fun i => blockC H 0 i) := by
  have ht := canonical_blockB (physical_transpose hH) ⟨hd.2,hd.1⟩ hc
  have hE : blockE (fun i j => H j i)=(blockE H)ᵀ := rfl
  rw [hE] at ht
  ext i j
  have he := congrFun (congrFun ht j) i
  simpa [blockB,blockC,blockE,constructedB,constructedC,mul_comm] using he

theorem assembleBlocks_recover (H : Mat6) :
    H=assembleBlocks (blockE H) (blockB H) (blockC H) (blockT H) := by
  funext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem physical_canonical_auxiliaryModel {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hR : 0 < leadingR H) (hrow : CanonicalRows H) (hcol : CanonicalColumns H) :
    H=auxiliaryModel (blockE H) (fun i => blockB H i 0) (fun i => blockC H 0 i) := by
  have hB := canonical_blockB hH hd hrow
  have hC := canonical_blockC hH hd hcol
  have hT : blockT H=constructedT (blockE H) (fun i => blockB H i 0) (fun i => blockC H 0 i) := by
    have he := congrArg₂ (fun C K : Mat3 => -(C*(blockE H)ᴴ*anchorDiagonal H)*nativeInverse Kᴴ)
      hC (canonical_normalizedSideK hH hd hrow)
    exact (physical_lower_block_native hH hR).trans he
  calc
    H=assembleBlocks (blockE H) (blockB H) (blockC H) (blockT H) := assembleBlocks_recover H
    _ = _ := by
      have he := congrArg₂ (fun B C : Mat3 => assembleBlocks (blockE H) B C) hB hC
      exact congrArg₂ (fun f T => f T) he hT

def actualChartAnchors (H : Mat6) : Fin 4 → ℂ := ![H 1 3,H 2 3,H 3 1,H 3 2]

theorem actualChartAnchors_unit {H : Mat6} (hH : Physical H) (i : Fin 4) :
    Complex.normSq (actualChartAnchors H i)=1 := by
  fin_cases i <;> simp [actualChartAnchors,hH.1]

theorem physical_canonical_nativeChart {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hR : 0 < leadingR H) (hrow : CanonicalRows H) (hcol : CanonicalColumns H) :
    H=nativeChart (blockE H) (actualChartAnchors H) := by
  have hz : (fun i => blockB H i 0)=anchorTriple (actualChartAnchors H 0) (actualChartAnchors H 1) := by
    funext i; fin_cases i <;> simp [blockB,upperIndex,bottomIndex,anchorTriple,actualChartAnchors,hd.1]
  have hw : (fun i => blockC H 0 i)=anchorTriple (actualChartAnchors H 2) (actualChartAnchors H 3) := by
    funext i; fin_cases i <;> simp [blockC,upperIndex,bottomIndex,anchorTriple,actualChartAnchors,hd.2]
  simpa only [hz,hw,nativeChart] using physical_canonical_auxiliaryModel hH hd hR hrow hcol

theorem blockE_seedCorner {H : Mat6} (hd : Dephased H) (b : Bool) (u : Fin 4 → ℝ)
    (he : ∀ i, seedEntry H i=Complex.exp (Complex.I*(seedAngle b i+u i))) :
    blockE H=seedCorner b u := by
  have he0 : H 1 1=phase (seedAngle b 0+u 0) := by simpa [seedEntry,phase] using he 0
  have he1 : H 1 2=phase (seedAngle b 1+u 1) := by simpa [seedEntry,phase] using he 1
  have he2 : H 2 1=phase (seedAngle b 2+u 2) := by simpa [seedEntry,phase] using he 2
  have he3 : H 2 2=phase (seedAngle b 3+u 3) := by simpa [seedEntry,phase] using he 3
  ext i j
  fin_cases i <;> fin_cases j <;> simp [blockE,upperIndex,seedCorner,hd.1,hd.2,he0,he1,he2,he3]

theorem phase_arg_unit (z : ℂ) (hz : Complex.normSq z=1) : phase z.arg=z := by
  have h := Complex.norm_mul_exp_arg_mul_I z
  simpa only [unit_entry_norm z hz,Complex.ofReal_one,one_mul,mul_one,mul_comm,phase] using h

def ChartPhaseDomain (angles : Fin 4 → ℝ) : Prop :=
  |angles 0| ≤ Real.pi/2 ∧ |angles 2| ≤ Real.pi/2 ∧ ∀ i, |angles i| ≤ Real.pi

theorem canonical_anchor_phase_domain {H : Mat6} (hrow : CanonicalRows H) (hcol : CanonicalColumns H) :
    ChartPhaseDomain (fun i => (actualChartAnchors H i).arg) := by
  refine ⟨?_,?_,fun i => Complex.abs_arg_le_pi _⟩
  · exact Complex.abs_arg_le_pi_div_two_iff.mpr hrow.2.2.le
  · exact Complex.abs_arg_le_pi_div_two_iff.mpr hcol.2.2.le

/-- Actual eight-variable source chart containment. The finite representation
changes are explicit permutations, all 400 corner comparisons are retained,
and the selected anchor phases lie in the source's restricted phase domain.
This is a chart-cover theorem, not a radius exclusion or interval certificate. -/
theorem physical_nativeChart_cover01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ u angles : Fin 4 → ℝ,
      FixesLeading rows ∧ FixesLeading cols ∧
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      let J := nativeChart (seedCorner b u) (fun i => phase (angles i))
      permuteMatrix H rows cols=J ∧ Physical J ∧ Dephased J ∧ Maximal J ∧
        leadingR J=leadingR H ∧ 0 < leadingR J := by
  obtain ⟨rows,cols,hrows,hcols,hJ,hdJ,hmJ,hRJ,hposJ,hballJ,hcr,hcc⟩ :=
    physical_canonical_full_domain01 hH hd hm hR b r hball hr
  let J := permuteMatrix H rows cols
  obtain ⟨u,he,hu,hn⟩ := hballJ
  let angles : Fin 4 → ℝ := fun i => (actualChartAnchors J i).arg
  have hmodel : J=nativeChart (seedCorner b u) (fun i => phase (angles i)) := by
    have ha : (fun i => phase (angles i))=actualChartAnchors J := by
      funext i
      exact phase_arg_unit _ (actualChartAnchors_unit hJ i)
    rw [ha,← blockE_seedCorner hdJ b u he]
    exact physical_canonical_nativeChart hJ hdJ hposJ hcr hcc
  refine ⟨rows,cols,u,angles,hrows,hcols,hu,hn,canonical_anchor_phase_domain hcr hcc,?_,?_,?_,?_,?_,?_⟩
  · exact hmodel
  · rwa [← hmodel]
  · rwa [← hmodel]
  · rwa [← hmodel]
  · rwa [← hmodel]
  · rwa [← hmodel]

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.normalizedSideK_entry
#print axioms Centiradian20261006.ChartRadius0120261006.canonical_normalizedSideK
#print axioms Centiradian20261006.ChartRadius0120261006.canonical_blockB
#print axioms Centiradian20261006.ChartRadius0120261006.canonical_blockC
#print axioms Centiradian20261006.ChartRadius0120261006.assembleBlocks_recover
#print axioms Centiradian20261006.ChartRadius0120261006.physical_canonical_auxiliaryModel
#print axioms Centiradian20261006.ChartRadius0120261006.actualChartAnchors_unit
#print axioms Centiradian20261006.ChartRadius0120261006.physical_canonical_nativeChart
#print axioms Centiradian20261006.ChartRadius0120261006.blockE_seedCorner
#print axioms Centiradian20261006.ChartRadius0120261006.phase_arg_unit
#print axioms Centiradian20261006.ChartRadius0120261006.canonical_anchor_phase_domain
#print axioms Centiradian20261006.ChartRadius0120261006.physical_nativeChart_cover01
