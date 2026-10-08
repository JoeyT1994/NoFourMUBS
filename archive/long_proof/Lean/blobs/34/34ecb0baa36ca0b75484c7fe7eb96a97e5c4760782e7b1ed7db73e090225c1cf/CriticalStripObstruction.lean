import CriticalCountApplication
import CriticalRowSum

set_option autoImplicit false
namespace CriticalStripObstruction20261003
open Mub6 Mub6.Numerical CriticalRowSum20261003 CriticalCounts20261003
noncomputable section

/-- A physical row strip cannot have only the three scalar values proposed
by the all-critical classification. The local classification premise remains
explicit; this theorem does not infer it from criticality. -/
theorem no_classified_strip {H : BasisMatrix} (hH : PhaseHadamard H)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows)
    {k : ℝ} (hk : 0<k) (hc : cubic k=0)
    (hclass : ∀ c, cornerP H rows c=0 ∨ cornerP H rows c=5 ∨
      cornerP H rows c=specialValue k) : False := by
  exact no_twenty_special_values hk hc (cornerP H rows) hclass (physical_sum hH rows hr)

/-- The same obstruction permits any exceptional value in the proved band.
It does not depend on an irreducibility or irrationality theorem. -/
theorem no_classified_strip_in_band {H : BasisMatrix} (hH : PhaseHadamard H)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows)
    {p : ℝ} (hl : (572220/100000:ℝ)≤p) (hu : p≤(572221/100000:ℝ))
    (hclass : ∀ c, cornerP H rows c=0 ∨ cornerP H rows c=5 ∨ cornerP H rows c=p) : False := by
  exact no_twenty_values hl hu (cornerP H rows) hclass (physical_sum hH rows hr)

#print axioms no_classified_strip
#print axioms no_classified_strip_in_band
end
end CriticalStripObstruction20261003
