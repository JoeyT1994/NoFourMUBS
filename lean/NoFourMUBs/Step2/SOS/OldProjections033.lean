import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound40

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2496 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (88, -80), (94, -15), (228, 240), (241, -80), (243, -240), (698, -400), (704, -160), (1226, -240), (1227, -160), (1251, 25)]

theorem oldProjectionSound2496 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2496 =
      Integer.Sparse.eval oldProjection2496 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2496 oldProjection2496
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2496 hH))

def oldProjection2497 : Integer.Sparse (Fin 1613) := [(88, -1), (228, 3), (241, -1), (243, -4), (698, -2), (704, -1), (1223, 3), (1225, -1), (1226, -2)]

theorem oldProjectionSound2497 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2497 =
      Integer.Sparse.eval oldProjection2497 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2497 oldProjection2497
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2497 hH))

def oldProjection2498 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (88, -80), (94, -20), (241, -160), (243, -160), (1226, -160), (1227, -80), (1251, 15)]

theorem oldProjectionSound2498 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2498 =
      Integer.Sparse.eval oldProjection2498 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2498 oldProjection2498
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2498 hH))

def oldProjection2499 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (94, -55), (228, 240), (241, -80), (243, -80), (247, -80), (698, -240), (704, -160), (1223, 240), (1226, -80), (1227, -80), (1251, -10)]

theorem oldProjectionSound2499 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2499 =
      Integer.Sparse.eval oldProjection2499 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2499 oldProjection2499
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2499 hH))

def oldProjection2500 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (88, -32), (94, 8), (241, -16), (243, -80), (1225, -16), (1226, -16), (1251, -3)]

theorem oldProjectionSound2500 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2500 =
      Integer.Sparse.eval oldProjection2500 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2500 oldProjection2500
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2500 hH))

def oldProjection2502 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 30), (94, -5), (241, -40), (247, -80), (1251, 20)]

theorem oldProjectionSound2502 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2502 =
      Integer.Sparse.eval oldProjection2502 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2502 oldProjection2502
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2502 hH))

def oldProjection2505 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -1), (241, -32), (243, -16), (247, -16), (698, -16), (1251, -5)]

theorem oldProjectionSound2505 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2505 =
      Integer.Sparse.eval oldProjection2505 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2505 oldProjection2505
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2505 hH))

def oldProjection2507 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -5), (94, 15), (241, -160), (243, -240), (247, -80), (698, -240), (1225, -80), (1226, -160), (1227, -80), (1251, 35)]

theorem oldProjectionSound2507 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2507 =
      Integer.Sparse.eval oldProjection2507 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2507 oldProjection2507
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2507 hH))

def oldProjection2508 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -15), (94, -10), (241, -160), (243, -80), (247, -80), (698, -160), (704, -80), (1223, 240), (1226, -80), (1251, -10)]

theorem oldProjectionSound2508 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2508 =
      Integer.Sparse.eval oldProjection2508 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2508 oldProjection2508
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2508 hH))

def oldProjection2509 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -35), (549, -720), (698, -80), (1251, 80), (1333, -720), (1389, 240)]

theorem oldProjectionSound2509 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2509 =
      Integer.Sparse.eval oldProjection2509 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2509 oldProjection2509
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2509 hH))

def oldProjection2510 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -9), (247, -16), (434, -144), (698, -16), (1251, 12)]

theorem oldProjectionSound2510 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2510 =
      Integer.Sparse.eval oldProjection2510 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2510 oldProjection2510
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2510 hH))

def oldProjection2511 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -95), (698, -400), (1226, -80), (1227, -80), (1251, 60)]

theorem oldProjectionSound2511 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2511 =
      Integer.Sparse.eval oldProjection2511 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2511 oldProjection2511
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2511 hH))

def oldProjection2512 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -50), (698, -320), (1226, -80), (1227, -160), (1251, 105), (1356, -720)]

theorem oldProjectionSound2512 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2512 =
      Integer.Sparse.eval oldProjection2512 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2512 oldProjection2512
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2512 hH))

