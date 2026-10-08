import GuardedComplexIntervals
import FourierGoodBridge

/-! Rational outer rectangles for the conditioned Fourier reconstruction.
The lower norm bounds are physical hypotheses, not tests made from floating
point values. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals
open Hadamard6Extensions.FourierSide
open Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

theorem mem_boxThird {a : RationalRectangle} {z : ℂ} (hz : MemRectangle a z) :
    MemRectangle (boxScale (1/3) a) (z/3) := by
  convert mem_boxScale (1/3) hz using 1 <;> push_cast <;> ring

def boxFourierRow (s A B w : RationalRectangle) : Fin 3 → RationalRectangle :=
  ![boxAdd (boxAdd (boxScale (1/3) s) A) B,
    boxAdd (boxAdd (boxScale (1/3) s) (boxMul A w)) (boxMul B (boxPow w 2)),
    boxAdd (boxAdd (boxScale (1/3) s) (boxMul A (boxPow w 2))) (boxMul B w)]

theorem boxFourierRow_sound {s A B w : RationalRectangle} {s' A' B' w' : ℂ}
    (hs : MemRectangle s s') (hA : MemRectangle A A')
    (hB : MemRectangle B B') (hw : MemRectangle w w') :
    ∀ j, MemRectangle (boxFourierRow s A B w j) (fourierRow s' A' B' w' j) := by
  intro j
  fin_cases j
  · exact mem_boxAdd (mem_boxAdd (mem_boxThird hs) hA) hB
  · exact mem_boxAdd (mem_boxAdd (mem_boxThird hs) (mem_boxMul hA hw))
      (mem_boxMul hB (mem_boxPow hw 2))
  · exact mem_boxAdd (mem_boxAdd (mem_boxThird hs) (mem_boxMul hA (mem_boxPow hw 2)))
      (mem_boxMul hB hw)

def boxAffineSide (s t A B C D w : RationalRectangle) : Rect3 :=
  ![![boxPoint 1 0,boxPoint 1 0,boxPoint 1 0],
    boxFourierRow s A B w,boxFourierRow t C D w]

