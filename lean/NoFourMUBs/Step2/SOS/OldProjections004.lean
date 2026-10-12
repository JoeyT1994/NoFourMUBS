import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound5

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection263 : Integer.Sparse (Fin 1613) := [(94, 1), (1226, -8), (1251, 1)]

theorem oldProjectionSound263 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node263 =
      Integer.Sparse.eval oldProjection263 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value263 oldProjection263
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound263 hH))

def oldProjection264 : Integer.Sparse (Fin 1613) := [(93, -1), (1250, -1)]

theorem oldProjectionSound264 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node264 =
      Integer.Sparse.eval oldProjection264 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 4 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value264 oldProjection264
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound264 hH))

def oldProjection265 : Integer.Sparse (Fin 1613) := [(19, 2), (93, -6), (94, -1), (1251, -1)]

theorem oldProjectionSound265 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node265 =
      Integer.Sparse.eval oldProjection265 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value265 oldProjection265
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound265 hH))

def oldProjection266 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -8), (20, -1), (94, -1)]

theorem oldProjectionSound266 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node266 =
      Integer.Sparse.eval oldProjection266 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value266 oldProjection266
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound266 hH))

def oldProjection267 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, 5), (1251, 5)]

theorem oldProjectionSound267 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node267 =
      Integer.Sparse.eval oldProjection267 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value267 oldProjection267
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound267 hH))

def oldProjection268 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -15)]

theorem oldProjectionSound268 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node268 =
      Integer.Sparse.eval oldProjection268 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value268 oldProjection268
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound268 hH))

def oldProjection269 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 5), (1251, 2)]

theorem oldProjectionSound269 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node269 =
      Integer.Sparse.eval oldProjection269 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value269 oldProjection269
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound269 hH))

def oldProjection270 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 2), (94, 1), (1251, -1)]

theorem oldProjectionSound270 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node270 =
      Integer.Sparse.eval oldProjection270 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value270 oldProjection270
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound270 hH))

def oldProjection271 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5)]

theorem oldProjectionSound271 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node271 =
      Integer.Sparse.eval oldProjection271 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value271 oldProjection271
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound271 hH))

def oldProjection272 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (1251, 25)]

theorem oldProjectionSound272 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node272 =
      Integer.Sparse.eval oldProjection272 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value272 oldProjection272
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound272 hH))

def oldProjection273 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (1251, -3)]

theorem oldProjectionSound273 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node273 =
      Integer.Sparse.eval oldProjection273 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value273 oldProjection273
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound273 hH))

def oldProjection274 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (1250, -6), (1251, -1)]

theorem oldProjectionSound274 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node274 =
      Integer.Sparse.eval oldProjection274 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value274 oldProjection274
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound274 hH))

def oldProjection275 : Integer.Sparse (Fin 1613) := [(1388, 1)]

theorem oldProjectionSound275 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node275 =
      Integer.Sparse.eval oldProjection275 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value275 oldProjection275
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound275 hH))

def oldProjection276 : Integer.Sparse (Fin 1613) := [(1389, 1)]

theorem oldProjectionSound276 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node276 =
      Integer.Sparse.eval oldProjection276 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value276 oldProjection276
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound276 hH))

def oldProjection277 : Integer.Sparse (Fin 1613) := [(20, -1), (93, -12), (94, 2), (1251, -1)]

theorem oldProjectionSound277 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node277 =
      Integer.Sparse.eval oldProjection277 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value277 oldProjection277
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound277 hH))

def oldProjection278 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 2), (20, 1), (94, 1)]

theorem oldProjectionSound278 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node278 =
      Integer.Sparse.eval oldProjection278 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value278 oldProjection278
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound278 hH))

def oldProjection279 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1250, -60), (1251, 10)]

theorem oldProjectionSound279 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node279 =
      Integer.Sparse.eval oldProjection279 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value279 oldProjection279
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound279 hH))

def oldProjection280 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (1251, 1)]

theorem oldProjectionSound280 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node280 =
      Integer.Sparse.eval oldProjection280 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value280 oldProjection280
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound280 hH))

def oldProjection281 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (94, -2), (1251, -1)]

