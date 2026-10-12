import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound24

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1475 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (126, -72), (238, 24), (243, -16), (247, -16), (698, -16), (1251, 1)]

theorem oldProjectionSound1475 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1475 =
      Integer.Sparse.eval oldProjection1475 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1475 oldProjection1475
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1475 hH))

def oldProjection1476 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (38, 240), (94, -20), (127, -720), (238, 240), (241, -240), (243, -240), (247, -80), (698, -80), (700, -80), (704, -80), (1059, -80), (1251, -5)]

theorem oldProjectionSound1476 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1476 =
      Integer.Sparse.eval oldProjection1476 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1476 oldProjection1476
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1476 hH))

def oldProjection1478 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (38, 240), (94, -50), (130, -720), (238, 240), (241, -160), (243, -80), (247, -160), (698, -240), (700, -80), (704, -80), (1059, -80), (1251, -5)]

theorem oldProjectionSound1478 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1478 =
      Integer.Sparse.eval oldProjection1478 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1478 oldProjection1478
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1478 hH))

def oldProjection1479 : Integer.Sparse (Fin 1613) := [(38, 6), (126, -9), (238, 3), (698, -2), (700, -6), (1053, 3), (1059, -1)]

theorem oldProjectionSound1479 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1479 =
      Integer.Sparse.eval oldProjection1479 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1479 oldProjection1479
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1479 hH))

def oldProjection1480 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 240), (94, -10), (129, -360), (238, 120), (698, -160), (700, -160), (1059, -120), (1061, 120), (1251, 5)]

theorem oldProjectionSound1480 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1480 =
      Integer.Sparse.eval oldProjection1480 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1480 oldProjection1480
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1480 hH))

def oldProjection1482 : Integer.Sparse (Fin 1613) := [(38, 12), (94, -1), (138, -36), (243, -8), (698, -4), (700, -8), (704, -8), (1054, 12), (1061, 24), (1251, -1)]

theorem oldProjectionSound1482 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1482 =
      Integer.Sparse.eval oldProjection1482 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1482 oldProjection1482
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1482 hH))

def oldProjection1483 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -4), (61, 96), (94, -9), (244, -16), (700, -16), (701, -48), (704, -32), (1053, 48), (1061, 96), (1251, -5)]

theorem oldProjectionSound1483 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1483 =
      Integer.Sparse.eval oldProjection1483 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1483 oldProjection1483
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1483 hH))

def oldProjection1484 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (38, 240), (94, -30), (247, -80), (700, -80), (704, -80), (1053, 120), (1059, -40), (1251, -30)]

theorem oldProjectionSound1484 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1484 =
      Integer.Sparse.eval oldProjection1484 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1484 oldProjection1484
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1484 hH))

def oldProjection1485 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (94, -25), (129, -360), (241, -80), (247, 120), (1251, -35)]

theorem oldProjectionSound1485 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1485 =
      Integer.Sparse.eval oldProjection1485 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1485 oldProjection1485
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1485 hH))

def oldProjection1486 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -15), (38, 480), (94, -35), (241, -80), (243, -160), (247, -80), (698, -160), (700, -80), (704, -160), (1061, 240), (1251, -25)]

theorem oldProjectionSound1486 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1486 =
      Integer.Sparse.eval oldProjection1486 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1486 oldProjection1486
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1486 hH))

def oldProjection1487 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 140), (94, -60), (143, -720), (241, -80), (247, -160), (1251, -35)]

theorem oldProjectionSound1487 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1487 =
      Integer.Sparse.eval oldProjection1487 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1487 oldProjection1487
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1487 hH))

def oldProjection1488 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (94, 5), (102, 240), (153, -720), (238, 240), (241, -80), (243, -80), (698, -160), (700, -80), (1058, 240), (1059, -80), (1223, 240), (1251, 20)]

theorem oldProjectionSound1488 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1488 =
      Integer.Sparse.eval oldProjection1488 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1488 oldProjection1488
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1488 hH))

def oldProjection1489 : Integer.Sparse (Fin 1613) := [(94, -1), (102, 24), (156, -72), (241, -16), (243, -16), (698, -8), (1052, 24), (1223, 48), (1226, -16), (1251, 3)]

