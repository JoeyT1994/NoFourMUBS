import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound42

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2643 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -30), (698, -160), (1059, -80), (1227, -80), (1251, -35)]

theorem oldProjectionSound2643 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2643 =
      Integer.Sparse.eval oldProjection2643 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2643 oldProjection2643
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2643 hH))

def oldProjection2644 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -8), (1251, 3)]

theorem oldProjectionSound2644 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2644 =
      Integer.Sparse.eval oldProjection2644 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2644 oldProjection2644
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2644 hH))

def oldProjection2645 : Integer.Sparse (Fin 1613) := [(0, -7), (1251, 55)]

theorem oldProjectionSound2645 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2645 =
      Integer.Sparse.eval oldProjection2645 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2645 oldProjection2645
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2645 hH))

def oldProjection2646 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -11), (698, -80), (1226, -32), (1227, -32), (1251, 18)]

theorem oldProjectionSound2646 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2646 =
      Integer.Sparse.eval oldProjection2646 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2646 oldProjection2646
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2646 hH))

def oldProjection2647 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -9), (698, -48), (1059, -16), (1227, -32), (1251, 28)]

theorem oldProjectionSound2647 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2647 =
      Integer.Sparse.eval oldProjection2647 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2647 oldProjection2647
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2647 hH))

def oldProjection2652 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 4), (94, -6), (247, -16), (698, -16), (1055, 48), (1219, 24), (1227, -16), (1250, -12), (1251, 3), (1388, 24)]

theorem oldProjectionSound2652 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2652 =
      Integer.Sparse.eval oldProjection2652 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2652 oldProjection2652
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2652 hH))

def oldProjection2656 : Integer.Sparse (Fin 1613) := [(0, -14), (19, 40), (94, -85), (241, -80), (247, -80), (697, 240), (698, -160), (1055, 240), (1227, -80), (1250, -180), (1251, 105), (1388, 240), (1389, 240)]

theorem oldProjectionSound2656 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2656 =
      Integer.Sparse.eval oldProjection2656 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2656 oldProjection2656
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2656 hH))

def oldProjection2658 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -25), (94, -90), (243, -80), (244, -80), (247, -80), (698, -80), (700, -80), (701, -160), (704, -320), (1061, 240), (1251, -80)]

theorem oldProjectionSound2658 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2658 =
      Integer.Sparse.eval oldProjection2658 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2658 oldProjection2658
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2658 hH))

def oldProjection2661 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (94, -55), (697, 240), (698, -400), (700, -80), (704, -80), (1059, -160), (1227, -80), (1250, -60), (1251, 40), (1389, 240)]

theorem oldProjectionSound2661 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2661 =
      Integer.Sparse.eval oldProjection2661 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2661 oldProjection2661
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2661 hH))

def oldProjection2662 : Integer.Sparse (Fin 1613) := [(0, -32), (94, -25), (698, -320), (700, -80), (1059, -160), (1227, -160), (1251, 75)]

theorem oldProjectionSound2662 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2662 =
      Integer.Sparse.eval oldProjection2662 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2662 oldProjection2662
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2662 hH))

def oldProjection2667 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -30), (698, -160), (1059, -40), (1227, -160), (1251, 125), (1389, 240)]

theorem oldProjectionSound2667 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2667 =
      Integer.Sparse.eval oldProjection2667 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2667 oldProjection2667
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2667 hH))

def oldProjection2668 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 5), (94, -10), (697, 120), (698, -60), (1058, 60), (1059, -20), (1227, -40), (1250, -30), (1251, 25), (1389, 120)]

theorem oldProjectionSound2668 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2668 =
      Integer.Sparse.eval oldProjection2668 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2668 oldProjection2668
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2668 hH))

def oldProjection2676 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -15), (698, -80), (700, -80), (1059, -120), (1251, 15)]

theorem oldProjectionSound2676 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2676 =
      Integer.Sparse.eval oldProjection2676 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2676 oldProjection2676
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2676 hH))

def oldProjection2677 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (42, -160), (94, -30), (243, -160), (698, -80), (700, -240), (704, -160), (1251, -15)]

theorem oldProjectionSound2677 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2677 =
      Integer.Sparse.eval oldProjection2677 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2677 oldProjection2677
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2677 hH))

def oldProjection2679 : Integer.Sparse (Fin 1613) := [(19, 20), (20, 3), (94, 18), (108, -16), (704, -16), (1154, -144), (1251, 3)]

theorem oldProjectionSound2679 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2679 =
      Integer.Sparse.eval oldProjection2679 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2679 oldProjection2679
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2679 hH))

def oldProjection2680 : Integer.Sparse (Fin 1613) := [(19, -16), (20, -3), (94, -2), (108, -16), (243, -16), (247, -16), (704, -16), (750, -144), (1251, 1)]

