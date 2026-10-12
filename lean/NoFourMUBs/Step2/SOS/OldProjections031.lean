import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound37

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2327 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 80), (20, -5), (94, -65), (108, -80), (241, -80), (247, -160), (694, 240), (698, -80), (1249, -720), (1251, -30), (1319, 240)]

theorem oldProjectionSound2327 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2327 =
      Integer.Sparse.eval oldProjection2327 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2327 oldProjection2327
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2327 hH))

def oldProjection2329 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 20), (20, -5), (93, -60), (94, 5), (690, 240), (1250, -120), (1251, 50), (1319, 960), (1388, 480)]

theorem oldProjectionSound2329 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2329 =
      Integer.Sparse.eval oldProjection2329 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2329 oldProjection2329
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2329 hH))

def oldProjection2332 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (240, 120), (698, -40), (704, -80), (911, -360), (1058, 120), (1251, -30), (1321, 240)]

theorem oldProjectionSound2332 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2332 =
      Integer.Sparse.eval oldProjection2332 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2332 oldProjection2332
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2332 hH))

def oldProjection2333 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (81, 240), (94, -35), (229, 240), (240, 240), (697, 240), (1058, 240), (1249, -720), (1250, -60), (1251, -5)]

theorem oldProjectionSound2333 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2333 =
      Integer.Sparse.eval oldProjection2333 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2333 oldProjection2333
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2333 hH))

def oldProjection2335 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (197, -720), (1124, -720), (1250, -120), (1251, 20), (1252, -720)]

theorem oldProjectionSound2335 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2335 =
      Integer.Sparse.eval oldProjection2335 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2335 oldProjection2335
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2335 hH))

def oldProjection2336 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (93, -60), (94, -10), (698, -80), (1047, 240), (1055, 240), (1058, 480), (1250, -120), (1251, 30), (1321, 240)]

theorem oldProjectionSound2336 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2336 =
      Integer.Sparse.eval oldProjection2336 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2336 oldProjection2336
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2336 hH))

def oldProjection2337 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -20), (247, -80), (694, 120), (1055, 240), (1250, -60), (1251, 5), (1319, 120), (1388, 240)]

theorem oldProjectionSound2337 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2337 =
      Integer.Sparse.eval oldProjection2337 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2337 oldProjection2337
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2337 hH))

def oldProjection2338 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (93, -60), (94, -85), (1250, -300), (1251, 45), (1319, 240), (1388, 240)]

theorem oldProjectionSound2338 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2338 =
      Integer.Sparse.eval oldProjection2338 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2338 oldProjection2338
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2338 hH))

def oldProjection2339 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -40), (546, -720), (694, 480), (1055, 480), (1250, -120), (1251, 45)]

theorem oldProjectionSound2339 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2339 =
      Integer.Sparse.eval oldProjection2339 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2339 oldProjection2339
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2339 hH))

def oldProjection2340 : Integer.Sparse (Fin 1613) := [(0, -1), (93, -20), (94, 5), (690, 80), (1050, 80), (1250, 60), (1251, -30)]

theorem oldProjectionSound2340 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2340 =
      Integer.Sparse.eval oldProjection2340 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2340 oldProjection2340
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2340 hH))

def oldProjection2341 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 120), (94, -5), (690, 120), (1044, 120), (1221, 120), (1250, -30), (1251, -20)]

theorem oldProjectionSound2341 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2341 =
      Integer.Sparse.eval oldProjection2341 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2341 oldProjection2341
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2341 hH))

def oldProjection2342 : Integer.Sparse (Fin 1613) := [(0, -6), (20, -5), (93, -60), (94, 5), (1319, 240), (1321, 240), (1388, 240), (1389, 240)]

theorem oldProjectionSound2342 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2342 =
      Integer.Sparse.eval oldProjection2342 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2342 oldProjection2342
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2342 hH))

def oldProjection2343 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -2), (1250, -12), (1251, 3), (1319, 48)]

theorem oldProjectionSound2343 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2343 =
      Integer.Sparse.eval oldProjection2343 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2343 oldProjection2343
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2343 hH))

