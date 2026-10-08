import D0GraphStates
import D0GraphNodes001
import D0GraphNodes003
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert120 : PairCertificate (Fin 120) := .split 15 cert35 cert119
theorem checked120 : checkPair O U c63 c60 4 cert120 = true := by
  apply checkPair_split_literal O U c63 c60 c6 c64 c65 15 3 cert35 cert119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked35
  · exact checked119
#print axioms checked120
def cert121 : PairCertificate (Fin 120) := .split 11 cert34 cert120
theorem checked121 : checkPair O U c59 c60 4 cert121 = true := by
  apply checkPair_split_literal O U c59 c60 c61 c62 c63 11 3 cert34 cert120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked34
  · exact checked120
#print axioms checked121
def cert122 : PairCertificate (Fin 120) := .first .size
theorem checked122 : checkPair O U c143 c144 3 cert122 = true := by
  decide +kernel
#print axioms checked122
def cert123 : PairCertificate (Fin 120) := .first .size
theorem checked123 : checkPair O U c6 c146 3 cert123 = true := by
  decide +kernel
#print axioms checked123
def colors124 (v : Fin 120) : Nat := if (9903822545737945856486670336 : Nat).testBit v.val then 0 else 0
def cert124 : PairCertificate (Fin 120) := .first (.color 1 colors124)
theorem checked124 : checkPair O U c150 c151 2 cert124 = true := by
  decide +kernel
#print axioms checked124
def colors125 (v : Fin 120) : Nat := if (5192306762055141911572695522213888 : Nat).testBit v.val then 0 else 0
def cert125 : PairCertificate (Fin 120) := .first (.color 1 colors125)
theorem checked125 : checkPair O U c153 c154 2 cert125 = true := by
  decide +kernel
#print axioms checked125
def colors126 (v : Fin 120) : Nat := if (2596782254567527928970463282200576 : Nat).testBit v.val then 0 else if (649037107921316363373626628505600 : Nat).testBit v.val then 1 else 0
def cert126 : CliqueCertificate (Fin 120) := .color 2 colors126
theorem checked126 : checkClique O c162 4 cert126 = true := by
  decide +kernel
#print axioms checked126
def colors127 (v : Fin 120) : Nat := if (20282409641430602291371178983488 : Nat).testBit v.val then 0 else if (5070602400912917605986812821504 : Nat).testBit v.val then 1 else if (40564819207303340847894502572032 : Nat).testBit v.val then 2 else 0
def cert127 : CliqueCertificate (Fin 120) := .color 3 colors127
theorem checked127 : checkClique O c164 4 cert127 = true := by
  decide +kernel
#print axioms checked127
def colors128 (v : Fin 120) : Nat := if (23451690846727190633418479370304 : Nat).testBit v.val then 0 else if (654107710341118963092738948464640 : Nat).testBit v.val then 1 else if (41620852005672694597846573672038400 : Nat).testBit v.val then 2 else if (2637030238496026667799784024178688 : Nat).testBit v.val then 3 else 0
def cert128 : CliqueCertificate (Fin 120) := .color 4 colors128
theorem checked128 : checkClique O c165 5 cert128 = true := by
  decide +kernel
#print axioms checked128
def cert129 : CliqueCertificate (Fin 120) := .split 5 cert127 cert128
theorem checked129 : checkClique O c163 5 cert129 = true := by
  apply checkClique_split_literal O c163 c164 c165 5 4 cert127 cert128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked127
  · exact checked128
#print axioms checked129
def cert130 : CliqueCertificate (Fin 120) := .split 1 cert126 cert129
theorem checked130 : checkClique O c161 5 cert130 = true := by
  apply checkClique_split_literal O c161 c162 c163 1 4 cert126 cert129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked126
  · exact checked129
#print axioms checked130
def cert131 : PairCertificate (Fin 120) := .cross cert130
theorem checked131 : checkPair O U c160 c161 0 cert131 = true := by
  exact checked130
#print axioms checked131
def colors132 (v : Fin 120) : Nat := if (1390691937821810115303642943979554 : Nat).testBit v.val then 0 else if (21233147572712452526134481911872 : Nat).testBit v.val then 1 else if (11033789280749316171165448949202944 : Nat).testBit v.val then 2 else if (41540910402197297762863080171110400 : Nat).testBit v.val then 3 else 0
def cert132 : CliqueCertificate (Fin 120) := .color 4 colors132
theorem checked132 : checkClique O c166 5 cert132 = true := by
  decide +kernel
#print axioms checked132
def cert133 : PairCertificate (Fin 120) := .cross cert132
theorem checked133 : checkPair O U c6 c166 0 cert133 = true := by
  exact checked132
#print axioms checked133
def cert134 : PairCertificate (Fin 120) := .first .size
theorem checked134 : checkPair O U c6 c159 1 cert134 = true := by
  decide +kernel
#print axioms checked134
def cert135 : PairCertificate (Fin 120) := .split 119 cert133 cert134
theorem checked135 : checkPair O U c160 c159 1 cert135 = true := by
  apply checkPair_split_literal O U c160 c159 c6 c166 c6 119 0 cert133 cert134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked133
  · exact checked134
