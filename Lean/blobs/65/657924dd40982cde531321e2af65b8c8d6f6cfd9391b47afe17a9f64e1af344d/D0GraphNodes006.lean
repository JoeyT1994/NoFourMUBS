import D0GraphStates
import D0GraphNodes004
import D0GraphNodes005
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert180 : PairCertificate (Fin 120) := .first .size
theorem checked180 : checkPair O U c6 c189 1 cert180 = true := by
  decide +kernel
#print axioms checked180
def cert181 : PairCertificate (Fin 120) := .split 119 cert179 cert180
theorem checked181 : checkPair O U c160 c189 1 cert181 = true := by
  apply checkPair_split_literal O U c160 c189 c6 c190 c6 119 0 cert179 cert180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked179
  · exact checked180
#print axioms checked181
def cert182 : PairCertificate (Fin 120) := .first .size
theorem checked182 : checkPair O U c160 c188 2 cert182 = true := by
  decide +kernel
#print axioms checked182
def cert183 : PairCertificate (Fin 120) := .split 93 cert181 cert182
theorem checked183 : checkPair O U c158 c188 2 cert183 = true := by
  apply checkPair_split_literal O U c158 c188 c160 c189 c160 93 1 cert181 cert182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked181
  · exact checked182
#print axioms checked183
def colors184 (v : Fin 120) : Nat := if (5192306781700186480310419611189248 : Nat).testBit v.val then 0 else if (830767497365572420564879412675215360 : Nat).testBit v.val then 1 else 0
def cert184 : PairCertificate (Fin 120) := .first (.color 2 colors184)
theorem checked184 : checkPair O U c207 c149 3 cert184 = true := by
  decide +kernel
#print axioms checked184
def cert185 : PairCertificate (Fin 120) := .split 52 cert183 cert184
theorem checked185 : checkPair O U c187 c149 3 cert185 = true := by
  apply checkPair_split_literal O U c187 c149 c158 c188 c207 52 2 cert183 cert184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked183
  · exact checked184
#print axioms checked185
def cert186 : PairCertificate (Fin 120) := .split 44 cert161 cert185
theorem checked186 : checkPair O U c155 c149 3 cert186 = true := by
  apply checkPair_split_literal O U c155 c149 c156 c157 c187 44 2 cert161 cert185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked161
  · exact checked185
#print axioms checked186
def cert187 : PairCertificate (Fin 120) := .split 40 cert125 cert186
theorem checked187 : checkPair O U c152 c149 3 cert187 = true := by
  apply checkPair_split_literal O U c152 c149 c153 c154 c155 40 2 cert125 cert186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked125
  · exact checked186
#print axioms checked187
def cert188 : PairCertificate (Fin 120) := .split 38 cert124 cert187
theorem checked188 : checkPair O U c148 c149 3 cert188 = true := by
  apply checkPair_split_literal O U c148 c149 c150 c151 c152 38 2 cert124 cert187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked124
  · exact checked187
#print axioms checked188
def cert189 : PairCertificate (Fin 120) := .first .size
theorem checked189 : checkPair O U c6 c209 3 cert189 = true := by
  decide +kernel
#print axioms checked189
def cert190 : PairCertificate (Fin 120) := .first .size
theorem checked190 : checkPair O U c150 c211 3 cert190 = true := by
  decide +kernel
#print axioms checked190
def cert191 : PairCertificate (Fin 120) := .first .size
theorem checked191 : checkPair O U c153 c213 3 cert191 = true := by
  decide +kernel
#print axioms checked191
def colors192 (v : Fin 120) : Nat := if (633825300114114705147471855616 : Nat).testBit v.val then 0 else if (649037107921316363373626628505600 : Nat).testBit v.val then 1 else 0
def cert192 : CliqueCertificate (Fin 120) := .color 2 colors192
theorem checked192 : checkClique O c219 4 cert192 = true := by
  decide +kernel
#print axioms checked192
def colors193 (v : Fin 120) : Nat := if (332307083281498616756735933409396768 : Nat).testBit v.val then 0 else if (650304759182676477963527482507328 : Nat).testBit v.val then 1 else if (23768564811231915378344917467136 : Nat).testBit v.val then 2 else if (41619504506693379895578367742705664 : Nat).testBit v.val then 3 else 0
def cert193 : CliqueCertificate (Fin 120) := .color 4 colors193
theorem checked193 : checkClique O c220 5 cert193 = true := by
  decide +kernel
