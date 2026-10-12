import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound6

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection336 : Integer.Sparse (Fin 1613) := [(42, 8), (90, 8), (94, 1), (698, 8), (701, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound336 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node336 =
      Integer.Sparse.eval oldProjection336 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value336 oldProjection336
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound336 hH))

def oldProjection337 : Integer.Sparse (Fin 1613) := [(37, -48), (55, -48), (94, -3), (243, 16), (1052, -48), (1226, 16), (1251, 1)]

theorem oldProjectionSound337 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node337 =
      Integer.Sparse.eval oldProjection337 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value337 oldProjection337
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound337 hH))

def oldProjection339 : Integer.Sparse (Fin 1613) := [(42, 8), (58, -24), (60, 8), (94, 1), (243, 8), (698, 8), (700, 24), (704, 8), (1251, 1)]

theorem oldProjectionSound339 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node339 =
      Integer.Sparse.eval oldProjection339 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value339 oldProjection339
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound339 hH))

def oldProjection341 : Integer.Sparse (Fin 1613) := [(60, 16), (94, -1), (700, 48), (1251, 3)]

theorem oldProjectionSound341 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node341 =
      Integer.Sparse.eval oldProjection341 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value341 oldProjection341
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound341 hH))

def oldProjection343 : Integer.Sparse (Fin 1613) := [(42, 8), (56, -24), (90, 16), (94, 1), (698, 16), (700, 16), (1226, 8), (1251, 1)]

theorem oldProjectionSound343 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node343 =
      Integer.Sparse.eval oldProjection343 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value343 oldProjection343
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound343 hH))

def oldProjection345 : Integer.Sparse (Fin 1613) := [(58, -24), (81, -24), (94, 1), (698, 8), (700, 8), (1052, -24), (1251, 1)]

theorem oldProjectionSound345 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node345 =
      Integer.Sparse.eval oldProjection345 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value345 oldProjection345
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound345 hH))

def oldProjection346 : Integer.Sparse (Fin 1613) := [(60, 8), (94, 1), (698, 16), (700, 48), (1059, 16), (1251, 1)]

theorem oldProjectionSound346 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node346 =
      Integer.Sparse.eval oldProjection346 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value346 oldProjection346
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound346 hH))

def oldProjection349 : Integer.Sparse (Fin 1613) := [(42, 16), (90, 16), (94, -1), (243, 32), (698, 32), (700, 32), (704, 16), (1226, 16), (1251, 3)]

theorem oldProjectionSound349 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node349 =
      Integer.Sparse.eval oldProjection349 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value349 oldProjection349
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound349 hH))

def oldProjection351 : Integer.Sparse (Fin 1613) := [(56, -1), (697, -1), (1052, -1), (1219, -1)]

theorem oldProjectionSound351 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node351 =
      Integer.Sparse.eval oldProjection351 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value351 oldProjection351
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound351 hH))

def oldProjection354 : Integer.Sparse (Fin 1613) := [(72, -24), (94, -3), (243, 8), (700, 24), (1251, 1)]

theorem oldProjectionSound354 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node354 =
      Integer.Sparse.eval oldProjection354 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value354 oldProjection354
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound354 hH))

def oldProjection356 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (81, -240), (94, 15), (698, 80), (1058, -240), (1251, 20)]

theorem oldProjectionSound356 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node356 =
      Integer.Sparse.eval oldProjection356 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value356 oldProjection356
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound356 hH))

def oldProjection357 : Integer.Sparse (Fin 1613) := [(72, -1), (79, -1), (1050, -1), (1058, -1)]

theorem oldProjectionSound357 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node357 =
      Integer.Sparse.eval oldProjection357 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value357 oldProjection357
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound357 hH))

def oldProjection358 : Integer.Sparse (Fin 1613) := [(72, -1), (76, -1), (81, -1), (1221, -1)]

theorem oldProjectionSound358 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node358 =
      Integer.Sparse.eval oldProjection358 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value358 oldProjection358
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound358 hH))

def oldProjection359 : Integer.Sparse (Fin 1613) := [(19, -4), (77, -48), (88, 32), (91, 16), (94, 1), (241, 32), (243, 48), (1251, 1)]

theorem oldProjectionSound359 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node359 =
      Integer.Sparse.eval oldProjection359 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value359 oldProjection359
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound359 hH))

