import AngularLeaf
import TwoRegionSide

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace ShoulderAngular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open GlobalCornerSixSine ShoulderPhaseGate20261002 Root0Angular20261003
noncomputable section

/-- The rational cap is explicit; the six-term physical identity is reused. -/
def cornerCheck (cap : ℚ) (A B C D E F : RationalRectangle) : Bool :=
  decide (cap < (mul (point 64) (square (sixValueBox A B C D E F))).lo)

theorem cornerCheck_sound {cap : ℚ} {A B C D E F : RationalRectangle}
    {a b c d e f : ℂ} (hcheck : cornerCheck cap A B C D E F=true)
    (ha : MemRectangle A a) (hb : MemRectangle B b) (hc : MemRectangle C c)
    (hd : MemRectangle D d) (he : MemRectangle E e) (hf : MemRectangle F f)
    (hcap : 64*(sixValue a b c d e f)^2 ≤ (cap:ℝ)) : False := by
  have hval := mem_mul (mem_point 64) (mem_square (sixValueBox_sound ha hb hc hd he hf))
  have hrat : cap < (mul (point 64) (square (sixValueBox A B C D E F))).lo :=
    of_decide_eq_true hcheck
  have hl : (cap:ℝ) < ((mul (point 64) (square (sixValueBox A B C D E F))).lo:ℝ) :=
    by exact_mod_cast hrat
  simp only [Rat.cast_ofNat] at hval
  nlinarith [hval.1]

def CornerCaps (cap : ℚ) (ex ey : Fin 3 → ℂ) (x y : ℂ) : Prop :=
  ∀ j k : Fin 3, j<k →
    64*(sixValue (ex j) (ex k) x (ey j) (ey k) y)^2 ≤ (cap:ℝ)

def RawCornerCaps (cap : ℚ) (ex ey : Fin 3 → ℂ) (x y : ℂ) : Prop :=
  ∀ j k : Fin 3, j<k →
    (radicand (ex j+ex k+x) (ey j+ey k+y)
      (overlap (ex j) (ex k) x (ey j) (ey k) y)).re ≤ (cap:ℝ)

theorem rawCornerCaps_sound {cap : ℚ} {ex ey : Fin 3 → ℂ} {x y : ℂ}
    (hex : ∀ j, Complex.normSq (ex j)=1) (hey : ∀ j, Complex.normSq (ey j)=1)
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hcap : RawCornerCaps cap ex ey x y) : CornerCaps cap ex ey x y := by
  intro j k hjk
  simpa only [radicand_sixValue _ _ _ _ _ _ (hex j) (hex k) hx (hey j) (hey k) hy]
    using hcap j k hjk

def LeafStatement (cap : ℚ) (M : SidePolynomialBoxes)
    (EX EY : Fin 3 → RationalRectangle) (L K : Label) (A B : Interval) : Prop :=
  ∀ s t r : ℂ, ∀ ex ey : Fin 3 → ℂ,
    CoversSidePolynomials M s t r →
    (∀ j, MemRectangle (EX j) (ex j)) → (∀ j, MemRectangle (EY j) (ey j)) →
    Holds (fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) →
      CornerCaps cap ex ey (turnPhase a) (turnPhase b) →
      HullsMem L K (turnPhase a) (turnPhase b)) A B

theorem moment_leaf (cap : ℚ) {M : SidePolynomialBoxes}
    {EX EY : Fin 3 → RationalRectangle} {L K : Label}
    (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (test : ColumnTest) (hc : columnCheck M ⟨a.box,b.box⟩ test=true) :
    LeafStatement cap M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact (columnCheck_sound test hc hm ⟨a.sound ha hu,b.sound hb hv⟩ hcol).elim

theorem corner_leaf (cap : ℚ) {M : SidePolynomialBoxes}
    {EX EY : Fin 3 → RationalRectangle} {L K : Label}
    (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (j k : Fin 3) (hjk : j<k)
    (hc : cornerCheck cap (EX j) (EX k) a.box (EY j) (EY k) b.box=true) :
    LeafStatement cap M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact (cornerCheck_sound hc (hex j) (hex k) (a.sound ha hu)
    (hey j) (hey k) (b.sound hb hv) (hcap j k hjk)).elim

theorem keep_left_leaf (cap : ℚ) {M : SidePolynomialBoxes}
    {EX EY : Fin 3 → RationalRectangle} {L K : Label}
    (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (hx : BoxIncludes a.box L.x) (hy : BoxIncludes b.box L.y) :
    LeafStatement cap M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact Or.inl ⟨box_mono hx (a.sound ha hu),box_mono hy (b.sound hb hv)⟩

theorem keep_right_leaf (cap : ℚ) {M : SidePolynomialBoxes}
    {EX EY : Fin 3 → RationalRectangle} {L K : Label}
    (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (hx : BoxIncludes a.box K.x) (hy : BoxIncludes b.box K.y) :
    LeafStatement cap M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact Or.inr ⟨box_mono hx (a.sound ha hu),box_mono hy (b.sound hb hv)⟩

theorem physical_column_cover {cap : ℚ} {M : SidePolynomialBoxes}
    {EX EY : Fin 3 → RationalRectangle} {L K : Label}
    (cover : LeafStatement cap M EX EY L K ⟨0,1⟩ ⟨0,1⟩)
    {s t r x y : ℂ} {ex ey : Fin 3 → ℂ}
    (hm : CoversSidePolynomials M s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hcol : ColumnNecessary s t r x y) (hcap : CornerCaps cap ex ey x y) :
    HullsMem L K x y := by
  obtain ⟨a,ha0,ha1,hxa⟩ := unit_turnPhase hx
  obtain ⟨b,hb0,hb1,hyb⟩ := unit_turnPhase hy
  subst x; subst y
  exact cover s t r ex ey hm hex hey a b
    (by simpa [Mem] using And.intro ha0 ha1)
    (by simpa [Mem] using And.intro hb0 hb1) hcol hcap

/-- Conditional scalar consumer. The full closed cover and all memberships
remain explicit arguments until a particular physical cube supplies them. -/
theorem side_exclusion (cap : ℚ) (M : SidePolynomialBoxes)
    (EX EY : Fin 3 → RationalRectangle) (L K : Label)
    (hL : anyCheck (pairChecks M L L)=true)
    (hK : anyCheck (pairChecks M K K)=true)
    (cover : LeafStatement cap M EX EY L K ⟨0,1⟩ ⟨0,1⟩)
    {s t r : ℂ} {x y ex ey : Fin 3 → ℂ}
    (hm : CoversSidePolynomials M s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    (h : System s t r x y)
    (hcap : ∀ j, CornerCaps cap ex ey (x j) (y j)) : False := by
  apply two_regions_exclude M L K hL hK hm h
  intro j
  exact physical_column_cover cover hm hex hey
    (h.1 j) (h.2.1 j) (system_column h j) (hcap j)

#print axioms cornerCheck_sound
#print axioms rawCornerCaps_sound
#print axioms moment_leaf
#print axioms corner_leaf
#print axioms keep_left_leaf
#print axioms keep_right_leaf
#print axioms physical_column_cover
#print axioms side_exclusion
end
end ShoulderAngular20261003
