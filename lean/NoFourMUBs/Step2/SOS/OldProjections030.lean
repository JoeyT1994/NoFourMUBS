import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound36

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2238 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -5), (957, -360), (1141, -720), (1251, 5), (1388, 120)]

theorem oldProjectionSound2238 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2238 =
      Integer.Sparse.eval oldProjection2238 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2238 oldProjection2238
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2238 hH))

def oldProjection2239 : Integer.Sparse (Fin 1613) := [(0, 3), (698, -240), (1005, -720), (1016, -720), (1059, -80), (1142, -720), (1227, -160), (1251, 45)]

theorem oldProjectionSound2239 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2239 =
      Integer.Sparse.eval oldProjection2239 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2239 oldProjection2239
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2239 hH))

def oldProjection2240 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (697, 120), (698, -40), (1059, -40), (1128, -360), (1141, -360), (1250, -30), (1251, 45)]

theorem oldProjectionSound2240 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2240 =
      Integer.Sparse.eval oldProjection2240 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2240 oldProjection2240
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2240 hH))

def oldProjection2241 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (666, -720), (668, -720), (697, 240), (698, -80), (1005, -720), (1059, -80), (1251, 35)]

theorem oldProjectionSound2241 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2241 =
      Integer.Sparse.eval oldProjection2241 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2241 oldProjection2241
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2241 hH))

def oldProjection2242 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 10), (694, 120), (698, -80), (700, -80), (704, -80), (806, -360), (1251, 5)]

theorem oldProjectionSound2242 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2242 =
      Integer.Sparse.eval oldProjection2242 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2242 oldProjection2242
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2242 hH))

def oldProjection2243 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (81, 240), (94, 10), (243, -80), (698, -240), (700, -240), (803, -720), (1058, 240), (1226, -160), (1227, -80), (1251, -15)]

theorem oldProjectionSound2243 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2243 =
      Integer.Sparse.eval oldProjection2243 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2243 oldProjection2243
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2243 hH))

def oldProjection2244 : Integer.Sparse (Fin 1613) := [(0, 4), (72, 240), (81, 240), (94, 5), (698, -240), (700, -320), (704, -80), (1251, -35), (1321, 240)]

theorem oldProjectionSound2244 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2244 =
      Integer.Sparse.eval oldProjection2244 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2244 oldProjection2244
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2244 hH))

def oldProjection2248 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, 11), (241, -16), (243, -32), (704, -16), (1060, 48), (1154, -144), (1223, 48), (1225, -16)]

theorem oldProjectionSound2248 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2248 =
      Integer.Sparse.eval oldProjection2248 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2248 oldProjection2248
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2248 hH))

def oldProjection2249 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -2), (243, -8), (309, -72), (698, -8), (704, -24), (757, -72), (1223, 24), (1251, -1)]

theorem oldProjectionSound2249 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2249 =
      Integer.Sparse.eval oldProjection2249 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2249 oldProjection2249
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2249 hH))

def oldProjection2251 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -20), (241, -80), (243, -80), (505, -720), (682, 240), (697, 240), (698, -320), (704, -80), (1226, -160), (1251, 45)]

theorem oldProjectionSound2251 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2251 =
      Integer.Sparse.eval oldProjection2251 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2251 oldProjection2251
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2251 hH))

def oldProjection2252 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -45), (247, -80), (294, -720), (332, -720), (704, -80), (1207, -720), (1251, -45)]

theorem oldProjectionSound2252 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2252 =
      Integer.Sparse.eval oldProjection2252 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2252 oldProjection2252
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2252 hH))

def oldProjection2253 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, -35), (243, -80), (332, -720), (698, -80), (704, -240), (798, -720), (1223, 240), (1251, -35)]

theorem oldProjectionSound2253 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2253 =
      Integer.Sparse.eval oldProjection2253 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2253 oldProjection2253
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2253 hH))

def oldProjection2254 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -5), (243, -160), (505, -720), (697, 240), (698, -400), (700, -160), (704, -160), (1059, -80), (1219, 240), (1226, -80), (1227, -160), (1251, 20)]

theorem oldProjectionSound2254 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2254 =
      Integer.Sparse.eval oldProjection2254 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2254 oldProjection2254
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2254 hH))

