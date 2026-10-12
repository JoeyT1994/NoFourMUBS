import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound23

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1370 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (694, -240), (1055, -240), (1250, 60), (1251, -10)]

theorem oldProjectionSound1370 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1370 =
      Integer.Sparse.eval oldProjection1370 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1370 oldProjection1370
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1370 hH))

def oldProjection1371 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (94, 30), (108, 80), (247, 160), (1251, 25)]

theorem oldProjectionSound1371 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1371 =
      Integer.Sparse.eval oldProjection1371 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1371 oldProjection1371
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1371 hH))

def oldProjection1372 : Integer.Sparse (Fin 1613) := [(45, -1), (697, -1), (1219, -1)]

theorem oldProjectionSound1372 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1372 =
      Integer.Sparse.eval oldProjection1372 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1372 oldProjection1372
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1372 hH))

def oldProjection1373 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1), (1045, -16)]

theorem oldProjectionSound1373 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1373 =
      Integer.Sparse.eval oldProjection1373 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1373 oldProjection1373
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1373 hH))

def oldProjection1374 : Integer.Sparse (Fin 1613) := [(94, -1), (1052, -16), (1251, -1)]

theorem oldProjectionSound1374 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1374 =
      Integer.Sparse.eval oldProjection1374 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1374 oldProjection1374
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1374 hH))

def oldProjection1375 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 10), (1044, -48), (1217, -48), (1251, 1)]

theorem oldProjectionSound1375 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1375 =
      Integer.Sparse.eval oldProjection1375 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1375 oldProjection1375
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1375 hH))

def oldProjection1376 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (691, -48), (1052, -48), (1251, -1)]

theorem oldProjectionSound1376 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1376 =
      Integer.Sparse.eval oldProjection1376 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1376 oldProjection1376
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1376 hH))

def oldProjection1377 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (690, -240), (1050, -240), (1250, 60), (1251, -10)]

theorem oldProjectionSound1377 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1377 =
      Integer.Sparse.eval oldProjection1377 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1377 oldProjection1377
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1377 hH))

def oldProjection1378 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 25), (104, 80), (241, 160), (698, 80), (1251, -10)]

theorem oldProjectionSound1378 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1378 =
      Integer.Sparse.eval oldProjection1378 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1378 oldProjection1378
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1378 hH))

def oldProjection1383 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 20), (20, -2), (37, 48), (94, 5), (104, -16), (105, -16), (108, -32), (241, -16), (243, -48), (703, -16), (1226, -16), (1251, 7)]

theorem oldProjectionSound1383 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1383 =
      Integer.Sparse.eval oldProjection1383 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1383 oldProjection1383
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1383 hH))

def oldProjection1385 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 160), (20, -35), (26, -160), (40, 240), (42, -400), (94, -45), (104, -80), (105, -80), (241, -80), (243, -640), (698, -160), (700, -320), (701, -320), (703, -240), (704, -640), (1251, -55)]

theorem oldProjectionSound1385 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1385 =
      Integer.Sparse.eval oldProjection1385 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1385 oldProjection1385
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1385 hH))

def oldProjection1387 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 140), (20, -20), (42, -160), (94, 5), (241, -240), (243, -640), (698, -480), (700, -240), (704, -480), (1251, 5)]

theorem oldProjectionSound1387 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1387 =
      Integer.Sparse.eval oldProjection1387 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1387 oldProjection1387
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1387 hH))

def oldProjection1388 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (38, 720), (42, -160), (94, -45), (243, -240), (698, -480), (700, -880), (701, -240), (704, -480), (1059, -240), (1251, -35)]

theorem oldProjectionSound1388 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1388 =
      Integer.Sparse.eval oldProjection1388 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1388 oldProjection1388
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1388 hH))

def oldProjection1390 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 320), (20, -40), (38, 240), (94, -125), (241, -160), (243, -80), (247, -320), (698, -80), (700, -160), (701, -80), (704, -320), (1251, -120)]

theorem oldProjectionSound1390 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1390 =
      Integer.Sparse.eval oldProjection1390 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1390 oldProjection1390
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1390 hH))

def oldProjection1391 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 50), (20, -5), (38, 60), (42, -40), (94, -25), (241, -80), (243, -140), (247, -40), (698, -120), (700, -80), (701, -20), (704, -120), (1059, -20), (1251, -15)]

