import FourierSideIntervals
import PhysicalDiscriminantGuard

namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

def boxDiscriminant (s t u v W : RationalRectangle) : RationalRectangle :=
  boxSub (boxPow (boxGamma s t W) 2)
    (boxScale 4 (boxMul (boxAlpha s u) (boxAlpha t v)))

theorem boxDiscriminant_sound {s t u v W : RationalRectangle} {s' t' u' v' W' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hu : MemRectangle u u') (hv : MemRectangle v v') (hW : MemRectangle W W') :
    MemRectangle (boxDiscriminant s t u v W)
      ((sideGamma s' t' W')^2-4*sideAlpha s' u'*sideAlpha t' v') := by
  convert mem_boxSub (mem_boxPow (boxGamma_sound hs ht hW) 2)
    (mem_boxScale 4 (mem_boxMul (boxAlpha_sound hs hu) (boxAlpha_sound ht hv)))
    using 1
  · rfl
  · push_cast
    ring

def boxPhaseRadicand (s t u v r h alpha delta : RationalRectangle) : RationalRectangle :=
  boxDivide
    (boxSub
      (boxAdd
        (boxMul (boxMul u (boxPow h 2)) (boxSub h (boxMul alpha r)))
        (boxMul (boxMul v (boxPow alpha 2)) (boxSub (boxMul h (boxConj r)) alpha)))
      (boxScale (1/27) (boxPow (boxSub (boxMul h s) (boxMul alpha t)) 3)))
    (boxPow delta 3) ((162/5)^3)

theorem boxPhaseRadicand_sound {s t u v r h alpha delta : RationalRectangle}
    {s' t' u' v' r' h' alpha' delta' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hu : MemRectangle u u') (hv : MemRectangle v v') (hr : MemRectangle r r')
    (hh : MemRectangle h h') (ha : MemRectangle alpha alpha')
    (hd : MemRectangle delta delta') (hguard : (162/5 : ℝ) ≤ Complex.normSq delta') :
    MemRectangle (boxPhaseRadicand s t u v r h alpha delta)
      (phaseRadicand s' t' u' v' r' h' alpha' delta') := by
  have hp := mem_boxPow (mem_boxSub (mem_boxMul hh hs) (mem_boxMul ha ht)) 3
  have hthird : MemRectangle
      (boxScale (1/27) (boxPow (boxSub (boxMul h s) (boxMul alpha t)) 3))
      ((h'*s'-alpha'*t')^3/27) := by
    convert mem_boxScale (1/27) hp using 1 <;> push_cast <;> ring
  have hnum := mem_boxSub
    (mem_boxAdd
      (mem_boxMul (mem_boxMul hu (mem_boxPow hh 2)) (mem_boxSub hh (mem_boxMul ha hr)))
      (mem_boxMul (mem_boxMul hv (mem_boxPow ha 2))
        (mem_boxSub (mem_boxMul hh (mem_boxConj hr)) ha))) hthird
  have hlow : (((162/5)^3 : ℚ) : ℝ) ≤ Complex.normSq (delta'^3) := by
    push_cast
    rw [map_pow]
    exact pow_le_pow_left₀ (by norm_num) hguard 3
  exact mem_boxDivide (floor := (162/5)^3) (by norm_num) hnum (mem_boxPow hd 3) hlow

def boxSideRadicand (s t u v r W delta : RationalRectangle) : RationalRectangle :=
  boxPhaseRadicand s t u v r (boxPivot s t W delta) (boxAlpha s u) delta

theorem boxSideRadicand_sound {s t u v r W delta : RationalRectangle}
    {s' t' u' v' r' W' delta' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hu : MemRectangle u u') (hv : MemRectangle v v') (hr : MemRectangle r r')
    (hW : MemRectangle W W') (hd : MemRectangle delta delta')
    (hguard : (162/5 : ℝ) ≤ Complex.normSq delta') :
    MemRectangle (boxSideRadicand s t u v r W delta)
      (sideRadicand s' t' u' v' r' W' delta') := by
  exact boxPhaseRadicand_sound hs ht hu hv hr (boxPivot_sound hs ht hW hd)
    (boxAlpha_sound hs hu) hd hguard

#check boxDiscriminant_sound
#print axioms boxDiscriminant_sound
#check boxPhaseRadicand_sound
#print axioms boxPhaseRadicand_sound
#check boxSideRadicand_sound
#print axioms boxSideRadicand_sound
end
end Mub6.Classification.RadicalIntervals
