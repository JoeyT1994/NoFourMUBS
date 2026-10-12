import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound7

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection413 : Integer.Sparse (Fin 1613) := [(205, 1)]

theorem oldProjectionSound413 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node413 =
      Integer.Sparse.eval oldProjection413 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value413 oldProjection413
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound413 hH))

def oldProjection414 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 1), (94, 2), (1251, 1)]

theorem oldProjectionSound414 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node414 =
      Integer.Sparse.eval oldProjection414 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value414 oldProjection414
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound414 hH))

def oldProjection415 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (94, 5), (104, 16), (241, 16), (243, 32), (698, 16), (703, 16), (704, 32), (1251, 4)]

theorem oldProjectionSound415 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node415 =
      Integer.Sparse.eval oldProjection415 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value415 oldProjection415
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound415 hH))

def oldProjection417 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 1), (228, -48), (241, 32), (243, 16), (247, 16), (698, 16), (1251, 1)]

theorem oldProjectionSound417 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node417 =
      Integer.Sparse.eval oldProjection417 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value417 oldProjection417
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound417 hH))

def oldProjection418 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (94, 6), (104, 16), (108, 48), (241, 16), (247, 32), (1251, 5)]

theorem oldProjectionSound418 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node418 =
      Integer.Sparse.eval oldProjection418 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value418 oldProjection418
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound418 hH))

def oldProjection419 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 25), (228, -240), (241, 80), (243, 80), (247, 80), (698, 80), (704, 80), (1251, 30)]

theorem oldProjectionSound419 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node419 =
      Integer.Sparse.eval oldProjection419 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value419 oldProjection419
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound419 hH))

def oldProjection420 : Integer.Sparse (Fin 1613) := [(19, -4), (88, 8), (94, 1), (243, 16), (247, 8), (1251, 1)]

theorem oldProjectionSound420 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node420 =
      Integer.Sparse.eval oldProjection420 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value420 oldProjection420
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound420 hH))

def oldProjection421 : Integer.Sparse (Fin 1613) := [(19, -2), (88, 8), (94, 1), (241, 16), (243, 24), (698, 16), (704, 8), (1226, 8), (1251, -1)]

theorem oldProjectionSound421 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node421 =
      Integer.Sparse.eval oldProjection421 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value421 oldProjection421
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound421 hH))

def oldProjection422 : Integer.Sparse (Fin 1613) := [(88, 1), (228, -3), (241, 1), (243, 2), (698, 2), (1226, 2), (1227, 1)]

theorem oldProjectionSound422 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node422 =
      Integer.Sparse.eval oldProjection422 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value422 oldProjection422
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound422 hH))

def oldProjection423 : Integer.Sparse (Fin 1613) := [(82, -3), (228, -3), (241, 1), (243, 1), (698, 1), (1223, -3)]

theorem oldProjectionSound423 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node423 =
      Integer.Sparse.eval oldProjection423 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value423 oldProjection423
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound423 hH))

def oldProjection425 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 3), (94, 8), (229, -48), (243, 16), (704, 32), (1251, 5)]

theorem oldProjectionSound425 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node425 =
      Integer.Sparse.eval oldProjection425 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value425 oldProjection425
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound425 hH))

def oldProjection427 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (88, 16), (94, 3), (231, -48), (241, 32), (243, 32), (247, 16), (1251, 2)]

theorem oldProjectionSound427 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node427 =
      Integer.Sparse.eval oldProjection427 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value427 oldProjection427
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound427 hH))

def oldProjection428 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (91, 32), (94, -4), (243, 48), (244, 16), (1225, 32), (1251, 1)]

theorem oldProjectionSound428 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node428 =
      Integer.Sparse.eval oldProjection428 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value428 oldProjection428
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound428 hH))

def oldProjection429 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 12), (94, -3), (104, 16), (241, 16), (1251, -7)]

theorem oldProjectionSound429 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node429 =
      Integer.Sparse.eval oldProjection429 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value429 oldProjection429
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound429 hH))