def oldProjection360 : Integer.Sparse (Fin 1613) := [(76, -48), (88, 16), (90, 16), (94, 1), (241, 16), (243, 16), (698, 32), (1226, 32), (1251, -3)]

theorem oldProjectionSound360 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node360 =
      Integer.Sparse.eval oldProjection360 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value360 oldProjection360
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound360 hH))

def oldProjection361 : Integer.Sparse (Fin 1613) := [(87, -1), (1055, -1), (1058, -2)]

theorem oldProjectionSound361 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node361 =
      Integer.Sparse.eval oldProjection361 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value361 oldProjection361
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound361 hH))

def oldProjection362 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (88, 32), (94, -4), (241, 16), (243, 48), (1226, 32), (1251, -1)]

theorem oldProjectionSound362 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node362 =
      Integer.Sparse.eval oldProjection362 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value362 oldProjection362
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound362 hH))

def oldProjection363 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (90, 80), (94, 25), (698, 160), (700, 160), (704, 80), (1251, 30)]

theorem oldProjectionSound363 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node363 =
      Integer.Sparse.eval oldProjection363 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value363 oldProjection363
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound363 hH))

def oldProjection364 : Integer.Sparse (Fin 1613) := [(94, -7), (700, 16), (1251, -3)]

theorem oldProjectionSound364 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node364 =
      Integer.Sparse.eval oldProjection364 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value364 oldProjection364
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound364 hH))

def oldProjection366 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 20), (700, 80), (1226, 80), (1251, 5)]

theorem oldProjectionSound366 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node366 =
      Integer.Sparse.eval oldProjection366 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value366 oldProjection366
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound366 hH))

def oldProjection367 : Integer.Sparse (Fin 1613) := [(79, -48), (81, -48), (94, 1), (698, 16), (1052, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound367 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node367 =
      Integer.Sparse.eval oldProjection367 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value367 oldProjection367
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound367 hH))

def oldProjection368 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -240), (94, 25), (698, 160), (700, 160), (1059, 80), (1251, 15)]

theorem oldProjectionSound368 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node368 =
      Integer.Sparse.eval oldProjection368 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value368 oldProjection368
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound368 hH))

def oldProjection369 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 10), (698, 240), (700, 320), (1059, 160), (1251, -5)]

theorem oldProjectionSound369 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node369 =
      Integer.Sparse.eval oldProjection369 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value369 oldProjection369
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound369 hH))

def oldProjection370 : Integer.Sparse (Fin 1613) := [(42, 1), (88, 1), (89, -3), (90, 1), (91, 1), (243, 2), (698, 1), (704, 1), (1226, 1)]

theorem oldProjectionSound370 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node370 =
      Integer.Sparse.eval oldProjection370 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value370 oldProjection370
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound370 hH))

def oldProjection371 : Integer.Sparse (Fin 1613) := [(88, 1), (90, 2), (243, 1), (698, 3), (700, 1), (1226, 3), (1227, 1)]

theorem oldProjectionSound371 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node371 =
      Integer.Sparse.eval oldProjection371 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value371 oldProjection371
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound371 hH))

def oldProjection372 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 160), (698, 240), (700, 80), (1226, 160), (1251, -15)]

theorem oldProjectionSound372 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node372 =
      Integer.Sparse.eval oldProjection372 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value372 oldProjection372
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound372 hH))

def oldProjection373 : Integer.Sparse (Fin 1613) := [(79, -48), (88, 16), (90, 32), (94, 1), (698, 32), (700, 16), (1226, 32), (1251, -3)]

theorem oldProjectionSound373 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node373 =
      Integer.Sparse.eval oldProjection373 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value373 oldProjection373
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound373 hH))

def oldProjection374 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 35), (698, 160), (1226, 80), (1251, 10)]

theorem oldProjectionSound374 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node374 =
      Integer.Sparse.eval oldProjection374 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value374 oldProjection374
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound374 hH))

def oldProjection375 : Integer.Sparse (Fin 1613) := [(87, -3), (88, 1), (90, 2), (698, 2), (1226, 3), (1227, 1)]

theorem oldProjectionSound375 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node375 =
      Integer.Sparse.eval oldProjection375 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value375 oldProjection375
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound375 hH))

def oldProjection376 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 5), (698, 320), (1226, 240), (1227, 160), (1251, -30)]

theorem oldProjectionSound376 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node376 =
      Integer.Sparse.eval oldProjection376 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value376 oldProjection376
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound376 hH))

