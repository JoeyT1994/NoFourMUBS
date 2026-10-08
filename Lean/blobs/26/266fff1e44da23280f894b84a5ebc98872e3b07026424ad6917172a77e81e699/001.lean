import PhysicalLambdaIntervals
import RationalRootCertificates
set_option autoImplicit false

namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.PoleAtlas
open Hadamard6Extensions.FourierSide
noncomputable section

/-- Evaluate this residual with the shared parameters before replacing its
numerator and denominator by independent interval boxes. -/
theorem lambda_centered_residual (n d L c : ℂ) (he : n=d*L) :
    Complex.normSq (n-c*d)=Complex.normSq d * Complex.normSq (L-c) := by
  rw [he,show d*L-c*d=d*(L-c) by ring,map_mul]

theorem lambda_centered_bound {n d L c : ℂ} {floor radius : ℝ}
    (hf : 0<floor) (hd : floor≤Complex.normSq d)
    (he : n=d*L) (hr : Complex.normSq (n-c*d)≤radius^2*floor) :
    Complex.normSq (L-c)≤radius^2 := by
  apply (mul_le_mul_left hf).mp
  calc
    floor * Complex.normSq (L-c) ≤ Complex.normSq d * Complex.normSq (L-c) :=
      mul_le_mul_of_nonneg_right hd (Complex.normSq_nonneg _)
    _ = Complex.normSq (n-c*d) := (lambda_centered_residual n d L c he).symm
    _ ≤ radius^2*floor := hr
    _ = floor*radius^2 := by ring

def CenteredLambdaCertificate (residual : RationalRectangle) (floor radius : ℚ) : Prop :=
  0<floor ∧ 0≤radius ∧ (boxNormSq residual).hi≤radius^2*floor

def centeredLambdaBox (a b radius : ℚ) : RationalRectangle :=
  boxMeet (centerBox a b radius) unitBox

theorem centeredLambdaCertificate_sound {R : RationalRectangle} {a b floor radius : ℚ}
    {n d L : ℂ} (hc : CenteredLambdaCertificate R floor radius)
    (hR : MemRectangle R (n-rationalCenter a b*d))
    (hd : (floor : ℝ)≤Complex.normSq d) (he : n=d*L)
    (hL : Complex.normSq L=1) : MemRectangle (centeredLambdaBox a b radius) L := by
  have hf : (0 : ℝ)<floor := by exact_mod_cast hc.1
  have hr : ((boxNormSq R).hi : ℝ)≤(radius : ℝ)^2*(floor : ℝ) := by
    exact_mod_cast hc.2.2
  have hbound := lambda_centered_bound hf hd he ((mem_boxNormSq hR).2.trans hr)
  exact mem_boxMeet (mem_centerBox hc.2.1 hbound) (mem_unitBox (le_of_eq hL))

/-- A failed radius or denominator check keeps all physical phases. -/
def poleSafeCenteredLambdaBox (residual denominator : RationalRectangle)
    (a b radius : ℚ) : RationalRectangle :=
  if CenteredLambdaCertificate residual (boxNormSq denominator).lo radius then
    centeredLambdaBox a b radius else unitBox

theorem poleSafeCenteredLambdaBox_sound {R D : RationalRectangle} {a b radius : ℚ}
    {n d L : ℂ} (hR : MemRectangle R (n-rationalCenter a b*d))
    (hD : MemRectangle D d) (he : n=d*L) (hL : Complex.normSq L=1) :
    MemRectangle (poleSafeCenteredLambdaBox R D a b radius) L := by
  unfold poleSafeCenteredLambdaBox
  split_ifs with hc
  · exact centeredLambdaCertificate_sound hc hR (mem_boxNormSq hD).1 he hL
  · exact mem_unitBox (le_of_eq hL)

def centeredLambdaBoxes (R D : Fin 3 → RationalRectangle)
    (a b radius : Fin 3 → ℚ) : Fin 3 → RationalRectangle :=
  fun i => poleSafeCenteredLambdaBox (R i) (D i) (a i) (b i) (radius i)

theorem actual_centered_lambda_boxes (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    {R D : Fin 3 → RationalRectangle} {a b radius : Fin 3 → ℚ}
    (hres : ∀ i, MemRectangle (R i)
      (FourierGramNumerators.numerator (sum3 x) (sum3 y) (cross3 x y) i -
        rationalCenter (a i) (b i) *
          liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i))
    (hden : ∀ i, MemRectangle (D i)
      (liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)) :
    ∀ i, MemRectangle (centeredLambdaBoxes R D a b radius i) (actualLambda x y i) := by
  obtain ⟨hphase,_,_,_,he⟩ := actual_lambda_binding x y hx hy hD
  intro i
  exact poleSafeCenteredLambdaBox_sound (hres i) (hden i) (he i) (hphase i)

theorem actual_centered_moment_cover (x y : Fin 3 → ℂ) (w : ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    {s t r z W : RationalRectangle} {R D : Fin 3 → RationalRectangle}
    {a b radius : Fin 3 → ℚ}
    (hs : MemRectangle s (sum3 x)) (ht : MemRectangle t (sum3 y))
    (hr : MemRectangle r (cross3 x y)) (hz : MemRectangle z (actualSheet x y))
    (hw : MemRectangle W w)
    (hres : ∀ i, MemRectangle (R i)
      (FourierGramNumerators.numerator (sum3 x) (sum3 y) (cross3 x y) i -
        rationalCenter (a i) (b i) *
          liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i))
    (hden : ∀ i, MemRectangle (D i)
      (liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)) :
    CoversSideMoments (lambdaMomentBoxes s t r z W (centeredLambdaBoxes R D a b radius)) x y w :=
  actual_lambda_moment_cover x y w hx hy hD hs ht hr hz hw
    (actual_centered_lambda_boxes x y hx hy hD hres hden)

#print axioms lambda_centered_residual
#print axioms lambda_centered_bound
#print axioms centeredLambdaCertificate_sound
#print axioms poleSafeCenteredLambdaBox_sound
#print axioms actual_centered_lambda_boxes
#print axioms actual_centered_moment_cover
end
end Mub6.Classification.RadicalIntervals
