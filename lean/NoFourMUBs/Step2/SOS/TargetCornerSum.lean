import NoFourMUBs.Step2.SOS.TargetCornerRow00
import NoFourMUBs.Step2.SOS.TargetCornerRow01
import NoFourMUBs.Step2.SOS.TargetCornerRow02
import NoFourMUBs.Step2.SOS.TargetCornerRow03
import NoFourMUBs.Step2.SOS.TargetCornerRow04
import NoFourMUBs.Step2.SOS.TargetCornerRow05
import NoFourMUBs.Step2.SOS.TargetCornerRow06
import NoFourMUBs.Step2.SOS.TargetCornerRow07
import NoFourMUBs.Step2.SOS.TargetCornerRow08
import NoFourMUBs.Step2.SOS.TargetCornerRow09
import NoFourMUBs.Step2.SOS.TargetCornerRow10
import NoFourMUBs.Step2.SOS.TargetCornerRow11
import NoFourMUBs.Step2.SOS.TargetCornerRow12
import NoFourMUBs.Step2.SOS.TargetCornerRow13
import NoFourMUBs.Step2.SOS.TargetCornerRow14
import NoFourMUBs.Step2.SOS.TargetCornerRow15
import NoFourMUBs.Step2.SOS.TargetCornerRow16
import NoFourMUBs.Step2.SOS.TargetCornerRow17
import NoFourMUBs.Step2.SOS.TargetCornerRow18
import NoFourMUBs.Step2.SOS.TargetCornerRow19
import NoFourMUBs.Step2.SOS.TargetCornerRow20
import NoFourMUBs.Step2.SOS.TargetCornerRow21
import NoFourMUBs.Step2.SOS.TargetCornerRow22
import NoFourMUBs.Step2.SOS.TargetCornerRow23
import NoFourMUBs.Step2.SOS.TargetCornerRow24
import NoFourMUBs.Step2.SOS.TargetCornerRow25
import NoFourMUBs.Step2.SOS.TargetCornerRow26
import NoFourMUBs.Step2.SOS.TargetCornerRow27
import NoFourMUBs.Step2.SOS.TargetCornerRow28
import NoFourMUBs.Step2.SOS.TargetCornerRow29
import NoFourMUBs.Step2.SOS.TargetCornerRow30
import NoFourMUBs.Step2.SOS.TargetCornerRow31
import NoFourMUBs.Step2.SOS.TargetCornerRow32
import NoFourMUBs.Step2.SOS.TargetCornerRow33

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetCornerSumProjection : Integer.Sparse (Fin 1613) := [(0, 2922), (14, 23040), (15, 8640), (16, 480), (58, 17280), (60, 960), (67, 5760), (80, -11520), (81, -11520), (87, -4320), (94, 4500), (145, 224640), (169, 112320), (214, 103680), (216, 25920), (228, 18720), (247, 1440), (269, 164160), (287, 56160), (360, -34560), (361, 17280), (362, 155520), (365, 34560), (366, 155520), (367, 120960), (379, 155520), (425, 311040), (426, 358560), (430, 51840), (431, 25920), (478, 34560), (483, 8640), (489, 8640), (506, 51840), (515, 17280), (516, 120960), (518, 34560), (523, 155520), (524, 17280), (546, 8640), (556, -17280), (563, 8640), (600, 103680), (601, 103680), (602, 332640), (610, 60480), (616, 51840), (618, 8640), (635, 77760), (636, 51840), (638, 133920), (655, 224640), (666, 211680), (667, -60480), (668, 8640), (681, -23040), (682, -5760), (697, 51840), (698, 32160), (821, -40320), (822, -17280), (823, -34560), (826, -17280), (827, 25920), (828, 164160), (829, 17280), (831, 43200), (848, -311040), (849, -60480), (850, -60480), (853, -60480), (854, -60480), (857, -60480), (859, -60480), (865, 38880), (874, -60480), (875, -60480), (887, -17280), (888, -60480), (890, 298080), (903, -17280), (936, -17280), (938, -17280), (943, -17280), (947, 103680), (948, 103680), (952, -17280), (954, 12960), (955, 21600), (956, 38880), (957, 12960), (963, 51840), (964, 51840), (973, -34560), (978, 103680), (979, -17280), (986, -17280), (1007, 311040), (1008, 51840), (1009, 51840), (1014, 51840), (1015, 51840), (1016, 69120), (1025, 12960), (1026, 21600), (1027, 38880), (1034, -17280), (1050, -10080), (1055, 7200), (1058, 95040), (1059, -3360), (1142, 25920), (1157, 103680), (1158, 103680), (1168, -17280), (1171, -34560), (1190, -103680), (1210, 46080), (1212, 40320), (1217, 8640), (1219, 8640), (1220, -138240), (1221, -10080), (1223, 48960), (1226, 4800), (1227, -64320), (1228, 17280), (1250, -2880), (1251, -3990), (1272, 103680), (1388, 8640), (1389, 40320)]

