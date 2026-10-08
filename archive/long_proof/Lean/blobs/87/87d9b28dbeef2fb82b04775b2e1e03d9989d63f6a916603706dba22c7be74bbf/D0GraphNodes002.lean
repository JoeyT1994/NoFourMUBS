import D0GraphStates
import D0GraphNodes001
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert60 : PairCertificate (Fin 120) := .cross cert59
theorem checked60 : checkPair O U c6 c84 0 cert60 = true := by
  exact checked59
#print axioms checked60
def cert61 : PairCertificate (Fin 120) := .first .size
theorem checked61 : checkPair O U c6 c83 1 cert61 = true := by
  decide +kernel
#print axioms checked61
def cert62 : PairCertificate (Fin 120) := .split 113 cert60 cert61
theorem checked62 : checkPair O U c78 c83 1 cert62 = true := by
  apply checkPair_split_literal O U c78 c83 c6 c84 c6 113 0 cert60 cert61
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked60
  · exact checked61
#print axioms checked62
def cert63 : PairCertificate (Fin 120) := .first .size
theorem checked63 : checkPair O U c78 c75 2 cert63 = true := by
  decide +kernel
#print axioms checked63
def cert64 : PairCertificate (Fin 120) := .split 89 cert62 cert63
theorem checked64 : checkPair O U c76 c75 2 cert64 = true := by
  apply checkPair_split_literal O U c76 c75 c78 c83 c78 89 1 cert62 cert63
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked62
  · exact checked63
#print axioms checked64
def cert65 : PairCertificate (Fin 120) := .split 53 cert46 cert64
theorem checked65 : checkPair O U c74 c75 2 cert65 = true := by
  apply checkPair_split_literal O U c74 c75 c76 c77 c76 53 1 cert46 cert64
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked46
  · exact checked64
#print axioms checked65
def colors66 (v : Fin 120) : Nat := if (324518553663149093268241868915208 : Nat).testBit v.val then 0 else 0
def cert66 : CliqueCertificate (Fin 120) := .color 1 colors66
theorem checked66 : checkClique O c101 4 cert66 = true := by
  decide +kernel
#print axioms checked66
def colors67 (v : Fin 120) : Nat := if (1267650600228806214367605424128 : Nat).testBit v.val then 0 else 0
def cert67 : CliqueCertificate (Fin 120) := .color 1 colors67
theorem checked67 : checkClique O c103 4 cert67 = true := by
  decide +kernel
#print axioms checked67
def colors68 (v : Fin 120) : Nat := if (6635724472832 : Nat).testBit v.val then 0 else if (2535301351572186254822053249024 : Nat).testBit v.val then 1 else if (162259276829213363391578010288128 : Nat).testBit v.val then 2 else 0
def cert68 : CliqueCertificate (Fin 120) := .color 3 colors68
theorem checked68 : checkClique O c105 4 cert68 = true := by
  decide +kernel
#print axioms checked68
def colors69 (v : Fin 120) : Nat := if (1267669943041343587682105688064 : Nat).testBit v.val then 0 else 0
def cert69 : CliqueCertificate (Fin 120) := .color 1 colors69
theorem checked69 : checkClique O c107 4 cert69 = true := by
  decide +kernel
#print axioms checked69
def colors70 (v : Fin 120) : Nat := if (1135814937813938276777171286753280 : Nat).testBit v.val then 0 else 0
def cert70 : CliqueCertificate (Fin 120) := .color 1 colors70
theorem checked70 : checkClique O c109 4 cert70 = true := by
  decide +kernel
#print axioms checked70
def colors71 (v : Fin 120) : Nat := if (316951335683286144408210112512 : Nat).testBit v.val then 0 else if (41538374868278621316474346785472512 : Nat).testBit v.val then 1 else 0
def cert71 : CliqueCertificate (Fin 120) := .color 2 colors71
theorem checked71 : checkClique O c111 4 cert71 = true := by
  decide +kernel
#print axioms checked71
def colors72 (v : Fin 120) : Nat := if (316912650057345580750327513088 : Nat).testBit v.val then 0 else if (41538374868283343394726840278974464 : Nat).testBit v.val then 1 else 0
def cert72 : CliqueCertificate (Fin 120) := .color 2 colors72
theorem checked72 : checkClique O c113 4 cert72 = true := by
  decide +kernel
#print axioms checked72
def colors73 (v : Fin 120) : Nat := if (151116015968387059417088 : Nat).testBit v.val then 0 else 0
def cert73 : CliqueCertificate (Fin 120) := .color 1 colors73
theorem checked73 : checkClique O c115 4 cert73 = true := by
  decide +kernel
