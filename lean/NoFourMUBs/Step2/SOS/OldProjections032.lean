import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound38

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2414 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, -10), (42, -160), (94, -35), (243, -160), (244, -80), (698, -160), (700, -400), (701, -240), (704, -320), (1059, -80), (1251, -35)]

theorem oldProjectionSound2414 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2414 =
      Integer.Sparse.eval oldProjection2414 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2414 oldProjection2414
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2414 hH))

def oldProjection2415 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -2), (243, -16), (698, -32), (700, -32), (704, -16), (1059, -16), (1251, 3)]

theorem oldProjectionSound2415 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2415 =
      Integer.Sparse.eval oldProjection2415 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2415 oldProjection2415
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2415 hH))

def oldProjection2416 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (243, -80), (700, -160), (704, -160), (1251, -35)]

theorem oldProjectionSound2416 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2416 =
      Integer.Sparse.eval oldProjection2416 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2416 oldProjection2416
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2416 hH))

def oldProjection2417 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (42, -160), (94, -5), (241, -80), (243, -320), (698, -160), (700, -80), (701, -80), (704, -160), (1251, -5)]

theorem oldProjectionSound2417 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2417 =
      Integer.Sparse.eval oldProjection2417 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2417 oldProjection2417
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2417 hH))

def oldProjection2418 : Integer.Sparse (Fin 1613) := [(0, -1), (20, -5), (94, -5), (241, -80), (243, -80), (698, -240), (700, -160), (704, -80), (1251, 45)]

theorem oldProjectionSound2418 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2418 =
      Integer.Sparse.eval oldProjection2418 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2418 oldProjection2418
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2418 hH))

def oldProjection2419 : Integer.Sparse (Fin 1613) := [(0, -22), (94, -25), (698, -160), (700, -80), (1059, -80), (1251, 145)]

theorem oldProjectionSound2419 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2419 =
      Integer.Sparse.eval oldProjection2419 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2419 oldProjection2419
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2419 hH))

def oldProjection2420 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -50), (698, -400), (700, -240), (1059, -160), (1227, -160), (1251, 95)]

theorem oldProjectionSound2420 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2420 =
      Integer.Sparse.eval oldProjection2420 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2420 oldProjection2420
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2420 hH))

def oldProjection2421 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (698, -400), (700, -400), (1059, -160), (1251, -5)]

theorem oldProjectionSound2421 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2421 =
      Integer.Sparse.eval oldProjection2421 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2421 oldProjection2421
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2421 hH))

def oldProjection2422 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 15), (700, -80), (1059, -80), (1251, -75)]

theorem oldProjectionSound2422 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2422 =
      Integer.Sparse.eval oldProjection2422 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2422 oldProjection2422
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2422 hH))

def oldProjection2423 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, 45), (241, -160), (243, -80), (698, -320), (1050, 240), (1052, 240), (1059, -80), (1226, -160), (1251, -30)]

theorem oldProjectionSound2423 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2423 =
      Integer.Sparse.eval oldProjection2423 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2423 oldProjection2423
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2423 hH))

def oldProjection2424 : Integer.Sparse (Fin 1613) := [(0, -13), (94, -5), (698, -240), (700, -160), (1059, -160), (1251, 140)]

theorem oldProjectionSound2424 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2424 =
      Integer.Sparse.eval oldProjection2424 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2424 oldProjection2424
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2424 hH))

def oldProjection2425 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 25), (698, -160), (700, -80), (1227, -80), (1251, 20)]

theorem oldProjectionSound2425 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2425 =
      Integer.Sparse.eval oldProjection2425 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2425 oldProjection2425
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2425 hH))

def oldProjection2426 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (243, -80), (697, 240), (698, -160), (700, -320), (704, -80), (1052, 240), (1059, -80), (1251, -5)]

theorem oldProjectionSound2426 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2426 =
      Integer.Sparse.eval oldProjection2426 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2426 oldProjection2426
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2426 hH))

