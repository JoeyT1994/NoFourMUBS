import PhysicalGramRecovery
import Source2442Binding

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.GramChart20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006 InvariantBinding20261006
noncomputable section

/-- A new off-locus extension. Its inverse depends only on the leading
corner. Agreement with the previous chart is asserted only on physical inputs. -/
def gramConstructedT (E : Mat3) (z w : Fin 3 → ℂ) : Mat3 :=
  -(constructedC E w*Eᴴ)*nativeInverse (seedGram E)*constructedB E z

def gramAuxiliaryModel (E : Mat3) (z w : Fin 3 → ℂ) : Mat6 :=
  assembleBlocks E (constructedB E z) (constructedC E w) (gramConstructedT E z w)

def gramNativeChart (E : Mat3) (anchors : Fin 4 → ℂ) : Mat6 :=
  gramAuxiliaryModel E (anchorTriple (anchors 0) (anchors 1))
    (anchorTriple (anchors 2) (anchors 3))

def source2442GramModel (u angles : Fin 4 → ℝ) : Mat6 :=
  gramNativeChart (source2442Corner u) (fun i => phase (angles i))

theorem blockE_assemble (E B C T : Mat3) : blockE (assembleBlocks E B C T)=E := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

theorem blockB_assemble (E B C T : Mat3) : blockB (assembleBlocks E B C T)=B := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

theorem blockC_assemble (E B C T : Mat3) : blockC (assembleBlocks E B C T)=C := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

theorem blockT_assemble (E B C T : Mat3) : blockT (assembleBlocks E B C T)=T := by
  ext i j; fin_cases i <;> fin_cases j <;> rfl

/-- This equality is physical-locus-only: it must not be used to transfer
old off-locus Taylor enclosures to the new Gram extension. -/
theorem nativeChart_eq_gram_of_physical (E : Mat3) (anchors : Fin 4 → ℂ)
    (hH : Physical (nativeChart E anchors)) (hR : 0<leadingR (nativeChart E anchors)) :
    nativeChart E anchors=gramNativeChart E anchors := by
  have ht := physical_lower_block_nativeGram hH hR
  simp only [nativeChart,auxiliaryModel,blockE_assemble,blockB_assemble,
    blockC_assemble,blockT_assemble] at ht
  exact congrArg
    (assembleBlocks E (constructedB E (anchorTriple (anchors 0) (anchors 1)))
      (constructedC E (anchorTriple (anchors 2) (anchors 3)))) ht

theorem source2442Model_eq_gram_of_physical (u angles : Fin 4 → ℝ)
    (hH : Physical (source2442Model u angles))
    (hR : 0<leadingR (source2442Model u angles)) :
    source2442Model u angles=source2442GramModel u angles :=
  nativeChart_eq_gram_of_physical _ _ hH hR

/-- The replacement does not alter the leading corner, even off locus. -/
theorem gramNativeChart_leadingR (E : Mat3) (anchors : Fin 4 → ℂ) :
    leadingR (gramNativeChart E anchors)=leadingR (nativeChart E anchors) := rfl

theorem source2442GramModel_leadingR_eq_laurent_eval (u angles : Fin 4 → ℝ) :
    (leadingR (source2442GramModel u angles) : ℂ)=
      KernelLaurent.eval (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
        KernelLaurent.cornerPolynomial :=
  source2442Model_leadingR_eq_laurent_eval u angles

/-- Both closed punctured seed balls have a representation in the new
Gram chart with the same finite orientations, phases and maximality data. -/
theorem both_seeds_source2442_gram_cover {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ u angles : Fin 4 → ℝ,
      FixesLeading rows ∧ FixesLeading cols ∧
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      permuteMatrix (source2442Matrix H b) rows cols=source2442GramModel u angles ∧
      Physical (source2442GramModel u angles) ∧ Dephased (source2442GramModel u angles) ∧
      Maximal (source2442GramModel u angles) ∧ leadingR (source2442GramModel u angles)=leadingR H ∧
      0<leadingR (source2442GramModel u angles) := by
  obtain ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,hperm,hJ,hdJ,hmJ,hRJ,hposJ⟩ :=
    both_seeds_source2442_cover hH hd hm hR b r hball hr
  have he := source2442Model_eq_gram_of_physical u angles hJ hposJ
  refine ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,?_,?_,?_,?_,?_,?_⟩
  all_goals rw [← he]
  · exact hperm
  · exact hJ
  · exact hdJ
  · exact hmJ
  · exact hRJ
  · exact hposJ

/-- All 94 physical necessary conditions are retained by the new chart.
This is containment, not an exclusion or a numerical interval certificate. -/
theorem both_seeds_source2442_gram_residual_cover {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ u angles : Fin 4 → ℝ,
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      0<leadingR (source2442GramModel u angles) ∧
      leadingR (source2442GramModel u angles)=leadingR H ∧
      (∀ index : Fin 94, index.val<13 → residual94 (source2442GramModel u angles) index=0) ∧
      (∀ index : Fin 94, 13 ≤ index.val →
        |residual94 (source2442GramModel u angles) index| ≤
          Real.sqrt (leadingR (source2442GramModel u angles))) ∧
      (leadingR H : ℂ)=KernelLaurent.eval
        (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i)) KernelLaurent.cornerPolynomial := by
  obtain ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,hperm,hJ,hdJ,hmJ,hRJ,hposJ⟩ :=
    both_seeds_source2442_gram_cover hH hd hm hR b r hball hr
  obtain ⟨heq,hsigned⟩ := physical_residual94_constraints hJ hmJ hposJ
  refine ⟨u,angles,hu,hn,hdom,hposJ,hRJ,heq,hsigned,?_⟩
  rw [← hRJ]
  exact source2442GramModel_leadingR_eq_laurent_eval u angles

end
end Centiradian20261006.GramChart20261006

#print axioms Centiradian20261006.GramChart20261006.blockE_assemble
#print axioms Centiradian20261006.GramChart20261006.blockB_assemble
#print axioms Centiradian20261006.GramChart20261006.blockC_assemble
#print axioms Centiradian20261006.GramChart20261006.blockT_assemble
#print axioms Centiradian20261006.GramChart20261006.nativeChart_eq_gram_of_physical
#print axioms Centiradian20261006.GramChart20261006.source2442Model_eq_gram_of_physical
#print axioms Centiradian20261006.GramChart20261006.gramNativeChart_leadingR
#print axioms Centiradian20261006.GramChart20261006.source2442GramModel_leadingR_eq_laurent_eval
#print axioms Centiradian20261006.GramChart20261006.both_seeds_source2442_gram_cover
#print axioms Centiradian20261006.GramChart20261006.both_seeds_source2442_gram_residual_cover
