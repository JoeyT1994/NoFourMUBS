import D0GraphStates
import D0GraphNodes004
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert150 : CliqueCertificate (Fin 120) := .split 16 cert142 cert149
theorem checked150 : checkClique O c178 5 cert150 = true := by
  apply checkClique_split_literal O c178 c179 c180 16 4 cert142 cert149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked142
  · exact checked149
#print axioms checked150
def cert151 : CliqueCertificate (Fin 120) := .split 15 cert141 cert150
theorem checked151 : checkClique O c176 5 cert151 = true := by
  apply checkClique_split_literal O c176 c177 c178 15 4 cert141 cert150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked141
  · exact checked150
#print axioms checked151
def cert152 : CliqueCertificate (Fin 120) := .split 6 cert140 cert151
theorem checked152 : checkClique O c174 5 cert152 = true := by
  apply checkClique_split_literal O c174 c175 c176 6 4 cert140 cert151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked140
  · exact checked151
#print axioms checked152
def cert153 : CliqueCertificate (Fin 120) := .split 5 cert139 cert152
theorem checked153 : checkClique O c172 5 cert153 = true := by
  apply checkClique_split_literal O c172 c173 c174 5 4 cert139 cert152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked139
  · exact checked152
#print axioms checked153
def cert154 : CliqueCertificate (Fin 120) := .split 1 cert138 cert153
theorem checked154 : checkClique O c170 5 cert154 = true := by
  apply checkClique_split_literal O c170 c171 c172 1 4 cert138 cert153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked138
  · exact checked153
#print axioms checked154
def cert155 : CliqueCertificate (Fin 120) := .split 0 cert137 cert154
theorem checked155 : checkClique O c168 5 cert155 = true := by
  apply checkClique_split_literal O c168 c169 c170 0 4 cert137 cert154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked137
  · exact checked154
#print axioms checked155
def cert156 : PairCertificate (Fin 120) := .cross cert155
theorem checked156 : checkPair O U c6 c168 0 cert156 = true := by
  exact checked155
#print axioms checked156
def cert157 : PairCertificate (Fin 120) := .first .size
theorem checked157 : checkPair O U c6 c167 1 cert157 = true := by
  decide +kernel
#print axioms checked157
def cert158 : PairCertificate (Fin 120) := .split 119 cert156 cert157
theorem checked158 : checkPair O U c160 c167 1 cert158 = true := by
  apply checkPair_split_literal O U c160 c167 c6 c168 c6 119 0 cert156 cert157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked156
  · exact checked157
#print axioms checked158
def cert159 : PairCertificate (Fin 120) := .first .size
theorem checked159 : checkPair O U c160 c157 2 cert159 = true := by
  decide +kernel
#print axioms checked159
def cert160 : PairCertificate (Fin 120) := .split 93 cert158 cert159
theorem checked160 : checkPair O U c158 c157 2 cert160 = true := by
  apply checkPair_split_literal O U c158 c157 c160 c167 c160 93 1 cert158 cert159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked158
  · exact checked159
#print axioms checked160
def cert161 : PairCertificate (Fin 120) := .split 52 cert136 cert160
theorem checked161 : checkPair O U c156 c157 2 cert161 = true := by
  apply checkPair_split_literal O U c156 c157 c158 c159 c158 52 1 cert136 cert160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked136
  · exact checked160
#print axioms checked161
def colors162 (v : Fin 120) : Nat := if (6616397119744 : Nat).testBit v.val then 0 else if (633825904577024508062938955776 : Nat).testBit v.val then 1 else if (649037107316853453566312041152512 : Nat).testBit v.val then 2 else 0
def cert162 : CliqueCertificate (Fin 120) := .color 3 colors162
theorem checked162 : checkClique O c191 4 cert162 = true := by
  decide +kernel
#print axioms checked162
def colors163 (v : Fin 120) : Nat := if (20282409641430602291336819245376 : Nat).testBit v.val then 0 else 0
def cert163 : CliqueCertificate (Fin 120) := .color 1 colors163
theorem checked163 : checkClique O c193 4 cert163 = true := by
  decide +kernel
#print axioms checked163
def colors164 (v : Fin 120) : Nat := if (79228162514337107671116677120 : Nat).testBit v.val then 0 else 0
def cert164 : CliqueCertificate (Fin 120) := .color 1 colors164
theorem checked164 : checkClique O c195 4 cert164 = true := by
  decide +kernel
#print axioms checked164
def colors165 (v : Fin 120) : Nat := if (79382905019175722611441401856 : Nat).testBit v.val then 0 else 0
def cert165 : CliqueCertificate (Fin 120) := .color 1 colors165
theorem checked165 : checkClique O c197 4 cert165 = true := by
  decide +kernel
