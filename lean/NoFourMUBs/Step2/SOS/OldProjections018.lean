import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound20

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1237 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 2), (1250, 12), (1251, -3), (1388, -48)]

theorem oldProjectionSound1237 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1237 =
      Integer.Sparse.eval oldProjection1237 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1237 oldProjection1237
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1237 hH))

def oldProjection1238 : Integer.Sparse (Fin 1613) := [(243, 1), (698, 1), (704, 1), (1054, -3), (1061, -3)]

theorem oldProjectionSound1238 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1238 =
      Integer.Sparse.eval oldProjection1238 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1238 oldProjection1238
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1238 hH))

def oldProjection1239 : Integer.Sparse (Fin 1613) := [(698, 1), (1219, -3), (1223, -3), (1226, 1), (1227, 1)]

theorem oldProjectionSound1239 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1239 =
      Integer.Sparse.eval oldProjection1239 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1239 oldProjection1239
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1239 hH))

def oldProjection1240 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (108, 80), (247, 32), (1251, 1)]

theorem oldProjectionSound1240 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1240 =
      Integer.Sparse.eval oldProjection1240 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1240 oldProjection1240
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1240 hH))

def oldProjection1241 : Integer.Sparse (Fin 1613) := [(0, -4), (94, 5), (1251, 5)]

theorem oldProjectionSound1241 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1241 =
      Integer.Sparse.eval oldProjection1241 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1241 oldProjection1241
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1241 hH))

def oldProjection1242 : Integer.Sparse (Fin 1613) := [(0, 1), (1251, -1)]

theorem oldProjectionSound1242 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1242 =
      Integer.Sparse.eval oldProjection1242 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1242 oldProjection1242
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1242 hH))

def oldProjection1243 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (94, 6), (241, 32), (247, 32), (1251, 5)]

theorem oldProjectionSound1243 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1243 =
      Integer.Sparse.eval oldProjection1243 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1243 oldProjection1243
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1243 hH))

def oldProjection1244 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 2), (1250, 12), (1251, -3), (1389, -48)]

theorem oldProjectionSound1244 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1244 =
      Integer.Sparse.eval oldProjection1244 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1244 oldProjection1244
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1244 hH))

def oldProjection1245 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 1), (1227, 16), (1251, -10)]

theorem oldProjectionSound1245 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1245 =
      Integer.Sparse.eval oldProjection1245 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1245 oldProjection1245
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1245 hH))

def oldProjection1246 : Integer.Sparse (Fin 1613) := [(0, 3), (1227, 16), (1251, 5)]

theorem oldProjectionSound1246 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1246 =
      Integer.Sparse.eval oldProjection1246 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1246 oldProjection1246
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1246 hH))

def oldProjection1247 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1251, -10), (1389, -60)]

theorem oldProjectionSound1247 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1247 =
      Integer.Sparse.eval oldProjection1247 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1247 oldProjection1247
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1247 hH))

def oldProjection1248 : Integer.Sparse (Fin 1613) := [(94, 1), (697, -48), (698, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound1248 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1248 =
      Integer.Sparse.eval oldProjection1248 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1248 oldProjection1248
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1248 hH))

def oldProjection1249 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 48), (1226, 48), (1227, 32), (1251, -3)]

theorem oldProjectionSound1249 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1249 =
      Integer.Sparse.eval oldProjection1249 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1249 oldProjection1249
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1249 hH))

def oldProjection1250 : Integer.Sparse (Fin 1613) := [(243, 1), (698, 1), (1058, -6), (1226, 1)]

theorem oldProjectionSound1250 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1250 =
      Integer.Sparse.eval oldProjection1250 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1250 oldProjection1250
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1250 hH))

def oldProjection1251 : Integer.Sparse (Fin 1613) := [(243, 1), (1223, -6), (1225, 1), (1226, 1)]

theorem oldProjectionSound1251 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1251 =
      Integer.Sparse.eval oldProjection1251 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1251 oldProjection1251
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1251 hH))

def oldProjection1252 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -5), (1251, -20)]

theorem oldProjectionSound1252 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1252 =
      Integer.Sparse.eval oldProjection1252 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1252 oldProjection1252
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1252 hH))