def oldProjection2256 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (228, 48), (241, -32), (243, -80), (698, -96), (704, -16), (1223, 96), (1225, -32), (1226, -80), (1227, -32), (1251, 5)]

theorem oldProjectionSound2256 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2256 =
      Integer.Sparse.eval oldProjection2256 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2256 oldProjection2256
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2256 hH))

def oldProjection2257 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 5), (243, -64), (698, -64), (700, -16), (809, -144), (1219, 48), (1223, 48), (1225, -32), (1226, -80), (1227, -32), (1251, 2)]

theorem oldProjectionSound2257 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2257 =
      Integer.Sparse.eval oldProjection2257 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2257 oldProjection2257
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2257 hH))

def oldProjection2258 : Integer.Sparse (Fin 1613) := [(19, 1), (169, -36), (698, -4), (1052, 12), (1058, 12), (1095, -36), (1223, 24), (1226, -4), (1251, 1)]

theorem oldProjectionSound2258 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2258 =
      Integer.Sparse.eval oldProjection2258 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2258 oldProjection2258
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2258 hH))

def oldProjection2259 : Integer.Sparse (Fin 1613) := [(94, -1), (602, -144), (698, -48), (809, -144), (1115, -144), (1226, -48), (1227, -32), (1251, 3)]

theorem oldProjectionSound2259 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2259 =
      Integer.Sparse.eval oldProjection2259 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2259 oldProjection2259
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2259 hH))

def oldProjection2260 : Integer.Sparse (Fin 1613) := [(505, -1), (602, -1), (809, -1), (1095, -1)]

theorem oldProjectionSound2260 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2260 =
      Integer.Sparse.eval oldProjection2260 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2260 oldProjection2260
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2260 hH))

def oldProjection2262 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 10), (243, -80), (698, -80), (700, -80), (1047, 240), (1174, -720), (1219, 240), (1226, -80), (1251, -30)]

theorem oldProjectionSound2262 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2262 =
      Integer.Sparse.eval oldProjection2262 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2262 oldProjection2262
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2262 hH))

def oldProjection2263 : Integer.Sparse (Fin 1613) := [(94, -3), (433, -144), (483, -144), (489, -144), (698, -16), (1251, 1)]

theorem oldProjectionSound2263 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2263 =
      Integer.Sparse.eval oldProjection2263 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2263 oldProjection2263
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2263 hH))

def oldProjection2264 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (94, 10), (243, -40), (682, 120), (698, -160), (700, -40), (1059, -40), (1175, -360), (1226, -120), (1251, 5)]

theorem oldProjectionSound2264 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2264 =
      Integer.Sparse.eval oldProjection2264 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2264 oldProjection2264
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2264 hH))

def oldProjection2265 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (243, -80), (698, -320), (700, -160), (1052, 240), (1175, -720), (1221, 240), (1226, -160), (1227, -80), (1251, 30)]

theorem oldProjectionSound2265 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2265 =
      Integer.Sparse.eval oldProjection2265 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2265 oldProjection2265
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2265 hH))

def oldProjection2266 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (433, -360), (489, -360), (698, -120), (700, -80), (1219, 120), (1227, -40), (1251, -5)]

theorem oldProjectionSound2266 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2266 =
      Integer.Sparse.eval oldProjection2266 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2266 oldProjection2266
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2266 hH))

def oldProjection2267 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 45), (243, -240), (698, -160), (700, -240), (1052, 480), (1219, 240), (1226, -160), (1251, 40)]

theorem oldProjectionSound2267 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2267 =
      Integer.Sparse.eval oldProjection2267 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2267 oldProjection2267
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2267 hH))

def oldProjection2269 : Integer.Sparse (Fin 1613) := [(20, 5), (94, -4), (105, -8), (243, -24), (1060, 24), (1184, -72), (1225, -16), (1251, -1)]

theorem oldProjectionSound2269 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2269 =
      Integer.Sparse.eval oldProjection2269 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2269 oldProjection2269
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2269 hH))

def oldProjection2272 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -8), (690, 12), (698, -12), (1047, 12), (1050, 24), (1055, 24), (1058, 12), (1059, -4), (1250, -3), (1251, 4)]

theorem oldProjectionSound2272 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2272 =
      Integer.Sparse.eval oldProjection2272 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2272 oldProjection2272
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2272 hH))

