import Hadamard6.FourierUnmixed
import Hadamard6.UnitSymmetric

/-! Original six-skew data and generic cubic-root indexing, extracted without
the unrelated endpoint certificates or unavailable legacy moment assumptions. -/

set_option autoImplicit false
noncomputable section
namespace GlobalCornerSixSine
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

end GlobalCornerSixSine

namespace Worker12
theorem cubic_has_exponent {ω z : ℂ} (hω : ω ^ 2 + ω + 1 = 0)
    (hz : Hadamard6.IsCubicRoot z) : ∃ a : Fin 3, z = ω ^ a.val := by
  rcases Hadamard6.cubic_root_eq_one_or_omega hω hz with h1 | hωz | hω2
  · exact ⟨0, by simpa using h1⟩
  · exact ⟨1, by simpa using hωz⟩
  · exact ⟨2, hω2⟩

#print axioms cubic_has_exponent
end Worker12