theorem oldProjectionSound2680 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2680 =
      Integer.Sparse.eval oldProjection2680 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2680 oldProjection2680
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2680 hH))

def oldProjection2682 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (42, -32), (94, 2), (243, -48), (244, -16), (700, -32), (701, -32), (704, -32), (1251, -1)]

theorem oldProjectionSound2682 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2682 =
      Integer.Sparse.eval oldProjection2682 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2682 oldProjection2682
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2682 hH))

def oldProjection2683 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -10), (38, 240), (94, -55), (241, -240), (243, -240), (244, -80), (247, -160), (698, -160), (700, -240), (1053, 240), (1059, -80), (1251, -35)]

theorem oldProjectionSound2683 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2683 =
      Integer.Sparse.eval oldProjection2683 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2683 oldProjection2683
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2683 hH))

def oldProjection2685 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -15), (94, -70), (247, -80), (704, -80), (1251, -60)]

theorem oldProjectionSound2685 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2685 =
      Integer.Sparse.eval oldProjection2685 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2685 oldProjection2685
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2685 hH))

def oldProjection2686 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -15), (94, -65), (241, -80), (243, -240), (244, -80), (698, -400), (700, -320), (701, -80), (704, -240), (1059, -80), (1061, 240), (1251, -25)]

theorem oldProjectionSound2686 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2686 =
      Integer.Sparse.eval oldProjection2686 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2686 oldProjection2686
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2686 hH))

def oldProjection2687 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -2), (94, 1), (243, -16), (244, -16), (698, -16), (700, -16), (1052, 48), (1053, 48), (1251, 3)]

theorem oldProjectionSound2687 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2687 =
      Integer.Sparse.eval oldProjection2687 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2687 oldProjection2687
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2687 hH))

def oldProjection2688 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (20, -5), (94, -5), (1061, 120), (1219, 120), (1251, -5)]

theorem oldProjectionSound2688 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2688 =
      Integer.Sparse.eval oldProjection2688 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2688 oldProjection2688
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2688 hH))

def oldProjection2689 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (94, -25), (244, -80), (698, -80), (700, -320), (701, -80), (1059, -80), (1061, 240), (1251, -20)]

theorem oldProjectionSound2689 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2689 =
      Integer.Sparse.eval oldProjection2689 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2689 oldProjection2689
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2689 hH))

def oldProjection2690 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (1251, 30)]

theorem oldProjectionSound2690 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2690 =
      Integer.Sparse.eval oldProjection2690 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2690 oldProjection2690
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2690 hH))

def oldProjection2692 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -5), (94, -35), (243, -80), (244, -80), (698, -240), (700, -320), (701, -160), (704, -320), (1059, -80), (1251, -25)]

theorem oldProjectionSound2692 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2692 =
      Integer.Sparse.eval oldProjection2692 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2692 oldProjection2692
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2692 hH))

def oldProjection2695 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -4), (94, -15), (243, -32), (1052, 48), (1217, 48), (1226, -32), (1251, 13)]

theorem oldProjectionSound2695 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2695 =
      Integer.Sparse.eval oldProjection2695 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2695 oldProjection2695
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2695 hH))

def oldProjection2696 : Integer.Sparse (Fin 1613) := [(81, 3), (90, -1), (243, -1), (698, -3), (700, -4), (1052, 3), (1059, -1), (1226, -1), (1227, -1)]

theorem oldProjectionSound2696 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2696 =
      Integer.Sparse.eval oldProjection2696 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2696 oldProjection2696
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2696 hH))

def oldProjection2697 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -80), (94, -10), (698, -400), (700, -160), (1251, 35)]

theorem oldProjectionSound2697 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2697 =
      Integer.Sparse.eval oldProjection2697 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2697 oldProjection2697
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2697 hH))

def oldProjection2698 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (90, -32), (94, 3), (243, -16), (698, -32), (700, -48), (704, -16), (1226, -32), (1251, -4)]

theorem oldProjectionSound2698 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2698 =
      Integer.Sparse.eval oldProjection2698 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2698 oldProjection2698
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2698 hH))

def oldProjection2699 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -32), (94, -5), (698, -80), (1059, -16), (1226, -32), (1251, 14)]

theorem oldProjectionSound2699 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2699 =
      Integer.Sparse.eval oldProjection2699 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2699 oldProjection2699
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2699 hH))

def oldProjection2700 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, 20), (247, -80)]

theorem oldProjectionSound2700 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2700 =
      Integer.Sparse.eval oldProjection2700 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2700 oldProjection2700
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2700 hH))

def oldProjection2701 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, 1), (241, -16), (698, -16), (1251, 6)]