theorem oldProjectionSound1391 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1391 =
      Integer.Sparse.eval oldProjection1391 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1391 oldProjection1391
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1391 hH))

def oldProjection1405 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -20), (42, -160), (90, -160), (94, -25), (243, -320), (698, -400), (700, -320), (701, -80), (704, -320), (1226, -160), (1251, -20)]

theorem oldProjectionSound1405 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1405 =
      Integer.Sparse.eval oldProjection1405 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1405 oldProjection1405
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1405 hH))

def oldProjection1407 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (42, -160), (58, 240), (60, -160), (94, -15), (243, -160), (698, -160), (700, -640), (701, -40), (704, -160), (1059, -40), (1251, -35)]

theorem oldProjectionSound1407 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1407 =
      Integer.Sparse.eval oldProjection1407 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1407 oldProjection1407
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1407 hH))

def oldProjection1409 : Integer.Sparse (Fin 1613) := [(0, 6), (58, 480), (81, 720), (94, -5), (243, -80), (698, -480), (700, -240), (1052, 720), (1226, -240), (1251, 25)]

theorem oldProjectionSound1409 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1409 =
      Integer.Sparse.eval oldProjection1409 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1409 oldProjection1409
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1409 hH))

def oldProjection1410 : Integer.Sparse (Fin 1613) := [(0, 9), (60, -160), (94, -40), (698, -720), (700, -1360), (1059, -480), (1251, 15)]

theorem oldProjectionSound1410 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1410 =
      Integer.Sparse.eval oldProjection1410 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1410 oldProjection1410
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1410 hH))

def oldProjection1411 : Integer.Sparse (Fin 1613) := [(0, 3), (42, -240), (56, 720), (60, -160), (90, -480), (94, -25), (698, -720), (700, -1120), (1059, -240), (1226, -240)]

theorem oldProjectionSound1411 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1411 =
      Integer.Sparse.eval oldProjection1411 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1411 oldProjection1411
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1411 hH))

def oldProjection1420 : Integer.Sparse (Fin 1613) := [(0, 3), (72, 480), (76, 480), (79, 240), (81, 480), (88, -80), (90, -160), (94, -15), (241, -80), (243, -80), (698, -560), (700, -80), (1050, 240), (1058, 240), (1059, -80), (1221, 480), (1226, -320), (1227, -160), (1251, 10)]

theorem oldProjectionSound1420 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1420 =
      Integer.Sparse.eval oldProjection1420 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1420 oldProjection1420
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1420 hH))

def oldProjection1421 : Integer.Sparse (Fin 1613) := [(20, -1), (72, 48), (94, -11), (243, -32), (700, -96), (1251, 2)]

theorem oldProjectionSound1421 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1421 =
      Integer.Sparse.eval oldProjection1421 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1421 oldProjection1421
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1421 hH))

def oldProjection1422 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (20, -10), (88, -160), (90, -160), (94, 25), (241, -80), (243, -320), (698, -320), (700, -80), (1226, -160), (1251, 25)]

theorem oldProjectionSound1422 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1422 =
      Integer.Sparse.eval oldProjection1422 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1422 oldProjection1422
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1422 hH))

def oldProjection1423 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (76, 120), (81, 120), (90, -40), (698, -40), (700, -80), (704, -40), (1058, 120), (1226, -40), (1251, 25)]

theorem oldProjectionSound1423 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1423 =
      Integer.Sparse.eval oldProjection1423 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1423 oldProjection1423
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1423 hH))

def oldProjection1424 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (42, -320), (77, 240), (88, -320), (89, 480), (90, -320), (91, -240), (94, -10), (241, -160), (243, -720), (698, -400), (700, -160), (701, -80), (704, -320), (1226, -320), (1251, -5)]

theorem oldProjectionSound1424 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1424 =
      Integer.Sparse.eval oldProjection1424 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1424 oldProjection1424
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1424 hH))

def oldProjection1425 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (20, -5), (76, 240), (88, -160), (90, -400), (94, -20), (241, -80), (243, -240), (698, -880), (700, -320), (704, -80), (1226, -640), (1227, -160), (1251, 35)]

theorem oldProjectionSound1425 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1425 =
      Integer.Sparse.eval oldProjection1425 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1425 oldProjection1425
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1425 hH))