def oldProjection430 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (104, 8), (105, 8), (243, 8), (698, 8), (1251, -1)]

theorem oldProjectionSound430 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node430 =
      Integer.Sparse.eval oldProjection430 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value430 oldProjection430
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound430 hH))

def oldProjection431 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -4), (20, 2), (94, 4), (246, 16), (704, 16), (1251, 3)]

theorem oldProjectionSound431 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node431 =
      Integer.Sparse.eval oldProjection431 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value431 oldProjection431
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound431 hH))

def oldProjection432 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -20), (20, 10), (94, 25), (108, 80), (247, 80), (1251, 20)]

theorem oldProjectionSound432 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node432 =
      Integer.Sparse.eval oldProjection432 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value432 oldProjection432
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound432 hH))

def oldProjection433 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 10), (108, 80), (1251, 15)]

theorem oldProjectionSound433 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node433 =
      Integer.Sparse.eval oldProjection433 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value433 oldProjection433
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound433 hH))

def oldProjection435 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -3), (20, 1), (94, -1), (105, 4), (241, 4), (243, 8)]

theorem oldProjectionSound435 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node435 =
      Integer.Sparse.eval oldProjection435 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value435 oldProjection435
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound435 hH))

def oldProjection436 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -12), (20, -2), (94, 2), (106, 16), (243, 16), (244, 32), (246, 16), (1251, 1)]

theorem oldProjectionSound436 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node436 =
      Integer.Sparse.eval oldProjection436 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value436 oldProjection436
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound436 hH))

def oldProjection437 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 15), (241, 240), (243, 160), (698, 240), (1251, -40)]

theorem oldProjectionSound437 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node437 =
      Integer.Sparse.eval oldProjection437 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value437 oldProjection437
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound437 hH))

def oldProjection438 : Integer.Sparse (Fin 1613) := [(238, -3), (241, 1), (243, 2), (244, 1), (698, 2), (700, 2), (1059, 1)]

theorem oldProjectionSound438 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node438 =
      Integer.Sparse.eval oldProjection438 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value438 oldProjection438
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound438 hH))

def oldProjection440 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 5), (94, 50), (241, 80), (247, 160), (1251, 40)]

theorem oldProjectionSound440 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node440 =
      Integer.Sparse.eval oldProjection440 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value440 oldProjection440
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound440 hH))

def oldProjection443 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 5), (94, 15), (241, 160), (243, 80), (247, 80), (698, 80), (1251, -5)]

theorem oldProjectionSound443 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node443 =
      Integer.Sparse.eval oldProjection443 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value443 oldProjection443
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound443 hH))

def oldProjection445 : Integer.Sparse (Fin 1613) := [(19, -12), (94, -3), (243, 32), (244, 16), (700, 16), (1251, 5)]

theorem oldProjectionSound445 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node445 =
      Integer.Sparse.eval oldProjection445 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value445 oldProjection445
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound445 hH))

def oldProjection446 : Integer.Sparse (Fin 1613) := [(94, 1), (238, -12), (241, 8), (247, 8), (1251, 1)]

theorem oldProjectionSound446 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node446 =
      Integer.Sparse.eval oldProjection446 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value446 oldProjection446
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound446 hH))

def oldProjection447 : Integer.Sparse (Fin 1613) := [(283, 1)]

theorem oldProjectionSound447 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node447 =
      Integer.Sparse.eval oldProjection447 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value447 oldProjection447
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound447 hH))

def oldProjection448 : Integer.Sparse (Fin 1613) := [(285, 1)]

theorem oldProjectionSound448 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node448 =
      Integer.Sparse.eval oldProjection448 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value448 oldProjection448
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound448 hH))

def oldProjection449 : Integer.Sparse (Fin 1613) := [(287, 1)]

theorem oldProjectionSound449 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node449 =
      Integer.Sparse.eval oldProjection449 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value449 oldProjection449
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound449 hH))

def oldProjection450 : Integer.Sparse (Fin 1613) := [(288, 1)]

