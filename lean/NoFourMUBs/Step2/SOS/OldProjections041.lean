import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound54

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection3347 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -380), (20, 45), (88, 160), (94, 175), (228, -480), (241, 560), (243, 720), (247, 320), (698, 1200), (704, 480), (1226, 480), (1227, 320), (1251, -135)]

theorem oldProjectionSound3347 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3347 =
      Integer.Sparse.eval oldProjection3347 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3347 oldProjection3347
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3347 hH))

def oldProjection3348 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 20), (88, 160), (94, 80), (228, -480), (241, 720), (243, 1200), (247, 160), (698, 1120), (704, 400), (1223, -720), (1225, 240), (1226, 640), (1227, 240), (1251, -25)]

theorem oldProjectionSound3348 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3348 =
      Integer.Sparse.eval oldProjection3348 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3348 oldProjection3348
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3348 hH))

def oldProjection3350 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -130), (20, 10), (94, 55), (228, -120), (241, 240), (243, 200), (247, 160), (698, 320), (704, 120), (1223, -120), (1225, 40), (1226, 120), (1227, 80), (1251, -35)]

theorem oldProjectionSound3350 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3350 =
      Integer.Sparse.eval oldProjection3350 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3350 oldProjection3350
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3350 hH))

def oldProjection3353 : Integer.Sparse (Fin 1613) := [(0, 17), (19, -20), (94, 65), (247, 80), (434, 720), (698, 800), (700, 80), (1059, 80), (1219, -240), (1226, 160), (1227, 240), (1251, -200)]

theorem oldProjectionSound3353 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3353 =
      Integer.Sparse.eval oldProjection3353 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3353 oldProjection3353
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3353 hH))

def oldProjection3354 : Integer.Sparse (Fin 1613) := [(0, 17), (19, -10), (94, 80), (247, 40), (434, 360), (698, 560), (1219, -120), (1226, 160), (1227, 400), (1251, -215), (1356, 360)]

theorem oldProjectionSound3354 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3354 =
      Integer.Sparse.eval oldProjection3354 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3354 oldProjection3354
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3354 hH))

def oldProjection3355 : Integer.Sparse (Fin 1613) := [(0, 24), (94, 5), (698, 880), (1226, 400), (1227, 320), (1251, -255)]

theorem oldProjectionSound3355 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3355 =
      Integer.Sparse.eval oldProjection3355 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3355 oldProjection3355
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3355 hH))

def oldProjection3356 : Integer.Sparse (Fin 1613) := [(0, 37), (94, 190), (698, 1440), (1226, 560), (1227, 640), (1251, -455), (1356, 720)]

theorem oldProjectionSound3356 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3356 =
      Integer.Sparse.eval oldProjection3356 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3356 oldProjection3356
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3356 hH))

def oldProjection3359 : Integer.Sparse (Fin 1613) := [(0, 11), (81, -240), (94, 90), (618, 1440), (698, 1440), (1015, 720), (1117, 720), (1226, 800), (1227, 880), (1251, -305), (1356, 720), (1389, -480)]

theorem oldProjectionSound3359 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3359 =
      Integer.Sparse.eval oldProjection3359 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3359 oldProjection3359
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3359 hH))

def oldProjection3362 : Integer.Sparse (Fin 1613) := [(0, -7), (20, 5), (90, 720), (94, 25), (243, 160), (698, 1840), (700, 240), (782, 720), (1059, 80), (1226, 720), (1227, 400), (1251, -145)]

theorem oldProjectionSound3362 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3362 =
      Integer.Sparse.eval oldProjection3362 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3362 oldProjection3362
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3362 hH))

def oldProjection3364 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (20, 10), (90, 720), (94, -20), (243, 320), (698, 1280), (700, 560), (704, 80), (1004, 720), (1219, -240), (1226, 720), (1227, 320), (1251, -55)]

theorem oldProjectionSound3364 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3364 =
      Integer.Sparse.eval oldProjection3364 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3364 oldProjection3364
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3364 hH))

def oldProjection3366 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -52), (20, 7), (45, -96), (94, 2), (104, 16), (108, 16), (243, 176), (247, 16), (698, 192), (700, 144), (704, 112), (1214, -48), (1219, -96), (1225, 32), (1226, 96), (1227, 48), (1251, 4), (1352, 144)]

