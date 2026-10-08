import Root0AngularCover

set_option autoImplicit false
namespace Root0AngularFiniteReview20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003
open scoped BigOperators
noncomputable section

/-- The full square includes both endpoints of both phase coordinates. -/
theorem literal_closed_cover {s t r : ℂ} {ex ey : Fin 3 → ℂ}
    (hm : CoversSidePolynomials moments s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    {a b : ℝ} (ha0 : 0≤a) (ha1 : a≤1) (hb0 : 0≤b) (hb1 : b≤1)
    (hc : ColumnNecessary s t r (turnPhase a) (turnPhase b))
    (hp : CornerCaps ex ey (turnPhase a) (turnPhase b)) :
    HullsMem hull0 hull1 (turnPhase a) (turnPhase b) := by
  exact full_square s t r ex ey hm hex hey a b
    (by simpa [Mem] using And.intro ha0 ha1)
    (by simpa [Mem] using And.intro hb0 hb1) hc hp

/-- Check the orientation of the actual row-correlation sum and all nine
pair/side caps in the endpoint, with no covering premise left over. -/
theorem literal_side_exclusion {s t r : ℂ} {ex ey x y : Fin 3 → ℂ}
    (hm : CoversSidePolynomials moments s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    (hx : ∀ j, Complex.normSq (x j)=1)
    (hy : ∀ j, Complex.normSq (y j)=1)
    (hs : (∑ j, x j)=s) (ht : (∑ j, y j)=t)
    (hr : (∑ j, y j * star (x j))=r)
    (hc : ∀ ℓ a b : Fin 3, a<b →
      64*(sixValue (ex a) (ex b) (x ℓ) (ey a) (ey b) (y ℓ))^2≤(1/80:ℝ)) : False := by
  exact side_exclusion hm hex hey ⟨hx,hy,hs,ht,hr⟩ hc

end
#print axioms literal_closed_cover
#print axioms literal_side_exclusion
end Root0AngularFiniteReview20261003