def oldProjection2513 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (618, -720), (698, -400), (1226, -160), (1227, -240), (1251, 50), (1356, -720)]

theorem oldProjectionSound2513 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2513 =
      Integer.Sparse.eval oldProjection2513 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2513 oldProjection2513
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2513 hH))

def oldProjection2514 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -3), (618, -144), (698, -32), (1117, -144), (1227, -32), (1251, 1), (1389, 96)]

theorem oldProjectionSound2514 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2514 =
      Integer.Sparse.eval oldProjection2514 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2514 oldProjection2514
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2514 hH))

def oldProjection2515 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 192), (94, -9), (697, 48), (698, -48), (1058, 48), (1227, -16), (1251, -6), (1389, 96)]

theorem oldProjectionSound2515 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2515 =
      Integer.Sparse.eval oldProjection2515 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2515 oldProjection2515
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2515 hH))

def oldProjection2516 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 480), (94, -20), (243, -40), (697, 120), (698, -120), (700, -40), (704, -40), (1058, 120), (1226, -40), (1251, -25), (1323, 240)]

theorem oldProjectionSound2516 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2516 =
      Integer.Sparse.eval oldProjection2516 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2516 oldProjection2516
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2516 hH))

def oldProjection2517 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -320), (94, 5), (698, -640), (700, -80), (1226, -320), (1227, -80), (1251, 70)]

theorem oldProjectionSound2517 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2517 =
      Integer.Sparse.eval oldProjection2517 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2517 oldProjection2517
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2517 hH))

def oldProjection2518 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -80), (94, -15), (596, -720), (698, -400), (1226, -240), (1227, -80), (1251, 50), (1352, -720)]

theorem oldProjectionSound2518 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2518 =
      Integer.Sparse.eval oldProjection2518 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2518 oldProjection2518
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2518 hH))

def oldProjection2519 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -320), (94, -30), (243, -80), (698, -400), (700, -400), (704, -80), (1226, -240), (1251, -25)]

theorem oldProjectionSound2519 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2519 =
      Integer.Sparse.eval oldProjection2519 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2519 oldProjection2519
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2519 hH))

def oldProjection2520 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 220), (20, -25), (45, 240), (94, -70), (108, -80), (247, -160), (700, -80), (701, -80), (704, -320), (1251, -90)]

theorem oldProjectionSound2520 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2520 =
      Integer.Sparse.eval oldProjection2520 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2520 oldProjection2520
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2520 hH))

def oldProjection2521 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -10), (45, 240), (94, -10), (108, -80), (243, -80), (247, -80), (698, -160), (700, -80), (704, -80), (1251, 5), (1352, -720)]

theorem oldProjectionSound2521 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2521 =
      Integer.Sparse.eval oldProjection2521 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2521 oldProjection2521
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2521 hH))

def oldProjection2522 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 120), (20, -15), (94, -30), (243, -160), (247, -160), (698, -80), (700, -80), (704, -80), (1219, 240), (1226, -80), (1251, -50), (1352, -720)]

theorem oldProjectionSound2522 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2522 =
      Integer.Sparse.eval oldProjection2522 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2522 oldProjection2522
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2522 hH))

def oldProjection2524 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 160), (20, -20), (94, -60), (247, -80), (704, -80), (1231, -720), (1251, -65)]

theorem oldProjectionSound2524 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2524 =
      Integer.Sparse.eval oldProjection2524 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2524 oldProjection2524
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2524 hH))

def oldProjection2525 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (20, -5), (94, 15), (243, -120), (698, -80), (700, -160), (704, -40), (1219, 120), (1226, -40), (1251, 5)]

theorem oldProjectionSound2525 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2525 =
      Integer.Sparse.eval oldProjection2525 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2525 oldProjection2525
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2525 hH))

def oldProjection2526 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (94, -35), (243, -80), (698, -160), (700, -240), (704, -80), (809, -720), (1251, -50)]