theorem oldProjectionSound1489 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1489 =
      Integer.Sparse.eval oldProjection1489 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1489 oldProjection1489
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1489 hH))

def oldProjection1491 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -5), (104, -16), (105, -16), (156, -144), (243, -32), (698, -48), (1052, 48), (1251, 7)]

theorem oldProjectionSound1491 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1491 =
      Integer.Sparse.eval oldProjection1491 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1491 oldProjection1491
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1491 hH))

def oldProjection1492 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -80), (20, -5), (94, -15), (1058, 240), (1223, 240), (1250, -60), (1251, 20)]

theorem oldProjectionSound1492 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1492 =
      Integer.Sparse.eval oldProjection1492 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1492 oldProjection1492
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1492 hH))

def oldProjection1493 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (94, 5), (241, -80), (247, -80), (697, 240), (1250, -120), (1251, 35)]

theorem oldProjectionSound1493 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1493 =
      Integer.Sparse.eval oldProjection1493 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1493 oldProjection1493
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1493 hH))

def oldProjection1494 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -2), (77, 96), (94, 1), (241, -32), (243, -32), (1052, 48), (1053, 48), (1223, 96), (1251, 3)]

theorem oldProjectionSound1494 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1494 =
      Integer.Sparse.eval oldProjection1494 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1494 oldProjection1494
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1494 hH))

def oldProjection1495 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 40), (241, -160), (243, -80), (698, -160), (1052, 480), (1223, 240), (1226, -80), (1251, 40)]

theorem oldProjectionSound1495 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1495 =
      Integer.Sparse.eval oldProjection1495 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1495 oldProjection1495
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1495 hH))

def oldProjection1496 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (94, -35), (169, -720), (241, -80), (247, -80), (697, 240), (698, -240), (1251, -5)]

theorem oldProjectionSound1496 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1496 =
      Integer.Sparse.eval oldProjection1496 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1496 oldProjection1496
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1496 hH))

def oldProjection1497 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -15), (89, 480), (94, -20), (243, -160), (698, -160), (704, -160), (1061, 240), (1219, 240), (1223, 480), (1251, -10)]

theorem oldProjectionSound1497 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1497 =
      Integer.Sparse.eval oldProjection1497 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1497 oldProjection1497
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1497 hH))

def oldProjection1498 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -15), (247, -160), (698, -80), (1219, 480), (1223, 240), (1226, -80), (1227, -80)]

theorem oldProjectionSound1498 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1498 =
      Integer.Sparse.eval oldProjection1498 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1498 oldProjection1498
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1498 hH))

def oldProjection1500 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (94, -85), (241, -80), (247, -320), (697, 480), (698, -80), (1219, 240), (1227, -80), (1251, -45)]

theorem oldProjectionSound1500 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1500 =
      Integer.Sparse.eval oldProjection1500 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1500 oldProjection1500
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1500 hH))

def oldProjection1501 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -5), (169, -360), (241, -40), (698, -120), (1050, 120), (1052, 120), (1058, 120), (1059, -40), (1223, 120), (1226, -40)]

theorem oldProjectionSound1501 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1501 =
      Integer.Sparse.eval oldProjection1501 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1501 oldProjection1501
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1501 hH))

def oldProjection1502 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (174, -720), (247, -80), (698, -160), (1055, 240), (1058, 240), (1219, 240), (1223, 240), (1226, -80), (1227, -160), (1251, 25)]

theorem oldProjectionSound1502 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1502 =
      Integer.Sparse.eval oldProjection1502 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1502 oldProjection1502
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1502 hH))

def oldProjection1503 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 60), (94, 15), (241, -160), (698, -160), (1050, 240), (1052, 240), (1250, -60), (1251, -65)]

theorem oldProjectionSound1503 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1503 =
      Integer.Sparse.eval oldProjection1503 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1503 oldProjection1503
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1503 hH))

def oldProjection1504 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -11), (241, -48), (697, 48), (698, -64), (1055, 48), (1250, -12), (1251, 13)]

theorem oldProjectionSound1504 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1504 =
      Integer.Sparse.eval oldProjection1504 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1504 oldProjection1504
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1504 hH))

def oldProjection1505 : Integer.Sparse (Fin 1613) := [(19, 3), (94, -1), (247, -8), (1055, 12), (1219, 12), (1250, -3), (1251, 3)]