def oldProjection2344 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (94, -10), (541, -720), (690, 240), (1050, 240), (1250, -120), (1251, 5), (1319, 240), (1388, 240)]

theorem oldProjectionSound2344 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2344 =
      Integer.Sparse.eval oldProjection2344 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2344 oldProjection2344
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2344 hH))

def oldProjection2345 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 120), (94, -5), (1050, 180), (1221, 180), (1250, -15), (1251, -35)]

theorem oldProjectionSound2345 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2345 =
      Integer.Sparse.eval oldProjection2345 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2345 oldProjection2345
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2345 hH))

def oldProjection2346 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (541, -180), (1250, -30), (1251, 20), (1321, 60), (1388, 60), (1389, 120)]

theorem oldProjectionSound2346 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2346 =
      Integer.Sparse.eval oldProjection2346 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2346 oldProjection2346
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2346 hH))

def oldProjection2347 : Integer.Sparse (Fin 1613) := [(72, 16), (94, 1), (541, -48), (1050, 16), (1221, 16), (1250, -4), (1251, 1), (1321, 16), (1389, 16)]

theorem oldProjectionSound2347 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2347 =
      Integer.Sparse.eval oldProjection2347 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2347 oldProjection2347
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2347 hH))

def oldProjection2348 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -15), (37, 240), (81, 240), (94, -35), (229, 240), (240, 240), (293, -720), (697, 240), (1040, 240), (1251, -30)]

theorem oldProjectionSound2348 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2348 =
      Integer.Sparse.eval oldProjection2348 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2348 oldProjection2348
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2348 hH))

def oldProjection2349 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (81, 240), (94, -35), (229, 240), (243, -80), (293, -720), (682, 240), (698, -80), (704, -160), (1040, 240), (1251, -30), (1321, 240), (1389, 240)]

theorem oldProjectionSound2349 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2349 =
      Integer.Sparse.eval oldProjection2349 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2349 oldProjection2349
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2349 hH))

def oldProjection2350 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (81, 120), (241, -40), (682, 120), (690, 120), (697, 120), (698, -80), (775, -360), (1226, -40), (1251, 5)]

theorem oldProjectionSound2350 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2350 =
      Integer.Sparse.eval oldProjection2350 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2350 oldProjection2350
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2350 hH))

def oldProjection2351 : Integer.Sparse (Fin 1613) := [(690, 2), (1050, 4), (1221, 2), (1250, -1), (1251, -1), (1266, -6)]

theorem oldProjectionSound2351 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2351 =
      Integer.Sparse.eval oldProjection2351 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2351 oldProjection2351
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2351 hH))

def oldProjection2352 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (758, -720), (864, -720), (1050, 240), (1221, 240), (1251, -50), (1266, -720)]

theorem oldProjectionSound2352 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2352 =
      Integer.Sparse.eval oldProjection2352 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2352 oldProjection2352
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2352 hH))

def oldProjection2353 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 20), (94, -5), (682, 240), (690, 240), (1050, 240), (1114, -720), (1221, 240), (1250, -60), (1251, -5), (1389, 240)]

theorem oldProjectionSound2353 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2353 =
      Integer.Sparse.eval oldProjection2353 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2353 oldProjection2353
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2353 hH))

def oldProjection2354 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -5), (869, -360), (1114, -720), (1251, 5), (1388, 120)]

theorem oldProjectionSound2354 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2354 =
      Integer.Sparse.eval oldProjection2354 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2354 oldProjection2354
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2354 hH))

def oldProjection2355 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (553, -360), (1114, -360), (1250, -30), (1251, -40), (1266, -360)]

theorem oldProjectionSound2355 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2355 =
      Integer.Sparse.eval oldProjection2355 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2355 oldProjection2355
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2355 hH))

def oldProjection2356 : Integer.Sparse (Fin 1613) := [(19, 4), (72, 24), (94, 1), (682, 48), (690, 24), (758, -72), (1251, 1)]

