import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
import Mathlib.Analysis.Convex.Segment

set_option autoImplicit false
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

def blend (a b c d e t : ℝ) : ℝ :=
  a*(1-t)^4 + 4*b*t*(1-t)^3 + 6*c*t^2*(1-t)^2 + 4*d*t^3*(1-t) + e*t^4

/-- Fixed degree-four adapter for the supplied five Bernstein coefficients. -/
theorem blend_neg {a b c d e t : ℝ}
    (ha : a<0) (hb : b<0) (hc : c<0) (hd : d<0) (he : e<0)
    (ht0 : 0≤t) (ht1 : t≤1) : blend a b c d e t<0 := by
  by_cases ht : t=1
  · simpa [blend, ht] using he
  have h1 : 0<1-t := by rcases lt_or_eq_of_le ht1 with h | h; linarith; contradiction
  have ha' := neg_pos.mpr ha
  have hb' := neg_pos.mpr hb
  have hc' := neg_pos.mpr hc
  have hd' := neg_pos.mpr hd
  have he' := neg_pos.mpr he
  have hform : -(blend a b c d e t) =
      (-a)*(1-t)^4 + 4*(-b)*t*(1-t)^3 + 6*(-c)*t^2*(1-t)^2 +
        4*(-d)*t^3*(1-t) + (-e)*t^4 := by unfold blend; ring
  apply neg_pos.mp
  rw [hform]
  positivity

/-- Reuse Mathlib's interval-to-convex-combination theorem, including endpoints. -/
theorem negative_on_interval {f : ℝ → ℝ} {L R K a b c d e : ℝ}
    (hLR : L≤R) (hL : L≤K) (hR : K≤R)
    (hformula : ∀ t, f ((1-t)*L+t*R)=blend a b c d e t)
    (ha : a<0) (hb : b<0) (hc : c<0) (hd : d<0) (he : e<0) : f K<0 := by
  obtain ⟨u,t,hu,ht,hut,hK⟩ := (Convex.mem_Icc hLR).mp ⟨hL,hR⟩
  have hu' : u=1-t := by linarith
  have ht1 : t≤1 := by linarith
  rw [hu'] at hK
  rw [← hK, hformula]
  exact blend_neg ha hb hc hd he ht ht1

theorem blend_reverse (a b c d e t : ℝ) :
    blend a b c d e (1-t)=blend e d c b a t := by
  unfold blend
  ring

end
#print axioms blend_neg
#print axioms negative_on_interval
#print axioms blend_reverse
end NoFourMUBs.Step2.Critical.NonzeroScalar
