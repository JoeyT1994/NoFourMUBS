import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound21

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1306 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (241, 16), (243, 48), (698, 32), (704, 32), (1251, 1)]

theorem oldProjectionSound1306 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1306 =
      Integer.Sparse.eval oldProjection1306 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1306 oldProjection1306
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1306 hH))

def oldProjection1307 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 4), (104, 16), (704, -16), (1251, 3)]

theorem oldProjectionSound1307 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1307 =
      Integer.Sparse.eval oldProjection1307 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1307 oldProjection1307
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1307 hH))

def oldProjection1308 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 30), (694, -240), (698, 80), (704, 80), (1251, 35)]

theorem oldProjectionSound1308 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1308 =
      Integer.Sparse.eval oldProjection1308 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1308 oldProjection1308
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1308 hH))

def oldProjection1309 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (698, 80), (1055, -240), (1227, 80), (1251, -40)]

theorem oldProjectionSound1309 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1309 =
      Integer.Sparse.eval oldProjection1309 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1309 oldProjection1309
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1309 hH))

def oldProjection1310 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (247, 40), (694, -120), (697, -120), (1251, 10)]

theorem oldProjectionSound1310 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1310 =
      Integer.Sparse.eval oldProjection1310 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1310 oldProjection1310
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1310 hH))

def oldProjection1311 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (241, 80), (698, 160), (1059, 80), (1251, -55)]

theorem oldProjectionSound1311 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1311 =
      Integer.Sparse.eval oldProjection1311 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1311 oldProjection1311
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1311 hH))

def oldProjection1312 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 35), (104, 80), (700, 80), (704, 160), (1251, 40)]

theorem oldProjectionSound1312 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1312 =
      Integer.Sparse.eval oldProjection1312 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1312 oldProjection1312
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1312 hH))

def oldProjection1313 : Integer.Sparse (Fin 1613) := [(94, 1), (243, 8), (691, -24), (698, 8), (700, 16), (704, 8), (1251, 1)]

theorem oldProjectionSound1313 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1313 =
      Integer.Sparse.eval oldProjection1313 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1313 oldProjection1313
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1313 hH))

def oldProjection1314 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1050, -120), (1059, 80), (1251, -15)]

theorem oldProjectionSound1314 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1314 =
      Integer.Sparse.eval oldProjection1314 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1314 oldProjection1314
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1314 hH))

def oldProjection1315 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (690, -48), (697, -48), (698, 16), (1251, -3)]

theorem oldProjectionSound1315 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1315 =
      Integer.Sparse.eval oldProjection1315 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1315 oldProjection1315
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1315 hH))

def oldProjection1316 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (241, 40), (698, 80), (1227, 40), (1251, 10)]

theorem oldProjectionSound1316 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1316 =
      Integer.Sparse.eval oldProjection1316 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1316 oldProjection1316
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1316 hH))

def oldProjection1317 : Integer.Sparse (Fin 1613) := [(19, -8), (94, 1), (104, 16), (241, 16), (698, 16), (704, 16), (1251, -3)]

theorem oldProjectionSound1317 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1317 =
      Integer.Sparse.eval oldProjection1317 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1317 oldProjection1317
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1317 hH))

def oldProjection1318 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (243, 16), (698, 32), (1047, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound1318 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1318 =
      Integer.Sparse.eval oldProjection1318 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1318 oldProjection1318
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1318 hH))

def oldProjection1319 : Integer.Sparse (Fin 1613) := [(1047, -1), (1055, -1), (1058, -1)]

theorem oldProjectionSound1319 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1319 =
      Integer.Sparse.eval oldProjection1319 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1319 oldProjection1319
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1319 hH))

def oldProjection1320 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -5), (105, 16), (241, 16), (243, 32), (698, 16), (700, 16), (1251, -2)]

theorem oldProjectionSound1320 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1320 =
      Integer.Sparse.eval oldProjection1320 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1320 oldProjection1320
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1320 hH))

def oldProjection1321 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 16), (700, 16), (1044, -48), (1052, -48), (1251, 1)]