theorem oldProjectionSound2526 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2526 =
      Integer.Sparse.eval oldProjection2526 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2526 oldProjection2526
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2526 hH))

def oldProjection2527 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -15), (698, -400), (1117, -720), (1226, -240), (1227, -160), (1251, 50)]

theorem oldProjectionSound2527 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2527 =
      Integer.Sparse.eval oldProjection2527 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2527 oldProjection2527
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2527 hH))

def oldProjection2528 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -25), (698, -120), (704, -40), (1115, -360), (1117, -360), (1251, -15), (1321, 120), (1389, 120)]

theorem oldProjectionSound2528 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2528 =
      Integer.Sparse.eval oldProjection2528 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2528 oldProjection2528
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2528 hH))

def oldProjection2529 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -11), (247, -16), (698, -16), (704, -16), (1251, -10)]

theorem oldProjectionSound2529 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2529 =
      Integer.Sparse.eval oldProjection2529 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2529 oldProjection2529
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2529 hH))

def oldProjection2530 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 10), (698, -80), (1226, -40), (1227, -40), (1251, 45)]

theorem oldProjectionSound2530 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2530 =
      Integer.Sparse.eval oldProjection2530 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2530 oldProjection2530
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2530 hH))

def oldProjection2531 : Integer.Sparse (Fin 1613) := [(0, -14), (94, -45), (698, -240), (1226, -80), (1227, -160), (1251, 125)]

theorem oldProjectionSound2531 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2531 =
      Integer.Sparse.eval oldProjection2531 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2531 oldProjection2531
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2531 hH))

def oldProjection2532 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (698, -400), (1226, -240), (1227, -80), (1251, 40)]

theorem oldProjectionSound2532 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2532 =
      Integer.Sparse.eval oldProjection2532 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2532 oldProjection2532
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2532 hH))

def oldProjection2533 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 15), (1226, -40), (1227, -40), (1251, -10)]

theorem oldProjectionSound2533 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2533 =
      Integer.Sparse.eval oldProjection2533 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2533 oldProjection2533
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2533 hH))

def oldProjection2534 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -5), (698, -80), (1251, -20)]

theorem oldProjectionSound2534 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2534 =
      Integer.Sparse.eval oldProjection2534 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2534 oldProjection2534
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2534 hH))

def oldProjection2536 : Integer.Sparse (Fin 1613) := [(0, -19), (94, 5), (698, -80), (1251, 100)]

theorem oldProjectionSound2536 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2536 =
      Integer.Sparse.eval oldProjection2536 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2536 oldProjection2536
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2536 hH))

def oldProjection2537 : Integer.Sparse (Fin 1613) := [(0, -2), (81, 240), (90, -80), (94, -25), (698, -480), (700, -80), (1059, -80), (1226, -160), (1227, -240), (1251, 85), (1389, 240)]

theorem oldProjectionSound2537 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2537 =
      Integer.Sparse.eval oldProjection2537 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2537 oldProjection2537
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2537 hH))

def oldProjection2538 : Integer.Sparse (Fin 1613) := [(81, 3), (90, -1), (243, -1), (698, -4), (700, -1), (1058, 3), (1059, -1), (1226, -3), (1227, -1)]

theorem oldProjectionSound2538 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2538 =
      Integer.Sparse.eval oldProjection2538 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2538 oldProjection2538
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2538 hH))

def oldProjection2539 : Integer.Sparse (Fin 1613) := [(90, -16), (94, -1), (698, -64), (1226, -32), (1251, 11)]

theorem oldProjectionSound2539 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2539 =
      Integer.Sparse.eval oldProjection2539 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2539 oldProjection2539
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2539 hH))

def oldProjection2540 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 5), (81, 60), (94, -10), (698, -80), (1058, 60), (1226, -20), (1227, -40), (1251, 15)]

theorem oldProjectionSound2540 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2540 =
      Integer.Sparse.eval oldProjection2540 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2540 oldProjection2540
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2540 hH))