theorem oldProjectionSound2356 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2356 =
      Integer.Sparse.eval oldProjection2356 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2356 oldProjection2356
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2356 hH))

def oldProjection2357 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 20), (20, -5), (93, -60), (94, 5), (682, 480), (690, 240), (1250, -120), (1251, 50), (1321, 480), (1389, 480)]

theorem oldProjectionSound2357 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2357 =
      Integer.Sparse.eval oldProjection2357 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2357 oldProjection2357
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2357 hH))

def oldProjection2359 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -10), (682, 240), (1221, 240), (1250, -60), (1251, 65), (1321, 240)]

theorem oldProjectionSound2359 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2359 =
      Integer.Sparse.eval oldProjection2359 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2359 oldProjection2359
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2359 hH))

def oldProjection2360 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -1), (553, -144), (682, 48), (1221, 96), (1251, 21), (1389, 144)]

theorem oldProjectionSound2360 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2360 =
      Integer.Sparse.eval oldProjection2360 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2360 oldProjection2360
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2360 hH))

def oldProjection2361 : Integer.Sparse (Fin 1613) := [(0, -1), (72, 240), (94, 20), (553, -720), (682, 240), (1050, 240), (1221, 480), (1251, 5), (1389, 240)]

theorem oldProjectionSound2361 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2361 =
      Integer.Sparse.eval oldProjection2361 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2361 oldProjection2361
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2361 hH))

def oldProjection2362 : Integer.Sparse (Fin 1613) := [(0, -1), (869, -180), (1221, 120), (1251, 25), (1270, -180), (1389, 120)]

theorem oldProjectionSound2362 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2362 =
      Integer.Sparse.eval oldProjection2362 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2362 oldProjection2362
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2362 hH))

def oldProjection2366 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 1), (243, -32), (682, 48), (698, -16), (704, -16), (750, -144), (1040, 48), (1045, 48), (1052, 48), (1217, 48), (1221, 48), (1225, -16), (1226, -16), (1251, 2)]

theorem oldProjectionSound2366 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2366 =
      Integer.Sparse.eval oldProjection2366 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2366 oldProjection2366
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2366 hH))

def oldProjection2369 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (243, -80), (430, -720), (682, 240), (697, 240), (698, -240), (704, -80), (1052, 240), (1059, -80), (1217, 240), (1221, 240), (1226, -80), (1227, -80), (1251, 15)]

theorem oldProjectionSound2369 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2369 =
      Integer.Sparse.eval oldProjection2369 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2369 oldProjection2369
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2369 hH))

def oldProjection2370 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (72, 240), (94, -30), (682, 240), (1044, 240), (1050, 240), (1174, -720), (1217, 240), (1221, 240), (1251, -50)]

theorem oldProjectionSound2370 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2370 =
      Integer.Sparse.eval oldProjection2370 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2370 oldProjection2370
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2370 hH))

def oldProjection2372 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (418, -720), (553, -720), (1050, 240), (1221, 480), (1389, 240)]

theorem oldProjectionSound2372 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2372 =
      Integer.Sparse.eval oldProjection2372 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2372 oldProjection2372
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2372 hH))

def oldProjection2373 : Integer.Sparse (Fin 1613) := [(0, -1), (418, -360), (682, 240), (1217, 120), (1221, 240), (1251, 25), (1321, 120), (1389, 240)]

theorem oldProjectionSound2373 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2373 =
      Integer.Sparse.eval oldProjection2373 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2373 oldProjection2373
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2373 hH))

def oldProjection2375 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 300), (4, -10), (19, 360), (20, -70), (94, -135), (104, -80), (108, -320), (246, -160), (247, -160), (703, -160), (704, -160), (1251, -85), (1278, 480)]

theorem oldProjectionSound2375 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2375 =
      Integer.Sparse.eval oldProjection2375 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2375 oldProjection2375
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2375 hH))

def oldProjection2379 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 90), (20, -10), (94, -45), (241, -40), (243, -80), (247, -80), (698, -80), (704, -160), (1251, -35)]