theorem oldProjectionSound1505 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1505 =
      Integer.Sparse.eval oldProjection1505 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1505 oldProjection1505
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1505 hH))

def oldProjection1506 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 40), (94, -75), (247, -240), (697, 240), (1250, -60), (1251, -15), (1388, 240)]

theorem oldProjectionSound1506 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1506 =
      Integer.Sparse.eval oldProjection1506 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1506 oldProjection1506
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1506 hH))

def oldProjection1507 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -35), (241, -80), (697, 480), (698, -240), (1050, 240), (1052, 480), (1059, -160), (1250, -60), (1251, 30)]

theorem oldProjectionSound1507 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1507 =
      Integer.Sparse.eval oldProjection1507 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1507 oldProjection1507
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1507 hH))

def oldProjection1508 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 10), (94, -20), (247, -40), (697, 240), (698, -80), (1055, 120), (1219, 240), (1227, -80), (1250, -30), (1251, 25)]

theorem oldProjectionSound1508 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1508 =
      Integer.Sparse.eval oldProjection1508 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1508 oldProjection1508
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1508 hH))

def oldProjection1509 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -25), (241, -80), (462, -720), (695, 240), (697, 480), (698, -160), (700, -160), (1059, -160), (1251, 25)]

theorem oldProjectionSound1509 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1509 =
      Integer.Sparse.eval oldProjection1509 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1509 oldProjection1509
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1509 hH))

def oldProjection1510 : Integer.Sparse (Fin 1613) := [(94, -1), (174, -144), (697, 48), (698, -64), (1052, 48), (1059, -16), (1219, 48), (1223, 48), (1226, -32), (1227, -48), (1251, 11)]

theorem oldProjectionSound1510 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1510 =
      Integer.Sparse.eval oldProjection1510 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1510 oldProjection1510
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1510 hH))

def oldProjection1511 : Integer.Sparse (Fin 1613) := [(0, 1), (169, -360), (697, 120), (698, -160), (1219, 240), (1223, 120), (1226, -80), (1227, -40), (1251, 15)]

theorem oldProjectionSound1511 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1511 =
      Integer.Sparse.eval oldProjection1511 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1511 oldProjection1511
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1511 hH))

def oldProjection1512 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (247, -160), (697, 480), (698, -80), (1052, 240), (1059, -80), (1251, 55)]

theorem oldProjectionSound1512 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1512 =
      Integer.Sparse.eval oldProjection1512 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1512 oldProjection1512
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1512 hH))

def oldProjection1513 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, -35), (241, -80), (247, -80), (697, 480), (698, -240), (1219, 240), (1227, -80), (1251, -5)]

theorem oldProjectionSound1513 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1513 =
      Integer.Sparse.eval oldProjection1513 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1513 oldProjection1513
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1513 hH))

def oldProjection1514 : Integer.Sparse (Fin 1613) := [(0, 1), (201, -360), (238, 120), (698, -160), (700, -80), (1050, 120), (1058, 240), (1059, -40), (1251, 15)]

theorem oldProjectionSound1514 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1514 =
      Integer.Sparse.eval oldProjection1514 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1514 oldProjection1514
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1514 hH))

def oldProjection1515 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (197, -720), (200, -720), (638, -720), (698, -80), (1059, -80), (1221, 240), (1251, 15)]

theorem oldProjectionSound1515 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1515 =
      Integer.Sparse.eval oldProjection1515 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1515 oldProjection1515
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1515 hH))

def oldProjection1516 : Integer.Sparse (Fin 1613) := [(0, 1), (205, -180), (238, 60), (698, -80), (700, -40), (1055, 60), (1058, 120), (1059, -60), (1227, -40), (1251, 15)]

theorem oldProjectionSound1516 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1516 =
      Integer.Sparse.eval oldProjection1516 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1516 oldProjection1516
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1516 hH))

def oldProjection1517 : Integer.Sparse (Fin 1613) := [(94, -1), (201, -36), (241, -4), (698, -16), (1050, 24), (1055, 24), (1251, 3)]

theorem oldProjectionSound1517 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1517 =
      Integer.Sparse.eval oldProjection1517 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1517 oldProjection1517
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1517 hH))

