import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound34

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2169 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 40), (94, -65), (241, -80), (247, -160), (549, -720), (694, 240), (698, -80), (1251, 5), (1319, 240)]

theorem oldProjectionSound2169 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2169 =
      Integer.Sparse.eval oldProjection2169 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2169 oldProjection2169
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2169 hH))

def oldProjection2171 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 40), (94, -50), (241, -160), (247, -240), (549, -720), (698, -160), (1055, 240), (1251, -25), (1388, 240)]

theorem oldProjectionSound2171 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2171 =
      Integer.Sparse.eval oldProjection2171 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2171 oldProjection2171
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2171 hH))

def oldProjection2173 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 10), (94, -20), (241, -40), (247, -40), (465, -360), (697, 240), (698, -120), (704, -40), (1251, -5)]

theorem oldProjectionSound2173 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2173 =
      Integer.Sparse.eval oldProjection2173 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2173 oldProjection2173
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2173 hH))

def oldProjection2174 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 5), (105, -80), (241, -160), (242, 240), (243, -240), (697, 240), (698, -240), (1089, -720), (1226, -160), (1251, 25), (1323, 240)]

theorem oldProjectionSound2174 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2174 =
      Integer.Sparse.eval oldProjection2174 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2174 oldProjection2174
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2174 hH))

def oldProjection2175 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (20, -5), (93, -30), (94, 15), (241, -40), (243, -80), (698, -120), (1047, 120), (1226, -120), (1251, -5), (1323, 120)]

theorem oldProjectionSound2175 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2175 =
      Integer.Sparse.eval oldProjection2175 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2175 oldProjection2175
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2175 hH))

def oldProjection2176 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -15), (94, 20), (243, -160), (698, -160), (700, -80), (704, -80), (1058, 240), (1089, -720), (1226, -80), (1251, -15), (1321, 240)]

theorem oldProjectionSound2176 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2176 =
      Integer.Sparse.eval oldProjection2176 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2176 oldProjection2176
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2176 hH))

def oldProjection2177 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (20, -5), (94, -5), (243, -120), (698, -80), (700, -40), (1058, 120), (1226, -120), (1250, -30), (1251, 15), (1323, 120)]

theorem oldProjectionSound2177 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2177 =
      Integer.Sparse.eval oldProjection2177 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2177 oldProjection2177
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2177 hH))

def oldProjection2179 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 240), (697, 240), (698, -160), (1214, 240), (1223, 240), (1226, -80), (1227, -160), (1251, 15)]

theorem oldProjectionSound2179 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2179 =
      Integer.Sparse.eval oldProjection2179 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2179 oldProjection2179
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2179 hH))

def oldProjection2180 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 240), (242, 240), (698, -80), (1219, 240), (1227, -80), (1251, 15), (1323, 240), (1389, 240)]

theorem oldProjectionSound2180 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2180 =
      Integer.Sparse.eval oldProjection2180 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2180 oldProjection2180
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2180 hH))

def oldProjection2181 : Integer.Sparse (Fin 1613) := [(0, 1), (137, -720), (169, -720), (478, -720), (697, 240), (698, -80), (1219, 240), (1227, -80), (1251, 15)]

theorem oldProjectionSound2181 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2181 =
      Integer.Sparse.eval oldProjection2181 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2181 oldProjection2181
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2181 hH))

def oldProjection2182 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 24), (94, 9), (704, -32), (1040, 96), (1045, 48), (1052, 48), (1251, 1)]

theorem oldProjectionSound2182 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2182 =
      Integer.Sparse.eval oldProjection2182 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2182 oldProjection2182
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2182 hH))

def oldProjection2183 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 30), (93, -30), (94, -35), (241, -40), (690, 120), (697, 240), (698, -40), (1250, -120), (1251, 35)]

theorem oldProjectionSound2183 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2183 =
      Integer.Sparse.eval oldProjection2183 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2183 oldProjection2183
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2183 hH))

def oldProjection2184 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 480), (160, -720), (697, 240), (698, -240), (1040, 240), (1052, 480), (1059, -160), (1227, -80), (1251, 45)]

theorem oldProjectionSound2184 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2184 =
      Integer.Sparse.eval oldProjection2184 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2184 oldProjection2184
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2184 hH))