theorem oldProjectionSound281 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node281 =
      Integer.Sparse.eval oldProjection281 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value281 oldProjection281
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound281 hH))

def oldProjection282 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 1)]

theorem oldProjectionSound282 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node282 =
      Integer.Sparse.eval oldProjection282 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value282 oldProjection282
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound282 hH))

def oldProjection283 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -5), (1251, 5)]

theorem oldProjectionSound283 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node283 =
      Integer.Sparse.eval oldProjection283 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value283 oldProjection283
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound283 hH))

def oldProjection284 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (1251, 25)]

theorem oldProjectionSound284 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node284 =
      Integer.Sparse.eval oldProjection284 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value284 oldProjection284
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound284 hH))

def oldProjection285 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5)]

theorem oldProjectionSound285 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node285 =
      Integer.Sparse.eval oldProjection285 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value285 oldProjection285
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound285 hH))

def oldProjection286 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -2), (1251, -1)]

theorem oldProjectionSound286 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node286 =
      Integer.Sparse.eval oldProjection286 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value286 oldProjection286
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound286 hH))

def oldProjection287 : Integer.Sparse (Fin 1613) := [(0, -1), (1251, 1)]

theorem oldProjectionSound287 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node287 =
      Integer.Sparse.eval oldProjection287 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value287 oldProjection287
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound287 hH))

def oldProjection288 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1251, 10)]

theorem oldProjectionSound288 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node288 =
      Integer.Sparse.eval oldProjection288 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value288 oldProjection288
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound288 hH))

def oldProjection289 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -10), (1251, -1)]

theorem oldProjectionSound289 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node289 =
      Integer.Sparse.eval oldProjection289 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value289 oldProjection289
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound289 hH))

def oldProjection290 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 1)]

theorem oldProjectionSound290 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node290 =
      Integer.Sparse.eval oldProjection290 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 8 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value290 oldProjection290
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound290 hH))

def oldProjection291 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1251, -50)]

theorem oldProjectionSound291 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node291 =
      Integer.Sparse.eval oldProjection291 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value291 oldProjection291
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound291 hH))

def oldProjection292 : Integer.Sparse (Fin 1613) := [(94, 1), (1251, 1)]

theorem oldProjectionSound292 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node292 =
      Integer.Sparse.eval oldProjection292 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 8 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value292 oldProjection292
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound292 hH))

def oldProjection293 : Integer.Sparse (Fin 1613) := [(0, 1), (1251, -1)]

theorem oldProjectionSound293 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node293 =
      Integer.Sparse.eval oldProjection293 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value293 oldProjection293
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound293 hH))

def oldProjection294 : Integer.Sparse (Fin 1613) := [(0, -1), (1251, 5)]

theorem oldProjectionSound294 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node294 =
      Integer.Sparse.eval oldProjection294 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 40 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value294 oldProjection294
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound294 hH))

def oldProjection296 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -100), (4, 5), (94, -5), (1251, 5)]

theorem oldProjectionSound296 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node296 =
      Integer.Sparse.eval oldProjection296 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value296 oldProjection296
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound296 hH))

def oldProjection297 : Integer.Sparse (Fin 1613) := [(3, -16), (19, -16), (20, 4), (94, 3), (104, 16), (105, 16), (108, 32), (1251, 3)]

theorem oldProjectionSound297 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node297 =
      Integer.Sparse.eval oldProjection297 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value297 oldProjection297
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound297 hH))

def oldProjection298 : Integer.Sparse (Fin 1613) := [(19, -2), (23, -12), (94, 1), (104, 8), (108, 4), (703, 4), (704, 8), (1251, 1)]

theorem oldProjectionSound298 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node298 =
      Integer.Sparse.eval oldProjection298 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value298 oldProjection298
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound298 hH))

def oldProjection299 : Integer.Sparse (Fin 1613) := [(19, -4), (26, 16), (94, 1), (104, 48), (105, 48), (108, 16), (241, 32), (243, 16), (1251, 1)]

theorem oldProjectionSound299 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node299 =
      Integer.Sparse.eval oldProjection299 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value299 oldProjection299
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound299 hH))

