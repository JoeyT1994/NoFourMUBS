import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound19

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1173 : Integer.Sparse (Fin 1613) := [(94, 1), (243, 8), (698, 16), (700, 8), (704, 8), (1061, -24), (1251, 1)]

theorem oldProjectionSound1173 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1173 =
      Integer.Sparse.eval oldProjection1173 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1173 oldProjection1173
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1173 hH))

def oldProjection1174 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1), (243, 16), (1251, 4)]

theorem oldProjectionSound1174 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1174 =
      Integer.Sparse.eval oldProjection1174 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1174 oldProjection1174
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1174 hH))

def oldProjection1175 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (243, -16), (244, 16), (700, 16), (1251, 1)]

theorem oldProjectionSound1175 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1175 =
      Integer.Sparse.eval oldProjection1175 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1175 oldProjection1175
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1175 hH))

def oldProjection1176 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -60), (20, 15), (94, 35), (1251, 30)]

theorem oldProjectionSound1176 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1176 =
      Integer.Sparse.eval oldProjection1176 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1176 oldProjection1176
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1176 hH))

def oldProjection1177 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 2), (94, -5), (1251, -7)]

theorem oldProjectionSound1177 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1177 =
      Integer.Sparse.eval oldProjection1177 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1177 oldProjection1177
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1177 hH))

def oldProjection1178 : Integer.Sparse (Fin 1613) := [(19, 16), (20, 1), (94, -2), (1251, -3)]

theorem oldProjectionSound1178 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1178 =
      Integer.Sparse.eval oldProjection1178 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1178 oldProjection1178
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1178 hH))

def oldProjection1179 : Integer.Sparse (Fin 1613) := [(692, -1), (1052, -1), (1223, -1)]

theorem oldProjectionSound1179 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1179 =
      Integer.Sparse.eval oldProjection1179 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1179 oldProjection1179
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1179 hH))

def oldProjection1180 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (241, 16), (243, 16), (1052, -48), (1053, -48), (1251, 1)]

theorem oldProjectionSound1180 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1180 =
      Integer.Sparse.eval oldProjection1180 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1180 oldProjection1180
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1180 hH))

def oldProjection1181 : Integer.Sparse (Fin 1613) := [(20, -8), (94, 13), (1251, 1)]

theorem oldProjectionSound1181 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1181 =
      Integer.Sparse.eval oldProjection1181 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1181 oldProjection1181
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1181 hH))

def oldProjection1182 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 1), (93, 12), (94, -5), (1251, 2)]

theorem oldProjectionSound1182 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1182 =
      Integer.Sparse.eval oldProjection1182 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1182 oldProjection1182
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1182 hH))

def oldProjection1183 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (243, 16), (1045, -48), (1217, -48), (1225, 16)]

theorem oldProjectionSound1183 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1183 =
      Integer.Sparse.eval oldProjection1183 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1183 oldProjection1183
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1183 hH))

def oldProjection1184 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (105, 16), (243, 16), (1044, -48), (1045, -48)]

theorem oldProjectionSound1184 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1184 =
      Integer.Sparse.eval oldProjection1184 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1184 oldProjection1184
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1184 hH))

def oldProjection1185 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, -2), (243, 32), (244, 16), (1226, 16), (1251, 3)]

theorem oldProjectionSound1185 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1185 =
      Integer.Sparse.eval oldProjection1185 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1185 oldProjection1185
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1185 hH))

def oldProjection1186 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (247, 8), (1061, -24), (1219, -24), (1251, 1)]

theorem oldProjectionSound1186 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1186 =
      Integer.Sparse.eval oldProjection1186 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1186 oldProjection1186
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1186 hH))

def oldProjection1187 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (108, 16), (1047, -48), (1214, -48), (1251, 2)]

theorem oldProjectionSound1187 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1187 =
      Integer.Sparse.eval oldProjection1187 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1187 oldProjection1187
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1187 hH))

def oldProjection1188 : Integer.Sparse (Fin 1613) := [(682, -1), (1217, -1), (1221, -1)]

