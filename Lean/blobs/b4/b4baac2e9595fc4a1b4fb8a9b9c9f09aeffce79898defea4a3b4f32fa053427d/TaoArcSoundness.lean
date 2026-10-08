import TaoArcChecks

namespace Mub6.Numerical.CircleArc.TaoSoundness
open IntegerIntervals CircleCharts CircleCharts.Partition CirclePrototype.Tao TaoChecks

def taoTables : Tables := tables parameters images termBoxes coefficientIndex carrier

theorem images_outside (h : ℕ) (hh : heapBound ≤ h) : images h = none := by
  simp only [images, if_neg (Nat.not_lt_of_ge hh)]

theorem terms_outside_coefficient (c h : ℕ) (hc : coefficientCount ≤ c) :
    termBoxes c h = none := by
  have hc' : ¬c < 4 := by simpa only [coefficientCount] using Nat.not_lt_of_ge hc
  simp only [termBoxes, if_neg hc']

theorem terms_outside_heap (c h : ℕ) (hh : heapBound ≤ h) :
    termBoxes c h = none := by
  simp [termBoxes, termBoxes0, termBoxes1, termBoxes2, termBoxes3,
    Nat.not_lt_of_ge hh]

theorem image_checks_complete :
    ∀ h, checkImageOption T R (parameters h) (images h) = true :=
  image_checks_of_bounded parameters images all_images_checked images_outside

theorem term_checks_finite : ∀ c : Fin coefficientCount, ∀ h : Fin heapBound,
    checkTermOption T R (parameters h) (midpointRe c) (midpointIm c)
      (coefficients c) (images h) (centres c h) (termBoxes c h) = true := by
  exact Fin.cases all_terms_0_checked (Fin.cases all_terms_1_checked
    (Fin.cases all_terms_2_checked (Fin.cases all_terms_3_checked Fin.elim0)))

theorem term_checks_complete : ∀ c h,
    checkTermOption T R (parameters h) (midpointRe c) (midpointIm c)
      (coefficients c) (images h) (centres c h) (termBoxes c h) = true :=
  term_checks_of_bounded parameters images coefficients midpointRe midpointIm centres termBoxes
    term_checks_finite terms_outside_coefficient terms_outside_heap

/-- Every present image entry is checked on its entire closed parameter interval. -/
theorem tao_image_sound : ImageSound taoTables T R :=
  imageSound_of_checks (by decide) (by decide) parameters images termBoxes coefficientIndex
    carrier image_checks_complete

/-- Uniform term enclosures for every matrix in the exact literal carrier box.
The original coefficient is conjugated exactly once. -/
theorem tao_term_sound : TermSound taoTables (toCarrier R carrier) T R :=
  termSound_of_checks (by decide) (by decide) parameters images coefficients midpointRe midpointIm
    centres termBoxes coefficientIndex carrier all_coefficients_bound image_checks_complete
    term_checks_complete

#print axioms images_outside
#print axioms terms_outside_coefficient
#print axioms terms_outside_heap
#print axioms image_checks_complete
#print axioms term_checks_finite
#print axioms term_checks_complete
#print axioms tao_image_sound
#print axioms tao_term_sound
end Mub6.Numerical.CircleArc.TaoSoundness