def oldProjection1426 : Integer.Sparse (Fin 1613) := [(0, 3), (79, 240), (81, 240), (88, -80), (90, -160), (94, 20), (243, -80), (698, -80), (700, -80), (1052, 240), (1226, -80), (1251, -15)]

theorem oldProjectionSound1426 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1426 =
      Integer.Sparse.eval oldProjection1426 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1426 oldProjection1426
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1426 hH))

def oldProjection1428 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -160), (94, 10), (698, -240), (700, -400), (1059, -160), (1226, -160), (1251, 15)]

theorem oldProjectionSound1428 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1428 =
      Integer.Sparse.eval oldProjection1428 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1428 oldProjection1428
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1428 hH))

def oldProjection1430 : Integer.Sparse (Fin 1613) := [(0, -2), (90, -160), (94, -25), (698, -640), (700, -80), (1226, -480), (1227, -320), (1251, 45)]

theorem oldProjectionSound1430 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1430 =
      Integer.Sparse.eval oldProjection1430 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1430 oldProjection1430
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1430 hH))

def oldProjection1432 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 480), (90, -160), (94, -55), (698, -960), (700, -560), (1059, -480), (1226, -160), (1227, -160), (1251, 115)]

theorem oldProjectionSound1432 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1432 =
      Integer.Sparse.eval oldProjection1432 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1432 oldProjection1432
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1432 hH))

def oldProjection1433 : Integer.Sparse (Fin 1613) := [(79, 12), (87, 24), (88, -12), (90, -32), (94, -1), (698, -48), (700, -8), (1226, -48), (1227, -16), (1251, 3)]

theorem oldProjectionSound1433 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1433 =
      Integer.Sparse.eval oldProjection1433 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1433 oldProjection1433
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1433 hH))

def oldProjection1434 : Integer.Sparse (Fin 1613) := [(0, -4), (81, 240), (90, -160), (94, -65), (698, -1040), (700, -80), (1059, -80), (1226, -560), (1227, -480), (1251, 135)]

theorem oldProjectionSound1434 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1434 =
      Integer.Sparse.eval oldProjection1434 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1434 oldProjection1434
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1434 hH))

def oldProjection1436 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (94, -30), (102, 720), (104, -480), (105, -640), (106, -240), (241, -960), (243, -640), (698, -480), (1251, 45)]

theorem oldProjectionSound1436 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1436 =
      Integer.Sparse.eval oldProjection1436 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1436 oldProjection1436
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1436 hH))

def oldProjection1439 : Integer.Sparse (Fin 1613) := [(3, 32), (19, -4), (20, -4), (94, -3), (102, 48), (104, -48), (105, -16), (108, -32), (241, -16), (1251, 1)]

theorem oldProjectionSound1439 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1439 =
      Integer.Sparse.eval oldProjection1439 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1439 oldProjection1439
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1439 hH))

def oldProjection1440 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 20), (20, -5), (23, 480), (94, -15), (102, 240), (104, -160), (108, -160), (241, -240), (243, -80), (247, -160), (698, -80), (1251, 5)]

theorem oldProjectionSound1440 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1440 =
      Integer.Sparse.eval oldProjection1440 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1440 oldProjection1440
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1440 hH))

def oldProjection1441 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 8), (20, -2), (94, -1), (104, -32), (105, -16), (108, -16), (241, -24), (243, -8), (1054, 24), (1251, 1)]

theorem oldProjectionSound1441 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1441 =
      Integer.Sparse.eval oldProjection1441 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1441 oldProjection1441
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1441 hH))

def oldProjection1442 : Integer.Sparse (Fin 1613) := [(19, 3), (23, 6), (94, -1), (104, -14), (105, -8), (108, -6), (241, -8), (247, -2)]

theorem oldProjectionSound1442 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1442 =
      Integer.Sparse.eval oldProjection1442 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1442 oldProjection1442
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1442 hH))

def oldProjection1443 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 120), (19, 160), (20, -25), (94, -70), (104, -80), (108, -560), (247, -320), (1251, -55), (1278, 240)]

theorem oldProjectionSound1443 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1443 =
      Integer.Sparse.eval oldProjection1443 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1443 oldProjection1443
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1443 hH))

def oldProjection1444 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (23, 120), (94, -20), (104, -120), (108, -440), (241, -40), (247, -160), (1251, -25)]