theorem boxAffineSide_sound {s t A B C D w : RationalRectangle}
    {s' t' A' B' C' D' w' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hA : MemRectangle A A') (hB : MemRectangle B B')
    (hC : MemRectangle C C') (hD : MemRectangle D D')
    (hw : MemRectangle w w') :
    MemMatrix (boxAffineSide s t A B C D w) (affineSide s' t' A' B' C' D' w') := by
  intro i j
  fin_cases i
  · fin_cases j <;> simpa using mem_boxPoint_complex 1 0
  · exact boxFourierRow_sound hs hA hB hw j
  · exact boxFourierRow_sound ht hC hD hw j

def boxRadicalSide (s t alpha beta h tau w : RationalRectangle) : Rect3 :=
  boxAffineSide s t tau
    (boxDivide alpha (boxScale 9 tau) (81/10))
    (boxDivide (boxMul beta tau) h (81/10))
    (boxDivide h (boxScale 9 tau) (81/10)) w

theorem boxRadicalSide_sound {s t alpha beta h tau w : RationalRectangle}
    {s' t' alpha' beta' h' tau' w' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (ha : MemRectangle alpha alpha') (hb : MemRectangle beta beta')
    (hh : MemRectangle h h') (htau : MemRectangle tau tau')
    (hw : MemRectangle w w')
    (hguard : (81/10 : ℝ) ≤ Complex.normSq h')
    (tguard : (1/10 : ℝ) ≤ Complex.normSq tau') :
    MemMatrix (boxRadicalSide s t alpha beta h tau w)
      (radicalSide s' t' alpha' beta' h' tau' w') := by
  have hn : (81/10 : ℝ) ≤ Complex.normSq (9*tau') := by
    norm_num [map_mul]
    linarith
  exact boxAffineSide_sound hs ht htau
    (mem_boxDivide (by norm_num) ha (mem_boxScale 9 htau) hn)
    (mem_boxDivide (by norm_num) (mem_boxMul hb htau) hh hguard)
    (mem_boxDivide (by norm_num) hh (mem_boxScale 9 htau) hn) hw

def boxAlpha (s u : RationalRectangle) : RationalRectangle :=
  boxSub (boxPow s 2) (boxScale 3 (boxMul u (boxConj s)))
def boxGamma (s t W : RationalRectangle) : RationalRectangle :=
  boxSub (boxScale 2 (boxMul s t)) (boxScale 3 W)
def boxPivot (s t W delta : RationalRectangle) : RationalRectangle :=
  boxScale (1/2) (boxAdd (boxGamma s t W) delta)

theorem boxAlpha_sound {s u : RationalRectangle} {s' u' : ℂ}
    (hs : MemRectangle s s') (hu : MemRectangle u u') :
    MemRectangle (boxAlpha s u) (sideAlpha s' u') := by
  convert mem_boxSub (mem_boxPow hs 2) (mem_boxScale 3 (mem_boxMul hu (mem_boxConj hs)))
    using 1 <;> simp only [sideAlpha] <;> push_cast <;> ring

theorem boxGamma_sound {s t W : RationalRectangle} {s' t' W' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t') (hW : MemRectangle W W') :
    MemRectangle (boxGamma s t W) (sideGamma s' t' W') := by
  convert mem_boxSub (mem_boxScale 2 (mem_boxMul hs ht)) (mem_boxScale 3 hW)
    using 1 <;> simp only [sideGamma] <;> push_cast <;> ring

theorem boxPivot_sound {s t W delta : RationalRectangle} {s' t' W' delta' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hW : MemRectangle W W') (hd : MemRectangle delta delta') :
    MemRectangle (boxPivot s t W delta) (sidePivot s' t' W' delta') := by
  convert mem_boxScale (1/2) (mem_boxAdd (boxGamma_sound hs ht hW) hd)
    using 1 <;> simp only [sidePivot] <;> push_cast <;> ring

def boxReconstructedSide (s t u v W delta tau w : RationalRectangle) : Rect3 :=
  boxRadicalSide s t (boxAlpha s u) (boxAlpha t v) (boxPivot s t W delta) tau w

theorem boxReconstructedSide_sound {s t u v W delta tau w : RationalRectangle}
    {s' t' u' v' r' W' delta' tau' w' : ℂ}
    (hs : MemRectangle s s') (ht : MemRectangle t t')
    (hu : MemRectangle u u') (hv : MemRectangle v v')
    (hW : MemRectangle W W') (hd : MemRectangle delta delta')
    (htau : MemRectangle tau tau') (hw : MemRectangle w w')
    (hguard : (81/10 : ℝ) ≤ Complex.normSq (sidePivot s' t' W' delta'))
    (tguard : (1/10 : ℝ) ≤ Complex.normSq tau') :
    MemMatrix (boxReconstructedSide s t u v W delta tau w)
      (reconstructedSide s' t' u' v' r' W' delta' tau' w') := by
  exact boxRadicalSide_sound hs ht (boxAlpha_sound hs hu) (boxAlpha_sound ht hv)
    (boxPivot_sound hs ht hW hd) htau hw hguard tguard

#check mem_boxThird
#print axioms mem_boxThird
#check boxFourierRow_sound
#print axioms boxFourierRow_sound
#check boxAffineSide_sound
#print axioms boxAffineSide_sound
#check boxRadicalSide_sound
#print axioms boxRadicalSide_sound
#check boxAlpha_sound
#print axioms boxAlpha_sound
#check boxGamma_sound
#print axioms boxGamma_sound
#check boxPivot_sound
#print axioms boxPivot_sound
#check boxReconstructedSide_sound
#print axioms boxReconstructedSide_sound
end
end Mub6.Classification.RadicalIntervals
