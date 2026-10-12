import NoFourMUBs.Reuse.Archive.CriticalCountApplication
import NoFourMUBs.Reuse.Archive.CriticalRowSum
import NoFourMUBs.Step2.FourierModelBridge

/-! Reuse the repository archive's counting obstruction and actual strip sum.
The scalar classification premise remains explicit. See ARCHIVE_REUSE_MANIFEST.json
for pinned sources and the definitionally equal matrix-model adaptations. -/

noncomputable section
open scoped BigOperators
open OAI.MUB6
namespace NoFourMUBs.Step2.Critical

abbrev exceptionalP := CriticalCounts20261003.specialValue

/-- The original archive's scalar on the first three actual rows. -/
abbrev actualStripP (H : CMatrix) :=
  CriticalRowSum20261003.cornerP H ![0, 1, 2]

theorem actual_stripP_sum {H : CMatrix} (hH : IsHadamard H) :
    (∑ c, actualStripP H c) = 108 :=
  CriticalRowSum20261003.physical_sum hH ![0, 1, 2] (by decide +kernel)

/-- Apply the existing contradiction; do not regenerate its finite certificate. -/
theorem actual_strip_not_all_classified {H : CMatrix} (hH : IsHadamard H)
    {k : ℝ} (hkpos : 0 < k) (hk : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    ¬ (∀ c, actualStripP H c = 0 ∨ actualStripP H c = 5 ∨
      actualStripP H c = exceptionalP k) := by
  intro hvalues
  exact CriticalCounts20261003.no_twenty_special_values hkpos hk
    (actualStripP H) hvalues (actual_stripP_sum hH)

theorem carrier_strip_not_all_classified {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) {k : ℝ} (hkpos : 0 < k)
    (hk : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    ¬ (∀ c, actualStripP (FourierBridge.toOAI H) c = 0 ∨
      actualStripP (FourierBridge.toOAI H) c = 5 ∨
      actualStripP (FourierBridge.toOAI H) c = exceptionalP k) :=
  actual_strip_not_all_classified (FourierBridge.hadamard_toOAI hH) hkpos hk

end NoFourMUBs.Step2.Critical