def oldProjection1518 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (241, -80), (698, -160), (1050, 480), (1055, 240), (1058, 240), (1059, -80), (1250, -120), (1251, -20)]

theorem oldProjectionSound1518 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1518 =
      Integer.Sparse.eval oldProjection1518 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1518 oldProjection1518
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1518 hH))

def oldProjection1519 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (241, -80), (638, -720), (697, 240), (698, -240), (1050, 240), (1055, 240), (1058, 240), (1059, -80), (1250, -60), (1251, 70)]

theorem oldProjectionSound1519 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1519 =
      Integer.Sparse.eval oldProjection1519 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1519 oldProjection1519
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1519 hH))

def oldProjection1520 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 4), (94, -6), (247, -16), (698, -16), (1055, 96), (1058, 48), (1227, -16), (1250, -24), (1251, 15), (1388, 48)]

theorem oldProjectionSound1520 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1520 =
      Integer.Sparse.eval oldProjection1520 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1520 oldProjection1520
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1520 hH))

def oldProjection1521 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -55), (241, -80), (698, -80), (1050, 240), (1055, 480), (1250, -180), (1251, 70)]

theorem oldProjectionSound1521 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1521 =
      Integer.Sparse.eval oldProjection1521 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1521 oldProjection1521
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1521 hH))

def oldProjection1522 : Integer.Sparse (Fin 1613) := [(0, 4), (79, 240), (94, -15), (697, 240), (698, -240), (1050, 480), (1052, 240), (1058, 480), (1059, -160), (1226, -80), (1250, -60), (1251, 5)]

theorem oldProjectionSound1522 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1522 =
      Integer.Sparse.eval oldProjection1522 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1522 oldProjection1522
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1522 hH))

def oldProjection1523 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -15), (698, -240), (1050, 240), (1055, 480), (1058, 480), (1059, -80), (1227, -160), (1250, -60), (1251, 60)]

theorem oldProjectionSound1523 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1523 =
      Integer.Sparse.eval oldProjection1523 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1523 oldProjection1523
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1523 hH))

def oldProjection1524 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -10), (1050, 60), (1250, -45), (1251, -15), (1388, 120)]

theorem oldProjectionSound1524 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1524 =
      Integer.Sparse.eval oldProjection1524 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1524 oldProjection1524
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1524 hH))

def oldProjection1525 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -20), (1055, 240), (1250, -90), (1251, 65), (1388, 120)]

theorem oldProjectionSound1525 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1525 =
      Integer.Sparse.eval oldProjection1525 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1525 oldProjection1525
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1525 hH))

def oldProjection1529 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 140), (20, -20), (88, -160), (94, -20), (241, -320), (243, -560), (247, -160), (698, -320), (704, -160), (1226, -160), (1251, -15)]

theorem oldProjectionSound1529 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1529 =
      Integer.Sparse.eval oldProjection1529 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1529 oldProjection1529
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1529 hH))

def oldProjection1530 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (20, -5), (88, -160), (94, -60), (228, 480), (241, -480), (243, -560), (247, -160), (698, -640), (704, -160), (1226, -320), (1227, -160), (1251, 15)]

theorem oldProjectionSound1530 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1530 =
      Integer.Sparse.eval oldProjection1530 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1530 oldProjection1530
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1530 hH))

def oldProjection1532 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (82, 240), (88, -320), (90, -160), (91, -80), (94, -15), (228, 480), (241, -400), (243, -720), (698, -800), (704, -80), (1223, 240), (1225, -80), (1226, -640), (1227, -240), (1251, 40)]

theorem oldProjectionSound1532 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1532 =
      Integer.Sparse.eval oldProjection1532 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1532 oldProjection1532
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1532 hH))

def oldProjection1535 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 120), (20, -10), (88, -400), (90, -160), (91, -160), (94, 45), (231, 240), (241, -320), (243, -880), (244, -80), (247, -80), (698, -240), (700, -80), (1225, -160), (1226, -480), (1251, 10)]

theorem oldProjectionSound1535 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1535 =
      Integer.Sparse.eval oldProjection1535 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1535 oldProjection1535
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1535 hH))