def oldProjection2185 : Integer.Sparse (Fin 1613) := [(478, -18), (697, 12), (698, -4), (1219, 6), (1227, -6), (1251, 1), (1323, 6), (1389, 12)]

theorem oldProjectionSound2185 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2185 =
      Integer.Sparse.eval oldProjection2185 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2185 oldProjection2185
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2185 hH))

def oldProjection2186 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (241, -160), (243, -80), (690, 240), (697, 240), (698, -320), (700, -80), (1044, 240), (1050, 480), (1052, 480), (1059, -160), (1251, 55)]

theorem oldProjectionSound2186 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2186 =
      Integer.Sparse.eval oldProjection2186 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2186 oldProjection2186
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2186 hH))

def oldProjection2187 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (81, 240), (94, 10), (160, -720), (241, -80), (243, -80), (698, -160), (700, -80), (1040, 240), (1050, 240), (1052, 240), (1059, -80), (1221, 240), (1251, 25)]

theorem oldProjectionSound2187 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2187 =
      Integer.Sparse.eval oldProjection2187 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2187 oldProjection2187
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2187 hH))

def oldProjection2188 : Integer.Sparse (Fin 1613) := [(169, -1), (478, -1), (602, -1), (1095, -1)]

theorem oldProjectionSound2188 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2188 =
      Integer.Sparse.eval oldProjection2188 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2188 oldProjection2188
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2188 hH))

def oldProjection2189 : Integer.Sparse (Fin 1613) := [(19, 12), (93, -12), (94, -13), (247, -16), (694, 48), (697, 96), (1250, -24), (1251, -1), (1323, 48), (1389, 48)]

theorem oldProjectionSound2189 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2189 =
      Integer.Sparse.eval oldProjection2189 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2189 oldProjection2189
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2189 hH))

def oldProjection2190 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 100), (20, -10), (93, -60), (94, -45), (247, -80), (1250, -120), (1251, 35), (1319, 240)]

theorem oldProjectionSound2190 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2190 =
      Integer.Sparse.eval oldProjection2190 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2190 oldProjection2190
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2190 hH))

def oldProjection2191 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -40), (247, -160), (1251, -35), (1319, 240), (1388, 240)]

theorem oldProjectionSound2191 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2191 =
      Integer.Sparse.eval oldProjection2191 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2191 oldProjection2191
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2191 hH))

def oldProjection2192 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 60), (20, -5), (94, -60), (697, 720), (698, -80), (704, -80), (1250, -120), (1251, 15), (1323, 240), (1389, 240)]

theorem oldProjectionSound2192 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2192 =
      Integer.Sparse.eval oldProjection2192 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2192 oldProjection2192
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2192 hH))

def oldProjection2193 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (243, -80), (697, 720), (698, -400), (704, -80), (1052, 240), (1059, -80), (1219, 480), (1226, -80), (1227, -240), (1251, 45)]

theorem oldProjectionSound2193 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2193 =
      Integer.Sparse.eval oldProjection2193 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2193 oldProjection2193
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2193 hH))

def oldProjection2194 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -25), (247, -80), (617, -720), (697, 240), (1103, -720), (1105, -720), (1251, -25)]

theorem oldProjectionSound2194 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2194 =
      Integer.Sparse.eval oldProjection2194 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2194 oldProjection2194
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2194 hH))

def oldProjection2195 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -20), (81, 240), (94, -10), (698, -80), (704, -80), (1040, 240), (1052, 240), (1105, -720), (1251, -5)]

theorem oldProjectionSound2195 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2195 =
      Integer.Sparse.eval oldProjection2195 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2195 oldProjection2195
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2195 hH))

def oldProjection2196 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -5), (241, -80), (478, -360), (690, 120), (697, 120), (698, -120), (1047, 120), (1219, 120), (1227, -40)]

theorem oldProjectionSound2196 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2196 =
      Integer.Sparse.eval oldProjection2196 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2196 oldProjection2196
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2196 hH))

def oldProjection2197 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 60), (94, -25), (241, -160), (247, -160), (690, 240), (697, 240), (698, -160), (1319, 240)]

theorem oldProjectionSound2197 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2197 =
      Integer.Sparse.eval oldProjection2197 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2197 oldProjection2197
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2197 hH))

