import GlobalCornerSixSkew
import Worker12.CubicEndpoints

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace FourierCriticalLocus20261003
open GlobalCornerSixSine
noncomputable section

def phaseX (z w : ℂ) : ℂ := w^2/z-z/w^2
def phaseY (z w : ℂ) : ℂ := z*w-1/(z*w)
def phaseT (z w : ℂ) : ℂ := w/z^2-z^2/w

/-- Three selected signed corners suffice; a 400-corner census is unnecessary. -/
theorem sixSkew_fourier {ω z w : ℂ}
    (hωu : Complex.normSq ω=1) (hω : ω^2+ω+1=0)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1) :
    sixSkew 1 z w 1 (ω*z) (ω^2*w)=3*(-phaseX z w+phaseY z w+phaseT z w) := by
  have hωs := Hadamard6.star_eq_square_of_quadratic_unit hωu hω
  have hz0 := Hadamard6.ne_zero_of_normSq_eq_one hz
  have hw0 := Hadamard6.ne_zero_of_normSq_eq_one hw
  have hzInv := Hadamard6.one_div_eq_star_of_normSq_eq_one hz
  have hwInv := Hadamard6.one_div_eq_star_of_normSq_eq_one hw
  have h3 : ω^3=1 := by linear_combination (ω-1)*hω
  have h2 : ω^2= -ω-1 := by linear_combination hω
  have h4 : ω^4=ω^1 := by
    calc
      _ = ω^1*(ω^3)^1 := by ring
      _ = _ := by rw [h3]; simp
  have h5 : ω^5=ω^2 := by
    calc
      _ = ω^2*(ω^3)^1 := by ring
      _ = _ := by rw [h3]; simp
  have h6 : ω^6=ω^0 := by
    calc
      _ = ω^0*(ω^3)^2 := by ring
      _ = _ := by rw [h3]; simp
  have h7 : ω^7=ω^1 := by
    calc
      _ = ω^1*(ω^3)^2 := by ring
      _ = _ := by rw [h3]; simp
  have h8 : ω^8=ω^2 := by
    calc
      _ = ω^2*(ω^3)^2 := by ring
      _ = _ := by rw [h3]; simp
  have h9 : ω^9=ω^0 := by
    calc
      _ = ω^0*(ω^3)^3 := by ring
      _ = _ := by rw [h3]; simp
  have h10 : ω^10=ω^1 := by
    calc
      _ = ω^1*(ω^3)^3 := by ring
      _ = _ := by rw [h3]; simp
  have h11 : ω^11=ω^2 := by
    calc
      _ = ω^2*(ω^3)^3 := by ring
      _ = _ := by rw [h3]; simp
  have h12 : ω^12=ω^0 := by
    calc
      _ = ω^0*(ω^3)^4 := by ring
      _ = _ := by rw [h3]; simp
  have h13 : ω^13=ω^1 := by
    calc
      _ = ω^1*(ω^3)^4 := by ring
      _ = _ := by rw [h3]; simp
  have h14 : ω^14=ω^2 := by
    calc
      _ = ω^2*(ω^3)^4 := by ring
      _ = _ := by rw [h3]; simp
  have h15 : ω^15=ω^0 := by
    calc
      _ = ω^0*(ω^3)^5 := by ring
      _ = _ := by rw [h3]; simp
  have h16 : ω^16=ω^1 := by
    calc
      _ = ω^1*(ω^3)^5 := by ring
      _ = _ := by rw [h3]; simp
  have h17 : ω^17=ω^2 := by
    calc
      _ = ω^2*(ω^3)^5 := by ring
      _ = _ := by rw [h3]; simp
  have h18 : ω^18=ω^0 := by
    calc
      _ = ω^0*(ω^3)^6 := by ring
      _ = _ := by rw [h3]; simp
  simp only [sixSkew,skew,star_mul,star_pow,star_star,star_one,hωs]
  rw [← hzInv,← hwInv]
  unfold phaseX phaseY phaseT
  field_simp [hz0,hw0]
  ring_nf
  simp only [h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16,h17,h18]
  ring

theorem sixSkew_fourier_neg_w {ω z w : ℂ}
    (hωu : Complex.normSq ω=1) (hω : ω^2+ω+1=0)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1) :
    sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w))=
      3*(-phaseX z w-phaseY z w-phaseT z w) := by
  have h := sixSkew_fourier hωu hω hz (show Complex.normSq (-w)=1 by simpa using hw)
  convert h using 1 <;> simp [phaseX,phaseY,phaseT,div_neg,neg_div] <;> ring

