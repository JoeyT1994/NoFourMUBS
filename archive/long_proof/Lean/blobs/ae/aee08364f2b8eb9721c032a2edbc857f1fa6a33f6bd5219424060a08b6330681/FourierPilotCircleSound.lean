import FourierPilotCircleImages
import FourierPilotCircleTerms000
import FourierPilotCircleTerms001
import FourierPilotCircleTerms002
import FourierPilotCircleTerms003
import FourierPilotCircleTerms004
import FourierPilotCircleTerms005
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleSound
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
def tab : Tables := tables parameters images termBoxes coefficientIndex carrier
theorem images_outside (h : Nat) (hh : heapBound ≤ h) : images h = none := by simp only [images, if_neg (Nat.not_lt_of_ge hh)]
theorem terms_outside_coefficient (c h : Nat) (hc : coefficientCount ≤ c) : termBoxes c h = none := by
  have hc' : ¬ c < 6 := by simpa only [coefficientCount] using Nat.not_lt_of_ge hc
  simp only [termBoxes, if_neg hc']
theorem terms_outside_heap (c h : Nat) (hh : heapBound ≤ h) : termBoxes c h = none := by
  simp [termBoxes, termBoxes0, termBoxes1, termBoxes2, termBoxes3, termBoxes4, termBoxes5, Nat.not_lt_of_ge hh]
theorem images_complete : ∀ h, checkImageOption T R (parameters h) (images h) = true :=
  image_checks_of_bounded parameters images FourierPilotCircleImages.all_images images_outside
theorem terms_finite : ∀ c : Fin coefficientCount, ∀ h : Fin heapBound, checkTermOption T R (parameters h) (midpointRe c) (midpointIm c) (coefficients c) (images h) (centres c h) (termBoxes c h) = true := by
  exact (Fin.cases FourierPilotCircleTerms000.all_terms (Fin.cases FourierPilotCircleTerms001.all_terms (Fin.cases FourierPilotCircleTerms002.all_terms (Fin.cases FourierPilotCircleTerms003.all_terms (Fin.cases FourierPilotCircleTerms004.all_terms (Fin.cases FourierPilotCircleTerms005.all_terms (fun i _ => Fin.elim0 i)))))))
theorem terms_complete : ∀ c h, checkTermOption T R (parameters h) (midpointRe c) (midpointIm c) (coefficients c) (images h) (centres c h) (termBoxes c h) = true :=
  term_checks_of_bounded parameters images coefficients midpointRe midpointIm centres termBoxes terms_finite terms_outside_coefficient terms_outside_heap
theorem image_sound : ImageSound tab T R :=
  imageSound_of_checks (by decide +kernel) (by decide +kernel) parameters images termBoxes coefficientIndex carrier images_complete
theorem term_sound : TermSound tab physicalCarrier T R :=
  termSound_of_checks (by decide +kernel) (by decide +kernel) parameters images coefficients midpointRe midpointIm centres termBoxes coefficientIndex carrier FourierPilotCircleImages.all_coefficients images_complete terms_complete
#print axioms images_complete
#print axioms terms_complete
#print axioms image_sound
#print axioms term_sound
end FourierPilotCircleSound