def oldProjection2273 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (668, -720), (775, -720), (1050, 240), (1221, 240), (1251, -50), (1266, -720)]

theorem oldProjectionSound2273 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2273 =
      Integer.Sparse.eval oldProjection2273 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2273 oldProjection2273
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2273 hH))

def oldProjection2275 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, 15), (241, -32), (243, -32), (682, 48), (690, 48), (698, -48), (1047, 48), (1226, -48), (1251, 12)]

theorem oldProjectionSound2275 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2275 =
      Integer.Sparse.eval oldProjection2275 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2275 oldProjection2275
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2275 hH))

def oldProjection2278 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (229, 480), (285, -720), (698, -80), (1040, 240), (1058, 480), (1060, 240), (1227, -80), (1251, 15)]

theorem oldProjectionSound2278 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2278 =
      Integer.Sparse.eval oldProjection2278 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2278 oldProjection2278
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2278 hH))

def oldProjection2279 : Integer.Sparse (Fin 1613) := [(94, -1), (694, 24), (698, -8), (1047, 24), (1058, 24), (1227, -8), (1250, -6), (1251, 5)]

theorem oldProjectionSound2279 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2279 =
      Integer.Sparse.eval oldProjection2279 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2279 oldProjection2279
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2279 hH))

def oldProjection2280 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (229, 240), (698, -80), (1047, 240), (1055, 240), (1060, 240), (1227, -80), (1251, 15)]

theorem oldProjectionSound2280 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2280 =
      Integer.Sparse.eval oldProjection2280 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2280 oldProjection2280
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2280 hH))

def oldProjection2281 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (698, -80), (775, -720), (865, -720), (1055, 240), (1128, -720), (1227, -80), (1251, 40)]

theorem oldProjectionSound2281 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2281 =
      Integer.Sparse.eval oldProjection2281 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2281 oldProjection2281
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2281 hH))

def oldProjection2282 : Integer.Sparse (Fin 1613) := [(0, 1), (153, -360), (197, -360), (698, -80), (1050, 120), (1055, 120), (1058, 240), (1059, -40), (1227, -40), (1251, 15)]

theorem oldProjectionSound2282 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2282 =
      Integer.Sparse.eval oldProjection2282 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2282 oldProjection2282
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2282 hH))

def oldProjection2283 : Integer.Sparse (Fin 1613) := [(426, -1), (757, -1), (798, -1), (1186, -1)]

theorem oldProjectionSound2283 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2283 =
      Integer.Sparse.eval oldProjection2283 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2283 oldProjection2283
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2283 hH))

def oldProjection2284 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 1), (243, -16), (483, -144), (694, 48), (698, -32), (704, -16), (1047, 48), (1055, 48), (1226, -16), (1227, -16), (1251, 2)]

theorem oldProjectionSound2284 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2284 =
      Integer.Sparse.eval oldProjection2284 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2284 oldProjection2284
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2284 hH))

def oldProjection2285 : Integer.Sparse (Fin 1613) := [(94, -3), (243, -16), (483, -144), (682, 48), (698, -64), (704, -16), (1226, -32), (1227, -32), (1251, 1), (1321, 48), (1389, 48)]

theorem oldProjectionSound2285 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2285 =
      Integer.Sparse.eval oldProjection2285 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2285 oldProjection2285
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2285 hH))

def oldProjection2286 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, 20), (229, 240), (243, -160), (698, -80), (704, -80), (1058, 240), (1060, 240), (1207, -720), (1225, -80), (1226, -80), (1251, 15)]

theorem oldProjectionSound2286 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2286 =
      Integer.Sparse.eval oldProjection2286 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2286 oldProjection2286
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2286 hH))

def oldProjection2288 : Integer.Sparse (Fin 1613) := [(0, 1), (153, -720), (694, 240), (698, -80), (1047, 480), (1055, 480), (1058, 480), (1060, 240), (1227, -80), (1251, 15)]

theorem oldProjectionSound2288 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2288 =
      Integer.Sparse.eval oldProjection2288 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2288 oldProjection2288
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2288 hH))

def oldProjection2289 : Integer.Sparse (Fin 1613) := [(0, 3), (72, 240), (94, 10), (241, -80), (243, -80), (698, -320), (700, -80), (1050, 480), (1055, 240), (1058, 480), (1059, -160), (1221, 240), (1227, -80), (1251, 55)]