def oldProjection1537 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 80), (4, -5), (19, 80), (20, -20), (94, -45), (104, -80), (108, -160), (240, 240), (241, -80), (246, -80), (247, -160), (698, -80), (704, -160), (1251, -25)]

theorem oldProjectionSound1537 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1537 =
      Integer.Sparse.eval oldProjection1537 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1537 oldProjection1537
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1537 hH))

def oldProjection1538 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 24), (20, -2), (94, -15), (104, -16), (108, -64), (241, -32), (247, -32), (1251, -5)]

theorem oldProjectionSound1538 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1538 =
      Integer.Sparse.eval oldProjection1538 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1538 oldProjection1538
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1538 hH))

def oldProjection1539 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 10), (19, 100), (20, -10), (94, -30), (104, -80), (105, -40), (108, -80), (241, -160), (243, -80), (247, -160), (698, -80), (1251, -15)]

theorem oldProjectionSound1539 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1539 =
      Integer.Sparse.eval oldProjection1539 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1539 oldProjection1539
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1539 hH))

def oldProjection1540 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (4, -5), (19, 140), (20, -15), (94, -15), (105, -160), (106, -80), (108, -80), (241, -160), (242, 240), (243, -240), (244, -160), (246, -80), (247, -80), (698, -80), (700, -160), (704, -80), (1251, -30)]

theorem oldProjectionSound1540 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1540 =
      Integer.Sparse.eval oldProjection1540 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1540 oldProjection1540
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1540 hH))

def oldProjection1543 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 90), (20, -5), (94, -25), (238, 120), (241, -240), (243, -160), (244, -40), (247, -160), (698, -160), (700, -80), (1059, -40), (1251, -5)]

theorem oldProjectionSound1543 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1543 =
      Integer.Sparse.eval oldProjection1543 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1543 oldProjection1543
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1543 hH))

def oldProjection1544 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -3), (94, -2), (104, -64), (105, -16), (108, -48), (241, -80), (243, -16), (247, -16), (698, -16), (1251, 9)]

theorem oldProjectionSound1544 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1544 =
      Integer.Sparse.eval oldProjection1544 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1544 oldProjection1544
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1544 hH))

def oldProjection1545 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (23, 240), (94, -5), (228, 240), (698, -80), (1278, 240)]

theorem oldProjectionSound1545 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1545 =
      Integer.Sparse.eval oldProjection1545 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1545 oldProjection1545
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1545 hH))

def oldProjection1548 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -10), (94, 15), (241, -320), (243, -160), (247, -80), (698, -240), (1223, 240), (1226, -80), (1251, 35)]

theorem oldProjectionSound1548 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1548 =
      Integer.Sparse.eval oldProjection1548 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1548 oldProjection1548
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1548 hH))

def oldProjection1549 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -1), (241, -16), (243, -32), (287, -144), (698, -48), (1223, 48), (1226, -16)]

theorem oldProjectionSound1549 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1549 =
      Integer.Sparse.eval oldProjection1549 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1549 oldProjection1549
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1549 hH))

def oldProjection1550 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -30), (241, -80), (243, -320), (288, -720), (698, -160), (704, -160), (1251, 25)]

theorem oldProjectionSound1550 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1550 =
      Integer.Sparse.eval oldProjection1550 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1550 oldProjection1550
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1550 hH))

def oldProjection1551 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -30), (94, -45), (243, -80), (698, -80), (704, -240), (1223, 240), (1251, -25)]

theorem oldProjectionSound1551 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1551 =
      Integer.Sparse.eval oldProjection1551 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1551 oldProjection1551
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1551 hH))

def oldProjection1552 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, -50), (228, 480), (241, -80), (247, -160), (698, -160), (704, -80), (1223, 240), (1226, -80), (1227, -80), (1251, -30)]

theorem oldProjectionSound1552 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1552 =
      Integer.Sparse.eval oldProjection1552 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1552 oldProjection1552
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1552 hH))

def oldProjection1553 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 120), (20, -5), (94, -75), (247, -80), (294, -720), (704, -80), (1251, -70)]

theorem oldProjectionSound1553 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1553 =
      Integer.Sparse.eval oldProjection1553 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1553 oldProjection1553
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1553 hH))

end NoFourMUBs.Step2.SOS.Normalization