def oldProjection2198 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, 5), (241, -160), (243, -80), (247, -80), (478, -720), (698, -160), (1050, 240), (1052, 240), (1055, 240), (1219, 240), (1226, -80), (1251, 35)]

theorem oldProjectionSound2198 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2198 =
      Integer.Sparse.eval oldProjection2198 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2198 oldProjection2198
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2198 hH))

def oldProjection2199 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (94, -35), (160, -720), (241, -80), (247, -80), (697, 240), (1103, -720), (1250, -60), (1251, 10)]

theorem oldProjectionSound2199 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2199 =
      Integer.Sparse.eval oldProjection2199 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2199 oldProjection2199
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2199 hH))

def oldProjection2200 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -4), (93, -12), (94, -13), (243, -32), (700, -32), (1044, 48), (1052, 48), (1251, 3)]

theorem oldProjectionSound2200 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2200 =
      Integer.Sparse.eval oldProjection2200 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2200 oldProjection2200
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2200 hH))

def oldProjection2201 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -7), (72, 48), (94, 1), (243, -32), (700, -32), (704, -32), (1040, 48), (1251, -4), (1321, 48)]

theorem oldProjectionSound2201 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2201 =
      Integer.Sparse.eval oldProjection2201 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2201 oldProjection2201
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2201 hH))

def oldProjection2202 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 140), (20, -10), (94, -60), (104, -80), (228, 240), (229, 240), (240, 240), (241, -240), (243, -160), (247, -240), (704, -160), (1251, -55)]

theorem oldProjectionSound2202 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2202 =
      Integer.Sparse.eval oldProjection2202 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2202 oldProjection2202
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2202 hH))

def oldProjection2203 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -10), (94, -50), (228, 240), (229, 240), (241, -80), (243, -160), (247, -160), (704, -160), (720, -720), (1251, -45)]

theorem oldProjectionSound2203 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2203 =
      Integer.Sparse.eval oldProjection2203 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2203 oldProjection2203
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2203 hH))

def oldProjection2204 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -25), (247, -80), (698, -80), (1055, 240), (1140, -720), (1141, -720), (1227, -80), (1251, 50)]

theorem oldProjectionSound2204 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2204 =
      Integer.Sparse.eval oldProjection2204 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2204 oldProjection2204
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2204 hH))

def oldProjection2205 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, -25), (241, -80), (690, 240), (697, 480), (698, -80), (1115, -720), (1126, -720), (1250, -60), (1251, 25)]

theorem oldProjectionSound2205 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2205 =
      Integer.Sparse.eval oldProjection2205 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2205 oldProjection2205
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2205 hH))

def oldProjection2206 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (635, -360), (698, -120), (1086, -360), (1115, -360), (1226, -40), (1227, -40), (1251, 5)]

theorem oldProjectionSound2206 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2206 =
      Integer.Sparse.eval oldProjection2206 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2206 oldProjection2206
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2206 hH))

def oldProjection2207 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -5), (549, -720), (669, -720), (698, -80), (1227, -160), (1251, 80), (1389, 480)]

theorem oldProjectionSound2207 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2207 =
      Integer.Sparse.eval oldProjection2207 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2207 oldProjection2207
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2207 hH))

def oldProjection2208 : Integer.Sparse (Fin 1613) := [(0, -1), (635, -720), (698, -80), (1027, -720), (1117, -720), (1227, -160), (1251, 25), (1389, 240)]

theorem oldProjectionSound2208 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2208 =
      Integer.Sparse.eval oldProjection2208 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2208 oldProjection2208
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2208 hH))

def oldProjection2209 : Integer.Sparse (Fin 1613) := [(243, -2), (697, 6), (698, -8), (700, -2), (1059, -2), (1117, -18), (1226, -4), (1227, -4), (1251, 1), (1323, 6), (1389, 6)]

theorem oldProjectionSound2209 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2209 =
      Integer.Sparse.eval oldProjection2209 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2209 oldProjection2209
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2209 hH))

def oldProjection2210 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -50), (247, -80), (694, 240), (697, 240), (698, -240), (700, -80), (704, -80), (808, -720), (1059, -80), (1251, -25)]