theorem oldProjectionSound1321 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1321 =
      Integer.Sparse.eval oldProjection1321 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1321 oldProjection1321
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1321 hH))

def oldProjection1322 : Integer.Sparse (Fin 1613) := [(691, -1), (1050, -1), (1058, -1)]

theorem oldProjectionSound1322 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1322 =
      Integer.Sparse.eval oldProjection1322 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1322 oldProjection1322
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1322 hH))

def oldProjection1323 : Integer.Sparse (Fin 1613) := [(0, -13), (94, 10), (1251, -45)]

theorem oldProjectionSound1323 {H : CMatrix} (hH : IsHadamard H) :
    (60 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1323 =
      Integer.Sparse.eval oldProjection1323 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 60 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1323 oldProjection1323
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1323 hH))

def oldProjection1324 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 2), (94, 7), (704, 16), (1251, 5), (1278, -48)]

theorem oldProjectionSound1324 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1324 =
      Integer.Sparse.eval oldProjection1324 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1324 oldProjection1324
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1324 hH))

def oldProjection1325 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (94, 2), (1054, -48), (1223, -48), (1251, 1)]

theorem oldProjectionSound1325 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1325 =
      Integer.Sparse.eval oldProjection1325 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1325 oldProjection1325
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1325 hH))

def oldProjection1326 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 10), (94, 25), (698, 80), (704, 80), (1251, 20)]

theorem oldProjectionSound1326 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1326 =
      Integer.Sparse.eval oldProjection1326 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1326 oldProjection1326
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1326 hH))

def oldProjection1327 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, 3), (704, 16), (1251, 4), (1321, -48)]

theorem oldProjectionSound1327 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1327 =
      Integer.Sparse.eval oldProjection1327 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1327 oldProjection1327
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1327 hH))

def oldProjection1328 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, 20), (20, 5), (94, -10), (1251, -30)]

theorem oldProjectionSound1328 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1328 =
      Integer.Sparse.eval oldProjection1328 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1328 oldProjection1328
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1328 hH))

def oldProjection1329 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (1058, -48), (1223, -48), (1251, -1)]

theorem oldProjectionSound1329 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1329 =
      Integer.Sparse.eval oldProjection1329 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1329 oldProjection1329
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1329 hH))

def oldProjection1330 : Integer.Sparse (Fin 1613) := [(1396, 1)]

theorem oldProjectionSound1330 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1330 =
      Integer.Sparse.eval oldProjection1330 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1330 oldProjection1330
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1330 hH))

def oldProjection1331 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1250, 60), (1251, -10), (1321, -240), (1389, -240)]

theorem oldProjectionSound1331 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1331 =
      Integer.Sparse.eval oldProjection1331 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1331 oldProjection1331
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1331 hH))

def oldProjection1332 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (94, 15), (698, 40), (1251, 10), (1323, -120)]

theorem oldProjectionSound1332 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1332 =
      Integer.Sparse.eval oldProjection1332 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1332 oldProjection1332
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1332 hH))

def oldProjection1333 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 25), (698, 80), (1389, -240)]

theorem oldProjectionSound1333 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1333 =
      Integer.Sparse.eval oldProjection1333 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1333 oldProjection1333
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1333 hH))

def oldProjection1334 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (698, 40), (1251, -5)]

theorem oldProjectionSound1334 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1334 =
      Integer.Sparse.eval oldProjection1334 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1334 oldProjection1334
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1334 hH))

def oldProjection1335 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -4), (1251, 3)]

theorem oldProjectionSound1335 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1335 =
      Integer.Sparse.eval oldProjection1335 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1335 oldProjection1335
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1335 hH))

def oldProjection1336 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 20), (698, 160), (704, 80), (1227, 80), (1251, -25)]

theorem oldProjectionSound1336 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1336 =
      Integer.Sparse.eval oldProjection1336 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1336 oldProjection1336
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1336 hH))

def oldProjection1337 : Integer.Sparse (Fin 1613) := [(19, -2), (94, -1), (243, 8), (700, 16), (704, 8), (1251, 1)]