theorem oldProjectionSound3366 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3366 =
      Integer.Sparse.eval oldProjection3366 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3366 oldProjection3366
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3366 hH))

def oldProjection3367 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -240), (20, 25), (94, -5), (243, 880), (247, 160), (698, 880), (700, 640), (704, 240), (809, 720), (1219, -480), (1223, -240), (1225, 240), (1226, 640), (1227, 240), (1251, 45), (1352, 720)]

theorem oldProjectionSound3367 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3367 =
      Integer.Sparse.eval oldProjection3367 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3367 oldProjection3367
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3367 hH))

def oldProjection3368 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -40), (20, 10), (94, 15), (243, 240), (698, 1840), (700, 320), (704, 80), (1059, 320), (1117, 720), (1219, -480), (1226, 800), (1227, 800), (1251, -270)]

theorem oldProjectionSound3368 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3368 =
      Integer.Sparse.eval oldProjection3368 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3368 oldProjection3368
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3368 hH))

def oldProjection3375 : Integer.Sparse (Fin 1613) := [(0, 38), (94, 15), (243, 240), (698, 1440), (700, 160), (1058, -720), (1059, 480), (1226, 480), (1227, 960), (1251, -435)]

theorem oldProjectionSound3375 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3375 =
      Integer.Sparse.eval oldProjection3375 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3375 oldProjection3375
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3375 hH))

def oldProjection3379 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -260), (20, 20), (45, -240), (94, 230), (108, 160), (241, 80), (242, -240), (243, 80), (247, 480), (329, 720), (492, 1440), (617, 720), (697, -480), (698, 560), (700, 320), (704, 400), (1059, 80), (1105, 720), (1251, 25), (1352, 720)]

theorem oldProjectionSound3379 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3379 =
      Integer.Sparse.eval oldProjection3379 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3379 oldProjection3379
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3379 hH))

def oldProjection3385 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (20, 5), (94, 75), (241, 40), (243, 200), (247, 40), (492, 360), (505, 360), (697, -240), (698, 600), (700, 480), (704, 320), (1059, 160), (1219, -120), (1226, 40), (1227, 80), (1251, -15)]

theorem oldProjectionSound3385 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3385 =
      Integer.Sparse.eval oldProjection3385 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3385 oldProjection3385
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3385 hH))

def oldProjection3386 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -180), (20, 25), (94, 120), (243, 320), (492, 720), (505, 1440), (602, 720), (698, 640), (700, 720), (704, 640), (809, 720), (1059, 240), (1095, 720), (1226, 80), (1227, 80), (1251, 35)]

theorem oldProjectionSound3386 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3386 =
      Integer.Sparse.eval oldProjection3386 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3386 oldProjection3386
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3386 hH))

def oldProjection3387 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -300), (20, 45), (38, -240), (42, 160), (94, 150), (241, 320), (243, 640), (244, 80), (247, 240), (698, 880), (700, 720), (701, 240), (704, 800), (1059, 160), (1061, -240), (1251, -20)]

theorem oldProjectionSound3387 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3387 =
      Integer.Sparse.eval oldProjection3387 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3387 oldProjection3387
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3387 hH))

def oldProjection3389 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -190), (20, 25), (38, -120), (42, 80), (94, 75), (241, 200), (243, 360), (247, 120), (698, 320), (700, 160), (701, 40), (704, 360), (1059, 40), (1251, 25)]

theorem oldProjectionSound3389 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3389 =
      Integer.Sparse.eval oldProjection3389 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3389 oldProjection3389
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3389 hH))

def oldProjection3394 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -400), (20, 55), (94, 150), (241, 80), (243, 160), (247, 320), (698, 160), (704, 480), (1251, 90)]

theorem oldProjectionSound3394 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3394 =
      Integer.Sparse.eval oldProjection3394 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3394 oldProjection3394
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3394 hH))

def oldProjection3404 : Integer.Sparse (Fin 1613) := [(0, -67), (94, 45), (698, 80), (1059, 80), (1227, 160), (1251, -340)]

theorem oldProjectionSound3404 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3404 =
      Integer.Sparse.eval oldProjection3404 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3404 oldProjection3404
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3404 hH))

def oldProjection3406 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -500), (20, 30), (94, 295), (241, 720), (243, 160), (247, 960), (698, 240), (1251, 80)]