def oldProjection300 : Integer.Sparse (Fin 1613) := [(23, -3), (26, 1), (104, 1), (105, 1), (241, 1), (243, 2), (698, 1), (703, 1), (704, 1)]

theorem oldProjectionSound300 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node300 =
      Integer.Sparse.eval oldProjection300 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value300 oldProjection300
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound300 hH))

def oldProjection301 : Integer.Sparse (Fin 1613) := [(3, -12), (19, -16), (20, 2), (94, 5), (104, 32), (108, 32), (703, 16), (704, 16), (1251, 3)]

theorem oldProjectionSound301 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node301 =
      Integer.Sparse.eval oldProjection301 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value301 oldProjection301
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound301 hH))

def oldProjection302 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (108, 48), (247, 16), (1251, 1)]

theorem oldProjectionSound302 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node302 =
      Integer.Sparse.eval oldProjection302 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value302 oldProjection302
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound302 hH))

def oldProjection303 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 1), (104, 32), (105, 16), (108, 48), (241, 16), (247, 16), (1251, 1)]

theorem oldProjectionSound303 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node303 =
      Integer.Sparse.eval oldProjection303 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value303 oldProjection303
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound303 hH))

def oldProjection304 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 2), (26, 32), (94, -1), (104, 16), (105, 16), (243, 32), (703, 32), (1251, 1)]

theorem oldProjectionSound304 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node304 =
      Integer.Sparse.eval oldProjection304 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value304 oldProjection304
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound304 hH))

def oldProjection305 : Integer.Sparse (Fin 1613) := [(20, 1), (26, 16), (42, 16), (94, -6), (105, 16), (700, 16), (1251, 1)]

theorem oldProjectionSound305 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node305 =
      Integer.Sparse.eval oldProjection305 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value305 oldProjection305
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound305 hH))

def oldProjection306 : Integer.Sparse (Fin 1613) := [(3, -12), (19, -4), (20, 1), (94, -1), (243, 16), (703, 16), (1251, 2)]

theorem oldProjectionSound306 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node306 =
      Integer.Sparse.eval oldProjection306 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value306 oldProjection306
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound306 hH))

def oldProjection307 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (104, 16), (700, 16), (701, 16), (703, 16), (1251, 3)]

theorem oldProjectionSound307 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node307 =
      Integer.Sparse.eval oldProjection307 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value307 oldProjection307
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound307 hH))

def oldProjection308 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (38, -48), (94, 3), (243, 16), (698, 16), (704, 32), (1251, 3)]

theorem oldProjectionSound308 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node308 =
      Integer.Sparse.eval oldProjection308 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value308 oldProjection308
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound308 hH))

def oldProjection309 : Integer.Sparse (Fin 1613) := [(19, -4), (26, 16), (40, -48), (42, 16), (94, 1), (104, 16), (105, 16), (241, 16), (243, 32), (704, 16), (1251, 1)]

theorem oldProjectionSound309 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node309 =
      Integer.Sparse.eval oldProjection309 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value309 oldProjection309
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound309 hH))

def oldProjection310 : Integer.Sparse (Fin 1613) := [(26, 1), (42, 2), (243, 3), (698, 1), (700, 1), (701, 1), (703, 1), (704, 2)]

theorem oldProjectionSound310 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node310 =
      Integer.Sparse.eval oldProjection310 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value310 oldProjection310
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound310 hH))

def oldProjection311 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 2), (94, 3), (701, 16), (703, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound311 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node311 =
      Integer.Sparse.eval oldProjection311 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value311 oldProjection311
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound311 hH))

def oldProjection312 : Integer.Sparse (Fin 1613) := [(20, 1), (42, 32), (94, -7), (243, 48), (700, 48), (1251, 4)]

theorem oldProjectionSound312 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node312 =
      Integer.Sparse.eval oldProjection312 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value312 oldProjection312
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound312 hH))

def oldProjection314 : Integer.Sparse (Fin 1613) := [(19, -4), (38, -48), (94, 5), (698, 16), (700, 32), (701, 16), (704, 32), (1251, 5)]

theorem oldProjectionSound314 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node314 =
      Integer.Sparse.eval oldProjection314 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value314 oldProjection314
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound314 hH))