#print axioms checked73
def cert74 : CliqueCertificate (Fin 120) := .size
theorem checked74 : checkClique O c117 4 cert74 = true := by
  decide +kernel
#print axioms checked74
def colors75 (v : Fin 120) : Nat := if (41538377363501513002482986871947264 : Nat).testBit v.val then 0 else if (731434406017262597560636008300544 : Nat).testBit v.val then 1 else if (328004631645796312757234191826944 : Nat).testBit v.val then 2 else if (162338507409579266958429903650816 : Nat).testBit v.val then 3 else 0
def cert75 : CliqueCertificate (Fin 120) := .color 4 colors75
theorem checked75 : checkClique O c118 5 cert75 = true := by
  decide +kernel
#print axioms checked75
def cert76 : CliqueCertificate (Fin 120) := .split 32 cert74 cert75
theorem checked76 : checkClique O c116 5 cert76 = true := by
  apply checkClique_split_literal O c116 c117 c118 32 4 cert74 cert75
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked74
  · exact checked75
#print axioms checked76
def cert77 : CliqueCertificate (Fin 120) := .split 29 cert73 cert76
theorem checked77 : checkClique O c114 5 cert77 = true := by
  apply checkClique_split_literal O c114 c115 c116 29 4 cert73 cert76
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked73
  · exact checked76
#print axioms checked77
def cert78 : CliqueCertificate (Fin 120) := .split 23 cert72 cert77
theorem checked78 : checkClique O c112 5 cert78 = true := by
  apply checkClique_split_literal O c112 c113 c114 23 4 cert72 cert77
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked72
  · exact checked77
#print axioms checked78
def cert79 : CliqueCertificate (Fin 120) := .split 18 cert71 cert78
theorem checked79 : checkClique O c110 5 cert79 = true := by
  apply checkClique_split_literal O c110 c111 c112 18 4 cert71 cert78
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked71
  · exact checked78
#print axioms checked79
def cert80 : CliqueCertificate (Fin 120) := .split 13 cert70 cert79
theorem checked80 : checkClique O c108 5 cert80 = true := by
  apply checkClique_split_literal O c108 c109 c110 13 4 cert70 cert79
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked70
  · exact checked79
#print axioms checked80
def cert81 : CliqueCertificate (Fin 120) := .split 9 cert69 cert80
theorem checked81 : checkClique O c106 5 cert81 = true := by
  apply checkClique_split_literal O c106 c107 c108 9 4 cert69 cert80
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked69
  · exact checked80
#print axioms checked81
def cert82 : CliqueCertificate (Fin 120) := .split 4 cert68 cert81
theorem checked82 : checkClique O c104 5 cert82 = true := by
  apply checkClique_split_literal O c104 c105 c106 4 4 cert68 cert81
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked68
  · exact checked81
#print axioms checked82
def cert83 : CliqueCertificate (Fin 120) := .split 3 cert67 cert82
theorem checked83 : checkClique O c102 5 cert83 = true := by
  apply checkClique_split_literal O c102 c103 c104 3 4 cert67 cert82
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked67
  · exact checked82
#print axioms checked83
def cert84 : CliqueCertificate (Fin 120) := .split 2 cert66 cert83
theorem checked84 : checkClique O c100 5 cert84 = true := by
  apply checkClique_split_literal O c100 c101 c102 2 4 cert66 cert83
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked66
  · exact checked83
#print axioms checked84
def cert85 : PairCertificate (Fin 120) := .cross cert84
theorem checked85 : checkPair O U c6 c100 0 cert85 = true := by
  exact checked84
#print axioms checked85
def cert86 : PairCertificate (Fin 120) := .first .size
theorem checked86 : checkPair O U c6 c99 1 cert86 = true := by
  decide +kernel
#print axioms checked86
def cert87 : PairCertificate (Fin 120) := .split 113 cert85 cert86
theorem checked87 : checkPair O U c78 c99 1 cert87 = true := by
  apply checkPair_split_literal O U c78 c99 c6 c100 c6 113 0 cert85 cert86
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked85
  · exact checked86
#print axioms checked87
def cert88 : PairCertificate (Fin 120) := .first .size
theorem checked88 : checkPair O U c78 c98 2 cert88 = true := by
  decide +kernel
#print axioms checked88
def cert89 : PairCertificate (Fin 120) := .split 89 cert87 cert88
theorem checked89 : checkPair O U c76 c98 2 cert89 = true := by
  apply checkPair_split_literal O U c76 c98 c78 c99 c78 89 1 cert87 cert88
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked87
  · exact checked88
#print axioms checked89
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
