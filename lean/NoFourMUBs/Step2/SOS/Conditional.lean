import NoFourMUBs.Step2.SOS.RowsSound
import NoFourMUBs.Step2.SOS.Arithmetic
import NoFourMUBs.Step2.SOS.TargetProjection
import NoFourMUBs.Step2.FourierVanishing

/-! The single selected witness, interpreted on the actual matrix.
This module is ready for checking after all row and target adapters compile. -/

namespace NoFourMUBs.Step2.SOS
open Hadamard6 OAI.MUB6 OAI.MUB6.Certificate

theorem conditionalSOS : ConditionalSOS := by
  intro H hTao hsame
  rw [physical_target]
  have hH := FourierBridge.hadamard_toOAI H.2
  have hz := Arithmetic.consequence (Semantics.momentVector (FourierBridge.toOAI H.1))
    (Semantics.rowsSound hH (NoFourMUBs.Step2.fourier_vanishing H.2 hTao)
      (NoFourMUBs.Step2.fourier_vanishing_transpose H.2 hTao)
      (sameLabels_complementarySignatures hsame))
  have hp := Semantics.physical_target_projection hH
  rw [hz] at hp
  linarith

end NoFourMUBs.Step2.SOS