def oldProjection2427 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (698, -160), (700, -160), (1251, -20)]

theorem oldProjectionSound2427 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2427 =
      Integer.Sparse.eval oldProjection2427 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2427 oldProjection2427
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2427 hH))

def oldProjection2428 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (698, -160), (700, -240), (1059, -240), (1251, 65)]

theorem oldProjectionSound2428 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2428 =
      Integer.Sparse.eval oldProjection2428 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2428 oldProjection2428
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2428 hH))

def oldProjection2429 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -50), (241, -160), (243, -80), (698, -480), (700, -240), (1050, 240), (1052, 240), (1059, -240), (1251, 15)]

theorem oldProjectionSound2429 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2429 =
      Integer.Sparse.eval oldProjection2429 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2429 oldProjection2429
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2429 hH))

def oldProjection2430 : Integer.Sparse (Fin 1613) := [(0, 2), (60, -160), (94, -15), (698, -160), (700, -560), (1059, -80), (1251, -5)]

theorem oldProjectionSound2430 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2430 =
      Integer.Sparse.eval oldProjection2430 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2430 oldProjection2430
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2430 hH))

def oldProjection2431 : Integer.Sparse (Fin 1613) := [(0, 1), (241, -80), (243, -80), (698, -160), (700, -80), (1050, 240), (1058, 240), (1226, -80), (1251, -25)]

theorem oldProjectionSound2431 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2431 =
      Integer.Sparse.eval oldProjection2431 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2431 oldProjection2431
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2431 hH))

def oldProjection2432 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (241, -40), (243, -40), (698, -120), (1055, 120), (1058, 120), (1226, -80), (1227, -40), (1251, 20)]

theorem oldProjectionSound2432 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2432 =
      Integer.Sparse.eval oldProjection2432 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2432 oldProjection2432
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2432 hH))

def oldProjection2433 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (88, -32), (94, -5), (241, -32), (243, -80), (698, -80), (704, -32), (1226, -64), (1227, -32), (1251, 5)]

theorem oldProjectionSound2433 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2433 =
      Integer.Sparse.eval oldProjection2433 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2433 oldProjection2433
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2433 hH))

def oldProjection2434 : Integer.Sparse (Fin 1613) := [(0, -12), (19, 20), (20, -5), (241, -80), (243, -80), (698, -320), (1226, -160), (1227, -160), (1251, 125)]

theorem oldProjectionSound2434 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2434 =
      Integer.Sparse.eval oldProjection2434 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2434 oldProjection2434
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2434 hH))

def oldProjection2435 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -15), (241, -80), (698, -320), (1050, 240), (1058, 240), (1059, -160), (1251, -40)]

theorem oldProjectionSound2435 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2435 =
      Integer.Sparse.eval oldProjection2435 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2435 oldProjection2435
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2435 hH))

def oldProjection2436 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 14), (241, -16), (243, -16), (1226, -32), (1251, -13)]

theorem oldProjectionSound2436 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2436 =
      Integer.Sparse.eval oldProjection2436 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2436 oldProjection2436
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2436 hH))

def oldProjection2437 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (88, -160), (94, 25), (241, -160), (243, -400), (698, -240), (1226, -160), (1251, 25)]

theorem oldProjectionSound2437 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2437 =
      Integer.Sparse.eval oldProjection2437 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2437 oldProjection2437
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2437 hH))

def oldProjection2438 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -3), (698, -16), (1227, -16), (1251, 19)]

theorem oldProjectionSound2438 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2438 =
      Integer.Sparse.eval oldProjection2438 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2438 oldProjection2438
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2438 hH))

def oldProjection2439 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (698, -80), (1059, -40), (1251, -50)]

theorem oldProjectionSound2439 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2439 =
      Integer.Sparse.eval oldProjection2439 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2439 oldProjection2439
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2439 hH))