theorem oldProjectionSound2210 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2210 =
      Integer.Sparse.eval oldProjection2210 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2210 oldProjection2210
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2210 hH))

def oldProjection2211 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -55), (698, -400), (700, -80), (704, -80), (1058, 240), (1059, -160), (1117, -720), (1251, 10), (1321, 240)]

theorem oldProjectionSound2211 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2211 =
      Integer.Sparse.eval oldProjection2211 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2211 oldProjection2211
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2211 hH))

def oldProjection2212 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -3), (698, -48), (700, -48), (1059, -16), (1117, -144), (1389, 48)]

theorem oldProjectionSound2212 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2212 =
      Integer.Sparse.eval oldProjection2212 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2212 oldProjection2212
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2212 hH))

def oldProjection2213 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -8), (697, 96), (698, -80), (700, -64), (704, -32), (1059, -32), (1251, -1)]

theorem oldProjectionSound2213 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2213 =
      Integer.Sparse.eval oldProjection2213 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2213 oldProjection2213
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2213 hH))

def oldProjection2214 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -35), (104, -80), (241, -160), (690, 240), (694, 240), (698, -80), (1050, 240), (1055, 240), (1124, -720), (1250, -120), (1251, 30)]

theorem oldProjectionSound2214 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2214 =
      Integer.Sparse.eval oldProjection2214 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2214 oldProjection2214
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2214 hH))

def oldProjection2215 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (694, 240), (1055, 240), (1126, -720), (1128, -720), (1140, -720), (1250, -60), (1251, 10)]

theorem oldProjectionSound2215 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2215 =
      Integer.Sparse.eval oldProjection2215 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2215 oldProjection2215
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2215 hH))

def oldProjection2216 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (104, -40), (241, -80), (247, -40), (690, 120), (694, 120), (697, 240), (698, -80), (704, -40), (794, -360), (1251, 5)]

theorem oldProjectionSound2216 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2216 =
      Integer.Sparse.eval oldProjection2216 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2216 oldProjection2216
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2216 hH))

def oldProjection2217 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (697, 240), (698, -80), (1059, -80), (1124, -720), (1126, -720), (1142, -720), (1251, 35)]

theorem oldProjectionSound2217 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2217 =
      Integer.Sparse.eval oldProjection2217 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2217 oldProjection2217
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2217 hH))

def oldProjection2218 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -1), (104, -8), (229, 24), (241, -8), (243, -16), (704, -16), (716, -72)]

theorem oldProjectionSound2218 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2218 =
      Integer.Sparse.eval oldProjection2218 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2218 oldProjection2218
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2218 hH))

def oldProjection2221 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 120), (697, 240), (698, -120), (1126, -360), (1219, 240), (1226, -40), (1227, -120), (1251, 15), (1389, 120)]

theorem oldProjectionSound2221 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2221 =
      Integer.Sparse.eval oldProjection2221 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2221 oldProjection2221
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2221 hH))

def oldProjection2222 : Integer.Sparse (Fin 1613) := [(19, 8), (93, -12), (94, -7), (694, 48), (1055, 48), (1250, -12), (1251, 5)]

theorem oldProjectionSound2222 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2222 =
      Integer.Sparse.eval oldProjection2222 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2222 oldProjection2222
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2222 hH))

def oldProjection2223 : Integer.Sparse (Fin 1613) := [(697, 12), (698, -4), (1227, -6), (1251, 1), (1323, 6)]

theorem oldProjectionSound2223 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2223 =
      Integer.Sparse.eval oldProjection2223 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2223 oldProjection2223
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2223 hH))

def oldProjection2224 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (241, -80), (690, 240), (697, 240), (698, -240), (1050, 240), (1059, -160), (1128, -720), (1250, -60), (1251, 100)]

theorem oldProjectionSound2224 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2224 =
      Integer.Sparse.eval oldProjection2224 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2224 oldProjection2224
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2224 hH))

def oldProjection2225 : Integer.Sparse (Fin 1613) := [(0, -1), (478, -720), (602, -720), (666, -720), (698, -80), (1227, -160), (1251, 25), (1389, 240)]

theorem oldProjectionSound2225 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2225 =
      Integer.Sparse.eval oldProjection2225 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2225 oldProjection2225
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2225 hH))