theorem oldProjectionSound1444 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1444 =
      Integer.Sparse.eval oldProjection1444 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1444 oldProjection1444
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1444 hH))

def oldProjection1445 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (23, 240), (94, -35), (104, -160), (105, -80), (108, -80), (113, -720), (241, -320), (243, -160), (247, -80), (698, -160), (704, -80), (1054, 240)]

theorem oldProjectionSound1445 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1445 =
      Integer.Sparse.eval oldProjection1445 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1445 oldProjection1445
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1445 hH))

def oldProjection1446 : Integer.Sparse (Fin 1613) := [(19, 8), (23, 48), (94, -3), (102, 48), (104, -64), (105, -48), (108, -16), (111, -144), (241, -32), (243, -16), (698, -16), (1251, 1)]

theorem oldProjectionSound1446 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1446 =
      Integer.Sparse.eval oldProjection1446 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1446 oldProjection1446
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1446 hH))

def oldProjection1447 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (23, 240), (94, -30), (102, 240), (104, -240), (105, -80), (108, -320), (113, -720), (241, -240), (243, -80), (247, -160), (698, -80), (1251, -15)]

theorem oldProjectionSound1447 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1447 =
      Integer.Sparse.eval oldProjection1447 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1447 oldProjection1447
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1447 hH))

def oldProjection1448 : Integer.Sparse (Fin 1613) := [(23, 6), (102, 3), (111, -9), (241, -2), (243, -4), (698, -1), (704, -2), (1054, 3)]

theorem oldProjectionSound1448 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1448 =
      Integer.Sparse.eval oldProjection1448 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1448 oldProjection1448
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1448 hH))

def oldProjection1449 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (23, 480), (94, -35), (102, 240), (113, -720), (241, -160), (243, -160), (698, -240), (704, -160), (1278, 240)]

theorem oldProjectionSound1449 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1449 =
      Integer.Sparse.eval oldProjection1449 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1449 oldProjection1449
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1449 hH))

def oldProjection1450 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 80), (19, 80), (20, -15), (23, 480), (94, -45), (104, -80), (108, -240), (243, -80), (247, -80), (698, -80), (704, -160), (1054, 240), (1251, -35), (1278, 240)]

theorem oldProjectionSound1450 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1450 =
      Integer.Sparse.eval oldProjection1450 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1450 oldProjection1450
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1450 hH))

def oldProjection1451 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (104, -80), (108, -400), (113, -360), (247, -120), (1251, -20)]

theorem oldProjectionSound1451 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1451 =
      Integer.Sparse.eval oldProjection1451 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1451 oldProjection1451
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1451 hH))

def oldProjection1452 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (94, -45), (104, -320), (105, -80), (108, -560), (119, -720), (241, -160), (247, -320), (1251, -35)]

theorem oldProjectionSound1452 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1452 =
      Integer.Sparse.eval oldProjection1452 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1452 oldProjection1452
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1452 hH))

def oldProjection1453 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -1), (23, 24), (94, -2), (104, -8), (105, -8), (241, -8), (704, -8), (1251, -1), (1278, 24)]

theorem oldProjectionSound1453 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1453 =
      Integer.Sparse.eval oldProjection1453 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1453 oldProjection1453
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1453 hH))

def oldProjection1455 : Integer.Sparse (Fin 1613) := [(19, 3), (23, 12), (38, 12), (94, -1), (104, -8), (105, -8), (138, -36), (241, -8), (243, -8), (247, -4), (698, -4), (704, -4)]

theorem oldProjectionSound1455 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1455 =
      Integer.Sparse.eval oldProjection1455 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1455 oldProjection1455
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1455 hH))

def oldProjection1456 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 70), (23, 120), (38, 240), (94, -40), (241, -40), (247, -120), (698, -40), (700, -40), (704, -80), (1061, 120), (1251, -35), (1278, 120)]

theorem oldProjectionSound1456 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1456 =
      Integer.Sparse.eval oldProjection1456 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1456 oldProjection1456
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1456 hH))

def oldProjection1457 : Integer.Sparse (Fin 1613) := [(19, -20), (20, -2), (94, 1), (124, -144), (1054, 48), (1058, 48), (1223, 96), (1251, 3)]

theorem oldProjectionSound1457 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1457 =
      Integer.Sparse.eval oldProjection1457 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1457 oldProjection1457
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1457 hH))