def oldProjection1253 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (94, 25), (1250, 120), (1251, -20)]

theorem oldProjectionSound1253 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1253 =
      Integer.Sparse.eval oldProjection1253 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1253 oldProjection1253
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1253 hH))

def oldProjection1254 : Integer.Sparse (Fin 1613) := [(102, -3), (241, 1), (243, 1), (698, 1), (1223, -3)]

theorem oldProjectionSound1254 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1254 =
      Integer.Sparse.eval oldProjection1254 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1254 oldProjection1254
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1254 hH))

def oldProjection1255 : Integer.Sparse (Fin 1613) := [(238, -3), (698, 1), (700, 1), (1058, -3), (1059, 1)]

theorem oldProjectionSound1255 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1255 =
      Integer.Sparse.eval oldProjection1255 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1255 oldProjection1255
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1255 hH))

def oldProjection1256 : Integer.Sparse (Fin 1613) := [(695, -3), (697, -3), (698, 1), (700, 1), (1059, 1)]

theorem oldProjectionSound1256 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1256 =
      Integer.Sparse.eval oldProjection1256 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1256 oldProjection1256
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1256 hH))

def oldProjection1257 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (238, -48), (241, 32), (243, 16), (247, 16), (698, 16), (1251, 1)]

theorem oldProjectionSound1257 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1257 =
      Integer.Sparse.eval oldProjection1257 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1257 oldProjection1257
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1257 hH))

def oldProjection1258 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (102, -48), (104, 32), (105, 16), (108, 16), (241, 16), (1251, 1)]

theorem oldProjectionSound1258 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1258 =
      Integer.Sparse.eval oldProjection1258 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1258 oldProjection1258
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1258 hH))

def oldProjection1259 : Integer.Sparse (Fin 1613) := [(0, 11), (94, -5), (1251, -60)]

theorem oldProjectionSound1259 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1259 =
      Integer.Sparse.eval oldProjection1259 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1259 oldProjection1259
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1259 hH))

def oldProjection1260 : Integer.Sparse (Fin 1613) := [(0, 14), (94, 15), (1251, -35)]

theorem oldProjectionSound1260 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1260 =
      Integer.Sparse.eval oldProjection1260 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1260 oldProjection1260
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1260 hH))

def oldProjection1261 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (94, 30), (1251, -25)]

theorem oldProjectionSound1261 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1261 =
      Integer.Sparse.eval oldProjection1261 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1261 oldProjection1261
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1261 hH))

def oldProjection1262 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 5), (1251, -30)]

theorem oldProjectionSound1262 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1262 =
      Integer.Sparse.eval oldProjection1262 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1262 oldProjection1262
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1262 hH))

def oldProjection1263 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 20), (1250, 60), (1251, -55)]

theorem oldProjectionSound1263 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1263 =
      Integer.Sparse.eval oldProjection1263 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1263 oldProjection1263
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1263 hH))

def oldProjection1264 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 5), (1251, 65)]

theorem oldProjectionSound1264 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1264 =
      Integer.Sparse.eval oldProjection1264 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1264 oldProjection1264
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1264 hH))

def oldProjection1265 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5)]

theorem oldProjectionSound1265 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1265 =
      Integer.Sparse.eval oldProjection1265 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1265 oldProjection1265
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1265 hH))

def oldProjection1266 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (241, 16), (690, -48), (694, -48), (1251, 1)]

theorem oldProjectionSound1266 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1266 =
      Integer.Sparse.eval oldProjection1266 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1266 oldProjection1266
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1266 hH))

def oldProjection1267 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, -40), (1251, -35)]

theorem oldProjectionSound1267 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1267 =
      Integer.Sparse.eval oldProjection1267 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1267 oldProjection1267
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1267 hH))

def oldProjection1268 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -20), (1251, -15)]

theorem oldProjectionSound1268 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1268 =
      Integer.Sparse.eval oldProjection1268 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1268 oldProjection1268
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1268 hH))

def oldProjection1269 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 8), (700, 24), (1052, -24), (1059, 8), (1251, 1)]

