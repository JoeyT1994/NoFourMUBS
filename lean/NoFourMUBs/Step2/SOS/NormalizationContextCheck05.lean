import NoFourMUBs.Step2.SOS.NormalizationContextData

namespace NoFourMUBs.Step2.SOS.Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

theorem old_coordinates_5 : ∀ i : Fin 909,
    160 ≤ i.val ∧ i.val < 192 →
      coordinates (oldEmbedding i) = OAI.MUB6.Certificate.PairSemantics.coordinates i := by decide +kernel

end NoFourMUBs.Step2.SOS.Normalization
