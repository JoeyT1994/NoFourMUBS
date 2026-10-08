import ConjugateSeed

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.InvariantBinding20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006
noncomputable section

/-- Exact-complex meaning of interval_model.hpp::om for the nonnegative
indices i*j used to initialize model's leading block. This is not a claim
about the floating-point enclosure of sqrt(3). -/
def nativeOmega (n : ℕ) : ℂ :=
  if n%3=0 then 1 else
    if n%3=1 then -(1/2:ℂ)+Complex.I*((Real.sqrt 3/2:ℝ):ℂ)
    else -(1/2:ℂ)-Complex.I*((Real.sqrt 3/2:ℝ):ℂ)

theorem nativeOmega_zero : nativeOmega 0=1 := by norm_num [nativeOmega]

theorem nativeOmega_one : nativeOmega 1=phase (2*Real.pi/3) := by
  rw [← reference_pair_fourier.2]
  norm_num [nativeOmega,pairMinus,reference_height_value]
  ring

theorem nativeOmega_two : nativeOmega 2=phase (4*Real.pi/3) := by
  rw [← reference_pair_fourier.1]
  norm_num [nativeOmega,pairPlus,reference_height_value]
  ring

theorem nativeOmega_four : nativeOmega 4=nativeOmega 1 := by norm_num [nativeOmega]

/-- The native model initializes E[i][j]=om(i*j), then multiplies its four
interior entries by row-major phase displacements. All nine entries and the
four concrete indices are retained in this exact source transcription. -/
def source2442Corner (u : Fin 4 → ℝ) : Mat3 := fun i j =>
  if hi : i=0 then nativeOmega (i.val*j.val)
  else if hj : j=0 then nativeOmega (i.val*j.val)
  else nativeOmega (i.val*j.val)*phase (u ⟨(i.val-1)*2+(j.val-1),by
    have hi' : 0 < i.val := by
      apply Nat.pos_of_ne_zero
      intro h
      exact hi (Fin.ext h)
    have hj' : 0 < j.val := by
      apply Nat.pos_of_ne_zero
      intro h
      exact hj (Fin.ext h)
    have := i.isLt
    have := j.isLt
    omega⟩)

/-- The source's hardcoded i*j table is exactly the false/2442 Lean seed;
it is not the true/4224 seed. -/
theorem source2442Corner_eq_seedCorner (u : Fin 4 → ℝ) : source2442Corner u=seedCorner false u := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [source2442Corner,seedCorner,seedAngle,phase_add,
      nativeOmega_zero,nativeOmega_one,nativeOmega_two,nativeOmega_four]

def source2442Model (u angles : Fin 4 → ℝ) : Mat6 :=
  nativeChart (source2442Corner u) (fun i => phase (angles i))

/-- The exact hardcoded model's actual leading score equals the root
Laurent expression at the literal 2442 seed phases. -/
theorem source2442Model_leadingR_eq_laurent_eval (u angles : Fin 4 → ℝ) :
    (leadingR (source2442Model u angles) : ℂ)=
      KernelLaurent.eval (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
        KernelLaurent.cornerPolynomial := by
  rw [source2442Model,source2442Corner_eq_seedCorner]
  exact seed_nativeChart_leadingR_eq_laurent_eval false u _

/-- Both physical seed balls map to the exact hardcoded 2442 model. When
necessary, conjugate the physical matrix first, then use the already checked
finite anchor/orientation permutations. This avoids incorrectly asserting
that the canonical model commutes with entrywise conjugation. -/
theorem both_seeds_source2442_cover {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ u angles : Fin 4 → ℝ,
      FixesLeading rows ∧ FixesLeading cols ∧
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      permuteMatrix (source2442Matrix H b) rows cols=source2442Model u angles ∧
      Physical (source2442Model u angles) ∧ Dephased (source2442Model u angles) ∧
      Maximal (source2442Model u angles) ∧ leadingR (source2442Model u angles)=leadingR H ∧
      0 < leadingR (source2442Model u angles) := by
  obtain ⟨hp,hdp,hmp,heq,hpos,hballp⟩ := source2442_physical_domain hH hd hm hR b r hball
  obtain ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,hperm,hJ,hdJ,hmJ,hRJ,hposJ⟩ :=
    physical_nativeChart_cover01 hp hdp hmp hpos false r hballp hr
  have hmodel : source2442Model u angles=
      nativeChart (seedCorner false u) (fun i => phase (angles i)) := by
    rw [source2442Model,source2442Corner_eq_seedCorner]
  refine ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,?_,?_,?_,?_,?_,?_⟩
  · rwa [hmodel]
  · rwa [hmodel]
  · rwa [hmodel]
  · rwa [hmodel]
  · rw [hmodel,hRJ,heq]
  · rwa [hmodel]

/-- Complete physical necessity in the literal one-seed native model:
score equality, all thirteen equalities, all eighty-one signed bounds,
and the positive-J Laurent expression are simultaneous conclusions. -/
theorem both_seeds_source2442_residual_cover {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ u angles : Fin 4 → ℝ,
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      0 < leadingR (source2442Model u angles) ∧ leadingR (source2442Model u angles)=leadingR H ∧
      (∀ index : Fin 94, index.val<13 → residual94 (source2442Model u angles) index=0) ∧
      (∀ index : Fin 94, 13 ≤ index.val →
        |residual94 (source2442Model u angles) index| ≤ Real.sqrt (leadingR (source2442Model u angles))) ∧
      (leadingR H : ℂ)=KernelLaurent.eval
        (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i)) KernelLaurent.cornerPolynomial := by
  obtain ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,hperm,hJ,hdJ,hmJ,hRJ,hposJ⟩ :=
    both_seeds_source2442_cover hH hd hm hR b r hball hr
  obtain ⟨heq,hsigned⟩ := physical_residual94_constraints hJ hmJ hposJ
  refine ⟨u,angles,hu,hn,hdom,hposJ,hRJ,heq,hsigned,?_⟩
  rw [← hRJ]
  exact source2442Model_leadingR_eq_laurent_eval u angles

end
end Centiradian20261006.InvariantBinding20261006

#print axioms Centiradian20261006.InvariantBinding20261006.nativeOmega_zero
#print axioms Centiradian20261006.InvariantBinding20261006.nativeOmega_one
#print axioms Centiradian20261006.InvariantBinding20261006.nativeOmega_two
#print axioms Centiradian20261006.InvariantBinding20261006.nativeOmega_four
#print axioms Centiradian20261006.InvariantBinding20261006.source2442Corner_eq_seedCorner
#print axioms Centiradian20261006.InvariantBinding20261006.source2442Model_leadingR_eq_laurent_eval
#print axioms Centiradian20261006.InvariantBinding20261006.both_seeds_source2442_cover
#print axioms Centiradian20261006.InvariantBinding20261006.both_seeds_source2442_residual_cover
