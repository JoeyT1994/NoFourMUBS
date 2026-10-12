import NoFourMUBs.Step2.SOS.TargetPsiRow00
import NoFourMUBs.Step2.SOS.TargetPsiRow01
import NoFourMUBs.Step2.SOS.TargetPsiRow02
import NoFourMUBs.Step2.SOS.TargetPsiRow03
import NoFourMUBs.Step2.SOS.TargetPsiRow04
import NoFourMUBs.Step2.SOS.TargetPsiRow05
import NoFourMUBs.Step2.SOS.TargetPsiRow06
import NoFourMUBs.Step2.SOS.TargetPsiRow07
import NoFourMUBs.Step2.SOS.TargetPsiRow08
import NoFourMUBs.Step2.SOS.TargetPsiRow09
import NoFourMUBs.Step2.SOS.TargetPsiRow10
import NoFourMUBs.Step2.SOS.TargetPsiRow11
import NoFourMUBs.Step2.SOS.TargetPsiRow12
import NoFourMUBs.Step2.SOS.TargetPsiRow13
import NoFourMUBs.Step2.SOS.TargetPsiRow14
import NoFourMUBs.Step2.SOS.TargetPsiRow15
import NoFourMUBs.Step2.SOS.TargetPsiRow16
import NoFourMUBs.Step2.SOS.TargetPsiRow17
import NoFourMUBs.Step2.SOS.TargetPsiRow18
import NoFourMUBs.Step2.SOS.TargetPsiRow19
import NoFourMUBs.Step2.SOS.TargetPsiRow20
import NoFourMUBs.Step2.SOS.TargetPsiRow21
import NoFourMUBs.Step2.SOS.TargetPsiRow22
import NoFourMUBs.Step2.SOS.TargetPsiRow23
import NoFourMUBs.Step2.SOS.TargetPsiRow24
import NoFourMUBs.Step2.SOS.TargetPsiRow25
import NoFourMUBs.Step2.SOS.TargetPsiRow26
import NoFourMUBs.Step2.SOS.TargetPsiRow27
import NoFourMUBs.Step2.SOS.TargetPsiRow28
import NoFourMUBs.Step2.SOS.TargetPsiRow29
import NoFourMUBs.Step2.SOS.TargetPsiRow30
import NoFourMUBs.Step2.SOS.TargetPsiRow31
import NoFourMUBs.Step2.SOS.TargetPsiRow32
import NoFourMUBs.Step2.SOS.TargetPsiRow33
import NoFourMUBs.Step2.SOS.TargetPsiRow34
import NoFourMUBs.Step2.SOS.TargetPsiRow35
import NoFourMUBs.Step2.SOS.TargetPsiRow36
import NoFourMUBs.Step2.SOS.TargetPsiRow37
import NoFourMUBs.Step2.SOS.TargetPsiRow38
import NoFourMUBs.Step2.SOS.TargetPsiRow39
import NoFourMUBs.Step2.SOS.TargetPsiRow40
import NoFourMUBs.Step2.SOS.TargetPsiRow41
import NoFourMUBs.Step2.SOS.TargetPsiRow42
import NoFourMUBs.Step2.SOS.TargetPsiRow43
import NoFourMUBs.Step2.SOS.TargetPsiRow44
import NoFourMUBs.Step2.SOS.TargetPsiRow45
import NoFourMUBs.Step2.SOS.TargetPsiRow46
import NoFourMUBs.Step2.SOS.TargetPsiRow47
import NoFourMUBs.Step2.SOS.TargetPsiRow48
import NoFourMUBs.Step2.SOS.TargetPsiRow49
import NoFourMUBs.Step2.SOS.TargetPsiRow50
import NoFourMUBs.Step2.SOS.TargetPsiRow51
import NoFourMUBs.Step2.SOS.TargetPsiRow52
import NoFourMUBs.Step2.SOS.TargetPsiRow53
import NoFourMUBs.Step2.SOS.TargetPsiRow54

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiSumProjection : Integer.Sparse (Fin 1613) := [(0, 4860), (19, 25920), (20, -1620), (60, 34560), (87, 51840), (94, -153360), (145, -622080), (169, -311040), (241, -336960), (287, 466560), (365, -1244160), (366, -1866240), (367, -622080), (426, 2332800), (478, -622080), (483, -311040), (489, -311040), (515, -622080), (523, -1866240), (524, -622080), (602, -2488320), (610, -311040), (618, -311040), (638, -311040), (666, -311040), (668, -311040), (697, 51840), (698, -3888000), (700, -207360), (821, 1347840), (823, 1244160), (826, 622080), (828, -311040), (829, -622080), (848, -1866240), (850, 311040), (853, 311040), (854, 311040), (857, 311040), (864, -233280), (865, -466560), (869, -933120), (875, 311040), (890, 155520), (903, 622080), (936, 622080), (943, -5287680), (952, 622080), (955, 1088640), (957, -466560), (973, 622080), (986, 622080), (1015, 1866240), (1016, 1244160), (1050, 777600), (1055, 1192320), (1058, 103680), (1059, -1468800), (1171, 622080), (1190, 1866240), (1212, -103680), (1219, 103680), (1220, -103680), (1221, 1244160), (1223, 51840), (1226, -207360), (1227, -1900800), (1250, -38880), (1251, 1178280), (1389, 1140480)]