theorem oldProjectionSound3406 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3406 =
      Integer.Sparse.eval oldProjection3406 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3406 oldProjection3406
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3406 hH))

def oldProjection3408 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -180), (20, 10), (42, 720), (94, 35), (243, 720), (244, 80), (312, 720), (698, 400), (700, 1040), (701, 160), (704, 720), (1219, -240), (1225, 80), (1226, 160), (1251, 60)]

theorem oldProjectionSound3408 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3408 =
      Integer.Sparse.eval oldProjection3408 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3408 oldProjection3408
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3408 hH))

def oldProjection3409 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -40), (20, 10), (90, 240), (94, 15), (243, 400), (493, 1440), (698, 1440), (700, 320), (782, 720), (1058, -480), (1059, 160), (1117, 1440), (1226, 720), (1227, 240), (1251, -95), (1323, -480)]

theorem oldProjectionSound3409 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3409 =
      Integer.Sparse.eval oldProjection3409 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3409 oldProjection3409
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3409 hH))

def oldProjection3412 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -340), (20, 50), (38, -240), (42, 160), (94, 175), (241, 400), (243, 880), (244, 320), (247, 160), (698, 640), (700, 560), (701, 400), (704, 800), (1053, -240), (1059, 80), (1061, -480), (1251, 105)]

theorem oldProjectionSound3412 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3412 =
      Integer.Sparse.eval oldProjection3412 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3412 oldProjection3412
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3412 hH))

def oldProjection3414 : Integer.Sparse (Fin 1613) := [(19, -80), (20, 14), (94, 29), (241, 32), (243, 144), (244, 64), (247, 32), (698, 240), (700, 176), (701, 64), (704, 128), (1052, -48), (1053, -48), (1059, 48), (1061, -96), (1219, -96), (1226, 64), (1227, 64), (1251, -5)]

theorem oldProjectionSound3414 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3414 =
      Integer.Sparse.eval oldProjection3414 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3414 oldProjection3414
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3414 hH))

def oldProjection3417 : Integer.Sparse (Fin 1613) := [(0, 16), (94, -25), (243, 240), (698, 1200), (700, 400), (1052, -240), (1059, 480), (1219, -480), (1221, -240), (1226, 320), (1227, 640), (1251, -325)]

theorem oldProjectionSound3417 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3417 =
      Integer.Sparse.eval oldProjection3417 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3417 oldProjection3417
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3417 hH))

def oldProjection3418 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -100), (20, 10), (94, 35), (243, 80), (247, 80), (430, 360), (682, -240), (697, -240), (698, 360), (704, 240), (1052, -120), (1059, 40), (1217, -120), (1221, -120), (1226, 80), (1227, 80), (1251, -45)]

theorem oldProjectionSound3418 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3418 =
      Integer.Sparse.eval oldProjection3418 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3418 oldProjection3418
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3418 hH))

def oldProjection3420 : Integer.Sparse (Fin 1613) := [(19, -44), (20, 6), (94, 5), (241, 48), (243, 80), (247, 32), (698, 48), (704, 64), (1223, -48), (1225, 16), (1226, 16), (1251, -1)]

theorem oldProjectionSound3420 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3420 =
      Integer.Sparse.eval oldProjection3420 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3420 oldProjection3420
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3420 hH))

def oldProjection3423 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -60), (20, 5), (94, 65), (241, 160), (243, 120), (247, 40), (697, -120), (698, 360), (700, 80), (704, 120), (1059, 80), (1226, 80), (1227, 80), (1251, -45)]

theorem oldProjectionSound3423 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3423 =
      Integer.Sparse.eval oldProjection3423 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3423 oldProjection3423
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3423 hH))

def oldProjection3424 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 5), (38, -120), (42, 80), (94, 20), (241, 80), (243, 120), (247, 80), (698, 80), (700, 160), (701, 40), (704, 80), (1059, 40), (1251, 20)]

theorem oldProjectionSound3424 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3424 =
      Integer.Sparse.eval oldProjection3424 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3424 oldProjection3424
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3424 hH))

def oldProjection3425 : Integer.Sparse (Fin 1613) := [(0, 14), (94, 45), (698, 1120), (700, 560), (1059, 480), (1227, 160), (1251, -165)]

