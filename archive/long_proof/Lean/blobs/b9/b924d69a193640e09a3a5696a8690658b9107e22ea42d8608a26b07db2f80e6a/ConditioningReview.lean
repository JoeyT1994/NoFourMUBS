import KarlssonCell9218880916c75f25

import KarlssonCell94b3328b40448a8e

import KarlssonCell01ff82bd13920046

import KarlssonCellbcb593dfdf71c9ac

set_option autoImplicit false

namespace ConditioningIndependentReview

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCover

noncomputable section

theorem reviewed_singularAInput {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell9218880916c75f25.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell9218880916c75f25.input.label x)
    (hH : IsHadamard (reducedMatrix KarlssonCell9218880916c75f25.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell9218880916c75f25.input.label x) K ∧
      CarrierBox KarlssonCell9218880916c75f25.carrier (ClassificationCover.toNumerical K) :=
  KarlssonCell9218880916c75f25.physical_enclosure hx h0 h1 hg hH

theorem reviewed_singularAOutput {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell94b3328b40448a8e.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell94b3328b40448a8e.input.label x)
    (hH : IsHadamard (reducedMatrix KarlssonCell94b3328b40448a8e.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell94b3328b40448a8e.input.label x) K ∧
      CarrierBox KarlssonCell94b3328b40448a8e.carrier (ClassificationCover.toNumerical K) :=
  KarlssonCell94b3328b40448a8e.physical_enclosure hx h0 h1 hg hH

theorem reviewed_singularBInput {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell01ff82bd13920046.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell01ff82bd13920046.input.label x)
    (hH : IsHadamard (reducedMatrix KarlssonCell01ff82bd13920046.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell01ff82bd13920046.input.label x) K ∧
      CarrierBox KarlssonCell01ff82bd13920046.carrier (ClassificationCover.toNumerical K) :=
  KarlssonCell01ff82bd13920046.physical_enclosure hx h0 h1 hg hH

theorem reviewed_singularBOutput {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCellbcb593dfdf71c9ac.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCellbcb593dfdf71c9ac.input.label x)
    (hH : IsHadamard (reducedMatrix KarlssonCellbcb593dfdf71c9ac.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCellbcb593dfdf71c9ac.input.label x) K ∧
      CarrierBox KarlssonCellbcb593dfdf71c9ac.carrier (ClassificationCover.toNumerical K) :=
  KarlssonCellbcb593dfdf71c9ac.physical_enclosure hx h0 h1 hg hH

#print axioms reviewed_singularAInput

#print axioms reviewed_singularAOutput

#print axioms reviewed_singularBInput

#print axioms reviewed_singularBOutput

end

end ConditioningIndependentReview