def oldProjection2440 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 30), (698, -160), (1059, -80), (1226, -80), (1251, 65)]

theorem oldProjectionSound2440 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2440 =
      Integer.Sparse.eval oldProjection2440 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2440 oldProjection2440
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2440 hH))

def oldProjection2441 : Integer.Sparse (Fin 1613) := [(0, -3), (90, -160), (94, -15), (698, -560), (700, -320), (1059, -160), (1226, -160), (1227, -160), (1251, 80)]

theorem oldProjectionSound2441 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2441 =
      Integer.Sparse.eval oldProjection2441 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2441 oldProjection2441
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2441 hH))

def oldProjection2442 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -20), (698, -320), (1059, -160), (1226, -80), (1227, -160), (1251, 175)]

theorem oldProjectionSound2442 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2442 =
      Integer.Sparse.eval oldProjection2442 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2442 oldProjection2442
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2442 hH))

def oldProjection2443 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -25), (698, -240), (1226, -80), (1251, 5)]

theorem oldProjectionSound2443 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2443 =
      Integer.Sparse.eval oldProjection2443 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2443 oldProjection2443
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2443 hH))

def oldProjection2444 : Integer.Sparse (Fin 1613) := [(0, -2), (90, -160), (94, 5), (698, -320), (700, -80), (1226, -320), (1227, -160), (1251, 35)]

theorem oldProjectionSound2444 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2444 =
      Integer.Sparse.eval oldProjection2444 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2444 oldProjection2444
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2444 hH))

def oldProjection2445 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -5), (698, -240), (1226, -80), (1227, -240), (1251, 40)]

theorem oldProjectionSound2445 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2445 =
      Integer.Sparse.eval oldProjection2445 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2445 oldProjection2445
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2445 hH))

def oldProjection2446 : Integer.Sparse (Fin 1613) := [(0, 2), (90, -160), (94, 5), (698, -320), (700, -240), (1059, -240), (1226, -160), (1251, 15)]

theorem oldProjectionSound2446 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2446 =
      Integer.Sparse.eval oldProjection2446 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2446 oldProjection2446
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2446 hH))

def oldProjection2447 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -15), (698, -400), (1059, -80), (1226, -160), (1227, -160), (1251, 80)]

theorem oldProjectionSound2447 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2447 =
      Integer.Sparse.eval oldProjection2447 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2447 oldProjection2447
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2447 hH))

def oldProjection2448 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -7), (698, -16), (1059, -16), (1251, 22)]

theorem oldProjectionSound2448 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2448 =
      Integer.Sparse.eval oldProjection2448 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2448 oldProjection2448
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2448 hH))

def oldProjection2449 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -35), (698, -80), (1227, -80), (1251, 35)]

theorem oldProjectionSound2449 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2449 =
      Integer.Sparse.eval oldProjection2449 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2449 oldProjection2449
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2449 hH))

def oldProjection2450 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -25), (698, -400), (1059, -80), (1226, -160), (1227, -320), (1251, 100)]

theorem oldProjectionSound2450 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2450 =
      Integer.Sparse.eval oldProjection2450 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2450 oldProjection2450
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2450 hH))

def oldProjection2451 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (90, -80), (94, -10), (698, -320), (700, -160), (1059, -240), (1226, -80), (1251, 35)]

theorem oldProjectionSound2451 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2451 =
      Integer.Sparse.eval oldProjection2451 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2451 oldProjection2451
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2451 hH))

def oldProjection2452 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 240), (90, -80), (94, -5), (698, -320), (700, -80), (1226, -160), (1227, -240), (1251, 40)]

theorem oldProjectionSound2452 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2452 =
      Integer.Sparse.eval oldProjection2452 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2452 oldProjection2452
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2452 hH))

def oldProjection2453 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -5), (698, -400), (700, -160), (1059, -160), (1227, -160), (1251, 70)]

