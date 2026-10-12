import NoFourMUBs.Step2.SOS.NormalizationContextCheck00
import NoFourMUBs.Step2.SOS.NormalizationContextCheck01
import NoFourMUBs.Step2.SOS.NormalizationContextCheck02
import NoFourMUBs.Step2.SOS.NormalizationContextCheck03
import NoFourMUBs.Step2.SOS.NormalizationContextCheck04
import NoFourMUBs.Step2.SOS.NormalizationContextCheck05
import NoFourMUBs.Step2.SOS.NormalizationContextCheck06
import NoFourMUBs.Step2.SOS.NormalizationContextCheck07
import NoFourMUBs.Step2.SOS.NormalizationContextCheck08
import NoFourMUBs.Step2.SOS.NormalizationContextCheck09
import NoFourMUBs.Step2.SOS.NormalizationContextCheck10
import NoFourMUBs.Step2.SOS.NormalizationContextCheck11
import NoFourMUBs.Step2.SOS.NormalizationContextCheck12
import NoFourMUBs.Step2.SOS.NormalizationContextCheck13
import NoFourMUBs.Step2.SOS.NormalizationContextCheck14
import NoFourMUBs.Step2.SOS.NormalizationContextCheck15
import NoFourMUBs.Step2.SOS.NormalizationContextCheck16
import NoFourMUBs.Step2.SOS.NormalizationContextCheck17
import NoFourMUBs.Step2.SOS.NormalizationContextCheck18
import NoFourMUBs.Step2.SOS.NormalizationContextCheck19
import NoFourMUBs.Step2.SOS.NormalizationContextCheck20
import NoFourMUBs.Step2.SOS.NormalizationContextCheck21
import NoFourMUBs.Step2.SOS.NormalizationContextCheck22
import NoFourMUBs.Step2.SOS.NormalizationContextCheck23
import NoFourMUBs.Step2.SOS.NormalizationContextCheck24
import NoFourMUBs.Step2.SOS.NormalizationContextCheck25
import NoFourMUBs.Step2.SOS.NormalizationContextCheck26
import NoFourMUBs.Step2.SOS.NormalizationContextCheck27
import NoFourMUBs.Step2.SOS.NormalizationContextCheck28

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate

theorem old_coordinates (i : Fin 909) :
    coordinates (oldEmbedding i) = OAI.MUB6.Certificate.PairSemantics.coordinates i := by
  have hb := i.isLt
  have hblocks (j : Fin 29)
      (hj : j.val * 32 ≤ i.val ∧ i.val < (j.val + 1) * 32) :
      coordinates (oldEmbedding i) = OAI.MUB6.Certificate.PairSemantics.coordinates i := by
    fin_cases j
    · exact old_coordinates_0 i hj
    · exact old_coordinates_1 i hj
    · exact old_coordinates_2 i hj
    · exact old_coordinates_3 i hj
    · exact old_coordinates_4 i hj
    · exact old_coordinates_5 i hj
    · exact old_coordinates_6 i hj
    · exact old_coordinates_7 i hj
    · exact old_coordinates_8 i hj
    · exact old_coordinates_9 i hj
    · exact old_coordinates_10 i hj
    · exact old_coordinates_11 i hj
    · exact old_coordinates_12 i hj
    · exact old_coordinates_13 i hj
    · exact old_coordinates_14 i hj
    · exact old_coordinates_15 i hj
    · exact old_coordinates_16 i hj
    · exact old_coordinates_17 i hj
    · exact old_coordinates_18 i hj
    · exact old_coordinates_19 i hj
    · exact old_coordinates_20 i hj
    · exact old_coordinates_21 i hj
    · exact old_coordinates_22 i hj
    · exact old_coordinates_23 i hj
    · exact old_coordinates_24 i hj
    · exact old_coordinates_25 i hj
    · exact old_coordinates_26 i hj
    · exact old_coordinates_27 i hj
    · exact old_coordinates_28 i hj
  exact hblocks ⟨i.val / 32, by omega⟩ (by dsimp; omega)


theorem old_moment (H : CMatrix) (i : Fin 909) :
    momentVector H (oldEmbedding i) = OAI.MUB6.Certificate.PairSemantics.momentVector H i :=
  congrArg (fun A : ExponentCode => A.moment H) (old_coordinates i)

end NoFourMUBs.Step2.SOS.Normalization