theorem oldProjectionSound2289 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2289 =
      Integer.Sparse.eval oldProjection2289 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2289 oldProjection2289
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2289 hH))

def oldProjection2291 : Integer.Sparse (Fin 1613) := [(0, 1), (243, -80), (682, 240), (698, -480), (1221, 480), (1226, -320), (1227, -320), (1251, 95), (1389, 240)]

theorem oldProjectionSound2291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2291 =
      Integer.Sparse.eval oldProjection2291 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2291 oldProjection2291
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2291 hH))

def oldProjection2292 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -5), (553, -720), (610, -720), (698, -240), (1058, 240), (1059, -80), (1226, -160), (1251, 20)]

theorem oldProjectionSound2292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2292 =
      Integer.Sparse.eval oldProjection2292 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2292 oldProjection2292
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2292 hH))

def oldProjection2294 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 160), (20, -15), (38, 240), (81, 240), (94, -75), (228, 480), (241, -160), (243, -240), (247, -160), (686, 480), (698, -160), (704, -240), (1040, 240), (1223, 480), (1225, -80), (1226, -80), (1251, -75)]

theorem oldProjectionSound2294 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2294 =
      Integer.Sparse.eval oldProjection2294 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2294 oldProjection2294
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2294 hH))

def oldProjection2295 : Integer.Sparse (Fin 1613) := [(0, -8), (81, 120), (94, -35), (698, -280), (1059, -80), (1221, 120), (1226, -40), (1227, -160), (1251, 105), (1389, 240)]

theorem oldProjectionSound2295 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2295 =
      Integer.Sparse.eval oldProjection2295 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2295 oldProjection2295
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2295 hH))

def oldProjection2298 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 15), (241, -40), (243, -160), (698, -160), (700, -40), (1052, 360), (1217, 120), (1219, 120), (1221, 120), (1223, 120), (1225, -40), (1226, -160), (1227, -40), (1251, 15)]

theorem oldProjectionSound2298 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2298 =
      Integer.Sparse.eval oldProjection2298 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2298 oldProjection2298
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2298 hH))

def oldProjection2301 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -144), (1059, -64), (1221, 48), (1226, -32), (1227, -96), (1251, 50)]

theorem oldProjectionSound2301 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2301 =
      Integer.Sparse.eval oldProjection2301 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2301 oldProjection2301
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2301 hH))

def oldProjection2302 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (94, -7), (241, -48), (243, -128), (698, -144), (704, -48), (1223, 144), (1225, -48), (1226, -96), (1227, -48), (1251, 8)]

theorem oldProjectionSound2302 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2302 =
      Integer.Sparse.eval oldProjection2302 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2302 oldProjection2302
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2302 hH))

def oldProjection2304 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (698, -160), (1059, -160), (1221, 120), (1251, -90)]

theorem oldProjectionSound2304 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2304 =
      Integer.Sparse.eval oldProjection2304 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2304 oldProjection2304
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2304 hH))

def oldProjection2305 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -120), (1059, -20), (1226, -40), (1227, -40), (1251, 30)]

theorem oldProjectionSound2305 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2305 =
      Integer.Sparse.eval oldProjection2305 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2305 oldProjection2305
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2305 hH))

def oldProjection2306 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -80), (1059, -40), (1227, -160), (1251, 90)]

theorem oldProjectionSound2306 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2306 =
      Integer.Sparse.eval oldProjection2306 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2306 oldProjection2306
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2306 hH))

def oldProjection2307 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (45, 240), (94, -20), (243, -80), (244, -80), (698, -80), (700, -160), (701, -80), (704, -160), (1214, 240), (1219, 240), (1231, -720), (1251, -25)]

theorem oldProjectionSound2307 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2307 =
      Integer.Sparse.eval oldProjection2307 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2307 oldProjection2307
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2307 hH))

def oldProjection2308 : Integer.Sparse (Fin 1613) := [(330, -1), (489, -1), (741, -1), (1231, -1)]

theorem oldProjectionSound2308 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2308 =
      Integer.Sparse.eval oldProjection2308 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2308 oldProjection2308
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2308 hH))

def oldProjection2309 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 2), (137, -144), (241, -32), (243, -32), (741, -144), (1052, 48), (1053, 48), (1251, 3)]

