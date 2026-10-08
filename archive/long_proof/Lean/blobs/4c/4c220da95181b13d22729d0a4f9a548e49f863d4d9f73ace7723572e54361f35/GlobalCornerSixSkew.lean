import ShoulderPhaseGatePhysical

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace GlobalCornerSixSine
open ShoulderPhaseGate20261002
noncomputable section

def skew (u v : ℂ) : ℂ := u * star v - star u * v

/-- The six signs are exactly those of the pinned SideColumnPrune formula,
listed in order (i,j)=(0,1),(0,2),(1,0),(1,2),(2,0),(2,1). -/
def sixSkew (a b c d e f : ℂ) : ℂ :=
    skew c b * skew f d * skew (d * star a) (e * star b)
  - skew c b * skew e d * skew (d * star a) (f * star c)
  + skew c a * skew f e * skew (e * star b) (d * star a)
  + skew c a * skew e d * skew (e * star b) (f * star c)
  - skew b a * skew f e * skew (f * star c) (d * star a)
  + skew b a * skew f d * skew (f * star c) (e * star b)

/-- An exact unit-phase Laurent identity relates the six-term expression to
the already checked moment gate. No side determinant is divided out. -/
theorem sixSkew_moment (a b c d e f : ℂ)
    (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hc : Complex.normSq c = 1) (hd : Complex.normSq d = 1)
    (he : Complex.normSq e = 1) (hf : Complex.normSq f = 1) :
    sixSkew a b c d e f =
      -(star (P0 (a+b+c) (d+e+f) (overlap a b c d e f)) * moment a b c d e f -
        star (star (P0 (a+b+c) (d+e+f) (overlap a b c d e f)) * moment a b c d e f)) := by
  dsimp only [sixSkew,skew,moment,overlap,P0,X]
  simp only [star_add,star_mul,star_sub,star_pow,star_star,star_ofNat]
  have ha0 := Hadamard6.ne_zero_of_normSq_eq_one ha
  have hb0 := Hadamard6.ne_zero_of_normSq_eq_one hb
  have hc0 := Hadamard6.ne_zero_of_normSq_eq_one hc
  have hd0 := Hadamard6.ne_zero_of_normSq_eq_one hd
  have he0 := Hadamard6.ne_zero_of_normSq_eq_one he
  have hf0 := Hadamard6.ne_zero_of_normSq_eq_one hf
  have hsa := Hadamard6.one_div_eq_star_of_normSq_eq_one ha
  have hsb := Hadamard6.one_div_eq_star_of_normSq_eq_one hb
  have hsc := Hadamard6.one_div_eq_star_of_normSq_eq_one hc
  have hsd := Hadamard6.one_div_eq_star_of_normSq_eq_one hd
  have hse := Hadamard6.one_div_eq_star_of_normSq_eq_one he
  have hsf := Hadamard6.one_div_eq_star_of_normSq_eq_one hf
  rw [← hsa,← hsb,← hsc,← hsd,← hse,← hsf]
  field_simp [ha0,hb0,hc0,hd0,he0,hf0]
  ring

/-- Exact complementary radicand square for arbitrary unit phases, including
all singular and zero-score cases. -/
theorem physical_radicand_sixSkew (a b c d e f : ℂ)
    (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hc : Complex.normSq c = 1) (hd : Complex.normSq d = 1)
    (he : Complex.normSq e = 1) (hf : Complex.normSq f = 1) :
    radicand (a+b+c) (d+e+f) (overlap a b c d e f) = -(sixSkew a b c d e f)^2 := by
  have h := moment_square (a+b+c) (d+e+f) (overlap a b c d e f) (moment a b c d e f)
    (UnitMomentNorm a b c d e f ha hb hc hd he hf)
    (UnitMomentTrace a b c d e f ha hb hc hd he hf)
  rw [sixSkew_moment a b c d e f ha hb hc hd he hf,neg_sq,h,neg_neg]

end
#print axioms sixSkew_moment
#print axioms physical_radicand_sixSkew
end GlobalCornerSixSine