theorem oldProjectionSound2701 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2701 =
      Integer.Sparse.eval oldProjection2701 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2701 oldProjection2701
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2701 hH))

def oldProjection2702 : Integer.Sparse (Fin 1613) := [(90, -1), (243, -1), (698, -4), (700, -1), (1219, 3), (1226, -4), (1227, -1)]

theorem oldProjectionSound2702 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2702 =
      Integer.Sparse.eval oldProjection2702 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2702 oldProjection2702
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2702 hH))

def oldProjection2703 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -16), (94, -2), (698, -16), (1059, -32), (1226, -16), (1227, -16), (1251, 13)]

theorem oldProjectionSound2703 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2703 =
      Integer.Sparse.eval oldProjection2703 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2703 oldProjection2703
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2703 hH))

def oldProjection2704 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (698, -80), (1251, 30)]

theorem oldProjectionSound2704 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2704 =
      Integer.Sparse.eval oldProjection2704 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2704 oldProjection2704
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2704 hH))

def oldProjection2705 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -15), (698, -80), (1251, 40)]

theorem oldProjectionSound2705 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2705 =
      Integer.Sparse.eval oldProjection2705 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2705 oldProjection2705
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2705 hH))

def oldProjection2706 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (243, -40), (698, -280), (700, -40), (1059, -40), (1219, 120), (1226, -120), (1227, -200), (1251, 50)]

theorem oldProjectionSound2706 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2706 =
      Integer.Sparse.eval oldProjection2706 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2706 oldProjection2706
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2706 hH))

def oldProjection2707 : Integer.Sparse (Fin 1613) := [(0, 1), (243, -80), (698, -240), (700, -80), (1059, -80), (1219, 240), (1227, -80), (1251, 55)]

theorem oldProjectionSound2707 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2707 =
      Integer.Sparse.eval oldProjection2707 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2707 oldProjection2707
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2707 hH))

def oldProjection2708 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (1251, 30)]

theorem oldProjectionSound2708 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2708 =
      Integer.Sparse.eval oldProjection2708 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2708 oldProjection2708
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2708 hH))

def oldProjection2709 : Integer.Sparse (Fin 1613) := [(94, -3), (243, -16), (698, -112), (700, -48), (1052, 48), (1059, -64), (1221, 48), (1226, -32), (1227, -32), (1251, 25)]

theorem oldProjectionSound2709 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2709 =
      Integer.Sparse.eval oldProjection2709 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2709 oldProjection2709
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2709 hH))

def oldProjection2710 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 10), (94, 15), (241, -40), (243, -40), (698, -160), (700, -40), (1052, 120), (1221, 120), (1226, -80), (1227, -40), (1251, -5)]

theorem oldProjectionSound2710 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2710 =
      Integer.Sparse.eval oldProjection2710 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2710 oldProjection2710
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2710 hH))

def oldProjection2713 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (94, 40), (430, -720), (698, -160), (704, -160), (1251, 25)]

theorem oldProjectionSound2713 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2713 =
      Integer.Sparse.eval oldProjection2713 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2713 oldProjection2713
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2713 hH))

def oldProjection2714 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 60), (94, -5), (247, -80), (682, 240), (697, 240), (698, -160), (704, -160), (1251, 20)]

theorem oldProjectionSound2714 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2714 =
      Integer.Sparse.eval oldProjection2714 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2714 oldProjection2714
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2714 hH))

def oldProjection2715 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (38, 240), (94, -40), (241, -80), (243, -80), (247, -160), (698, -160), (704, -160), (1251, -20)]

theorem oldProjectionSound2715 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2715 =
      Integer.Sparse.eval oldProjection2715 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2715 oldProjection2715
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2715 hH))

def oldProjection2716 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (94, -20), (228, 120), (241, -80), (243, -40), (247, -40), (698, -80), (704, -40), (1251, 5)]

theorem oldProjectionSound2716 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2716 =
      Integer.Sparse.eval oldProjection2716 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2716 oldProjection2716
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2716 hH))

def oldProjection2717 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (94, -20), (698, -120), (1226, -40), (1227, -80), (1251, -5)]

theorem oldProjectionSound2717 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2717 =
      Integer.Sparse.eval oldProjection2717 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2717 oldProjection2717
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2717 hH))

def oldProjection2718 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -6), (698, -48), (700, -32), (1059, -32), (1251, 9)]

theorem oldProjectionSound2718 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2718 =
      Integer.Sparse.eval oldProjection2718 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2718 oldProjection2718
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2718 hH))

def oldProjection2719 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (81, 240), (94, -35), (241, -80), (247, -80), (697, 240), (698, -240), (1226, -80), (1251, -5)]

theorem oldProjectionSound2719 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2719 =
      Integer.Sparse.eval oldProjection2719 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2719 oldProjection2719
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2719 hH))