theorem oldProjectionSound1269 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1269 =
      Integer.Sparse.eval oldProjection1269 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1269 oldProjection1269
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1269 hH))

def oldProjection1270 : Integer.Sparse (Fin 1613) := [(243, 1), (698, 1), (700, 1), (1052, -3), (1219, -3)]

theorem oldProjectionSound1270 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1270 =
      Integer.Sparse.eval oldProjection1270 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1270 oldProjection1270
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1270 hH))

def oldProjection1271 : Integer.Sparse (Fin 1613) := [(105, 1), (241, 1), (243, 1), (691, -3), (1047, -3)]

theorem oldProjectionSound1271 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1271 =
      Integer.Sparse.eval oldProjection1271 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1271 oldProjection1271
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1271 hH))

def oldProjection1272 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 5), (94, 10), (1251, 5)]

theorem oldProjectionSound1272 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1272 =
      Integer.Sparse.eval oldProjection1272 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1272 oldProjection1272
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1272 hH))

def oldProjection1273 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (244, 16), (692, -48), (700, 16), (701, 32), (704, 16)]

theorem oldProjectionSound1273 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1273 =
      Integer.Sparse.eval oldProjection1273 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1273 oldProjection1273
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1273 hH))

def oldProjection1274 : Integer.Sparse (Fin 1613) := [(94, 1), (240, -24), (698, 8), (704, 8), (1251, 1), (1321, -24)]

theorem oldProjectionSound1274 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1274 =
      Integer.Sparse.eval oldProjection1274 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1274 oldProjection1274
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1274 hH))

def oldProjection1275 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (243, 32), (1057, -48), (1225, 16), (1226, 16), (1251, 1)]

theorem oldProjectionSound1275 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1275 =
      Integer.Sparse.eval oldProjection1275 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1275 oldProjection1275
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1275 hH))

def oldProjection1276 : Integer.Sparse (Fin 1613) := [(0, -1), (697, -240), (698, 80), (1227, 80), (1251, -15), (1389, -240)]

theorem oldProjectionSound1276 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1276 =
      Integer.Sparse.eval oldProjection1276 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1276 oldProjection1276
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1276 hH))

def oldProjection1277 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (698, 160), (1058, -240), (1226, 80), (1227, 80), (1251, 20)]

theorem oldProjectionSound1277 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1277 =
      Integer.Sparse.eval oldProjection1277 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1277 oldProjection1277
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1277 hH))

def oldProjection1278 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (243, 16), (698, 16), (704, 32), (1223, -48), (1251, 3)]

theorem oldProjectionSound1278 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1278 =
      Integer.Sparse.eval oldProjection1278 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1278 oldProjection1278
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1278 hH))

def oldProjection1279 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 16), (247, 16), (694, -48), (1251, 1), (1319, -48)]

theorem oldProjectionSound1279 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1279 =
      Integer.Sparse.eval oldProjection1279 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1279 oldProjection1279
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1279 hH))

def oldProjection1280 : Integer.Sparse (Fin 1613) := [(0, -53), (1251, 5)]

theorem oldProjectionSound1280 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1280 =
      Integer.Sparse.eval oldProjection1280 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1280 oldProjection1280
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1280 hH))

def oldProjection1281 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -40), (1059, 40), (1227, 40), (1251, -15)]

theorem oldProjectionSound1281 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1281 =
      Integer.Sparse.eval oldProjection1281 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1281 oldProjection1281
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1281 hH))

def oldProjection1282 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 4), (700, 4), (704, -4), (1251, 1)]

theorem oldProjectionSound1282 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1282 =
      Integer.Sparse.eval oldProjection1282 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1282 oldProjection1282
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1282 hH))

def oldProjection1283 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 32), (1226, -16), (1227, 16), (1251, -3)]

theorem oldProjectionSound1283 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1283 =
      Integer.Sparse.eval oldProjection1283 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1283 oldProjection1283
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1283 hH))

def oldProjection1284 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1251, 70)]

theorem oldProjectionSound1284 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1284 =
      Integer.Sparse.eval oldProjection1284 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1284 oldProjection1284
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1284 hH))