theorem targetPsiSum {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (fun i => ∑ j, targetPsiTerm H i j) i) =
      Integer.Sparse.eval targetPsiSumProjection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![240, 1440, 1440, 80, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 80, 360, 1440, 240, 80, 1440, 1440, 80, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 240, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 240, 80, 1440, 80, 360, 1440, 240, 1440, 1440, 240] : Fin 55 → ℤ) i : ℝ) * ((fun i => ∑ j, targetPsiTerm H i j) i) =
      Integer.Sparse.eval (![targetPsiRow0Projection, targetPsiRow1Projection, targetPsiRow2Projection, targetPsiRow3Projection, targetPsiRow4Projection, targetPsiRow5Projection, targetPsiRow6Projection, targetPsiRow7Projection, targetPsiRow8Projection, targetPsiRow9Projection, targetPsiRow10Projection, targetPsiRow11Projection, targetPsiRow12Projection, targetPsiRow13Projection, targetPsiRow14Projection, targetPsiRow15Projection, targetPsiRow16Projection, targetPsiRow17Projection, targetPsiRow18Projection, targetPsiRow19Projection, targetPsiRow20Projection, targetPsiRow21Projection, targetPsiRow22Projection, targetPsiRow23Projection, targetPsiRow24Projection, targetPsiRow25Projection, targetPsiRow26Projection, targetPsiRow27Projection, targetPsiRow28Projection, targetPsiRow29Projection, targetPsiRow30Projection, targetPsiRow31Projection, targetPsiRow32Projection, targetPsiRow33Projection, targetPsiRow34Projection, targetPsiRow35Projection, targetPsiRow36Projection, targetPsiRow37Projection, targetPsiRow38Projection, targetPsiRow39Projection, targetPsiRow40Projection, targetPsiRow41Projection, targetPsiRow42Projection, targetPsiRow43Projection, targetPsiRow44Projection, targetPsiRow45Projection, targetPsiRow46Projection, targetPsiRow47Projection, targetPsiRow48Projection, targetPsiRow49Projection, targetPsiRow50Projection, targetPsiRow51Projection, targetPsiRow52Projection, targetPsiRow53Projection, targetPsiRow54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiRow0 hH
    · exact targetPsiRow1 hH
    · exact targetPsiRow2 hH
    · exact targetPsiRow3 hH
    · exact targetPsiRow4 hH
    · exact targetPsiRow5 hH
    · exact targetPsiRow6 hH
    · exact targetPsiRow7 hH
    · exact targetPsiRow8 hH
    · exact targetPsiRow9 hH
    · exact targetPsiRow10 hH
    · exact targetPsiRow11 hH
    · exact targetPsiRow12 hH
    · exact targetPsiRow13 hH
    · exact targetPsiRow14 hH
    · exact targetPsiRow15 hH
    · exact targetPsiRow16 hH
    · exact targetPsiRow17 hH
    · exact targetPsiRow18 hH
    · exact targetPsiRow19 hH
    · exact targetPsiRow20 hH
    · exact targetPsiRow21 hH
    · exact targetPsiRow22 hH
    · exact targetPsiRow23 hH
    · exact targetPsiRow24 hH
    · exact targetPsiRow25 hH
    · exact targetPsiRow26 hH
    · exact targetPsiRow27 hH
    · exact targetPsiRow28 hH
    · exact targetPsiRow29 hH
    · exact targetPsiRow30 hH
    · exact targetPsiRow31 hH
    · exact targetPsiRow32 hH
    · exact targetPsiRow33 hH
    · exact targetPsiRow34 hH
    · exact targetPsiRow35 hH
    · exact targetPsiRow36 hH
    · exact targetPsiRow37 hH
    · exact targetPsiRow38 hH
    · exact targetPsiRow39 hH
    · exact targetPsiRow40 hH
    · exact targetPsiRow41 hH
    · exact targetPsiRow42 hH
    · exact targetPsiRow43 hH
    · exact targetPsiRow44 hH
    · exact targetPsiRow45 hH
    · exact targetPsiRow46 hH
    · exact targetPsiRow47 hH
    · exact targetPsiRow48 hH
    · exact targetPsiRow49 hH
    · exact targetPsiRow50 hH
    · exact targetPsiRow51 hH
    · exact targetPsiRow52 hH
    · exact targetPsiRow53 hH
    · exact targetPsiRow54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (fun i => ∑ j, targetPsiTerm H i j) i) (fun i => ∑ j, targetPsiTerm H i j)
    (-1) 1440 1440 (-1) ![240, 1440, 1440, 80, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 80, 360, 1440, 240, 80, 1440, 1440, 80, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 240, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 240, 80, 1440, 80, 360, 1440, 240, 1440, 1440, 240] ![6, 1, 1, 18, 18, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 18, 144, 4, 18, 4, 1, 6, 18, 1, 1, 18, 18, 4, 4, 1, 4, 4, 1, 4, 18, 6, 1, 1, 18, 1, 4, 4, 1, 4, 18, 6, 18, 1, 18, 4, 1, 6, 1, 1, 6] targetPsiSumProjection ![targetPsiRow0Projection, targetPsiRow1Projection, targetPsiRow2Projection, targetPsiRow3Projection, targetPsiRow4Projection, targetPsiRow5Projection, targetPsiRow6Projection, targetPsiRow7Projection, targetPsiRow8Projection, targetPsiRow9Projection, targetPsiRow10Projection, targetPsiRow11Projection, targetPsiRow12Projection, targetPsiRow13Projection, targetPsiRow14Projection, targetPsiRow15Projection, targetPsiRow16Projection, targetPsiRow17Projection, targetPsiRow18Projection, targetPsiRow19Projection, targetPsiRow20Projection, targetPsiRow21Projection, targetPsiRow22Projection, targetPsiRow23Projection, targetPsiRow24Projection, targetPsiRow25Projection, targetPsiRow26Projection, targetPsiRow27Projection, targetPsiRow28Projection, targetPsiRow29Projection, targetPsiRow30Projection, targetPsiRow31Projection, targetPsiRow32Projection, targetPsiRow33Projection, targetPsiRow34Projection, targetPsiRow35Projection, targetPsiRow36Projection, targetPsiRow37Projection, targetPsiRow38Projection, targetPsiRow39Projection, targetPsiRow40Projection, targetPsiRow41Projection, targetPsiRow42Projection, targetPsiRow43Projection, targetPsiRow44Projection, targetPsiRow45Projection, targetPsiRow46Projection, targetPsiRow47Projection, targetPsiRow48Projection, targetPsiRow49Projection, targetPsiRow50Projection, targetPsiRow51Projection, targetPsiRow52Projection, targetPsiRow53Projection, targetPsiRow54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
