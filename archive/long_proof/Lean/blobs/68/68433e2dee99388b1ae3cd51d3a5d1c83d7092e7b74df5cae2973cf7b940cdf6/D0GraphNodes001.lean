import D0GraphStates
import D0GraphNodes000
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert30 : PairCertificate (Fin 120) := .split 37 cert28 cert29
theorem checked30 : checkPair O U c51 c46 4 cert30 = true := by
  apply checkPair_split_literal O U c51 c46 c52 c53 c54 37 3 cert28 cert29
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked28
  · exact checked29
#print axioms checked30
def cert31 : PairCertificate (Fin 120) := .split 24 cert27 cert30
theorem checked31 : checkPair O U c48 c46 4 cert31 = true := by
  apply checkPair_split_literal O U c48 c46 c49 c50 c51 24 3 cert27 cert30
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked27
  · exact checked30
#print axioms checked31
def cert32 : PairCertificate (Fin 120) := .split 15 cert26 cert31
theorem checked32 : checkPair O U c45 c46 4 cert32 = true := by
  apply checkPair_split_literal O U c45 c46 c6 c47 c48 15 3 cert26 cert31
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked26
  · exact checked31
#print axioms checked32
def colors33 (v : Fin 120) : Nat := if (166153499473419076751711412940702720 : Nat).testBit v.val then 0 else if (80485445366668055809743650816 : Nat).testBit v.val then 1 else if (665263035002192659991443174240288768 : Nat).testBit v.val then 2 else 0
def cert33 : PairCertificate (Fin 120) := .first (.color 3 colors33)
theorem checked33 : checkPair O U c56 c57 4 cert33 = true := by
  decide +kernel
#print axioms checked33
def cert34 : PairCertificate (Fin 120) := .first .size
theorem checked34 : checkPair O U c61 c62 3 cert34 = true := by
  decide +kernel
#print axioms checked34
def cert35 : PairCertificate (Fin 120) := .first .size
theorem checked35 : checkPair O U c6 c64 3 cert35 = true := by
  decide +kernel
#print axioms checked35
def colors36 (v : Fin 120) : Nat := if (332306999565198987868641902519648256 : Nat).testBit v.val then 0 else 0
def cert36 : PairCertificate (Fin 120) := .first (.color 1 colors36)
theorem checked36 : checkPair O U c68 c69 2 cert36 = true := by
  decide +kernel
#print axioms checked36
def colors37 (v : Fin 120) : Nat := if (619045577506416051772981248 : Nat).testBit v.val then 0 else 0
def cert37 : PairCertificate (Fin 120) := .first (.color 1 colors37)
theorem checked37 : checkPair O U c71 c72 2 cert37 = true := by
  decide +kernel
#print axioms checked37
def colors38 (v : Fin 120) : Nat := if (324518553663149093268774444859400 : Nat).testBit v.val then 0 else if (5070602400912917605986812821504 : Nat).testBit v.val then 1 else if (2596148429267413814265248164610048 : Nat).testBit v.val then 2 else 0
def cert38 : CliqueCertificate (Fin 120) := .color 3 colors38
theorem checked38 : checkClique O c80 4 cert38 = true := by
  decide +kernel
#print axioms checked38
def colors39 (v : Fin 120) : Nat := if (713082476849202710946706096152 : Nat).testBit v.val then 0 else if (491848433049114332890241869807616 : Nat).testBit v.val then 1 else if (43426936582853506528529946247168 : Nat).testBit v.val then 2 else if (44216920625246495981274638097317888 : Nat).testBit v.val then 3 else 0
def cert39 : CliqueCertificate (Fin 120) := .color 4 colors39
theorem checked39 : checkClique O c81 5 cert39 = true := by
  decide +kernel
#print axioms checked39
def cert40 : CliqueCertificate (Fin 120) := .split 2 cert38 cert39
theorem checked40 : checkClique O c79 5 cert40 = true := by
  apply checkClique_split_literal O c79 c80 c81 2 4 cert38 cert39
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked38
  · exact checked39
#print axioms checked40
def cert41 : PairCertificate (Fin 120) := .cross cert40
theorem checked41 : checkPair O U c78 c79 0 cert41 = true := by
  exact checked40
#print axioms checked41
def colors42 (v : Fin 120) : Nat := if (1380709197807491762636249032294420 : Nat).testBit v.val then 0 else if (327370767518385264134838068183048 : Nat).testBit v.val then 1 else if (664786398374093698016989951421317120 : Nat).testBit v.val then 2 else if (41539008751758290211898748018098176 : Nat).testBit v.val then 3 else 0
def cert42 : CliqueCertificate (Fin 120) := .color 4 colors42
theorem checked42 : checkClique O c82 5 cert42 = true := by
  decide +kernel
#print axioms checked42
def cert43 : PairCertificate (Fin 120) := .cross cert42
theorem checked43 : checkPair O U c6 c82 0 cert43 = true := by
  exact checked42
#print axioms checked43
def cert44 : PairCertificate (Fin 120) := .first .size
theorem checked44 : checkPair O U c6 c77 1 cert44 = true := by
  decide +kernel