def oldProjection377 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (90, 80), (698, 240), (700, 80), (1059, 80), (1226, 80), (1227, 80), (1251, -15)]

theorem oldProjectionSound377 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node377 =
      Integer.Sparse.eval oldProjection377 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value377 oldProjection377
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound377 hH))

def oldProjection378 : Integer.Sparse (Fin 1613) := [(42, 1), (90, 2), (243, 1), (698, 3), (700, 3), (1059, 1), (1226, 1)]

theorem oldProjectionSound378 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node378 =
      Integer.Sparse.eval oldProjection378 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value378 oldProjection378
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound378 hH))

def oldProjection379 : Integer.Sparse (Fin 1613) := [(56, -3), (81, -3), (698, 1), (700, 1), (1058, -3), (1059, 1)]

theorem oldProjectionSound379 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node379 =
      Integer.Sparse.eval oldProjection379 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value379 oldProjection379
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound379 hH))

def oldProjection381 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (4, 5), (19, -80), (20, -20), (93, 60), (94, 20), (1251, -10)]

theorem oldProjectionSound381 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node381 =
      Integer.Sparse.eval oldProjection381 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value381 oldProjection381
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound381 hH))

def oldProjection382 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -10), (20, 10), (93, 60), (94, -5), (1250, 30), (1251, -10)]

theorem oldProjectionSound382 {H : CMatrix} (hH : IsHadamard H) :
    (60 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node382 =
      Integer.Sparse.eval oldProjection382 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 60 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value382 oldProjection382
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound382 hH))

def oldProjection384 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (94, 3), (104, 48), (105, 32), (241, 48), (1251, -1)]

theorem oldProjectionSound384 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node384 =
      Integer.Sparse.eval oldProjection384 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value384 oldProjection384
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound384 hH))

def oldProjection385 : Integer.Sparse (Fin 1613) := [(102, -3), (104, 1), (105, 2), (106, 1), (241, 2), (243, 2), (698, 1)]

theorem oldProjectionSound385 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node385 =
      Integer.Sparse.eval oldProjection385 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value385 oldProjection385
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound385 hH))

def oldProjection386 : Integer.Sparse (Fin 1613) := [(3, -16), (4, 1), (19, -20), (20, 5), (94, 8), (104, 16), (108, 32), (1251, 4)]

theorem oldProjectionSound386 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node386 =
      Integer.Sparse.eval oldProjection386 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value386 oldProjection386
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound386 hH))

def oldProjection387 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -60), (20, 5), (94, 25), (104, 80), (108, 320), (247, 160), (1251, 25)]

theorem oldProjectionSound387 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node387 =
      Integer.Sparse.eval oldProjection387 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value387 oldProjection387
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound387 hH))

def oldProjection388 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -12), (20, 1), (94, 3), (104, 32), (105, 16), (108, 48), (241, 16), (247, 16), (1251, 2)]

theorem oldProjectionSound388 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node388 =
      Integer.Sparse.eval oldProjection388 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value388 oldProjection388
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound388 hH))

def oldProjection389 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -6), (20, 1), (94, 1), (104, 16), (105, 8), (108, 16), (241, 8)]

theorem oldProjectionSound389 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node389 =
      Integer.Sparse.eval oldProjection389 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value389 oldProjection389
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound389 hH))

def oldProjection390 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 1), (19, -4), (20, 2), (94, -2), (105, 32), (106, 16), (108, 16), (243, 16), (1251, 1)]

theorem oldProjectionSound390 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node390 =
      Integer.Sparse.eval oldProjection390 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value390 oldProjection390
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound390 hH))

def oldProjection391 : Integer.Sparse (Fin 1613) := [(111, 1)]

theorem oldProjectionSound391 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node391 =
      Integer.Sparse.eval oldProjection391 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value391 oldProjection391
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound391 hH))

def oldProjection392 : Integer.Sparse (Fin 1613) := [(113, 1)]

theorem oldProjectionSound392 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node392 =
      Integer.Sparse.eval oldProjection392 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value392 oldProjection392
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound392 hH))

def oldProjection393 : Integer.Sparse (Fin 1613) := [(119, 1)]

theorem oldProjectionSound393 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node393 =
      Integer.Sparse.eval oldProjection393 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value393 oldProjection393
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound393 hH))

def oldProjection394 : Integer.Sparse (Fin 1613) := [(124, 1)]