theorem oldProjectionSound2379 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2379 =
      Integer.Sparse.eval oldProjection2379 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2379 oldProjection2379
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2379 hH))

def oldProjection2381 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, 25), (241, -160), (243, -240), (247, -80), (698, -80), (704, -80), (1223, 240), (1225, -80), (1226, -80), (1251, -5)]

theorem oldProjectionSound2381 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2381 =
      Integer.Sparse.eval oldProjection2381 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2381 oldProjection2381
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2381 hH))

def oldProjection2383 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (4, -5), (19, 160), (20, 10), (94, 20), (106, -80), (243, -320), (698, -80), (703, -160), (704, -160), (1225, -160), (1226, -160)]

theorem oldProjectionSound2383 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2383 =
      Integer.Sparse.eval oldProjection2383 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2383 oldProjection2383
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2383 hH))

def oldProjection2385 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 180), (20, -15), (94, -75), (104, -240), (105, -80), (108, -480), (241, -160), (247, -320), (1251, -45)]

theorem oldProjectionSound2385 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2385 =
      Integer.Sparse.eval oldProjection2385 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2385 oldProjection2385
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2385 hH))

def oldProjection2386 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -2), (94, -1), (104, -80), (105, -48), (108, -32), (241, -32), (1251, -3)]

theorem oldProjectionSound2386 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2386 =
      Integer.Sparse.eval oldProjection2386 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2386 oldProjection2386
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2386 hH))

def oldProjection2387 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -1), (94, -3), (104, -16), (108, -64), (247, -16), (1251, -2)]

theorem oldProjectionSound2387 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2387 =
      Integer.Sparse.eval oldProjection2387 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2387 oldProjection2387
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2387 hH))

def oldProjection2388 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, -40), (20, 15), (94, -20), (104, -80), (105, -80), (241, -160), (243, -80), (698, -80), (1251, -20)]

theorem oldProjectionSound2388 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2388 =
      Integer.Sparse.eval oldProjection2388 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2388 oldProjection2388
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2388 hH))

def oldProjection2389 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (20, -5), (42, -160), (94, 15), (241, -240), (243, -400), (698, -480), (700, -400), (1059, -240), (1251, 80)]

theorem oldProjectionSound2389 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2389 =
      Integer.Sparse.eval oldProjection2389 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2389 oldProjection2389
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2389 hH))

def oldProjection2390 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 140), (20, -20), (94, -55), (241, -160), (243, -80), (247, -160), (698, -80), (1251, 15)]

theorem oldProjectionSound2390 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2390 =
      Integer.Sparse.eval oldProjection2390 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2390 oldProjection2390
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2390 hH))

def oldProjection2391 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 100), (20, -5), (94, -80), (241, -80), (243, -80), (247, -160), (698, -160), (704, -160), (1251, 5)]

theorem oldProjectionSound2391 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2391 =
      Integer.Sparse.eval oldProjection2391 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2391 oldProjection2391
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2391 hH))

def oldProjection2392 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 100), (20, -5), (38, 240), (94, -100), (241, -80), (247, -160), (697, 240), (698, -240), (700, -160), (701, -80), (704, -240), (1227, -80), (1251, -65)]

theorem oldProjectionSound2392 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2392 =
      Integer.Sparse.eval oldProjection2392 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2392 oldProjection2392
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2392 hH))

def oldProjection2393 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (38, 240), (94, -30), (238, 240), (241, -80), (243, -160), (244, -80), (698, -480), (700, -480), (701, -80), (704, -160), (1059, -320), (1251, 35)]

theorem oldProjectionSound2393 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2393 =
      Integer.Sparse.eval oldProjection2393 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2393 oldProjection2393
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2393 hH))

def oldProjection2394 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -2), (241, -48), (243, -48), (698, -32), (704, -32), (1251, -5)]

theorem oldProjectionSound2394 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2394 =
      Integer.Sparse.eval oldProjection2394 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2394 oldProjection2394
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2394 hH))

def oldProjection2395 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -15), (94, 65), (243, -80), (698, -80), (1251, -45)]

