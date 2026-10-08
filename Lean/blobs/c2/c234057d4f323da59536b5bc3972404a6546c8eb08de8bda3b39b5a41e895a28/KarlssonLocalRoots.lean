import KarlssonSignReduction
import RationalCarrierIntervals

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
noncomputable section

/-- A square-root enclosure without a branch cut: choose the root nearer a
unit centre. The other sign is equivalent by the checked row/column swaps. -/
theorem root_distance_bound {z c : ℂ}
    (hz : normSq z=1) (hc : normSq c=1)
    (hside : 0 ≤ (z*(starRingEnd ℂ) c).re) :
    normSq (z-c) ≤ normSq (z^2-c^2)/2 := by
  have he : z^2-c^2=(z-c)*(z+c) := by ring
  have hp : 2 ≤ normSq (z+c) := by
    rw [normSq_add,hz,hc]
    linarith
  rw [he,normSq_mul]
  nlinarith [normSq_nonneg (z-c)]

theorem choose_local_root {z c : ℂ} (hz : normSq z=1) (hc : normSq c=1) :
    ∃ w : ℂ, w^2=z^2 ∧ normSq w=1 ∧
      normSq (w-c) ≤ normSq (z^2-c^2)/2 := by
  by_cases hside : 0 ≤ (z*(starRingEnd ℂ) c).re
  · exact ⟨z,rfl,hz,root_distance_bound hz hc hside⟩
  · refine ⟨-z,by ring,by simpa using hz,?_⟩
    have hs : 0 ≤ (-z*(starRingEnd ℂ) c).re := by
      simp only [neg_mul,neg_re]
      linarith
    simpa using root_distance_bound (by simpa using hz) hc hs

def pointComplex (re im : ℚ) : ℂ := ⟨re,im⟩
def rootBox (re im radius : ℚ) : RationalRectangle :=
  ⟨re-radius,re+radius,im-radius,im+radius⟩

theorem distance_mem_rootBox {z : ℂ} {re im radius : ℚ}
    (hr : 0 ≤ radius)
    (hz : normSq (z-pointComplex re im) ≤ (radius : ℝ)^2) :
    MemRectangle (rootBox re im radius) z := by
  have hr' : (0:ℝ) ≤ radius := by exact_mod_cast hr
  simp only [normSq_apply,sub_re,sub_im,pointComplex] at hz
  have hre := sq_nonneg (z.re-(re:ℝ))
  have him := sq_nonneg (z.im-(im:ℝ))
  simp only [MemRectangle,rootBox,Rat.cast_add,Rat.cast_sub]
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

/-- Exact rational residual bound sufficient to enclose one physical root. -/
theorem certified_local_root_box {z : ℂ} {re im radius : ℚ}
    (hz : normSq z=1) (hc : normSq (pointComplex re im)=1)
    (hr : 0≤radius)
    (hres : normSq (z^2-(pointComplex re im)^2) ≤ 2*(radius:ℝ)^2) :
    ∃ w : ℂ, w^2=z^2 ∧ normSq w=1 ∧ MemRectangle (rootBox re im radius) w := by
  rcases choose_local_root hz hc with ⟨w,hs,hu,hd⟩
  exact ⟨w,hs,hu,distance_mem_rootBox hr (by linarith)⟩

/-- All three dependent phases can be enclosed independently; changing their
signs has one shared physical monomial witness for the resulting carrier. -/
theorem local_roots_preserve_carrier (t : ℝ) (p : ℂ) (z : Fin 4 → ℂ)
    (re im radius : Fin 4 → ℚ)
    (hz : ∀ i, normSq (z i)=1)
    (hc : ∀ i, normSq (pointComplex (re i) (im i))=1)
    (hr : ∀ i, 0≤radius i)
    (hres : ∀ i, normSq ((z i)^2-(pointComplex (re i) (im i))^2) ≤ 2*(radius i:ℝ)^2) :
    ∃ w : Fin 4 → ℂ,
      Equivalent (karlssonRawMatrix t p (z 0) (z 1) (z 2) (z 3))
        (karlssonRawMatrix t p (w 0) (w 1) (w 2) (w 3)) ∧
      ∀ i, normSq (w i)=1 ∧ MemRectangle (rootBox (re i) (im i) (radius i)) (w i) := by
  have each (i : Fin 4) := certified_local_root_box (hz i) (hc i) (hr i) (hres i)
  choose w hs hu hb using each
  exact ⟨w,equal_squares_equivalent t p z w (fun i => (hs i).symm),fun i => ⟨hu i,hb i⟩⟩

