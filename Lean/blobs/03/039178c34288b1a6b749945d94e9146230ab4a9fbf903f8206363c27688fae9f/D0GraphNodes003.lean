import D0GraphStates
import D0GraphNodes001
import D0GraphNodes002
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors90 (v : Fin 120) : Nat := if (332306999720017050643040351205457920 : Nat).testBit v.val then 0 else if (93461343453626897313548933925961728 : Nat).testBit v.val then 1 else 0
def cert90 : PairCertificate (Fin 120) := .first (.color 2 colors90)
theorem checked90 : checkPair O U c119 c67 3 cert90 = true := by
  decide +kernel
#print axioms checked90
def cert91 : PairCertificate (Fin 120) := .split 53 cert89 cert90
theorem checked91 : checkPair O U c97 c67 3 cert91 = true := by
  apply checkPair_split_literal O U c97 c67 c76 c98 c119 53 2 cert89 cert90
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked89
  · exact checked90
#print axioms checked91
def cert92 : PairCertificate (Fin 120) := .split 45 cert65 cert91
theorem checked92 : checkPair O U c73 c67 3 cert92 = true := by
  apply checkPair_split_literal O U c73 c67 c74 c75 c97 45 2 cert65 cert91
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked65
  · exact checked91
#print axioms checked92
def cert93 : PairCertificate (Fin 120) := .split 43 cert37 cert92
theorem checked93 : checkPair O U c70 c67 3 cert93 = true := by
  apply checkPair_split_literal O U c70 c67 c71 c72 c73 43 2 cert37 cert92
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked37
  · exact checked92
#print axioms checked93
def cert94 : PairCertificate (Fin 120) := .split 37 cert36 cert93
theorem checked94 : checkPair O U c66 c67 3 cert94 = true := by
  apply checkPair_split_literal O U c66 c67 c68 c69 c70 37 2 cert36 cert93
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked36
  · exact checked93
#print axioms checked94
def cert95 : PairCertificate (Fin 120) := .first .size
theorem checked95 : checkPair O U c6 c121 3 cert95 = true := by
  decide +kernel
#print axioms checked95
def cert96 : PairCertificate (Fin 120) := .first .size
theorem checked96 : checkPair O U c68 c123 3 cert96 = true := by
  decide +kernel
#print axioms checked96
def cert97 : PairCertificate (Fin 120) := .first .size
theorem checked97 : checkPair O U c71 c125 3 cert97 = true := by
  decide +kernel
#print axioms checked97
def cert98 : PairCertificate (Fin 120) := .first .size
theorem checked98 : checkPair O U c61 c127 3 cert98 = true := by
  decide +kernel
#print axioms checked98
def colors99 (v : Fin 120) : Nat := if (324518553663444243425212445491208 : Nat).testBit v.val then 0 else if (77371252455336267181195264 : Nat).testBit v.val then 1 else 0
def cert99 : CliqueCertificate (Fin 120) := .color 2 colors99
theorem checked99 : checkClique O c133 4 cert99 = true := by
  decide +kernel
#print axioms checked99
def colors100 (v : Fin 120) : Nat := if (5193564509135056438896619841126400 : Nat).testBit v.val then 0 else 0
def cert100 : CliqueCertificate (Fin 120) := .color 1 colors100
theorem checked100 : checkClique O c135 4 cert100 = true := by
  decide +kernel
#print axioms checked100
def colors101 (v : Fin 120) : Nat := if (2535301200456458805201019600896 : Nat).testBit v.val then 0 else if (162259276980329090843406657126400 : Nat).testBit v.val then 1 else 0
def cert101 : CliqueCertificate (Fin 120) := .color 2 colors101
theorem checked101 : checkClique O c137 4 cert101 = true := by
  decide +kernel
#print axioms checked101
def colors102 (v : Fin 120) : Nat := if (5193569480389147033389633315800064 : Nat).testBit v.val then 0 else if (162338514677301358404216597512192 : Nat).testBit v.val then 1 else if (328004708866228476779427253977088 : Nat).testBit v.val then 2 else if (41619504506693827229122155199332352 : Nat).testBit v.val then 3 else 0
def cert102 : CliqueCertificate (Fin 120) := .color 4 colors102
theorem checked102 : checkClique O c138 5 cert102 = true := by
  decide +kernel
#print axioms checked102
def cert103 : CliqueCertificate (Fin 120) := .split 4 cert101 cert102
theorem checked103 : checkClique O c136 5 cert103 = true := by
  apply checkClique_split_literal O c136 c137 c138 4 4 cert101 cert102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked101
  · exact checked102