#print axioms checked165
def colors166 (v : Fin 120) : Nat := if (831578793768607953876300205129728 : Nat).testBit v.val then 0 else 0
def cert166 : CliqueCertificate (Fin 120) := .color 1 colors166
theorem checked166 : checkClique O c199 4 cert166 = true := by
  decide +kernel
#print axioms checked166
def colors167 (v : Fin 120) : Nat := if (316912650057201465562251657216 : Nat).testBit v.val then 0 else if (41538374868316399960106927795470336 : Nat).testBit v.val then 1 else 0
def cert167 : CliqueCertificate (Fin 120) := .color 2 colors167
theorem checked167 : checkClique O c201 4 cert167 = true := by
  decide +kernel
#print axioms checked167
def colors168 (v : Fin 120) : Nat := if (316990021309514938441439117312 : Nat).testBit v.val then 0 else if (41538374868278621172359158709616640 : Nat).testBit v.val then 1 else 0
def cert168 : CliqueCertificate (Fin 120) := .color 2 colors168
theorem checked168 : checkClique O c203 4 cert168 = true := by
  decide +kernel
#print axioms checked168
def colors169 (v : Fin 120) : Nat := if (604463054074252447711232 : Nat).testBit v.val then 0 else 0
def cert169 : CliqueCertificate (Fin 120) := .color 1 colors169
theorem checked169 : checkClique O c205 4 cert169 = true := by
  decide +kernel
#print axioms checked169
def colors170 (v : Fin 120) : Nat := if (41558657277901162308861938427232256 : Nat).testBit v.val then 0 else if (892426028605302671599203094888448 : Nat).testBit v.val then 1 else if (1346878800521425610843501887488 : Nat).testBit v.val then 2 else if (3506078909476472754630450741248 : Nat).testBit v.val then 3 else 0
def cert170 : CliqueCertificate (Fin 120) := .color 4 colors170
theorem checked170 : checkClique O c206 5 cert170 = true := by
  decide +kernel
#print axioms checked170
def cert171 : CliqueCertificate (Fin 120) := .split 28 cert169 cert170
theorem checked171 : checkClique O c204 5 cert171 = true := by
  apply checkClique_split_literal O c204 c205 c206 28 4 cert169 cert170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked169
  · exact checked170
#print axioms checked171
def cert172 : CliqueCertificate (Fin 120) := .split 23 cert168 cert171
theorem checked172 : checkClique O c202 5 cert172 = true := by
  apply checkClique_split_literal O c202 c203 c204 23 4 cert168 cert171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked168
  · exact checked171
#print axioms checked172
def cert173 : CliqueCertificate (Fin 120) := .split 18 cert167 cert172
theorem checked173 : checkClique O c200 5 cert173 = true := by
  apply checkClique_split_literal O c200 c201 c202 18 4 cert167 cert172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked167
  · exact checked172
#print axioms checked173
def cert174 : CliqueCertificate (Fin 120) := .split 12 cert166 cert173
theorem checked174 : checkClique O c198 5 cert174 = true := by
  apply checkClique_split_literal O c198 c199 c200 12 4 cert166 cert173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked166
  · exact checked173
#print axioms checked174
def cert175 : CliqueCertificate (Fin 120) := .split 8 cert165 cert174
theorem checked175 : checkClique O c196 5 cert175 = true := by
  apply checkClique_split_literal O c196 c197 c198 8 4 cert165 cert174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked165
  · exact checked174
#print axioms checked175
def cert176 : CliqueCertificate (Fin 120) := .split 6 cert164 cert175
theorem checked176 : checkClique O c194 5 cert176 = true := by
  apply checkClique_split_literal O c194 c195 c196 6 4 cert164 cert175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked164
  · exact checked175
#print axioms checked176
def cert177 : CliqueCertificate (Fin 120) := .split 5 cert163 cert176
theorem checked177 : checkClique O c192 5 cert177 = true := by
  apply checkClique_split_literal O c192 c193 c194 5 4 cert163 cert176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked163
  · exact checked176
#print axioms checked177
def cert178 : CliqueCertificate (Fin 120) := .split 1 cert162 cert177
theorem checked178 : checkClique O c190 5 cert178 = true := by
  apply checkClique_split_literal O c190 c191 c192 1 4 cert162 cert177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked162
  · exact checked177
#print axioms checked178
def cert179 : PairCertificate (Fin 120) := .cross cert178
theorem checked179 : checkPair O U c6 c190 0 cert179 = true := by
  exact checked178
#print axioms checked179
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