#print axioms checked135
def cert136 : PairCertificate (Fin 120) := .split 93 cert131 cert135
theorem checked136 : checkPair O U c158 c159 1 cert136 = true := by
  apply checkPair_split_literal O U c158 c159 c160 c161 c160 93 0 cert131 cert135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked131
  · exact checked135
#print axioms checked136
def colors137 (v : Fin 120) : Nat := if (1267805342733140082827158880258 : Nat).testBit v.val then 0 else 0
def cert137 : CliqueCertificate (Fin 120) := .color 1 colors137
theorem checked137 : checkClique O c169 4 cert137 = true := by
  decide +kernel
#print axioms checked137
def colors138 (v : Fin 120) : Nat := if (973555660975298627097939884900352 : Nat).testBit v.val then 0 else if (633825904577024508062938955776 : Nat).testBit v.val then 1 else 0
def cert138 : CliqueCertificate (Fin 120) := .color 2 colors138
theorem checked138 : checkClique O c171 4 cert138 = true := by
  decide +kernel
#print axioms checked138
def colors139 (v : Fin 120) : Nat := if (20282409641430602291302593724480 : Nat).testBit v.val then 0 else 0
def cert139 : CliqueCertificate (Fin 120) := .color 1 colors139
theorem checked139 : checkClique O c173 4 cert139 = true := by
  decide +kernel
#print axioms checked139
def colors140 (v : Fin 120) : Nat := if (79537648114453559411105366016 : Nat).testBit v.val then 0 else 0
def cert140 : CliqueCertificate (Fin 120) := .color 1 colors140
theorem checked140 : checkClique O c175 4 cert140 = true := by
  decide +kernel
#print axioms checked140
def colors141 (v : Fin 120) : Nat := if (633825337893046845180498411520 : Nat).testBit v.val then 0 else 0
def cert141 : CliqueCertificate (Fin 120) := .color 1 colors141
theorem checked141 : checkClique O c177 4 cert141 = true := by
  decide +kernel
#print axioms checked141
def colors142 (v : Fin 120) : Nat := if (232718220275824920813895680 : Nat).testBit v.val then 0 else 0
def cert142 : CliqueCertificate (Fin 120) := .color 1 colors142
theorem checked142 : checkClique O c179 4 cert142 = true := by
  decide +kernel
#print axioms checked142
def colors143 (v : Fin 120) : Nat := if (316912650075648209635961208832 : Nat).testBit v.val then 0 else if (41538374868316399960106927795470336 : Nat).testBit v.val then 1 else 0
def cert143 : CliqueCertificate (Fin 120) := .color 2 colors143
theorem checked143 : checkClique O c181 4 cert143 = true := by
  decide +kernel
#print axioms checked143
def colors144 (v : Fin 120) : Nat := if (81129639642422039299490874130432 : Nat).testBit v.val then 0 else if (633825300114114700748351602688 : Nat).testBit v.val then 1 else 0
def cert144 : CliqueCertificate (Fin 120) := .color 2 colors144
theorem checked144 : checkClique O c183 4 cert144 = true := by
  decide +kernel
#print axioms checked144
def colors145 (v : Fin 120) : Nat := if (316990021309656801838022787072 : Nat).testBit v.val then 0 else if (41538374868278621028243970633760768 : Nat).testBit v.val then 1 else 0
def cert145 : CliqueCertificate (Fin 120) := .color 2 colors145
theorem checked145 : checkClique O c185 4 cert145 = true := by
  decide +kernel
#print axioms checked145
def colors146 (v : Fin 120) : Nat := if (973555660975280324469067270324224 : Nat).testBit v.val then 0 else if (81209176686091957738066988236800 : Nat).testBit v.val then 1 else if (41539642520125554009404528650092544 : Nat).testBit v.val then 2 else if (23768680868036667286864728686592 : Nat).testBit v.val then 3 else 0
def cert146 : CliqueCertificate (Fin 120) := .color 4 colors146
theorem checked146 : checkClique O c186 5 cert146 = true := by
  decide +kernel
#print axioms checked146
def cert147 : CliqueCertificate (Fin 120) := .split 23 cert145 cert146
theorem checked147 : checkClique O c184 5 cert147 = true := by
  apply checkClique_split_literal O c184 c185 c186 23 4 cert145 cert146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked145
  · exact checked146
#print axioms checked147
def cert148 : CliqueCertificate (Fin 120) := .split 22 cert144 cert147
theorem checked148 : checkClique O c182 5 cert148 = true := by
  apply checkClique_split_literal O c182 c183 c184 22 4 cert144 cert147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked144
  · exact checked147
#print axioms checked148
def cert149 : CliqueCertificate (Fin 120) := .split 18 cert143 cert148
theorem checked149 : checkClique O c180 5 cert149 = true := by
  apply checkClique_split_literal O c180 c181 c182 18 4 cert143 cert148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked143
  · exact checked148
#print axioms checked149
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