theorem oldProjectionSound450 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node450 =
      Integer.Sparse.eval oldProjection450 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value450 oldProjection450
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound450 hH))

def oldProjection451 : Integer.Sparse (Fin 1613) := [(289, 1)]

theorem oldProjectionSound451 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node451 =
      Integer.Sparse.eval oldProjection451 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value451 oldProjection451
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound451 hH))

def oldProjection452 : Integer.Sparse (Fin 1613) := [(291, 1)]

theorem oldProjectionSound452 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node452 =
      Integer.Sparse.eval oldProjection452 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value452 oldProjection452
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound452 hH))

def oldProjection453 : Integer.Sparse (Fin 1613) := [(293, 1)]

theorem oldProjectionSound453 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node453 =
      Integer.Sparse.eval oldProjection453 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value453 oldProjection453
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound453 hH))

def oldProjection454 : Integer.Sparse (Fin 1613) := [(294, 1)]

theorem oldProjectionSound454 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node454 =
      Integer.Sparse.eval oldProjection454 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value454 oldProjection454
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound454 hH))

def oldProjection455 : Integer.Sparse (Fin 1613) := [(297, 1)]

theorem oldProjectionSound455 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node455 =
      Integer.Sparse.eval oldProjection455 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value455 oldProjection455
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound455 hH))

def oldProjection456 : Integer.Sparse (Fin 1613) := [(298, 1)]

theorem oldProjectionSound456 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node456 =
      Integer.Sparse.eval oldProjection456 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value456 oldProjection456
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound456 hH))

def oldProjection457 : Integer.Sparse (Fin 1613) := [(299, 1)]

theorem oldProjectionSound457 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node457 =
      Integer.Sparse.eval oldProjection457 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value457 oldProjection457
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound457 hH))

def oldProjection458 : Integer.Sparse (Fin 1613) := [(302, 1)]

theorem oldProjectionSound458 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node458 =
      Integer.Sparse.eval oldProjection458 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value458 oldProjection458
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound458 hH))

def oldProjection459 : Integer.Sparse (Fin 1613) := [(307, 1)]

theorem oldProjectionSound459 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node459 =
      Integer.Sparse.eval oldProjection459 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value459 oldProjection459
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound459 hH))

def oldProjection460 : Integer.Sparse (Fin 1613) := [(309, 1)]

theorem oldProjectionSound460 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node460 =
      Integer.Sparse.eval oldProjection460 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value460 oldProjection460
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound460 hH))

def oldProjection461 : Integer.Sparse (Fin 1613) := [(311, 1)]

theorem oldProjectionSound461 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node461 =
      Integer.Sparse.eval oldProjection461 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value461 oldProjection461
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound461 hH))

def oldProjection462 : Integer.Sparse (Fin 1613) := [(312, 1)]

theorem oldProjectionSound462 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node462 =
      Integer.Sparse.eval oldProjection462 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value462 oldProjection462
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound462 hH))

def oldProjection463 : Integer.Sparse (Fin 1613) := [(325, 1)]

theorem oldProjectionSound463 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node463 =
      Integer.Sparse.eval oldProjection463 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value463 oldProjection463
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound463 hH))

def oldProjection464 : Integer.Sparse (Fin 1613) := [(326, 1)]

theorem oldProjectionSound464 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node464 =
      Integer.Sparse.eval oldProjection464 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value464 oldProjection464
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound464 hH))

def oldProjection465 : Integer.Sparse (Fin 1613) := [(327, 1)]

theorem oldProjectionSound465 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node465 =
      Integer.Sparse.eval oldProjection465 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value465 oldProjection465
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound465 hH))

def oldProjection466 : Integer.Sparse (Fin 1613) := [(329, 1)]

theorem oldProjectionSound466 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node466 =
      Integer.Sparse.eval oldProjection466 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value466 oldProjection466
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound466 hH))

def oldProjection467 : Integer.Sparse (Fin 1613) := [(330, 1)]

theorem oldProjectionSound467 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node467 =
      Integer.Sparse.eval oldProjection467 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value467 oldProjection467
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound467 hH))