def oldProjection2541 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 120), (94, -10), (698, -40), (1226, -40), (1227, -40), (1251, 35), (1389, 120)]

theorem oldProjectionSound2541 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2541 =
      Integer.Sparse.eval oldProjection2541 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2541 oldProjection2541
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2541 hH))

def oldProjection2542 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -5), (698, -80), (1226, -80), (1227, -160), (1251, 15)]

theorem oldProjectionSound2542 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2542 =
      Integer.Sparse.eval oldProjection2542 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2542 oldProjection2542
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2542 hH))

def oldProjection2543 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (76, 48), (90, -16), (94, -2), (243, -16), (698, -16), (700, -32), (704, -16), (1226, -16), (1251, -1), (1323, 48)]

theorem oldProjectionSound2543 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2543 =
      Integer.Sparse.eval oldProjection2543 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2543 oldProjection2543
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2543 hH))

def oldProjection2544 : Integer.Sparse (Fin 1613) := [(20, -1), (90, -32), (94, 11), (243, -16), (698, -32), (700, -16), (1226, -64)]

theorem oldProjectionSound2544 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2544 =
      Integer.Sparse.eval oldProjection2544 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2544 oldProjection2544
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2544 hH))

def oldProjection2545 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -160), (94, -30), (698, -400), (700, -80), (1226, -80), (1227, -80), (1251, 25)]

theorem oldProjectionSound2545 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2545 =
      Integer.Sparse.eval oldProjection2545 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2545 oldProjection2545
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2545 hH))

def oldProjection2546 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (20, -5), (76, 240), (90, -80), (94, 20), (243, -80), (698, -320), (700, -160), (704, -80), (1058, 240), (1226, -160), (1251, 25)]

theorem oldProjectionSound2546 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2546 =
      Integer.Sparse.eval oldProjection2546 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2546 oldProjection2546
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2546 hH))

def oldProjection2547 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -5), (243, -16), (698, -16), (700, -32), (704, -16), (1251, -1)]

theorem oldProjectionSound2547 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2547 =
      Integer.Sparse.eval oldProjection2547 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2547 oldProjection2547
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2547 hH))

def oldProjection2548 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, 25), (243, -240), (698, -240), (700, -160), (704, -80), (1225, -80), (1226, -160), (1227, -80), (1251, 5)]

theorem oldProjectionSound2548 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2548 =
      Integer.Sparse.eval oldProjection2548 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2548 oldProjection2548
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2548 hH))

def oldProjection2549 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 50), (20, 5), (94, 5), (247, -40), (1251, -15)]

theorem oldProjectionSound2549 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2549 =
      Integer.Sparse.eval oldProjection2549 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2549 oldProjection2549
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2549 hH))

def oldProjection2551 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (698, -16), (1251, 14)]

theorem oldProjectionSound2551 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2551 =
      Integer.Sparse.eval oldProjection2551 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2551 oldProjection2551
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2551 hH))

def oldProjection2552 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (243, -80), (698, -640), (700, -160), (1058, 240), (1059, -320), (1226, -160), (1227, -320), (1251, 145)]

theorem oldProjectionSound2552 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2552 =
      Integer.Sparse.eval oldProjection2552 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2552 oldProjection2552
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2552 hH))

def oldProjection2553 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 40), (94, -45), (241, -160), (247, -80), (698, -240), (1055, 240)]

theorem oldProjectionSound2553 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2553 =
      Integer.Sparse.eval oldProjection2553 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2553 oldProjection2553
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2553 hH))

def oldProjection2554 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, -10), (697, 240), (698, -160), (700, -80), (704, -80), (1059, -80), (1250, -60), (1251, -10)]

theorem oldProjectionSound2554 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2554 =
      Integer.Sparse.eval oldProjection2554 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2554 oldProjection2554
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2554 hH))

def oldProjection2555 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -35), (698, -160), (700, -80), (1059, -80), (1251, -15)]