theorem oldProjectionSound2309 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2309 =
      Integer.Sparse.eval oldProjection2309 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2309 oldProjection2309
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2309 hH))

def oldProjection2312 : Integer.Sparse (Fin 1613) := [(19, 16), (94, 11), (108, -16), (243, -32), (244, -16), (1047, 48), (1154, -144), (1214, 48), (1226, -16), (1251, -1)]

theorem oldProjectionSound2312 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2312 =
      Integer.Sparse.eval oldProjection2312 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2312 oldProjection2312
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2312 hH))

def oldProjection2313 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (94, -5), (241, -80), (243, -160), (244, -80), (698, -80), (700, -80), (1207, -720), (1214, 240), (1219, 240), (1223, 240), (1251, -10)]

theorem oldProjectionSound2313 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2313 =
      Integer.Sparse.eval oldProjection2313 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2313 oldProjection2313
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2313 hH))

def oldProjection2315 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -25), (434, -720), (698, -320), (700, -80), (1059, -80), (1219, 240), (1226, -80), (1227, -160), (1251, 70)]

theorem oldProjectionSound2315 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2315 =
      Integer.Sparse.eval oldProjection2315 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2315 oldProjection2315
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2315 hH))

def oldProjection2318 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -5), (434, -720), (698, -400), (1219, 240), (1226, -160), (1227, -480), (1251, 90)]

theorem oldProjectionSound2318 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2318 =
      Integer.Sparse.eval oldProjection2318 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2318 oldProjection2318
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2318 hH))

def oldProjection2319 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 240), (94, 20), (243, -400), (698, -400), (700, -160), (704, -80), (1214, 240), (1219, 480), (1225, -80), (1226, -320), (1227, -160), (1251, -5)]

theorem oldProjectionSound2319 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2319 =
      Integer.Sparse.eval oldProjection2319 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2319 oldProjection2319
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2319 hH))

def oldProjection2320 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 3), (137, -144), (241, -16), (243, -16), (505, -144), (698, -32), (1052, 48), (1223, 48), (1226, -32), (1251, 11)]

theorem oldProjectionSound2320 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2320 =
      Integer.Sparse.eval oldProjection2320 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2320 oldProjection2320
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2320 hH))

def oldProjection2321 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (45, 240), (94, -15), (242, 240), (243, -160), (244, -80), (330, -720), (697, 240), (698, -160), (700, -240), (701, -80), (704, -160), (1059, -80), (1251, -10)]

theorem oldProjectionSound2321 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2321 =
      Integer.Sparse.eval oldProjection2321 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2321 oldProjection2321
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2321 hH))

def oldProjection2322 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (45, 240), (94, -55), (108, -80), (247, -80), (332, -720), (694, 240), (698, -80), (700, -80), (701, -80), (704, -240), (1251, -50)]

theorem oldProjectionSound2322 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2322 =
      Integer.Sparse.eval oldProjection2322 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2322 oldProjection2322
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2322 hH))

def oldProjection2323 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -5), (45, 240), (94, -50), (242, 240), (243, -80), (697, 480), (698, -320), (700, -240), (704, -320), (1059, -80), (1251, -20)]

theorem oldProjectionSound2323 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2323 =
      Integer.Sparse.eval oldProjection2323 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2323 oldProjection2323
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2323 hH))

def oldProjection2324 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (93, -12), (94, 5), (242, 48), (243, -64), (244, -32), (700, -48), (1060, 48), (1251, -7)]

theorem oldProjectionSound2324 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2324 =
      Integer.Sparse.eval oldProjection2324 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2324 oldProjection2324
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2324 hH))

def oldProjection2325 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -10), (94, -10), (108, -80), (241, -80), (243, -80), (247, -80), (698, -160), (1047, 240), (1226, -80), (1248, -720), (1251, 25), (1319, 240)]

theorem oldProjectionSound2325 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2325 =
      Integer.Sparse.eval oldProjection2325 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2325 oldProjection2325
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2325 hH))

def oldProjection2326 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (238, 240), (698, -80), (700, -80), (794, -720), (1058, 480), (1059, -80), (1249, -720), (1250, -60), (1251, 15)]

theorem oldProjectionSound2326 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2326 =
      Integer.Sparse.eval oldProjection2326 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2326 oldProjection2326
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2326 hH))

end NoFourMUBs.Step2.SOS.Normalization