#print axioms checked103
def cert104 : CliqueCertificate (Fin 120) := .split 3 cert100 cert103
theorem checked104 : checkClique O c134 5 cert104 = true := by
  apply checkClique_split_literal O c134 c135 c136 3 4 cert100 cert103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked100
  · exact checked103
#print axioms checked104
def cert105 : CliqueCertificate (Fin 120) := .split 2 cert99 cert104
theorem checked105 : checkClique O c132 5 cert105 = true := by
  apply checkClique_split_literal O c132 c133 c134 2 4 cert99 cert104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked99
  · exact checked104
#print axioms checked105
def cert106 : PairCertificate (Fin 120) := .cross cert105
theorem checked106 : checkPair O U c6 c132 0 cert106 = true := by
  exact checked105
#print axioms checked106
def cert107 : PairCertificate (Fin 120) := .first .size
theorem checked107 : checkPair O U c6 c131 1 cert107 = true := by
  decide +kernel
#print axioms checked107
def cert108 : PairCertificate (Fin 120) := .split 113 cert106 cert107
theorem checked108 : checkPair O U c78 c131 1 cert108 = true := by
  apply checkPair_split_literal O U c78 c131 c6 c132 c6 113 0 cert106 cert107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked106
  · exact checked107
#print axioms checked108
def cert109 : PairCertificate (Fin 120) := .first .size
theorem checked109 : checkPair O U c78 c130 2 cert109 = true := by
  decide +kernel
#print axioms checked109
def cert110 : PairCertificate (Fin 120) := .split 89 cert108 cert109
theorem checked110 : checkPair O U c76 c130 2 cert110 = true := by
  apply checkPair_split_literal O U c76 c130 c78 c131 c78 89 1 cert108 cert109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked108
  · exact checked109
#print axioms checked110
def cert111 : PairCertificate (Fin 120) := .first .size
theorem checked111 : checkPair O U c76 c129 3 cert111 = true := by
  decide +kernel
#print axioms checked111
def cert112 : PairCertificate (Fin 120) := .split 53 cert110 cert111
theorem checked112 : checkPair O U c74 c129 3 cert112 = true := by
  apply checkPair_split_literal O U c74 c129 c76 c130 c76 53 2 cert110 cert111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked110
  · exact checked111
#print axioms checked112
def colors113 (v : Fin 120) : Nat := if (498460577802327571162236728765317120 : Nat).testBit v.val then 0 else if (618970019642690137449562112 : Nat).testBit v.val then 1 else if (93461343453626897313548933925961728 : Nat).testBit v.val then 2 else 0
def cert113 : PairCertificate (Fin 120) := .first (.color 3 colors113)
theorem checked113 : checkPair O U c139 c60 4 cert113 = true := by
  decide +kernel
#print axioms checked113
def cert114 : PairCertificate (Fin 120) := .split 45 cert112 cert113
theorem checked114 : checkPair O U c128 c60 4 cert114 = true := by
  apply checkPair_split_literal O U c128 c60 c74 c129 c139 45 3 cert112 cert113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked112
  · exact checked113
#print axioms checked114
def cert115 : PairCertificate (Fin 120) := .split 44 cert98 cert114
theorem checked115 : checkPair O U c126 c60 4 cert115 = true := by
  apply checkPair_split_literal O U c126 c60 c61 c127 c128 44 3 cert98 cert114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked98
  · exact checked114
#print axioms checked115
def cert116 : PairCertificate (Fin 120) := .split 43 cert97 cert115
theorem checked116 : checkPair O U c124 c60 4 cert116 = true := by
  apply checkPair_split_literal O U c124 c60 c71 c125 c126 43 3 cert97 cert115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked97
  · exact checked115
#print axioms checked116
def cert117 : PairCertificate (Fin 120) := .split 37 cert96 cert116
theorem checked117 : checkPair O U c122 c60 4 cert117 = true := by
  apply checkPair_split_literal O U c122 c60 c68 c123 c124 37 3 cert96 cert116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked96
  · exact checked116
#print axioms checked117
def cert118 : PairCertificate (Fin 120) := .split 18 cert95 cert117
theorem checked118 : checkPair O U c120 c60 4 cert118 = true := by
  apply checkPair_split_literal O U c120 c60 c6 c121 c122 18 3 cert95 cert117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked95
  · exact checked117
#print axioms checked118
def cert119 : PairCertificate (Fin 120) := .split 16 cert94 cert118
theorem checked119 : checkPair O U c65 c60 4 cert119 = true := by
  apply checkPair_split_literal O U c65 c60 c66 c67 c120 16 3 cert94 cert118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked94
  · exact checked118
#print axioms checked119
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