theorem oldProjectionSound1188 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1188 =
      Integer.Sparse.eval oldProjection1188 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1188 oldProjection1188
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1188 hH))

def oldProjection1189 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (241, 16), (243, -16), (698, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound1189 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1189 =
      Integer.Sparse.eval oldProjection1189 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1189 oldProjection1189
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1189 hH))

def oldProjection1190 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (698, 80), (1052, -240), (1059, 80), (1251, -15)]

theorem oldProjectionSound1190 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1190 =
      Integer.Sparse.eval oldProjection1190 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1190 oldProjection1190
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1190 hH))

def oldProjection1191 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 8), (1059, 8), (1251, 1)]

theorem oldProjectionSound1191 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1191 =
      Integer.Sparse.eval oldProjection1191 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1191 oldProjection1191
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1191 hH))

def oldProjection1192 : Integer.Sparse (Fin 1613) := [(229, -3), (238, -3), (243, 1), (244, 1), (700, 1)]

theorem oldProjectionSound1192 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1192 =
      Integer.Sparse.eval oldProjection1192 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1192 oldProjection1192
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1192 hH))

def oldProjection1193 : Integer.Sparse (Fin 1613) := [(90, 1), (698, 2), (700, -1), (1059, 1)]

theorem oldProjectionSound1193 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1193 =
      Integer.Sparse.eval oldProjection1193 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1193 oldProjection1193
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1193 hH))

def oldProjection1194 : Integer.Sparse (Fin 1613) := [(231, -3), (238, -3), (243, 1), (244, 1), (700, 1)]

theorem oldProjectionSound1194 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1194 =
      Integer.Sparse.eval oldProjection1194 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1194 oldProjection1194
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1194 hH))

def oldProjection1195 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (93, 60), (94, -5), (1250, 60), (1251, -5), (1319, -240)]

theorem oldProjectionSound1195 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1195 =
      Integer.Sparse.eval oldProjection1195 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1195 oldProjection1195
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1195 hH))

def oldProjection1196 : Integer.Sparse (Fin 1613) := [(1047, -1), (1058, -1), (1060, -1)]

theorem oldProjectionSound1196 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1196 =
      Integer.Sparse.eval oldProjection1196 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1196 oldProjection1196
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1196 hH))

def oldProjection1197 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, 45), (1251, 25)]

theorem oldProjectionSound1197 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1197 =
      Integer.Sparse.eval oldProjection1197 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1197 oldProjection1197
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1197 hH))

def oldProjection1198 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (247, 8), (1251, -1)]

theorem oldProjectionSound1198 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1198 =
      Integer.Sparse.eval oldProjection1198 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1198 oldProjection1198
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1198 hH))

def oldProjection1199 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -10), (1251, 1)]

theorem oldProjectionSound1199 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1199 =
      Integer.Sparse.eval oldProjection1199 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1199 oldProjection1199
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1199 hH))

def oldProjection1200 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -5), (243, 32), (698, 16), (1225, 16), (1226, 32), (1251, -2)]

theorem oldProjectionSound1200 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1200 =
      Integer.Sparse.eval oldProjection1200 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1200 oldProjection1200
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1200 hH))

def oldProjection1201 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (94, 30), (1251, 50)]

theorem oldProjectionSound1201 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1201 =
      Integer.Sparse.eval oldProjection1201 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1201 oldProjection1201
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1201 hH))

def oldProjection1202 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -15), (1251, -55)]

theorem oldProjectionSound1202 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1202 =
      Integer.Sparse.eval oldProjection1202 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1202 oldProjection1202
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1202 hH))

def oldProjection1203 : Integer.Sparse (Fin 1613) := [(94, 1), (1251, 5)]

theorem oldProjectionSound1203 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1203 =
      Integer.Sparse.eval oldProjection1203 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1203 oldProjection1203
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1203 hH))

def oldProjection1204 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (243, 80), (698, 160), (1226, 160), (1227, 80), (1251, -25)]