def oldProjection468 : Integer.Sparse (Fin 1613) := [(332, 1)]

theorem oldProjectionSound468 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node468 =
      Integer.Sparse.eval oldProjection468 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value468 oldProjection468
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound468 hH))

def oldProjection469 : Integer.Sparse (Fin 1613) := [(333, 1)]

theorem oldProjectionSound469 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node469 =
      Integer.Sparse.eval oldProjection469 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value469 oldProjection469
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound469 hH))

def oldProjection470 : Integer.Sparse (Fin 1613) := [(408, 1)]

theorem oldProjectionSound470 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node470 =
      Integer.Sparse.eval oldProjection470 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value470 oldProjection470
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound470 hH))

def oldProjection471 : Integer.Sparse (Fin 1613) := [(418, 1)]

theorem oldProjectionSound471 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node471 =
      Integer.Sparse.eval oldProjection471 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value471 oldProjection471
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound471 hH))

def oldProjection472 : Integer.Sparse (Fin 1613) := [(423, 1)]

theorem oldProjectionSound472 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node472 =
      Integer.Sparse.eval oldProjection472 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value472 oldProjection472
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound472 hH))

def oldProjection473 : Integer.Sparse (Fin 1613) := [(426, 1)]

theorem oldProjectionSound473 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node473 =
      Integer.Sparse.eval oldProjection473 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value473 oldProjection473
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound473 hH))

def oldProjection474 : Integer.Sparse (Fin 1613) := [(427, 1)]

theorem oldProjectionSound474 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node474 =
      Integer.Sparse.eval oldProjection474 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value474 oldProjection474
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound474 hH))

def oldProjection475 : Integer.Sparse (Fin 1613) := [(430, 1)]

theorem oldProjectionSound475 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node475 =
      Integer.Sparse.eval oldProjection475 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value475 oldProjection475
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound475 hH))

def oldProjection476 : Integer.Sparse (Fin 1613) := [(433, 1)]

theorem oldProjectionSound476 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node476 =
      Integer.Sparse.eval oldProjection476 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value476 oldProjection476
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound476 hH))

def oldProjection477 : Integer.Sparse (Fin 1613) := [(434, 1)]

theorem oldProjectionSound477 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node477 =
      Integer.Sparse.eval oldProjection477 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value477 oldProjection477
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound477 hH))

def oldProjection478 : Integer.Sparse (Fin 1613) := [(454, 1)]

theorem oldProjectionSound478 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node478 =
      Integer.Sparse.eval oldProjection478 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value478 oldProjection478
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound478 hH))

def oldProjection479 : Integer.Sparse (Fin 1613) := [(455, 1)]

theorem oldProjectionSound479 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node479 =
      Integer.Sparse.eval oldProjection479 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value479 oldProjection479
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound479 hH))

def oldProjection480 : Integer.Sparse (Fin 1613) := [(458, 1)]

theorem oldProjectionSound480 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node480 =
      Integer.Sparse.eval oldProjection480 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value480 oldProjection480
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound480 hH))

def oldProjection481 : Integer.Sparse (Fin 1613) := [(461, 1)]

theorem oldProjectionSound481 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node481 =
      Integer.Sparse.eval oldProjection481 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value481 oldProjection481
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound481 hH))

def oldProjection482 : Integer.Sparse (Fin 1613) := [(462, 1)]

theorem oldProjectionSound482 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node482 =
      Integer.Sparse.eval oldProjection482 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value482 oldProjection482
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound482 hH))

def oldProjection483 : Integer.Sparse (Fin 1613) := [(465, 1)]

theorem oldProjectionSound483 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node483 =
      Integer.Sparse.eval oldProjection483 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value483 oldProjection483
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound483 hH))

def oldProjection484 : Integer.Sparse (Fin 1613) := [(478, 1)]

theorem oldProjectionSound484 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node484 =
      Integer.Sparse.eval oldProjection484 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value484 oldProjection484
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound484 hH))

end NoFourMUBs.Step2.SOS.Normalization