def oldProjection2720 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 120), (20, -5), (94, -60), (241, -80), (1251, -50)]

theorem oldProjectionSound2720 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2720 =
      Integer.Sparse.eval oldProjection2720 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2720 oldProjection2720
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2720 hH))

def oldProjection2722 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, 10), (241, -40), (243, -40), (698, -40), (700, -80), (1052, 120), (1059, -40), (1251, 15)]

theorem oldProjectionSound2722 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2722 =
      Integer.Sparse.eval oldProjection2722 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2722 oldProjection2722
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2722 hH))

def oldProjection2723 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 220), (20, -15), (94, -115), (241, -320), (243, -80), (247, -400), (698, -80), (1251, -75)]

theorem oldProjectionSound2723 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2723 =
      Integer.Sparse.eval oldProjection2723 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2723 oldProjection2723
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2723 hH))

def oldProjection2724 : Integer.Sparse (Fin 1613) := [(0, -21), (94, -10), (1227, -80), (1251, 75)]

theorem oldProjectionSound2724 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2724 =
      Integer.Sparse.eval oldProjection2724 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2724 oldProjection2724
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2724 hH))

def oldProjection2725 : Integer.Sparse (Fin 1613) := [(0, 31), (1227, -80), (1251, 25)]

theorem oldProjectionSound2725 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2725 =
      Integer.Sparse.eval oldProjection2725 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2725 oldProjection2725
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2725 hH))

def oldProjection2726 : Integer.Sparse (Fin 1613) := [(19, 1), (94, 1), (698, -4), (1058, 12), (1226, -4), (1227, -4), (1251, 4)]

theorem oldProjectionSound2726 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2726 =
      Integer.Sparse.eval oldProjection2726 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2726 oldProjection2726
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2726 hH))

def oldProjection2728 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -8), (243, -8), (698, -32), (1226, -16), (1227, -8), (1251, 7)]

theorem oldProjectionSound2728 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2728 =
      Integer.Sparse.eval oldProjection2728 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2728 oldProjection2728
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2728 hH))

def oldProjection2729 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 20), (94, -35), (238, 240), (241, -160), (247, -160), (698, -240), (700, -80), (1058, 240), (1059, -80), (1251, 15)]

theorem oldProjectionSound2729 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2729 =
      Integer.Sparse.eval oldProjection2729 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2729 oldProjection2729
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2729 hH))

def oldProjection2731 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 60), (20, -5), (94, -60), (241, -160), (243, -80), (247, -80), (698, -320), (1226, -80), (1227, -80), (1251, 65)]

theorem oldProjectionSound2731 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2731 =
      Integer.Sparse.eval oldProjection2731 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2731 oldProjection2731
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2731 hH))

def oldProjection2732 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (243, -80), (698, -480), (700, -80), (1058, 240), (1059, -80), (1226, -240), (1227, -160), (1251, 85)]

theorem oldProjectionSound2732 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2732 =
      Integer.Sparse.eval oldProjection2732 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2732 oldProjection2732
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2732 hH))

def oldProjection2733 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 140), (20, -20), (94, -65), (241, -160), (243, -320), (247, -80), (698, -240), (704, -240), (1223, 240), (1225, -80), (1226, -80), (1251, -40)]

theorem oldProjectionSound2733 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2733 =
      Integer.Sparse.eval oldProjection2733 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2733 oldProjection2733
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2733 hH))

def oldProjection2734 : Integer.Sparse (Fin 1613) := [(0, 23), (94, -5)]

theorem oldProjectionSound2734 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2734 =
      Integer.Sparse.eval oldProjection2734 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2734 oldProjection2734
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2734 hH))

def oldProjection2735 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 7), (243, -16), (698, -64), (700, -64), (1052, 48), (1059, -16), (1226, -32), (1251, 10)]

theorem oldProjectionSound2735 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2735 =
      Integer.Sparse.eval oldProjection2735 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2735 oldProjection2735
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2735 hH))

def oldProjection2737 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, -5), (94, -10), (1251, -50)]

theorem oldProjectionSound2737 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2737 =
      Integer.Sparse.eval oldProjection2737 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2737 oldProjection2737
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2737 hH))

def oldProjection2738 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -45), (698, -80), (704, -80), (1251, -30)]

theorem oldProjectionSound2738 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2738 =
      Integer.Sparse.eval oldProjection2738 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2738 oldProjection2738
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2738 hH))

def oldProjection2739 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, -5), (94, 25), (241, 160), (243, -80), (247, -80), (698, -80), (1251, -35)]

theorem oldProjectionSound2739 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2739 =
      Integer.Sparse.eval oldProjection2739 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2739 oldProjection2739
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2739 hH))

end NoFourMUBs.Step2.SOS.Normalization