def oldProjection2226 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (94, -35), (228, 240), (229, 240), (243, -80), (698, -160), (704, -160), (798, -720), (1058, 240), (1060, 240), (1223, 240), (1226, -80), (1227, -80), (1251, -30)]

theorem oldProjectionSound2226 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2226 =
      Integer.Sparse.eval oldProjection2226 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2226 oldProjection2226
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2226 hH))

def oldProjection2227 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -25), (247, -80), (694, 240), (697, 240), (698, -80), (1055, 240), (1140, -720), (1227, -80), (1250, -60), (1251, 35), (1389, 240)]

theorem oldProjectionSound2227 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2227 =
      Integer.Sparse.eval oldProjection2227 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2227 oldProjection2227
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2227 hH))

def oldProjection2228 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -10), (93, -60), (94, -60), (694, 240), (698, -240), (704, -160), (1250, -60), (1251, -25), (1321, 240)]

theorem oldProjectionSound2228 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2228 =
      Integer.Sparse.eval oldProjection2228 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2228 oldProjection2228
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2228 hH))

def oldProjection2229 : Integer.Sparse (Fin 1613) := [(0, 7), (94, -30), (697, 480), (698, -320), (704, -80), (1059, -80), (1142, -720), (1227, -160), (1251, 75), (1389, 240)]

theorem oldProjectionSound2229 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2229 =
      Integer.Sparse.eval oldProjection2229 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2229 oldProjection2229
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2229 hH))

def oldProjection2230 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (81, 48), (94, 1), (228, 48), (229, 48), (243, -32), (698, -32), (704, -16), (757, -144), (1040, 48), (1223, 48), (1225, -16), (1226, -32), (1227, -16), (1251, 2)]

theorem oldProjectionSound2230 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2230 =
      Integer.Sparse.eval oldProjection2230 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2230 oldProjection2230
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2230 hH))

def oldProjection2231 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -25), (81, 240), (94, -70), (229, 240), (243, -80), (698, -80), (704, -160), (1040, 240), (1146, -720), (1251, -60)]

theorem oldProjectionSound2231 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2231 =
      Integer.Sparse.eval oldProjection2231 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2231 oldProjection2231
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2231 hH))

def oldProjection2232 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -30), (694, 240), (698, -80), (1055, 480), (1128, -720), (1227, -80), (1250, -120), (1251, 105)]

theorem oldProjectionSound2232 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2232 =
      Integer.Sparse.eval oldProjection2232 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2232 oldProjection2232
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2232 hH))

def oldProjection2233 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 480), (197, -720), (229, 240), (698, -240), (1055, 240), (1058, 480), (1059, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound2233 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2233 =
      Integer.Sparse.eval oldProjection2233 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2233 oldProjection2233
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2233 hH))

def oldProjection2234 : Integer.Sparse (Fin 1613) := [(0, 1), (698, -80), (806, -360), (865, -360), (1050, 120), (1059, -80), (1128, -360), (1251, 15)]

theorem oldProjectionSound2234 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2234 =
      Integer.Sparse.eval oldProjection2234 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2234 oldProjection2234
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2234 hH))

def oldProjection2235 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 48), (81, 96), (94, -2), (698, -80), (700, -32), (1050, 48), (1059, -64), (1221, 96), (1227, -16), (1251, 13)]

theorem oldProjectionSound2235 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2235 =
      Integer.Sparse.eval oldProjection2235 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2235 oldProjection2235
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2235 hH))

def oldProjection2236 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 120), (81, 120), (94, -5), (197, -360), (229, 120), (698, -80), (700, -80), (1050, 120), (1058, 120), (1059, -80), (1221, 120), (1251, 10)]

theorem oldProjectionSound2236 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2236 =
      Integer.Sparse.eval oldProjection2236 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2236 oldProjection2236
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2236 hH))

def oldProjection2237 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -55), (694, 240), (698, -160), (704, -80), (1055, 240), (1141, -720), (1227, -80), (1250, -60), (1251, 60)]

theorem oldProjectionSound2237 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2237 =
      Integer.Sparse.eval oldProjection2237 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2237 oldProjection2237
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2237 hH))

end NoFourMUBs.Step2.SOS.Normalization