open Mub6.Classification.CarrierIntervals in
def complexDivide (a b : RationalRectangle) : RationalRectangle :=
  boxDivideReal (boxMul a (boxConj b)) (boxNormSq b)

theorem complexDivide_sound {a b : RationalRectangle} {z w : ℂ}
    (hden : 0 < (boxNormSq b).lo) (hz : MemRectangle a z) (hw : MemRectangle b w) :
    MemRectangle (complexDivide a b) (z/w) := by
  have hf : z/w=(z*star w)/(normSq w : ℂ) := by
    rw [div_eq_mul_inv,Complex.inv_def]
    simp only [div_eq_mul_inv,Complex.star_def,Complex.ofReal_inv]
    ring
  rw [hf]
  exact Mub6.Classification.CarrierIntervals.mem_boxDivideReal hden
    (mem_boxMul hz (mem_boxConj hw)) (mem_boxNormSq hw)

/-- A failed denominator guard retains the unit phase instead of dropping it. -/
def guardedUnitDivide (a b : RationalRectangle) : RationalRectangle :=
  if 0 < (boxNormSq b).lo then complexDivide a b else unitEntryBox

theorem guardedUnitDivide_sound {a b : RationalRectangle} {z w : ℂ}
    (hz : MemRectangle a z) (hw : MemRectangle b w) (hu : normSq (z/w)=1) :
    MemRectangle (guardedUnitDivide a b) (z/w) := by
  unfold guardedUnitDivide
  split_ifs with hd
  · exact complexDivide_sound hd hz hw
  · have hb := Mub6.Numerical.unit_coordinate_bounds hu
    simpa [unitEntryBox,MemRectangle] using And.intro hb.1.1 (And.intro hb.1.2 hb.2)

theorem pointComplex_mem (re im : ℚ) : MemRectangle (boxPoint re im) (pointComplex re im) := by
  simp [MemRectangle,boxPoint,rectangle,point,pointComplex]

def rootResidual (squared : RationalRectangle) (re im : ℚ) : Interval :=
  boxNormSq (boxSub squared (boxMul (boxPoint re im) (boxPoint re im)))

/-- The compiler only has to check rational inequalities after enclosing z². -/
theorem root_from_squared_box {squared : RationalRectangle} {z : ℂ}
    {re im radius : ℚ}
    (hz : normSq z=1) (hbox : MemRectangle squared (z^2))
    (hc : re^2+im^2=1) (hr : 0≤radius)
    (hres : (rootResidual squared re im).hi ≤ 2*radius^2) :
    ∃ w : ℂ, w^2=z^2 ∧ normSq w=1 ∧ MemRectangle (rootBox re im radius) w := by
  have hc' : normSq (pointComplex re im)=1 := by
    dsimp [normSq_apply,pointComplex]
    exact_mod_cast (by simpa [pow_two] using hc)
  have hm := mem_boxNormSq (mem_boxSub hbox (mem_boxMul (pointComplex_mem re im) (pointComplex_mem re im)))
  have hu : normSq (z^2-(pointComplex re im)^2) ≤ (rootResidual squared re im).hi := by
    simpa only [rootResidual,pow_two] using hm.2
  apply certified_local_root_box hz hc' hr
  exact hu.trans (by exact_mod_cast hres)

end
end Mub6.Classification.KarlssonCover