#print axioms checked193
def cert194 : CliqueCertificate (Fin 120) := .split 1 cert192 cert193
theorem checked194 : checkClique O c218 5 cert194 = true := by
  apply checkClique_split_literal O c218 c219 c220 1 4 cert192 cert193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked192
  · exact checked193
#print axioms checked194
def cert195 : PairCertificate (Fin 120) := .cross cert194
theorem checked195 : checkPair O U c6 c218 0 cert195 = true := by
  exact checked194
#print axioms checked195
def cert196 : PairCertificate (Fin 120) := .first .size
theorem checked196 : checkPair O U c6 c217 1 cert196 = true := by
  decide +kernel
#print axioms checked196
def cert197 : PairCertificate (Fin 120) := .split 119 cert195 cert196
theorem checked197 : checkPair O U c160 c217 1 cert197 = true := by
  apply checkPair_split_literal O U c160 c217 c6 c218 c6 119 0 cert195 cert196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked195
  · exact checked196
#print axioms checked197
def cert198 : PairCertificate (Fin 120) := .first .size
theorem checked198 : checkPair O U c160 c216 2 cert198 = true := by
  decide +kernel
#print axioms checked198
def cert199 : PairCertificate (Fin 120) := .split 93 cert197 cert198
theorem checked199 : checkPair O U c158 c216 2 cert199 = true := by
  apply checkPair_split_literal O U c158 c216 c160 c217 c160 93 1 cert197 cert198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked197
  · exact checked198
#print axioms checked199
def cert200 : PairCertificate (Fin 120) := .first .size
theorem checked200 : checkPair O U c158 c215 3 cert200 = true := by
  decide +kernel
#print axioms checked200
def cert201 : PairCertificate (Fin 120) := .split 52 cert199 cert200
theorem checked201 : checkPair O U c156 c215 3 cert201 = true := by
  apply checkPair_split_literal O U c156 c215 c158 c216 c158 52 2 cert199 cert200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked199
  · exact checked200
#print axioms checked201
def colors202 (v : Fin 120) : Nat := if (88270314265340884262628963366469632 : Nat).testBit v.val then 0 else if (9903520314283323674169704448 : Nat).testBit v.val then 1 else if (830767497365572420564879412675215360 : Nat).testBit v.val then 2 else 0
def cert202 : PairCertificate (Fin 120) := .first (.color 3 colors202)
theorem checked202 : checkPair O U c221 c142 4 cert202 = true := by
  decide +kernel
#print axioms checked202
def cert203 : PairCertificate (Fin 120) := .split 44 cert201 cert202
theorem checked203 : checkPair O U c214 c142 4 cert203 = true := by
  apply checkPair_split_literal O U c214 c142 c156 c215 c221 44 3 cert201 cert202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked201
  · exact checked202
#print axioms checked203
def cert204 : PairCertificate (Fin 120) := .split 40 cert191 cert203
theorem checked204 : checkPair O U c212 c142 4 cert204 = true := by
  apply checkPair_split_literal O U c212 c142 c153 c213 c214 40 3 cert191 cert203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked191
  · exact checked203
#print axioms checked204
def cert205 : PairCertificate (Fin 120) := .split 38 cert190 cert204
theorem checked205 : checkPair O U c210 c142 4 cert205 = true := by
  apply checkPair_split_literal O U c210 c142 c150 c211 c212 38 3 cert190 cert204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked190
  · exact checked204
#print axioms checked205
def cert206 : PairCertificate (Fin 120) := .split 23 cert189 cert205
theorem checked206 : checkPair O U c208 c142 4 cert206 = true := by
  apply checkPair_split_literal O U c208 c142 c6 c209 c210 23 3 cert189 cert205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked189
  · exact checked205
#print axioms checked206
def cert207 : PairCertificate (Fin 120) := .split 17 cert188 cert206
theorem checked207 : checkPair O U c147 c142 4 cert207 = true := by
  apply checkPair_split_literal O U c147 c142 c148 c149 c208 17 3 cert188 cert206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked188
  · exact checked206
#print axioms checked207
def cert208 : PairCertificate (Fin 120) := .split 14 cert123 cert207
theorem checked208 : checkPair O U c145 c142 4 cert208 = true := by
  apply checkPair_split_literal O U c145 c142 c6 c146 c147 14 3 cert123 cert207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked123
  · exact checked207
#print axioms checked208
def cert209 : PairCertificate (Fin 120) := .split 10 cert122 cert208
theorem checked209 : checkPair O U c141 c142 4 cert209 = true := by
  apply checkPair_split_literal O U c141 c142 c143 c144 c145 10 3 cert122 cert208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked122
  · exact checked208
#print axioms checked209
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