theorem oldProjectionSound2555 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2555 =
      Integer.Sparse.eval oldProjection2555 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2555 oldProjection2555
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2555 hH))

def oldProjection2556 : Integer.Sparse (Fin 1613) := [(0, 1), (243, -16), (698, -48), (1058, 48), (1059, -16), (1226, -16), (1227, -16), (1251, 15)]

theorem oldProjectionSound2556 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2556 =
      Integer.Sparse.eval oldProjection2556 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2556 oldProjection2556
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2556 hH))

def oldProjection2557 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -10), (243, -16), (697, 48), (698, -64), (700, -16), (704, -16), (1059, -16), (1226, -16), (1227, -16), (1251, 7), (1323, 48), (1389, 48)]

theorem oldProjectionSound2557 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2557 =
      Integer.Sparse.eval oldProjection2557 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2557 oldProjection2557
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2557 hH))

def oldProjection2558 : Integer.Sparse (Fin 1613) := [(0, -8), (20, -5), (94, 25), (243, -80), (698, -320), (700, -80), (1059, -80), (1226, -160), (1227, -160), (1251, 130)]

theorem oldProjectionSound2558 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2558 =
      Integer.Sparse.eval oldProjection2558 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2558 oldProjection2558
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2558 hH))

def oldProjection2559 : Integer.Sparse (Fin 1613) := [(0, -7), (19, 20), (94, -30), (247, -120), (1251, 5), (1388, 120)]

theorem oldProjectionSound2559 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2559 =
      Integer.Sparse.eval oldProjection2559 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2559 oldProjection2559
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2559 hH))

def oldProjection2560 : Integer.Sparse (Fin 1613) := [(0, 3), (20, -5), (94, -55), (243, -80), (698, -80), (1251, 55)]

theorem oldProjectionSound2560 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2560 =
      Integer.Sparse.eval oldProjection2560 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2560 oldProjection2560
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2560 hH))

def oldProjection2562 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -80), (94, 5), (243, -80), (493, -720), (698, -240), (700, -80), (1117, -720), (1226, -240), (1323, 240)]

theorem oldProjectionSound2562 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2562 =
      Integer.Sparse.eval oldProjection2562 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2562 oldProjection2562
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2562 hH))

def oldProjection2563 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (42, -64), (94, 6), (243, -64), (698, -16), (700, -80), (701, -16), (704, -64), (1251, -11)]

theorem oldProjectionSound2563 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2563 =
      Integer.Sparse.eval oldProjection2563 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2563 oldProjection2563
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2563 hH))

def oldProjection2564 : Integer.Sparse (Fin 1613) := [(19, 14), (20, -2), (94, -3), (108, -8), (241, -32), (242, 24), (243, -32), (244, -8), (247, -24), (698, -8), (700, -8), (1251, -3)]

theorem oldProjectionSound2564 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2564 =
      Integer.Sparse.eval oldProjection2564 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2564 oldProjection2564
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2564 hH))

def oldProjection2565 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (20, -10), (94, -35), (108, -80), (241, -80), (242, 240), (247, -160), (698, -80), (700, -80), (704, -80), (1105, -720), (1251, -25)]

theorem oldProjectionSound2565 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2565 =
      Integer.Sparse.eval oldProjection2565 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2565 oldProjection2565
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2565 hH))

def oldProjection2566 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 50), (20, -10), (94, -10), (241, -40), (243, -40), (247, -40), (697, 120), (698, -40), (700, -40), (704, -80), (1105, -360), (1251, -15)]

theorem oldProjectionSound2566 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2566 =
      Integer.Sparse.eval oldProjection2566 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2566 oldProjection2566
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2566 hH))

def oldProjection2567 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (94, -1), (241, -48), (243, -16), (247, -16), (698, -16), (704, -16), (741, -144), (1251, -2)]

theorem oldProjectionSound2567 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2567 =
      Integer.Sparse.eval oldProjection2567 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2567 oldProjection2567
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2567 hH))

end NoFourMUBs.Step2.SOS.Normalization
