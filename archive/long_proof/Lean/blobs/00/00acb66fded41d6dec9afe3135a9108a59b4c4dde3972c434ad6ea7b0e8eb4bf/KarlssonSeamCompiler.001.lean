import KarlssonMatrixBoxes

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
open Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 1600000

def omegaBox (rt : Interval) : RationalRectangle := boxAdd (boxPoint (-1/2) 0) (gammaBox rt)
theorem omegaBox_sound {rt : Interval} (hr : sqrt3Valid rt) : MemRectangle (omegaBox rt) standardOmega := by
  have h := mem_boxAdd (realPoint_mem (-1/2)) (gammaBox_sound hr)
  have he : ((-1/2 : ℚ) : ℂ)+Complex.I*(Real.sqrt 3 : ℂ)/2=standardOmega := by
    apply Complex.ext <;> norm_num [standardOmega,Complex.div_re,Complex.div_im]
  rwa [he] at h

def fourierPublicBoxes (w p z : RationalRectangle) : Matrix I6 I6 RationalRectangle :=
  let one := boxPoint 1 0
  let negOne := boxPoint (-1) 0
  let w2 := boxMul w w
  Matrix.fromBlocks
    !![one,one,one;one,negOne,p;one,one,w]
    !![one,one,one;boxNeg p,z,boxNeg z;w,w2,w2]
    !![one,negOne,boxMul w p;one,one,w2;one,negOne,boxMul w2 p]
    !![boxNeg (boxMul w p),boxMul w2 z,boxNeg (boxMul w2 z);
      w2,w,w;boxNeg (boxMul w2 p),boxMul w z,boxNeg (boxMul w z)]

theorem fourierPublicBoxes_sound {w p z : RationalRectangle} {W P Z : ℂ}
    (hw : MemRectangle w W) (hp : MemRectangle p P) (hz : MemRectangle z Z) :
    ∀ i j, MemRectangle (fourierPublicBoxes w p z i j) (affineFourierMatrix W P Z i j) := by
  have hww : MemRectangle (boxMul w w) (W^2) := by simpa only [pow_two] using mem_boxMul hw hw
  have hnwp : MemRectangle (boxNeg (boxMul w p)) (-W*P) := by
    simpa only [neg_mul] using mem_boxNeg (mem_boxMul hw hp)
  have hone : MemRectangle (boxPoint 1 0) (1 : ℂ) := by simpa using realPoint_mem 1
  have hn : MemRectangle (boxPoint (-1) 0) (-1 : ℂ) := by simpa using realPoint_mem (-1)
  intro i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    dsimp only [fourierPublicBoxes,affineFourierMatrix]
  all_goals first
    | exact hone
    | exact hn
    | exact hp
    | exact hz
    | exact hw
    | exact hww
    | exact mem_boxNeg hp
    | exact mem_boxNeg hz
    | exact mem_boxMul hw hp
    | exact mem_boxMul hw hz
    | exact mem_boxMul hww hp
    | exact mem_boxMul hww hz
    | exact hnwp
    | exact mem_boxNeg (mem_boxMul hww hp)
    | exact mem_boxNeg (mem_boxMul hww hz)
    | exact mem_boxNeg (mem_boxMul hw hz)

structure SeamInput where
  label : SeamLabel
  parameters : Fin 2 → Interval
  sqrt3 : Interval
def SeamInput.omega (c : SeamInput) : RationalRectangle :=
  let w := omegaBox c.sqrt3
  if c.label.2.1 then boxMul w w else w
def SeamInput.base (c : SeamInput) : Matrix I6 I6 RationalRectangle :=
  fourierPublicBoxes c.omega
    (clipUnit (circleBox c.label.2.2.1 (c.parameters 0)))
    (clipUnit (circleBox c.label.2.2.2 (c.parameters 1)))
def SeamInput.output (c : SeamInput) : CarrierRegion :=
  clipCarrier (fun i j =>
    if c.label.1 then c.base (ClassificationCover.indexEquiv.symm j) (ClassificationCover.indexEquiv.symm i)
    else c.base (ClassificationCover.indexEquiv.symm i) (ClassificationCover.indexEquiv.symm j))

theorem seam_compiler_sound (c : SeamInput) (hr : sqrt3Valid c.sqrt3) {x : Fin 2 → ℝ}
    (hx : ∀ i, Mem (c.parameters i) (x i)) (hH : IsHadamard (seamMatrix c.label x)) :
    CarrierBox c.output (ClassificationCover.toNumerical (seamMatrix c.label x)) := by
  have hp := clipUnit_sound (circleBox_sound c.label.2.2.1 (hx 0)) (signedCircle_normSq _ _)
  have hz := clipUnit_sound (circleBox_sound c.label.2.2.2 (hx 1)) (signedCircle_normSq _ _)
  have hw : MemRectangle c.omega (if c.label.2.1 then standardOmega^2 else standardOmega) := by
    dsimp only [SeamInput.omega]
    split_ifs
    · simpa only [pow_two] using mem_boxMul (omegaBox_sound hr) (omegaBox_sound hr)
    · exact omegaBox_sound hr
  have hb := fourierPublicBoxes_sound hw hp hz
  apply clipCarrier_sound _ (ClassificationCover.numerical_of_public hH).1
  intro i j
  dsimp only [seamMatrix,seamChart,ClassificationCover.toNumerical,Matrix.submatrix,SeamInput.output]
  split_ifs
  · exact hb (ClassificationCover.indexEquiv.symm j) (ClassificationCover.indexEquiv.symm i)
  · exact hb (ClassificationCover.indexEquiv.symm i) (ClassificationCover.indexEquiv.symm j)

#print axioms omegaBox_sound
#print axioms fourierPublicBoxes_sound
#print axioms seam_compiler_sound
end
end Mub6.Classification.KarlssonCompiler