theorem oldProjectionSound394 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node394 =
      Integer.Sparse.eval oldProjection394 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value394 oldProjection394
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound394 hH))

def oldProjection395 : Integer.Sparse (Fin 1613) := [(126, 1)]

theorem oldProjectionSound395 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node395 =
      Integer.Sparse.eval oldProjection395 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value395 oldProjection395
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound395 hH))

def oldProjection396 : Integer.Sparse (Fin 1613) := [(127, 1)]

theorem oldProjectionSound396 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node396 =
      Integer.Sparse.eval oldProjection396 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value396 oldProjection396
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound396 hH))

def oldProjection397 : Integer.Sparse (Fin 1613) := [(129, 1)]

theorem oldProjectionSound397 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node397 =
      Integer.Sparse.eval oldProjection397 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value397 oldProjection397
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound397 hH))

def oldProjection398 : Integer.Sparse (Fin 1613) := [(130, 1)]

theorem oldProjectionSound398 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node398 =
      Integer.Sparse.eval oldProjection398 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value398 oldProjection398
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound398 hH))

def oldProjection399 : Integer.Sparse (Fin 1613) := [(132, 1)]

theorem oldProjectionSound399 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node399 =
      Integer.Sparse.eval oldProjection399 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value399 oldProjection399
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound399 hH))

def oldProjection400 : Integer.Sparse (Fin 1613) := [(137, 1)]

theorem oldProjectionSound400 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node400 =
      Integer.Sparse.eval oldProjection400 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value400 oldProjection400
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound400 hH))

def oldProjection401 : Integer.Sparse (Fin 1613) := [(138, 1)]

theorem oldProjectionSound401 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node401 =
      Integer.Sparse.eval oldProjection401 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value401 oldProjection401
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound401 hH))

def oldProjection402 : Integer.Sparse (Fin 1613) := [(140, 1)]

theorem oldProjectionSound402 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node402 =
      Integer.Sparse.eval oldProjection402 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value402 oldProjection402
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound402 hH))

def oldProjection403 : Integer.Sparse (Fin 1613) := [(141, 1)]

theorem oldProjectionSound403 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node403 =
      Integer.Sparse.eval oldProjection403 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value403 oldProjection403
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound403 hH))

def oldProjection404 : Integer.Sparse (Fin 1613) := [(143, 1)]

theorem oldProjectionSound404 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node404 =
      Integer.Sparse.eval oldProjection404 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value404 oldProjection404
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound404 hH))

def oldProjection405 : Integer.Sparse (Fin 1613) := [(153, 1)]

theorem oldProjectionSound405 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node405 =
      Integer.Sparse.eval oldProjection405 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value405 oldProjection405
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound405 hH))

def oldProjection406 : Integer.Sparse (Fin 1613) := [(156, 1)]

theorem oldProjectionSound406 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node406 =
      Integer.Sparse.eval oldProjection406 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value406 oldProjection406
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound406 hH))

def oldProjection407 : Integer.Sparse (Fin 1613) := [(160, 1)]

theorem oldProjectionSound407 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node407 =
      Integer.Sparse.eval oldProjection407 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value407 oldProjection407
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound407 hH))

def oldProjection408 : Integer.Sparse (Fin 1613) := [(169, 1)]

theorem oldProjectionSound408 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node408 =
      Integer.Sparse.eval oldProjection408 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value408 oldProjection408
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound408 hH))

def oldProjection409 : Integer.Sparse (Fin 1613) := [(174, 1)]

theorem oldProjectionSound409 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node409 =
      Integer.Sparse.eval oldProjection409 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value409 oldProjection409
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound409 hH))

def oldProjection410 : Integer.Sparse (Fin 1613) := [(197, 1)]

theorem oldProjectionSound410 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node410 =
      Integer.Sparse.eval oldProjection410 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value410 oldProjection410
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound410 hH))

def oldProjection411 : Integer.Sparse (Fin 1613) := [(200, 1)]

theorem oldProjectionSound411 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node411 =
      Integer.Sparse.eval oldProjection411 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value411 oldProjection411
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound411 hH))

def oldProjection412 : Integer.Sparse (Fin 1613) := [(201, 1)]

theorem oldProjectionSound412 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node412 =
      Integer.Sparse.eval oldProjection412 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value412 oldProjection412
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound412 hH))

end NoFourMUBs.Step2.SOS.Normalization
