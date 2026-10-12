import NoFourMUBs.Final
import NoFourMUBs.Step2.ActualCorners
import NoFourMUBs.Step2.SOS.Conditional

/-!
# The single selected proof route — explicit remaining obligations

The repository's atlas interface, maximum theorem, uniqueness, topology and
local exclusions are reused. Our repaired coverage implication supplies its
density argument. The conditional SOS identity is supplied by its checked
moment certificate. The atlas, matched existence and critical classification
remain explicit inputs.

Matched existence asks for a completion of each strict seed. No global
connectedness assumption is used.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- Interface for one finite atlas and its certificates. External verifier
receipts alone do not construct a Lean value of this type. -/
structure AtlasCertificate where
  ι : Type
  [fin : Finite ι]
  A : ι → RecordCert
  boundary : ∀ l, Nonempty (BoundaryCover A l)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  anchor : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0
  fourier : Step2.FourierAnchorCertificate (InAtlas A)

/-- The unified implication with the SOS input discharged. An unconditional
no-four-MUB theorem still requires proofs of the remaining displayed inputs. -/
theorem no_four_mubs_main (C : AtlasCertificate)
    (hE : Step2.MatchedExistence)
    (hCritical : Step2.CriticalClassification) : ¬ FourMUBs :=
  haveI := C.fin
  no_four_mubs_explicit C.A C.boundary C.tao C.anchor C.fourier hE
    (Step2.exactReach_implies_densityReach
      (Step2.repaired_exactReach Step2.frameScalarIdentities
        Step2.SOS.conditionalSOS hCritical))

end NoFourMUBs
