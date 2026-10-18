import NoFourMUBs.MainTheorem
import NoFourMUBs.Step2.Connected

/-!
# The connectedness route (not used by `Final.no_four_mubs`)

`no_four_mubs_of_connected` takes the connectedness of the non-Tao quotient (`Step2.NonTaoPreconnected`)
as a **hypothesis**; it is not proved in Lean.  `Final.no_four_mubs` does not use this route: it goes
through matched existence, matched density and `Step2.coverage_of_matched_density`.  This module is kept
out of `Final`'s import closure; `Axioms.lean` audits it.
-/

namespace NoFourMUBs

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate and the connectedness of the non-Tao quotient
(a hypothesis here). -/
theorem no_four_mubs_of_connected (C : AtlasCertificate) (hX : Step2.NonTaoPreconnected) : ¬ FourMUBs :=
  no_four_mubs_of_atlas C.A C.tao (Step2.coverage_of_connected (InAtlas C.A) hX C.clopen C.fourier)

end NoFourMUBs