theorem oldProjectionSound1204 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1204 =
      Integer.Sparse.eval oldProjection1204 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1204 oldProjection1204
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1204 hH))

def oldProjection1205 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (93, 60), (94, -5), (1250, 60), (1251, -5), (1321, -240)]

theorem oldProjectionSound1205 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1205 =
      Integer.Sparse.eval oldProjection1205 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1205 oldProjection1205
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1205 hH))

def oldProjection1206 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (94, 15), (698, 80), (1251, -10)]

theorem oldProjectionSound1206 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1206 =
      Integer.Sparse.eval oldProjection1206 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1206 oldProjection1206
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1206 hH))

def oldProjection1207 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, 80), (1251, -30)]

theorem oldProjectionSound1207 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1207 =
      Integer.Sparse.eval oldProjection1207 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1207 oldProjection1207
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1207 hH))

def oldProjection1208 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 160), (1219, -240), (1226, 80), (1227, 160), (1251, -15)]

theorem oldProjectionSound1208 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1208 =
      Integer.Sparse.eval oldProjection1208 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1208 oldProjection1208
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1208 hH))

def oldProjection1209 : Integer.Sparse (Fin 1613) := [(94, 1), (697, -12), (698, 4), (700, 4), (704, 8), (1251, 1)]

theorem oldProjectionSound1209 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1209 =
      Integer.Sparse.eval oldProjection1209 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1209 oldProjection1209
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1209 hH))

def oldProjection1210 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (93, 60), (94, 25), (1251, 10), (1323, -240)]

theorem oldProjectionSound1210 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1210 =
      Integer.Sparse.eval oldProjection1210 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1210 oldProjection1210
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1210 hH))

def oldProjection1211 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -10), (1226, 16), (1251, 5)]

theorem oldProjectionSound1211 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1211 =
      Integer.Sparse.eval oldProjection1211 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1211 oldProjection1211
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1211 hH))

def oldProjection1212 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (1226, 80), (1251, -50)]

theorem oldProjectionSound1212 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1212 =
      Integer.Sparse.eval oldProjection1212 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1212 oldProjection1212
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1212 hH))

def oldProjection1213 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (1250, 12), (1251, 5), (1323, -48)]

theorem oldProjectionSound1213 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1213 =
      Integer.Sparse.eval oldProjection1213 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1213 oldProjection1213
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1213 hH))

def oldProjection1214 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 8), (698, 8), (1226, -8), (1251, -1)]

theorem oldProjectionSound1214 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1214 =
      Integer.Sparse.eval oldProjection1214 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1214 oldProjection1214
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1214 hH))

def oldProjection1215 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 32), (698, 16), (700, 16), (1058, -48), (1226, 16), (1251, 1)]

theorem oldProjectionSound1215 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1215 =
      Integer.Sparse.eval oldProjection1215 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1215 oldProjection1215
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1215 hH))

def oldProjection1216 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (20, 5), (94, 25), (1251, -5)]

theorem oldProjectionSound1216 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1216 =
      Integer.Sparse.eval oldProjection1216 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1216 oldProjection1216
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1216 hH))

def oldProjection1217 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 10), (94, -15), (1251, -15)]

theorem oldProjectionSound1217 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1217 =
      Integer.Sparse.eval oldProjection1217 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1217 oldProjection1217
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1217 hH))

def oldProjection1218 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -60), (20, 15), (94, 10), (1251, 20)]

theorem oldProjectionSound1218 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1218 =
      Integer.Sparse.eval oldProjection1218 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1218 oldProjection1218
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1218 hH))

def oldProjection1219 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (93, 60), (94, 25), (1250, 120), (1251, 10)]

theorem oldProjectionSound1219 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1219 =
      Integer.Sparse.eval oldProjection1219 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1219 oldProjection1219
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1219 hH))

def oldProjection1220 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (94, -5), (1251, 10)]

theorem oldProjectionSound1220 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1220 =
      Integer.Sparse.eval oldProjection1220 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1220 oldProjection1220
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1220 hH))

def oldProjection1221 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -40), (1251, 65)]