def oldProjection1285 : Integer.Sparse (Fin 1613) := [(94, 1), (241, -8), (698, 16), (1251, -3)]

theorem oldProjectionSound1285 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1285 =
      Integer.Sparse.eval oldProjection1285 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1285 oldProjection1285
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1285 hH))

def oldProjection1286 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (698, -80), (704, 80), (1251, 30)]

theorem oldProjectionSound1286 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1286 =
      Integer.Sparse.eval oldProjection1286 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1286 oldProjection1286
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1286 hH))

def oldProjection1287 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 11), (243, 16), (700, 16), (1251, -2)]

theorem oldProjectionSound1287 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1287 =
      Integer.Sparse.eval oldProjection1287 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1287 oldProjection1287
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1287 hH))

def oldProjection1291 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5)]

theorem oldProjectionSound1291 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1291 =
      Integer.Sparse.eval oldProjection1291 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1291 oldProjection1291
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1291 hH))

def oldProjection1294 : Integer.Sparse (Fin 1613) := [(0, -7), (1251, -5)]

theorem oldProjectionSound1294 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1294 =
      Integer.Sparse.eval oldProjection1294 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1294 oldProjection1294
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1294 hH))

def oldProjection1295 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, 16), (241, 16), (243, 16), (704, 16), (1251, -1)]

theorem oldProjectionSound1295 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1295 =
      Integer.Sparse.eval oldProjection1295 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1295 oldProjection1295
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1295 hH))

def oldProjection1296 : Integer.Sparse (Fin 1613) := [(94, -1), (241, 16), (698, 32), (1226, 16), (1251, 3)]

theorem oldProjectionSound1296 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1296 =
      Integer.Sparse.eval oldProjection1296 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1296 oldProjection1296
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1296 hH))

def oldProjection1297 : Integer.Sparse (Fin 1613) := [(88, 1), (105, 1), (241, -1), (243, 2)]

theorem oldProjectionSound1297 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1297 =
      Integer.Sparse.eval oldProjection1297 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1297 oldProjection1297
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1297 hH))

def oldProjection1298 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (108, 16), (247, 16), (1251, 1)]

theorem oldProjectionSound1298 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1298 =
      Integer.Sparse.eval oldProjection1298 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1298 oldProjection1298
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1298 hH))

def oldProjection1299 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (247, 80), (1251, -5)]

theorem oldProjectionSound1299 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1299 =
      Integer.Sparse.eval oldProjection1299 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1299 oldProjection1299
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1299 hH))

def oldProjection1300 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (105, 16), (241, 16), (243, -16), (1251, 1)]

theorem oldProjectionSound1300 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1300 =
      Integer.Sparse.eval oldProjection1300 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1300 oldProjection1300
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1300 hH))

def oldProjection1301 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (241, 80), (698, -80), (1251, -20)]

theorem oldProjectionSound1301 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1301 =
      Integer.Sparse.eval oldProjection1301 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1301 oldProjection1301
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1301 hH))

def oldProjection1302 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 8), (241, -8), (247, 8), (1251, 1)]

theorem oldProjectionSound1302 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1302 =
      Integer.Sparse.eval oldProjection1302 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1302 oldProjection1302
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1302 hH))

def oldProjection1303 : Integer.Sparse (Fin 1613) := [(19, -2), (94, -1), (682, -24), (690, -24), (1251, -3)]

theorem oldProjectionSound1303 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1303 =
      Integer.Sparse.eval oldProjection1303 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1303 oldProjection1303
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1303 hH))

def oldProjection1304 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1050, -240), (1221, -240), (1251, 50)]

theorem oldProjectionSound1304 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1304 =
      Integer.Sparse.eval oldProjection1304 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1304 oldProjection1304
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1304 hH))

def oldProjection1305 : Integer.Sparse (Fin 1613) := [(76, -48), (94, 1), (241, 16), (691, -48), (698, 16), (1251, -3)]

theorem oldProjectionSound1305 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1305 =
      Integer.Sparse.eval oldProjection1305 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1305 oldProjection1305
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1305 hH))

end NoFourMUBs.Step2.SOS.Normalization
