import AngularBounds
import SideColumnIntervals
import GlobalCornerSixSkew

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns
open SharedSeedIntervals GlobalCornerSixSine ShoulderPhaseGate20261002
noncomputable section

def sineDiff (u v : ℂ) : ℝ := (u*star v).im
def sineDiffBox (U V : RationalRectangle) : Interval := imInterval (boxMul U (boxConj V))

theorem sineDiffBox_sound {U V : RationalRectangle} {u v : ℂ}
    (hu : MemRectangle U u) (hv : MemRectangle V v) :
    Mem (sineDiffBox U V) (sineDiff u v) :=
  (mem_boxMul hu (mem_boxConj hv)).2.2

def sixValue (a b c d e f : ℂ) : ℝ :=
    sineDiff c b * sineDiff f d * sineDiff (d*star a) (e*star b)
  - sineDiff c b * sineDiff e d * sineDiff (d*star a) (f*star c)
  + sineDiff c a * sineDiff f e * sineDiff (e*star b) (d*star a)
  + sineDiff c a * sineDiff e d * sineDiff (e*star b) (f*star c)
  - sineDiff b a * sineDiff f e * sineDiff (f*star c) (d*star a)
  + sineDiff b a * sineDiff f d * sineDiff (f*star c) (e*star b)

def sixValueBox (A B C D E F : RationalRectangle) : Interval :=
  let DA := boxMul D (boxConj A)
  let EB := boxMul E (boxConj B)
  let FC := boxMul F (boxConj C)
  add (sub (add (add (sub
    (mul (mul (sineDiffBox C B) (sineDiffBox F D)) (sineDiffBox DA EB))
    (mul (mul (sineDiffBox C B) (sineDiffBox E D)) (sineDiffBox DA FC)))
    (mul (mul (sineDiffBox C A) (sineDiffBox F E)) (sineDiffBox EB DA)))
    (mul (mul (sineDiffBox C A) (sineDiffBox E D)) (sineDiffBox EB FC)))
    (mul (mul (sineDiffBox B A) (sineDiffBox F E)) (sineDiffBox FC DA)))
    (mul (mul (sineDiffBox B A) (sineDiffBox F D)) (sineDiffBox FC EB))

theorem sixValueBox_sound {A B C D E F : RationalRectangle} {a b c d e f : ℂ}
    (ha : MemRectangle A a) (hb : MemRectangle B b) (hc : MemRectangle C c)
    (hd : MemRectangle D d) (he : MemRectangle E e) (hf : MemRectangle F f) :
    Mem (sixValueBox A B C D E F) (sixValue a b c d e f) := by
  have hda := mem_boxMul hd (mem_boxConj ha)
  have heb := mem_boxMul he (mem_boxConj hb)
  have hfc := mem_boxMul hf (mem_boxConj hc)
  exact mem_add (mem_sub (mem_add (mem_add (mem_sub
    (mem_mul (mem_mul (sineDiffBox_sound hc hb) (sineDiffBox_sound hf hd)) (sineDiffBox_sound hda heb))
    (mem_mul (mem_mul (sineDiffBox_sound hc hb) (sineDiffBox_sound he hd)) (sineDiffBox_sound hda hfc)))
    (mem_mul (mem_mul (sineDiffBox_sound hc ha) (sineDiffBox_sound hf he)) (sineDiffBox_sound heb hda)))
    (mem_mul (mem_mul (sineDiffBox_sound hc ha) (sineDiffBox_sound he hd)) (sineDiffBox_sound heb hfc)))
    (mem_mul (mem_mul (sineDiffBox_sound hb ha) (sineDiffBox_sound hf he)) (sineDiffBox_sound hfc hda)))
    (mem_mul (mem_mul (sineDiffBox_sound hb ha) (sineDiffBox_sound hf hd)) (sineDiffBox_sound hfc heb))

theorem skew_sineDiff (u v : ℂ) : skew u v = (2*sineDiff u v : ℝ)*Complex.I := by
  apply Complex.ext <;> simp [skew,sineDiff,Complex.mul_re,Complex.mul_im,Complex.star_def] <;> ring

theorem sixSkew_sixValue (a b c d e f : ℂ) :
    sixSkew a b c d e f = -(8:ℂ)*Complex.I*(sixValue a b c d e f : ℂ) := by
  simp only [sixSkew,skew_sineDiff]
  apply Complex.ext <;> simp [sixValue,Complex.mul_re,Complex.mul_im] <;> ring

theorem radicand_sixValue (a b c d e f : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hd : Complex.normSq d=1) (he : Complex.normSq e=1) (hf : Complex.normSq f=1) :
    (radicand (a+b+c) (d+e+f) (overlap a b c d e f)).re = 64*(sixValue a b c d e f)^2 := by
  rw [physical_radicand_sixSkew a b c d e f ha hb hc hd he hf,sixSkew_sixValue]
  simp [pow_two,Complex.mul_re,Complex.mul_im]
  ring

def cornerCheck (A B C D E F : RationalRectangle) : Bool :=
  decide ((1/80:ℚ) < (mul (point 64) (square (sixValueBox A B C D E F))).lo)