theorem oldProjectionSound2453 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2453 =
      Integer.Sparse.eval oldProjection2453 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2453 oldProjection2453
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2453 hH))

def oldProjection2454 : Integer.Sparse (Fin 1613) := [(0, -29), (94, -20), (698, -240), (700, -80), (1059, -160), (1227, -160), (1251, 185)]

theorem oldProjectionSound2454 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2454 =
      Integer.Sparse.eval oldProjection2454 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2454 oldProjection2454
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2454 hH))

def oldProjection2455 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -20), (698, -240), (700, -80), (1251, -65)]

theorem oldProjectionSound2455 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2455 =
      Integer.Sparse.eval oldProjection2455 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2455 oldProjection2455
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2455 hH))

def oldProjection2457 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 120), (20, -25), (93, -120), (94, 5), (108, -160), (243, -80), (247, -80), (1047, 480), (1214, 240), (1219, 240), (1226, -80), (1319, 240)]

theorem oldProjectionSound2457 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2457 =
      Integer.Sparse.eval oldProjection2457 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2457 oldProjection2457
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2457 hH))

def oldProjection2460 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 100), (20, -5), (94, -50), (104, -80), (108, -80), (241, -160), (247, -160), (694, 240), (698, -160), (704, -80), (1250, -60), (1251, -25), (1319, 240)]

theorem oldProjectionSound2460 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2460 =
      Integer.Sparse.eval oldProjection2460 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2460 oldProjection2460
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2460 hH))

def oldProjection2465 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (94, -10), (698, -80), (704, -80), (1251, 5), (1321, 120)]

theorem oldProjectionSound2465 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2465 =
      Integer.Sparse.eval oldProjection2465 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2465 oldProjection2465
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2465 hH))

def oldProjection2466 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 50), (20, -5), (94, -35), (247, -80), (698, -80), (704, -40), (1251, 20)]

theorem oldProjectionSound2466 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2466 =
      Integer.Sparse.eval oldProjection2466 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2466 oldProjection2466
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2466 hH))

def oldProjection2468 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (94, -25), (243, -320), (698, -80), (700, -160), (704, -80), (1225, -80), (1226, -160), (1251, 5)]

theorem oldProjectionSound2468 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2468 =
      Integer.Sparse.eval oldProjection2468 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2468 oldProjection2468
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2468 hH))

def oldProjection2470 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -15), (94, -55), (243, -80), (698, -240), (704, -160), (1226, -80), (1227, -80), (1251, 35), (1321, 240), (1323, 240), (1389, 240)]

theorem oldProjectionSound2470 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2470 =
      Integer.Sparse.eval oldProjection2470 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2470 oldProjection2470
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2470 hH))

def oldProjection2471 : Integer.Sparse (Fin 1613) := [(0, -6), (19, 40), (20, -5), (94, -50), (243, -80), (698, -320), (704, -160), (1226, -160), (1227, -160), (1251, 25)]

theorem oldProjectionSound2471 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2471 =
      Integer.Sparse.eval oldProjection2471 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2471 oldProjection2471
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2471 hH))

def oldProjection2474 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, 20), (243, -160), (698, -160), (1225, -40), (1226, -120), (1227, -40), (1251, 20), (1323, 120)]

theorem oldProjectionSound2474 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2474 =
      Integer.Sparse.eval oldProjection2474 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2474 oldProjection2474
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2474 hH))

def oldProjection2475 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (4, -5), (19, 40), (20, 30), (94, 145), (106, -80), (243, -560), (698, -80), (1057, 240), (1225, -320), (1226, -320), (1251, 25)]

theorem oldProjectionSound2475 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2475 =
      Integer.Sparse.eval oldProjection2475 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2475 oldProjection2475
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2475 hH))

def oldProjection2477 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 12), (20, 5), (93, -12), (94, -6)]

theorem oldProjectionSound2477 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2477 =
      Integer.Sparse.eval oldProjection2477 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2477 oldProjection2477
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2477 hH))