theorem oldProjectionSound1221 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1221 =
      Integer.Sparse.eval oldProjection1221 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1221 oldProjection1221
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1221 hH))

def oldProjection1222 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (94, 15), (1250, 60), (1251, -15)]

theorem oldProjectionSound1222 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1222 =
      Integer.Sparse.eval oldProjection1222 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1222 oldProjection1222
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1222 hH))

def oldProjection1223 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 16), (1052, -48), (1221, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound1223 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1223 =
      Integer.Sparse.eval oldProjection1223 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1223 oldProjection1223
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1223 hH))

def oldProjection1224 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (93, 12), (94, -3), (1251, 3)]

theorem oldProjectionSound1224 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1224 =
      Integer.Sparse.eval oldProjection1224 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1224 oldProjection1224
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1224 hH))

def oldProjection1225 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 13), (1251, -8)]

theorem oldProjectionSound1225 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1225 =
      Integer.Sparse.eval oldProjection1225 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1225 oldProjection1225
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1225 hH))

def oldProjection1226 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 16), (1052, -48), (1217, -48), (1226, 16), (1251, 1)]

theorem oldProjectionSound1226 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1226 =
      Integer.Sparse.eval oldProjection1226 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1226 oldProjection1226
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1226 hH))

def oldProjection1227 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 16), (20, -4), (94, -3), (1251, 1)]

theorem oldProjectionSound1227 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1227 =
      Integer.Sparse.eval oldProjection1227 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1227 oldProjection1227
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1227 hH))

def oldProjection1228 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -7), (94, -5), (1251, 2)]

theorem oldProjectionSound1228 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1228 =
      Integer.Sparse.eval oldProjection1228 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1228 oldProjection1228
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1228 hH))

def oldProjection1229 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (243, 16), (244, 16), (1045, -48), (1053, -48)]

theorem oldProjectionSound1229 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1229 =
      Integer.Sparse.eval oldProjection1229 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1229 oldProjection1229
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1229 hH))

def oldProjection1230 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 2), (94, 3), (704, 16), (1060, -48), (1223, -48), (1251, 1)]

theorem oldProjectionSound1230 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1230 =
      Integer.Sparse.eval oldProjection1230 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1230 oldProjection1230
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1230 hH))

def oldProjection1231 : Integer.Sparse (Fin 1613) := [(94, -7), (243, 16), (698, 16), (700, 16), (1226, 16), (1251, -3)]

theorem oldProjectionSound1231 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1231 =
      Integer.Sparse.eval oldProjection1231 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1231 oldProjection1231
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1231 hH))

def oldProjection1232 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, -2), (241, 16), (243, 32), (1225, 16), (1251, 3)]

theorem oldProjectionSound1232 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1232 =
      Integer.Sparse.eval oldProjection1232 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1232 oldProjection1232
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1232 hH))

def oldProjection1233 : Integer.Sparse (Fin 1613) := [(23, -3), (104, 2), (105, 2), (241, 2)]

theorem oldProjectionSound1233 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1233 =
      Integer.Sparse.eval oldProjection1233 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1233 oldProjection1233
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1233 hH))

def oldProjection1234 : Integer.Sparse (Fin 1613) := [(228, -3), (241, 2), (243, 2), (698, 2)]

theorem oldProjectionSound1234 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1234 =
      Integer.Sparse.eval oldProjection1234 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1234 oldProjection1234
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1234 hH))

def oldProjection1235 : Integer.Sparse (Fin 1613) := [(81, -3), (698, 2), (700, 2), (1059, 2)]

theorem oldProjectionSound1235 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1235 =
      Integer.Sparse.eval oldProjection1235 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1235 oldProjection1235
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1235 hH))

def oldProjection1236 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (94, 5), (108, 16), (240, -48), (247, 16), (1251, 4)]

theorem oldProjectionSound1236 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1236 =
      Integer.Sparse.eval oldProjection1236 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1236 oldProjection1236
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1236 hH))

end NoFourMUBs.Step2.SOS.Normalization