theorem cornerCheck_sound {A B C D E F : RationalRectangle} {a b c d e f : ℂ}
    (hcheck : cornerCheck A B C D E F=true)
    (ha : MemRectangle A a) (hb : MemRectangle B b) (hc : MemRectangle C c)
    (hd : MemRectangle D d) (he : MemRectangle E e) (hf : MemRectangle F f)
    (hcap : 64*(sixValue a b c d e f)^2 ≤ (1/80:ℝ)) : False := by
  have hval := mem_mul (mem_point 64) (mem_square (sixValueBox_sound ha hb hc hd he hf))
  have hrat : (1/80:ℚ) < (mul (point 64) (square (sixValueBox A B C D E F))).lo :=
    of_decide_eq_true hcheck
  have hl0 : ((1/80:ℚ):ℝ) < ((mul (point 64) (square (sixValueBox A B C D E F))).lo:ℝ) :=
    by exact_mod_cast hrat
  have hl : (1/80:ℝ) < ((mul (point 64) (square (sixValueBox A B C D E F))).lo:ℝ) :=
    by norm_num only [Rat.cast_div,Rat.cast_one,Rat.cast_ofNat] at hl0;exact hl0
  simp only [Rat.cast_ofNat] at hval
  nlinarith [hval.1]

def HullsMem (L K : Label) (x y : ℂ) : Prop := L.Mem x y ∨ K.Mem x y
def CornerCaps (ex ey : Fin 3 → ℂ) (x y : ℂ) : Prop :=
  ∀ j k : Fin 3, j<k → 64*(sixValue (ex j) (ex k) x (ey j) (ey k) y)^2 ≤ (1/80:ℝ)
def RawCornerCaps (ex ey : Fin 3 → ℂ) (x y : ℂ) : Prop :=
  ∀ j k : Fin 3, j<k →
    (radicand (ex j+ex k+x) (ey j+ey k+y) (overlap (ex j) (ex k) x (ey j) (ey k) y)).re ≤ (1/80:ℝ)

theorem rawCornerCaps_sound {ex ey : Fin 3 → ℂ} {x y : ℂ}
    (hex : ∀ j, Complex.normSq (ex j)=1) (hey : ∀ j, Complex.normSq (ey j)=1)
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hcap : RawCornerCaps ex ey x y) : CornerCaps ex ey x y := by
  intro j k hjk
  simpa only [radicand_sixValue _ _ _ _ _ _ (hex j) (hex k) hx (hey j) (hey k) hy]
    using hcap j k hjk

def Holds (P : ℝ → ℝ → Prop) (A B : Interval) : Prop :=
  ∀ x y : ℝ, Mem A x → Mem B y → P x y

theorem split_x {P : ℝ → ℝ → Prop} (A B : Interval) (q : ℚ)
    (hl : Holds P ⟨A.lo,q⟩ B) (hr : Holds P ⟨q,A.hi⟩ B) : Holds P A B := by
  intro x y hx hy
  rcases le_total x (q:ℝ) with h | h
  · exact hl x y ⟨hx.1,h⟩ hy
  · exact hr x y ⟨h,hx.2⟩ hy

theorem split_y {P : ℝ → ℝ → Prop} (A B : Interval) (q : ℚ)
    (hl : Holds P A ⟨B.lo,q⟩) (hr : Holds P A ⟨q,B.hi⟩) : Holds P A B := by
  intro x y hx hy
  rcases le_total y (q:ℝ) with h | h
  · exact hl x y hx ⟨hy.1,h⟩
  · exact hr x y hx ⟨h,hy.2⟩

def LeafStatement (M : SidePolynomialBoxes) (EX EY : Fin 3 → RationalRectangle)
    (L K : Label) (A B : Interval) : Prop :=
  ∀ s t r : ℂ, ∀ ex ey : Fin 3 → ℂ,
    CoversSidePolynomials M s t r →
    (∀ j, MemRectangle (EX j) (ex j)) → (∀ j, MemRectangle (EY j) (ey j)) →
    Holds (fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) →
      CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem L K (turnPhase a) (turnPhase b)) A B

theorem moment_leaf {M : SidePolynomialBoxes} {EX EY : Fin 3 → RationalRectangle}
    {L K : Label} (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (test : ColumnTest) (hc : columnCheck M ⟨a.box,b.box⟩ test=true) :
    LeafStatement M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact (columnCheck_sound test hc hm ⟨a.sound ha hu,b.sound hb hv⟩ hcol).elim

theorem corner_leaf {M : SidePolynomialBoxes} {EX EY : Fin 3 → RationalRectangle}
    {L K : Label} (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (j k : Fin 3) (hjk : j<k)
    (hc : cornerCheck (EX j) (EX k) a.box (EY j) (EY k) b.box=true) :
    LeafStatement M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact (cornerCheck_sound hc (hex j) (hex k) (a.sound ha hu)
    (hey j) (hey k) (b.sound hb hv) (hcap j k hjk)).elim

theorem keep_left_leaf {M : SidePolynomialBoxes} {EX EY : Fin 3 → RationalRectangle}
    {L K : Label} (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (hx : BoxIncludes a.box L.x) (hy : BoxIncludes b.box L.y) :
    LeafStatement M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact Or.inl ⟨box_mono hx (a.sound ha hu),box_mono hy (b.sound hb hv)⟩

theorem keep_right_leaf {M : SidePolynomialBoxes} {EX EY : Fin 3 → RationalRectangle}
    {L K : Label} (a b : ArcCert) (ha : a.check=true) (hb : b.check=true)
    (hx : BoxIncludes a.box K.x) (hy : BoxIncludes b.box K.y) :
    LeafStatement M EX EY L K a.domain b.domain := by
  intro s t r ex ey hm hex hey u v hu hv hcol hcap
  exact Or.inr ⟨box_mono hx (a.sound ha hu),box_mono hy (b.sound hb hv)⟩

#print axioms sixValueBox_sound
#print axioms radicand_sixValue
#print axioms rawCornerCaps_sound
#print axioms cornerCheck_sound
#print axioms split_x
#print axioms split_y
#print axioms moment_leaf
#print axioms corner_leaf
#print axioms keep_left_leaf
#print axioms keep_right_leaf
end
end Root0Angular20261003