theorem oldProjectionSound3425 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3425 =
      Integer.Sparse.eval oldProjection3425 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3425 oldProjection3425
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3425 hH))

def oldProjection3426 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 7), (698, 128), (700, 48), (1059, 80), (1227, 32), (1251, -39)]

theorem oldProjectionSound3426 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3426 =
      Integer.Sparse.eval oldProjection3426 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3426 oldProjection3426
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3426 hH))

def oldProjection3428 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (88, 32), (94, 6), (228, -96), (243, 48), (247, 32), (698, 32), (704, 32), (1226, 64), (1227, 32), (1251, 13)]

theorem oldProjectionSound3428 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3428 =
      Integer.Sparse.eval oldProjection3428 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3428 oldProjection3428
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3428 hH))

def oldProjection3429 : Integer.Sparse (Fin 1613) := [(0, 37), (94, 50), (698, 800), (1059, 80), (1226, 240), (1227, 560), (1251, -315), (1389, -240)]

theorem oldProjectionSound3429 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3429 =
      Integer.Sparse.eval oldProjection3429 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3429 oldProjection3429
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3429 hH))

def oldProjection3432 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 10), (698, 240), (1059, 40), (1226, 80), (1227, 120), (1251, -65)]

theorem oldProjectionSound3432 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3432 =
      Integer.Sparse.eval oldProjection3432 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3432 oldProjection3432
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3432 hH))

def oldProjection3433 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 55), (698, 240), (1059, 80), (1227, 480), (1251, -380)]

theorem oldProjectionSound3433 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3433 =
      Integer.Sparse.eval oldProjection3433 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3433 oldProjection3433
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3433 hH))

def oldProjection3435 : Integer.Sparse (Fin 1613) := [(0, 4), (81, -480), (90, 160), (94, 45), (698, 480), (700, 240), (1226, 160), (1227, 160), (1251, 5)]

theorem oldProjectionSound3435 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3435 =
      Integer.Sparse.eval oldProjection3435 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3435 oldProjection3435
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3435 hH))

def oldProjection3447 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -2), (94, 2), (241, 24), (243, 16), (698, 48), (1226, 16), (1227, 16), (1251, -13)]

theorem oldProjectionSound3447 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3447 =
      Integer.Sparse.eval oldProjection3447 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3447 oldProjection3447
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3447 hH))

def oldProjection3449 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -300), (20, 50), (94, 95), (241, 240), (243, 640), (247, 160), (698, 720), (704, 400), (1223, -720), (1225, 240), (1226, 480), (1227, 240), (1251, -20)]

theorem oldProjectionSound3449 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3449 =
      Integer.Sparse.eval oldProjection3449 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3449 oldProjection3449
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3449 hH))

def oldProjection3461 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -60), (20, 15), (94, -10), (418, 360), (682, -480), (1217, -120), (1221, -240), (1251, -85), (1321, -360), (1333, 720), (1389, -480)]

theorem oldProjectionSound3461 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3461 =
      Integer.Sparse.eval oldProjection3461 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3461 oldProjection3461
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3461 hH))

def oldProjection3464 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -360), (20, 55), (94, 120), (241, 80), (243, 480), (247, 160), (698, 480), (704, 720), (1223, -240), (1225, 80), (1226, 160), (1227, 80), (1251, 60)]

theorem oldProjectionSound3464 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3464 =
      Integer.Sparse.eval oldProjection3464 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3464 oldProjection3464
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3464 hH))

def oldProjection3467 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -20), (94, 55), (241, 240), (243, 400), (698, 1920), (700, 160), (1058, -720), (1059, 240), (1226, 960), (1227, 960), (1251, -295)]

theorem oldProjectionSound3467 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3467 =
      Integer.Sparse.eval oldProjection3467 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3467 oldProjection3467
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3467 hH))

def oldProjection3468 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -260), (20, 30), (94, 140), (104, 240), (105, 160), (241, 720), (243, 1120), (698, 1200), (704, 720), (1223, -720), (1225, 240), (1226, 480), (1227, 240), (1251, -15)]

theorem oldProjectionSound3468 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3468 =
      Integer.Sparse.eval oldProjection3468 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3468 oldProjection3468
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3468 hH))

end NoFourMUBs.Step2.SOS.Normalization
