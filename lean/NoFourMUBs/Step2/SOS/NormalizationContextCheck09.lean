import NoFourMUBs.Step2.SOS.NormalizationContextData

namespace NoFourMUBs.Step2.SOS.Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

theorem old_coordinates_9 : ∀ i : Fin 909,
    288 ≤ i.val ∧ i.val < 320 →
      coordinates (oldEmbedding i) = OAI.MUB6.Certificate.PairSemantics.coordinates i := by decide +kernel

end NoFourMUBs.Step2.SOS.Normalization