theorem oldProjectionSound1337 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1337 =
      Integer.Sparse.eval oldProjection1337 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1337 oldProjection1337
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1337 hH))

def oldProjection1338 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (94, 2), (1061, -48), (1214, -48), (1251, 1)]

theorem oldProjectionSound1338 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1338 =
      Integer.Sparse.eval oldProjection1338 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1338 oldProjection1338
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1338 hH))

def oldProjection1339 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (94, -30), (1251, -10), (1321, -240)]

theorem oldProjectionSound1339 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1339 =
      Integer.Sparse.eval oldProjection1339 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1339 oldProjection1339
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1339 hH))

def oldProjection1340 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, -3), (704, 16)]

theorem oldProjectionSound1340 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1340 =
      Integer.Sparse.eval oldProjection1340 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1340 oldProjection1340
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1340 hH))

def oldProjection1341 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -80), (20, 5), (94, 45), (247, 80), (704, 80), (1251, 45)]

theorem oldProjectionSound1341 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1341 =
      Integer.Sparse.eval oldProjection1341 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1341 oldProjection1341
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1341 hH))

def oldProjection1342 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 2), (242, -48), (700, 16), (704, 16), (1251, 5)]

theorem oldProjectionSound1342 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1342 =
      Integer.Sparse.eval oldProjection1342 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1342 oldProjection1342
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1342 hH))

def oldProjection1343 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -8), (243, 16), (1060, -48), (1225, 16), (1251, 1)]

theorem oldProjectionSound1343 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1343 =
      Integer.Sparse.eval oldProjection1343 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1343 oldProjection1343
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1343 hH))

def oldProjection1344 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1250, 30), (1251, 40)]

theorem oldProjectionSound1344 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1344 =
      Integer.Sparse.eval oldProjection1344 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1344 oldProjection1344
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1344 hH))

def oldProjection1345 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 5), (1251, 5)]

theorem oldProjectionSound1345 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1345 =
      Integer.Sparse.eval oldProjection1345 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1345 oldProjection1345
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1345 hH))

def oldProjection1346 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 10), (697, -240), (698, 80), (1059, 80), (1251, -35)]

theorem oldProjectionSound1346 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1346 =
      Integer.Sparse.eval oldProjection1346 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1346 oldProjection1346
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1346 hH))

def oldProjection1347 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (698, 80), (1058, -240), (1226, 80), (1251, -40)]

theorem oldProjectionSound1347 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1347 =
      Integer.Sparse.eval oldProjection1347 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1347 oldProjection1347
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1347 hH))

def oldProjection1348 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (241, 16), (243, 16), (1223, -48), (1251, -1)]

theorem oldProjectionSound1348 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1348 =
      Integer.Sparse.eval oldProjection1348 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1348 oldProjection1348
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1348 hH))

def oldProjection1349 : Integer.Sparse (Fin 1613) := [(0, -27), (94, 5), (1251, -20)]

theorem oldProjectionSound1349 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1349 =
      Integer.Sparse.eval oldProjection1349 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1349 oldProjection1349
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1349 hH))

def oldProjection1350 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (1251, -30)]

theorem oldProjectionSound1350 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1350 =
      Integer.Sparse.eval oldProjection1350 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1350 oldProjection1350
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1350 hH))

def oldProjection1351 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 20), (241, 80), (247, 80), (697, -240), (1251, 5)]

theorem oldProjectionSound1351 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1351 =
      Integer.Sparse.eval oldProjection1351 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1351 oldProjection1351
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1351 hH))

def oldProjection1352 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 80), (700, 80), (1219, -240), (1251, 10)]

theorem oldProjectionSound1352 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1352 =
      Integer.Sparse.eval oldProjection1352 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1352 oldProjection1352
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1352 hH))

def oldProjection1353 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (243, 16), (244, 16), (1214, -48), (1251, 1)]

theorem oldProjectionSound1353 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1353 =
      Integer.Sparse.eval oldProjection1353 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1353 oldProjection1353
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1353 hH))

