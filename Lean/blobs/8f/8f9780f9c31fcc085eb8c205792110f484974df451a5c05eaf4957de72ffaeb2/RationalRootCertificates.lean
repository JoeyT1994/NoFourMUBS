import GuardedComplexIntervals
import LocalRootEnclosures

/-! Rational residual certificates for a locally chosen root. A successful
certificate encloses some root for every radicand in the input rectangle;
it does not assert continuity of a globally chosen principal root. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Hadamard6Extensions.LocalRootEnclosures
noncomputable section

def rationalCenter (a b : ℚ) : ℂ := ⟨a,b⟩
def centerBox (a b ε : ℚ) : RationalRectangle :=
  ⟨a-ε,a+ε,b-ε,b+ε⟩
def rootResidual (B : RationalRectangle) (a b : ℚ) (n : ℕ) : Interval :=
  boxNormSq (boxSub B (boxPow (boxPoint a b) n))

def CubeCertificate (B : RationalRectangle) (a b ε : ℚ) : Prop :=
  0 ≤ ε ∧ (rootResidual B a b 3).hi ≤ ε^6
def SquareCertificate (B : RationalRectangle) (a b ε : ℚ) : Prop :=
  0 ≤ ε ∧ (rootResidual B a b 2).hi ≤ ε^4

theorem rootResidual_sound {B : RationalRectangle} {z : ℂ}
    (hz : MemRectangle B z) (a b : ℚ) (n : ℕ) :
    Complex.normSq (z-(rationalCenter a b)^n) ≤ (rootResidual B a b n).hi := by
  exact (mem_boxNormSq (mem_boxSub hz
    (mem_boxPow (mem_boxPoint_complex a b) n))).2

theorem mem_centerBox {z : ℂ} {a b ε : ℚ}
    (hε : 0 ≤ ε) (hz : Complex.normSq (z-rationalCenter a b) ≤ (ε : ℝ)^2) :
    MemRectangle (centerBox a b ε) z := by
  have he : (0 : ℝ) ≤ ε := by exact_mod_cast hε
  have h := normSq_bound_components he hz
  simpa only [MemRectangle,centerBox,rationalCenter,Rat.cast_sub,Rat.cast_add] using h

theorem cubeCertificate_sound {B : RationalRectangle} {T : ℂ} {a b ε : ℚ}
    (hc : CubeCertificate B a b ε) (hT : MemRectangle B T) :
    ∃ τ : ℂ, τ^3=T ∧ MemRectangle (centerBox a b ε) τ := by
  have hb : ((rootResidual B a b 3).hi : ℝ) ≤ (ε : ℝ)^6 := by
    exact_mod_cast hc.2
  obtain ⟨τ,ht,hd⟩ := exists_cube_root_near T (rationalCenter a b) (ε : ℝ)
    ((rootResidual_sound hT a b 3).trans hb)
  exact ⟨τ,ht,mem_centerBox hc.1 hd⟩

theorem squareCertificate_sound {B : RationalRectangle} {D : ℂ} {a b ε : ℚ}
    (hc : SquareCertificate B a b ε) (hD : MemRectangle B D) :
    ∃ δ : ℂ, δ^2=D ∧ MemRectangle (centerBox a b ε) δ := by
  have hb : ((rootResidual B a b 2).hi : ℝ) ≤ (ε : ℝ)^4 := by
    exact_mod_cast hc.2
  obtain ⟨δ,hd,he⟩ := exists_square_root_near D (rationalCenter a b) (ε : ℝ)
    ((rootResidual_sound hD a b 2).trans hb)
  exact ⟨δ,hd,mem_centerBox hc.1 he⟩

/-- A square-root certificate covers every root after retaining both signs. -/
theorem squareCertificate_all_roots {B : RationalRectangle} {D δ : ℂ} {a b ε : ℚ}
    (hc : SquareCertificate B a b ε) (hD : MemRectangle B D) (hδ : δ^2=D) :
    MemRectangle (centerBox a b ε) δ ∨
      MemRectangle (boxNeg (centerBox a b ε)) δ := by
  have hb : ((rootResidual B a b 2).hi : ℝ) ≤ (ε : ℝ)^4 := by
    exact_mod_cast hc.2
  have he := square_root_near_sign hδ ((rootResidual_sound hD a b 2).trans hb)
  rcases he with he | he
  · exact Or.inl (mem_centerBox hc.1 he)
  · right
    have hn : Complex.normSq (-δ-rationalCenter a b) ≤ (ε : ℝ)^2 := by
      have hi : -δ-rationalCenter a b = -(δ+rationalCenter a b) := by ring
      simpa only [hi,Complex.normSq_neg] using he
    have hm := mem_boxNeg (mem_centerBox hc.1 hn)
    simpa only [neg_neg] using hm

#check rootResidual_sound
#print axioms rootResidual_sound
#check mem_centerBox
#print axioms mem_centerBox
#check cubeCertificate_sound
#print axioms cubeCertificate_sound
#check squareCertificate_sound
#print axioms squareCertificate_sound
#check squareCertificate_all_roots
#print axioms squareCertificate_all_roots
end
end Mub6.Classification.RadicalIntervals