theorem oldProjectionSound2395 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2395 =
      Integer.Sparse.eval oldProjection2395 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2395 oldProjection2395
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2395 hH))

def oldProjection2399 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 140), (20, -15), (94, -90), (241, -160), (243, -80), (247, -160), (698, -160), (704, -80), (1251, -5)]

theorem oldProjectionSound2399 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2399 =
      Integer.Sparse.eval oldProjection2399 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2399 oldProjection2399
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2399 hH))

def oldProjection2400 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 160), (20, -15), (94, -60), (241, -80), (247, -240), (704, -80), (1251, -70)]

theorem oldProjectionSound2400 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2400 =
      Integer.Sparse.eval oldProjection2400 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2400 oldProjection2400
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2400 hH))

def oldProjection2401 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 30), (20, -5), (94, -20), (704, -40)]

theorem oldProjectionSound2401 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2401 =
      Integer.Sparse.eval oldProjection2401 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2401 oldProjection2401
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2401 hH))

def oldProjection2402 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -2), (94, -5), (241, -48), (243, -48), (247, -16), (698, -16), (704, -32), (1251, -3)]

theorem oldProjectionSound2402 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2402 =
      Integer.Sparse.eval oldProjection2402 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2402 oldProjection2402
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2402 hH))

def oldProjection2403 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -50), (243, -160), (698, -320), (704, -160), (1251, -10)]

theorem oldProjectionSound2403 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2403 =
      Integer.Sparse.eval oldProjection2403 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2403 oldProjection2403
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2403 hH))

def oldProjection2405 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, -25), (104, -80), (105, -80), (241, -240), (243, -160), (691, 480), (698, -320), (700, -160), (704, -160), (1050, 240), (1059, -80), (1251, -15)]

theorem oldProjectionSound2405 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2405 =
      Integer.Sparse.eval oldProjection2405 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2405 oldProjection2405
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2405 hH))

def oldProjection2406 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -25), (104, -80), (105, -80), (241, -80), (243, -160), (691, 240), (694, 240), (698, -80), (700, -80), (704, -80), (1251, -30)]

theorem oldProjectionSound2406 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2406 =
      Integer.Sparse.eval oldProjection2406 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2406 oldProjection2406
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2406 hH))

def oldProjection2407 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 20), (20, -5), (94, -45), (241, -80), (243, -80), (698, -160), (700, -80), (1059, -80), (1251, -70)]

theorem oldProjectionSound2407 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2407 =
      Integer.Sparse.eval oldProjection2407 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2407 oldProjection2407
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2407 hH))

def oldProjection2409 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -10), (94, -5), (241, -80), (243, -80), (698, -80), (1226, -80), (1251, -80)]

theorem oldProjectionSound2409 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2409 =
      Integer.Sparse.eval oldProjection2409 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2409 oldProjection2409
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2409 hH))

def oldProjection2410 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -25), (241, -160), (243, -80), (247, -80), (697, 240), (698, -320), (700, -80), (1052, 240), (1059, -160), (1251, 90)]

theorem oldProjectionSound2410 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2410 =
      Integer.Sparse.eval oldProjection2410 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2410 oldProjection2410
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2410 hH))

def oldProjection2411 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -55), (241, -80), (243, -80), (698, -480), (700, -240), (704, -80), (1059, -240), (1251, 90)]

theorem oldProjectionSound2411 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2411 =
      Integer.Sparse.eval oldProjection2411 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2411 oldProjection2411
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2411 hH))

def oldProjection2412 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -8), (243, -16), (700, -32), (704, -8), (1251, -1)]

theorem oldProjectionSound2412 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2412 =
      Integer.Sparse.eval oldProjection2412 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2412 oldProjection2412
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2412 hH))

def oldProjection2413 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, 15), (243, -80), (698, -80), (700, -80), (1050, 240), (1052, 240), (1059, -80), (1251, -35)]

theorem oldProjectionSound2413 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2413 =
      Integer.Sparse.eval oldProjection2413 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2413 oldProjection2413
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2413 hH))

end NoFourMUBs.Step2.SOS.Normalization