def oldProjection1354 : Integer.Sparse (Fin 1613) := [(19, -8), (94, -3), (108, 16), (1251, 1)]

theorem oldProjectionSound1354 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1354 =
      Integer.Sparse.eval oldProjection1354 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1354 oldProjection1354
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1354 hH))

def oldProjection1355 : Integer.Sparse (Fin 1613) := [(94, 3), (243, 32), (700, 16), (1226, 16), (1251, -1)]

theorem oldProjectionSound1355 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1355 =
      Integer.Sparse.eval oldProjection1355 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1355 oldProjection1355
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1355 hH))

def oldProjection1356 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 3), (105, 16), (243, 32), (1225, 16)]

theorem oldProjectionSound1356 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1356 =
      Integer.Sparse.eval oldProjection1356 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1356 oldProjection1356
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1356 hH))

def oldProjection1357 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1251, -70)]

theorem oldProjectionSound1357 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1357 =
      Integer.Sparse.eval oldProjection1357 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1357 oldProjection1357
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1357 hH))

def oldProjection1358 : Integer.Sparse (Fin 1613) := [(45, -24), (94, 1), (243, 8), (698, 16), (700, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound1358 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1358 =
      Integer.Sparse.eval oldProjection1358 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1358 oldProjection1358
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1358 hH))

def oldProjection1359 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -15), (1251, -35), (1319, -240)]

theorem oldProjectionSound1359 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1359 =
      Integer.Sparse.eval oldProjection1359 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1359 oldProjection1359
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1359 hH))

def oldProjection1360 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 5), (1251, -5), (1388, -120)]

theorem oldProjectionSound1360 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1360 =
      Integer.Sparse.eval oldProjection1360 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1360 oldProjection1360
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1360 hH))

def oldProjection1361 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (94, 25), (247, 80), (1251, 20), (1319, -240)]

theorem oldProjectionSound1361 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1361 =
      Integer.Sparse.eval oldProjection1361 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1361 oldProjection1361
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1361 hH))

def oldProjection1362 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (247, 40), (1251, -5)]

theorem oldProjectionSound1362 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1362 =
      Integer.Sparse.eval oldProjection1362 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1362 oldProjection1362
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1362 hH))

def oldProjection1363 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (108, 8), (1251, -3)]

theorem oldProjectionSound1363 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1363 =
      Integer.Sparse.eval oldProjection1363 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1363 oldProjection1363
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1363 hH))

def oldProjection1364 : Integer.Sparse (Fin 1613) := [(23, -3), (241, 1), (243, 2), (698, 2), (704, 1)]

theorem oldProjectionSound1364 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1364 =
      Integer.Sparse.eval oldProjection1364 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1364 oldProjection1364
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1364 hH))

def oldProjection1365 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -8), (243, 16), (1047, -48), (1226, 16), (1251, -1)]

theorem oldProjectionSound1365 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1365 =
      Integer.Sparse.eval oldProjection1365 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1365 oldProjection1365
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1365 hH))

def oldProjection1366 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 20), (241, 80), (694, -240), (698, 80), (1251, -15)]

theorem oldProjectionSound1366 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1366 =
      Integer.Sparse.eval oldProjection1366 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1366 oldProjection1366
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1366 hH))

def oldProjection1367 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (20, 5), (94, 20), (108, 80), (247, 80), (1251, 25)]

theorem oldProjectionSound1367 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1367 =
      Integer.Sparse.eval oldProjection1367 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1367 oldProjection1367
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1367 hH))

def oldProjection1368 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1250, 60), (1251, -10), (1319, -240), (1388, -240)]

theorem oldProjectionSound1368 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1368 =
      Integer.Sparse.eval oldProjection1368 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1368 oldProjection1368
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1368 hH))

def oldProjection1369 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (1047, -48), (1219, -48), (1251, -1)]

theorem oldProjectionSound1369 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1369 =
      Integer.Sparse.eval oldProjection1369 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1369 oldProjection1369
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1369 hH))

end NoFourMUBs.Step2.SOS.Normalization