def oldProjection316 : Integer.Sparse (Fin 1613) := [(19, -4), (42, 16), (94, 3), (241, 16), (243, 48), (698, 32), (700, 16), (704, 32), (1251, 3)]

theorem oldProjectionSound316 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node316 =
      Integer.Sparse.eval oldProjection316 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value316 oldProjection316
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound316 hH))

def oldProjection317 : Integer.Sparse (Fin 1613) := [(38, -3), (42, 1), (243, 1), (698, 1), (700, 3), (701, 1), (704, 1), (1059, 1)]

theorem oldProjectionSound317 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node317 =
      Integer.Sparse.eval oldProjection317 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value317 oldProjection317
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound317 hH))

def oldProjection318 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (45, -48), (94, 3), (243, 16), (698, 16), (700, 16), (701, 16), (703, 16), (704, 32), (1251, 2)]

theorem oldProjectionSound318 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node318 =
      Integer.Sparse.eval oldProjection318 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value318 oldProjection318
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound318 hH))

def oldProjection319 : Integer.Sparse (Fin 1613) := [(19, -4), (45, -48), (94, 1), (247, 8), (1219, -24), (1251, 1)]

theorem oldProjectionSound319 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node319 =
      Integer.Sparse.eval oldProjection319 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value319 oldProjection319
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound319 hH))

def oldProjection320 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 4), (94, 7), (700, 16), (701, 16), (704, 32), (1251, 7)]

theorem oldProjectionSound320 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node320 =
      Integer.Sparse.eval oldProjection320 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value320 oldProjection320
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound320 hH))

def oldProjection321 : Integer.Sparse (Fin 1613) := [(37, -1), (38, -1), (45, -1), (697, -1)]

theorem oldProjectionSound321 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node321 =
      Integer.Sparse.eval oldProjection321 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value321 oldProjection321
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound321 hH))

def oldProjection322 : Integer.Sparse (Fin 1613) := [(19, -4), (38, -12), (94, 1), (241, 8), (243, 4), (247, 8), (1251, 1)]

theorem oldProjectionSound322 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node322 =
      Integer.Sparse.eval oldProjection322 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value322 oldProjection322
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound322 hH))

def oldProjection323 : Integer.Sparse (Fin 1613) := [(40, -24), (42, 8), (94, 1), (700, 16), (701, 16), (703, 8), (704, 16), (1251, 1)]

theorem oldProjectionSound323 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node323 =
      Integer.Sparse.eval oldProjection323 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value323 oldProjection323
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound323 hH))

def oldProjection324 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (42, 32), (94, 1), (243, 32), (700, 16), (701, 16), (704, 32), (1251, 3)]

theorem oldProjectionSound324 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node324 =
      Integer.Sparse.eval oldProjection324 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value324 oldProjection324
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound324 hH))

def oldProjection326 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (26, 16), (88, 16), (94, -2), (104, 16), (105, 32), (241, 32), (243, 48), (1251, 1)]

theorem oldProjectionSound326 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node326 =
      Integer.Sparse.eval oldProjection326 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value326 oldProjection326
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound326 hH))

def oldProjection329 : Integer.Sparse (Fin 1613) := [(52, 1)]

theorem oldProjectionSound329 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node329 =
      Integer.Sparse.eval oldProjection329 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value329 oldProjection329
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound329 hH))

def oldProjection332 : Integer.Sparse (Fin 1613) := [(62, -1), (691, -1), (694, -1), (1047, -1)]

theorem oldProjectionSound332 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node332 =
      Integer.Sparse.eval oldProjection332 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value332 oldProjection332
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound332 hH))

def oldProjection334 : Integer.Sparse (Fin 1613) := [(42, 16), (60, 16), (94, -1), (243, 16), (700, 16), (1251, 3)]

theorem oldProjectionSound334 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node334 =
      Integer.Sparse.eval oldProjection334 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value334 oldProjection334
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound334 hH))

def oldProjection335 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (26, 16), (88, 16), (94, -2), (703, 16), (1226, 16), (1251, 1)]

theorem oldProjectionSound335 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node335 =
      Integer.Sparse.eval oldProjection335 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value335 oldProjection335
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound335 hH))

end NoFourMUBs.Step2.SOS.Normalization