#print axioms checked44
def cert45 : PairCertificate (Fin 120) := .split 113 cert43 cert44
theorem checked45 : checkPair O U c78 c77 1 cert45 = true := by
  apply checkPair_split_literal O U c78 c77 c6 c82 c6 113 0 cert43 cert44
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked43
  · exact checked44
#print axioms checked45
def cert46 : PairCertificate (Fin 120) := .split 89 cert41 cert45
theorem checked46 : checkPair O U c76 c77 1 cert46 = true := by
  apply checkPair_split_literal O U c76 c77 c78 c79 c78 89 0 cert41 cert45
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked41
  · exact checked45
#print axioms checked46
def colors47 (v : Fin 120) : Nat := if (324518553663149093268224756154376 : Nat).testBit v.val then 0 else 0
def cert47 : CliqueCertificate (Fin 120) := .color 1 colors47
theorem checked47 : checkClique O c85 4 cert47 = true := by
  decide +kernel
#print axioms checked47
def colors48 (v : Fin 120) : Nat := if (1307264681633511983910332940288 : Nat).testBit v.val then 0 else 0
def cert48 : CliqueCertificate (Fin 120) := .color 1 colors48
theorem checked48 : checkClique O c87 4 cert48 = true := by
  decide +kernel
#print axioms checked48
def colors49 (v : Fin 120) : Nat := if (182541686432901927305871838150784 : Nat).testBit v.val then 0 else if (2535301351572186254822053249024 : Nat).testBit v.val then 1 else 0
def cert49 : CliqueCertificate (Fin 120) := .color 2 colors49
theorem checked49 : checkClique O c89 4 cert49 = true := by
  decide +kernel
#print axioms checked49
def colors50 (v : Fin 120) : Nat := if (79247505327378171935225544704 : Nat).testBit v.val then 0 else 0
def cert50 : CliqueCertificate (Fin 120) := .color 1 colors50
theorem checked50 : checkClique O c91 4 cert50 = true := by
  decide +kernel
#print axioms checked50
def colors51 (v : Fin 120) : Nat := if (2535301205178825426600540241920 : Nat).testBit v.val then 0 else 0
def cert51 : CliqueCertificate (Fin 120) := .color 1 colors51
theorem checked51 : checkClique O c93 4 cert51 = true := by
  decide +kernel
#print axioms checked51
def colors52 (v : Fin 120) : Nat := if (58179555068954304984383488 : Nat).testBit v.val then 0 else 0
def cert52 : CliqueCertificate (Fin 120) := .color 1 colors52
theorem checked52 : checkClique O c95 4 cert52 = true := by
  decide +kernel
#print axioms checked52
def colors53 (v : Fin 120) : Nat := if (81169262167418521195238389972992 : Nat).testBit v.val then 0 else if (41540276402207439895709877231157248 : Nat).testBit v.val then 1 else if (2614529377137822589195886002176 : Nat).testBit v.val then 2 else if (507377152892464545400884104790016 : Nat).testBit v.val then 3 else 0
def cert53 : CliqueCertificate (Fin 120) := .color 4 colors53
theorem checked53 : checkClique O c96 5 cert53 = true := by
  decide +kernel
#print axioms checked53
def cert54 : CliqueCertificate (Fin 120) := .split 17 cert52 cert53
theorem checked54 : checkClique O c94 5 cert54 = true := by
  apply checkClique_split_literal O c94 c95 c96 17 4 cert52 cert53
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked52
  · exact checked53
#print axioms checked54
def cert55 : CliqueCertificate (Fin 120) := .split 14 cert51 cert54
theorem checked55 : checkClique O c92 5 cert55 = true := by
  apply checkClique_split_literal O c92 c93 c94 14 4 cert51 cert54
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked51
  · exact checked54
#print axioms checked55
def cert56 : CliqueCertificate (Fin 120) := .split 7 cert50 cert55
theorem checked56 : checkClique O c90 5 cert56 = true := by
  apply checkClique_split_literal O c90 c91 c92 7 4 cert50 cert55
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked50
  · exact checked55
#print axioms checked56
def cert57 : CliqueCertificate (Fin 120) := .split 4 cert49 cert56
theorem checked57 : checkClique O c88 5 cert57 = true := by
  apply checkClique_split_literal O c88 c89 c90 4 4 cert49 cert56
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked49
  · exact checked56
#print axioms checked57
def cert58 : CliqueCertificate (Fin 120) := .split 3 cert48 cert57
theorem checked58 : checkClique O c86 5 cert58 = true := by
  apply checkClique_split_literal O c86 c87 c88 3 4 cert48 cert57
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked48
  · exact checked57
#print axioms checked58
def cert59 : CliqueCertificate (Fin 120) := .split 2 cert47 cert58
theorem checked59 : checkClique O c84 5 cert59 = true := by
  apply checkClique_split_literal O c84 c85 c86 2 4 cert47 cert58
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked47
  · exact checked58
#print axioms checked59
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