theorem targetCornerSum {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * (∑ i : Fin 34, (fun i => ∑ j, targetCornerTerm H i j) i) =
      Integer.Sparse.eval targetCornerSumProjection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![2560, 1280, 1280, 1280, 1280, 2560, 2560, 1280, 2560, 2560, 1280, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560] : Fin 34 → ℤ) i : ℝ) * ((fun i => ∑ j, targetCornerTerm H i j) i) =
      Integer.Sparse.eval (![targetCornerRow0Projection, targetCornerRow1Projection, targetCornerRow2Projection, targetCornerRow3Projection, targetCornerRow4Projection, targetCornerRow5Projection, targetCornerRow6Projection, targetCornerRow7Projection, targetCornerRow8Projection, targetCornerRow9Projection, targetCornerRow10Projection, targetCornerRow11Projection, targetCornerRow12Projection, targetCornerRow13Projection, targetCornerRow14Projection, targetCornerRow15Projection, targetCornerRow16Projection, targetCornerRow17Projection, targetCornerRow18Projection, targetCornerRow19Projection, targetCornerRow20Projection, targetCornerRow21Projection, targetCornerRow22Projection, targetCornerRow23Projection, targetCornerRow24Projection, targetCornerRow25Projection, targetCornerRow26Projection, targetCornerRow27Projection, targetCornerRow28Projection, targetCornerRow29Projection, targetCornerRow30Projection, targetCornerRow31Projection, targetCornerRow32Projection, targetCornerRow33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerRow0 hH
    · exact targetCornerRow1 hH
    · exact targetCornerRow2 hH
    · exact targetCornerRow3 hH
    · exact targetCornerRow4 hH
    · exact targetCornerRow5 hH
    · exact targetCornerRow6 hH
    · exact targetCornerRow7 hH
    · exact targetCornerRow8 hH
    · exact targetCornerRow9 hH
    · exact targetCornerRow10 hH
    · exact targetCornerRow11 hH
    · exact targetCornerRow12 hH
    · exact targetCornerRow13 hH
    · exact targetCornerRow14 hH
    · exact targetCornerRow15 hH
    · exact targetCornerRow16 hH
    · exact targetCornerRow17 hH
    · exact targetCornerRow18 hH
    · exact targetCornerRow19 hH
    · exact targetCornerRow20 hH
    · exact targetCornerRow21 hH
    · exact targetCornerRow22 hH
    · exact targetCornerRow23 hH
    · exact targetCornerRow24 hH
    · exact targetCornerRow25 hH
    · exact targetCornerRow26 hH
    · exact targetCornerRow27 hH
    · exact targetCornerRow28 hH
    · exact targetCornerRow29 hH
    · exact targetCornerRow30 hH
    · exact targetCornerRow31 hH
    · exact targetCornerRow32 hH
    · exact targetCornerRow33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (fun i => ∑ j, targetCornerTerm H i j) i) (fun i => ∑ j, targetCornerTerm H i j)
    (-1) 2560 2560 (-1) ![2560, 1280, 1280, 1280, 1280, 2560, 2560, 1280, 2560, 2560, 1280, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560, 1280, 2560, 2560, 2560, 2560, 2560, 2560] ![1, 2, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1] targetCornerSumProjection ![targetCornerRow0Projection, targetCornerRow1Projection, targetCornerRow2Projection, targetCornerRow3Projection, targetCornerRow4Projection, targetCornerRow5Projection, targetCornerRow6Projection, targetCornerRow7Projection, targetCornerRow8Projection, targetCornerRow9Projection, targetCornerRow10Projection, targetCornerRow11Projection, targetCornerRow12Projection, targetCornerRow13Projection, targetCornerRow14Projection, targetCornerRow15Projection, targetCornerRow16Projection, targetCornerRow17Projection, targetCornerRow18Projection, targetCornerRow19Projection, targetCornerRow20Projection, targetCornerRow21Projection, targetCornerRow22Projection, targetCornerRow23Projection, targetCornerRow24Projection, targetCornerRow25Projection, targetCornerRow26Projection, targetCornerRow27Projection, targetCornerRow28Projection, targetCornerRow29Projection, targetCornerRow30Projection, targetCornerRow31Projection, targetCornerRow32Projection, targetCornerRow33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