def oldProjection1458 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -40), (20, -5), (94, -15), (238, 240), (241, -240), (243, -80), (247, -160), (698, -80), (1250, -60), (1251, 35)]

theorem oldProjectionSound1458 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1458 =
      Integer.Sparse.eval oldProjection1458 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1458 oldProjection1458
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1458 hH))

def oldProjection1459 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (38, 480), (94, -30), (238, 240), (241, -160), (247, -160), (697, 480), (698, -80), (700, -80), (1059, -80), (1250, -60), (1251, 15)]

theorem oldProjectionSound1459 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1459 =
      Integer.Sparse.eval oldProjection1459 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1459 oldProjection1459
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1459 hH))

def oldProjection1460 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (126, -36), (241, -4), (243, -8), (698, -8), (1050, 12), (1052, 24), (1053, 12), (1251, 1)]

theorem oldProjectionSound1460 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1460 =
      Integer.Sparse.eval oldProjection1460 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1460 oldProjection1460
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1460 hH))

def oldProjection1461 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (127, -72), (243, -16), (698, -32), (1055, 24), (1251, 5)]

theorem oldProjectionSound1461 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1461 =
      Integer.Sparse.eval oldProjection1461 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1461 oldProjection1461
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1461 hH))

def oldProjection1462 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (129, -180), (247, -20), (1055, 60), (1061, 60), (1219, 120), (1251, -15)]

theorem oldProjectionSound1462 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1462 =
      Integer.Sparse.eval oldProjection1462 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1462 oldProjection1462
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1462 hH))

def oldProjection1463 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 1), (137, -144), (241, -32), (243, -32), (698, -16), (1052, 48), (1053, 48), (1054, 48), (1223, 48), (1226, -16), (1251, 6)]

theorem oldProjectionSound1463 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1463 =
      Integer.Sparse.eval oldProjection1463 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1463 oldProjection1463
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1463 hH))

def oldProjection1465 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, -15), (140, -720), (243, -80), (247, -80), (698, -160), (704, -80), (1054, 240), (1061, 240), (1219, 240), (1223, 240), (1226, -80), (1227, -80), (1251, -15)]

theorem oldProjectionSound1465 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1465 =
      Integer.Sparse.eval oldProjection1465 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1465 oldProjection1465
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1465 hH))

def oldProjection1467 : Integer.Sparse (Fin 1613) := [(19, -20), (20, -4), (94, 9), (241, -32), (243, -32), (1052, 48), (1053, 48), (1251, 13)]

theorem oldProjectionSound1467 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1467 =
      Integer.Sparse.eval oldProjection1467 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1467 oldProjection1467
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1467 hH))

def oldProjection1468 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (38, 240), (94, -55), (241, -240), (243, -240), (247, -160), (697, 240), (698, -320), (704, -80), (1251, 15)]

theorem oldProjectionSound1468 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1468 =
      Integer.Sparse.eval oldProjection1468 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1468 oldProjection1468
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1468 hH))

def oldProjection1469 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -25), (94, -50), (247, -160), (1061, 240), (1219, 240), (1251, -40)]

theorem oldProjectionSound1469 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1469 =
      Integer.Sparse.eval oldProjection1469 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1469 oldProjection1469
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1469 hH))

def oldProjection1470 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 160), (38, 240), (94, -95), (241, -160), (247, -240), (697, 240), (704, -80), (1251, -90)]

theorem oldProjectionSound1470 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1470 =
      Integer.Sparse.eval oldProjection1470 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1470 oldProjection1470
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1470 hH))

def oldProjection1471 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (38, 120), (94, -10), (129, -360), (241, -80), (243, -40), (247, -40), (697, 120), (698, -80), (700, -80), (1052, 120), (1053, 120), (1059, -80), (1251, 5)]

theorem oldProjectionSound1471 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1471 =
      Integer.Sparse.eval oldProjection1471 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1471 oldProjection1471
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1471 hH))

def oldProjection1472 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (38, 240), (94, -40), (143, -720), (241, -80), (247, -160), (697, 240), (698, -160), (700, -80), (1061, 240), (1219, 240), (1227, -80), (1251, -15)]

theorem oldProjectionSound1472 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1472 =
      Integer.Sparse.eval oldProjection1472 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1472 oldProjection1472
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1472 hH))

end NoFourMUBs.Step2.SOS.Normalization
