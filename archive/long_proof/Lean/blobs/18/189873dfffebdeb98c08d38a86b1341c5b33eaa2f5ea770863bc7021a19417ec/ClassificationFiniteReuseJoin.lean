import Hadamard6.LeadingFibreCriterion
import Hadamard6.BlockCompletion

/-! A bounded import join checks the three restored module objects together
with the unchanged resident classification objects before any new adapter. -/
set_option autoImplicit false
namespace StrictReconstruction20261007
open Hadamard6
theorem reused_finite_fibre_criterion {G : Mat3}
    (h0 : rowFibreEndpoint0 G ≠ 0) (h3 : rowFibreEndpoint3 G ≠ 0)
    (h0s : rowFibreEndpoint0 (swapRowGram G) ≠ 0)
    (h3s : rowFibreEndpoint3 (swapRowGram G) ≠ 0) :
    (normalizedRowGramFibre G).Finite :=
  normalizedRowGramFibre_finite_of_oriented_endpoints h0 h3 h0s h3s
#print axioms reused_finite_fibre_criterion
#print axioms Hadamard6.Retained.bottomRowGram
#print axioms Hadamard6.retained_completion_rowGram
end StrictReconstruction20261007