theorem sixSkew_fourier_neg_z {ω z w : ℂ}
    (hωu : Complex.normSq ω=1) (hω : ω^2+ω+1=0)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1) :
    sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w)=
      3*(phaseX z w-phaseY z w+phaseT z w) := by
  have h := sixSkew_fourier hωu hω (show Complex.normSq (-z)=1 by simpa using hz) hw
  convert h using 1 <;> simp [phaseX,phaseY,phaseT,div_neg,neg_div] <;> ring

theorem three_skews_zero {ω z w : ℂ}
    (hωu : Complex.normSq ω=1) (hω : ω^2+ω+1=0)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (h0 : sixSkew 1 z w 1 (ω*z) (ω^2*w)=0)
    (h1 : sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w))=0)
    (h2 : sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w)=0) :
    phaseX z w=0 ∧ phaseY z w=0 ∧ phaseT z w=0 := by
  rw [sixSkew_fourier hωu hω hz hw] at h0
  rw [sixSkew_fourier_neg_w hωu hω hz hw] at h1
  rw [sixSkew_fourier_neg_z hωu hω hz hw] at h2
  refine ⟨?_,?_,?_⟩
  · linear_combination -(h0+h1)/6
  · linear_combination -(h1+h2)/6
  · linear_combination (h0+h2)/6

/-- Exact necessary algebraic locus, with no phase-angle or branch choices. -/
theorem zero_phases_squares {z w : ℂ}
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (hX : phaseX z w=0) (hY : phaseY z w=0) :
    w^4=z^2 ∧ (z*w)^2=1 := by
  have hz0 := Hadamard6.ne_zero_of_normSq_eq_one hz
  have hw0 := Hadamard6.ne_zero_of_normSq_eq_one hw
  unfold phaseX at hX
  unfold phaseY at hY
  field_simp [hz0,hw0] at hX hY
  constructor
  · linear_combination hX
  · linear_combination hY


def signedPower (ω : ℂ) (ε : Bool) (n : ℕ) : ℂ := if ε then -(ω^n) else ω^n

theorem locus_sixth_root {z w : ℂ} (hX : w^4=z^2) (hY : (z*w)^2=1) :
    w^6=1 := by
  linear_combination w^2*hX+hY

theorem sixth_root_signed_cubic {ω w : ℂ} (hω : ω^2+ω+1=0) (hw : w^6=1) :
    ∃ a : Fin 3, ∃ ε : Bool, w=signedPower ω ε a.val := by
  have hf : (w^3-1)*(w^3+1)=0 := by linear_combination hw
  rcases mul_eq_zero.mp hf with hp | hm
  · have hc : Hadamard6.IsCubicRoot w := by
      change w^3=1
      linear_combination hp
    obtain ⟨a,ha⟩ := Worker12.cubic_has_exponent hω hc
    exact ⟨a,false,ha⟩
  · have hc : Hadamard6.IsCubicRoot (-w) := by
      change (-w)^3=1
      linear_combination -hm
    obtain ⟨a,ha⟩ := Worker12.cubic_has_exponent hω hc
    refine ⟨a,true,?_⟩
    change w= -(ω^a.val)
    linear_combination -ha

/-- Twelve explicit algebraic parameter pairs. Both signs and all three
cubic exponents are retained; no choice of primitive orientation is made. -/
theorem locus_twelve_grid {ω z w : ℂ} (hω : ω^2+ω+1=0)
    (hX : w^4=z^2) (hY : (z*w)^2=1) :
    ∃ a : Fin 3, ∃ ε δ : Bool,
      z=signedPower ω ε (2*a.val) ∧ w=signedPower ω δ a.val := by
  obtain ⟨a,δ,hw⟩ := sixth_root_signed_cubic hω (locus_sixth_root hX hY)
  have hw2 : w^2=ω^(2*a.val) := by
    rw [hw]
    cases δ <;> simp [signedPower,← pow_mul,Nat.mul_comm]
  have hf : (z-w^2)*(z+w^2)=0 := by linear_combination -hX
  rcases mul_eq_zero.mp hf with hp | hm
  · exact ⟨a,false,δ,by simpa [signedPower,hw2] using sub_eq_zero.mp hp,hw⟩
  · refine ⟨a,true,δ,?_,hw⟩
    change z= -(ω^(2*a.val))
    rw [← hw2]
    linear_combination hm

end
#print axioms sixSkew_fourier
#print axioms sixSkew_fourier_neg_w
#print axioms sixSkew_fourier_neg_z
#print axioms three_skews_zero
#print axioms zero_phases_squares
#print axioms locus_sixth_root
#print axioms sixth_root_signed_cubic
#print axioms locus_twelve_grid
end FourierCriticalLocus20261003