def oldProjection2481 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (38, 240), (94, -55), (130, -720), (241, -80), (247, -240), (548, -720), (704, -80), (1251, -45)]

theorem oldProjectionSound2481 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2481 =
      Integer.Sparse.eval oldProjection2481 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2481 oldProjection2481
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2481 hH))

def oldProjection2483 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 30), (94, -35), (228, 120), (247, -40), (326, -360), (698, -40), (704, -80), (1251, -35), (1331, -360)]

theorem oldProjectionSound2483 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2483 =
      Integer.Sparse.eval oldProjection2483 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2483 oldProjection2483
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2483 hH))

def oldProjection2484 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (94, -75), (228, 960), (241, -80), (247, -160), (698, -240), (704, -160), (1223, 240), (1226, -80), (1227, -80), (1251, -90)]

theorem oldProjectionSound2484 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2484 =
      Integer.Sparse.eval oldProjection2484 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2484 oldProjection2484
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2484 hH))

def oldProjection2485 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -3), (88, -64), (94, 16), (241, -16), (243, -128), (1225, -16), (1226, -64), (1251, 3)]

theorem oldProjectionSound2485 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2485 =
      Integer.Sparse.eval oldProjection2485 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2485 oldProjection2485
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2485 hH))

def oldProjection2487 : Integer.Sparse (Fin 1613) := [(326, -1), (1331, -2), (1356, -1)]

theorem oldProjectionSound2487 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2487 =
      Integer.Sparse.eval oldProjection2487 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2487 oldProjection2487
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2487 hH))

def oldProjection2488 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 120), (20, -5), (94, -85), (247, -160), (294, -720), (326, -720), (704, -160), (1251, -80)]

theorem oldProjectionSound2488 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2488 =
      Integer.Sparse.eval oldProjection2488 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2488 oldProjection2488
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2488 hH))

def oldProjection2489 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -15), (94, 5), (228, 240), (241, -80), (243, -160), (698, -160), (704, -160), (1251, -10), (1331, -720)]

theorem oldProjectionSound2489 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2489 =
      Integer.Sparse.eval oldProjection2489 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2489 oldProjection2489
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2489 hH))

def oldProjection2490 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (94, -35), (228, 120), (241, -40), (243, -40), (247, -80), (698, -80), (704, -80), (1251, -20)]

theorem oldProjectionSound2490 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2490 =
      Integer.Sparse.eval oldProjection2490 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2490 oldProjection2490
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2490 hH))

def oldProjection2491 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -7), (228, 48), (241, -32), (243, -48), (247, -16), (698, -80), (704, -16), (1223, 48), (1225, -16), (1226, -48), (1227, -32), (1251, 2)]

theorem oldProjectionSound2491 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2491 =
      Integer.Sparse.eval oldProjection2491 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2491 oldProjection2491
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2491 hH))

def oldProjection2492 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (20, -10), (94, 5), (243, -80), (698, -80), (1251, 5)]

theorem oldProjectionSound2492 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2492 =
      Integer.Sparse.eval oldProjection2492 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2492 oldProjection2492
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2492 hH))

def oldProjection2493 : Integer.Sparse (Fin 1613) := [(0, 2), (20, -5), (88, -80), (94, 5), (241, -80), (243, -240), (247, -160), (698, -80), (1226, -80), (1251, -20)]

theorem oldProjectionSound2493 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2493 =
      Integer.Sparse.eval oldProjection2493 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2493 oldProjection2493
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2493 hH))

def oldProjection2494 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -15), (88, -80), (94, 45), (241, -240), (243, -320), (698, -240), (704, -80), (1226, -160), (1251, 30)]

theorem oldProjectionSound2494 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2494 =
      Integer.Sparse.eval oldProjection2494 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2494 oldProjection2494
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2494 hH))

end NoFourMUBs.Step2.SOS.Normalization
