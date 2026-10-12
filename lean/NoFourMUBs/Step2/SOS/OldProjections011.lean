import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound13

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection771 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 20), (241, 160), (243, 80), (247, 80), (698, 80), (1251, 5)]

theorem oldProjectionSound771 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node771 =
      Integer.Sparse.eval oldProjection771 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value771 oldProjection771
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound771 hH))

def oldProjection772 : Integer.Sparse (Fin 1613) := [(19, -4), (38, -48), (94, 1), (241, 16), (247, 16), (697, -48), (1251, 1)]

theorem oldProjectionSound772 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node772 =
      Integer.Sparse.eval oldProjection772 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value772 oldProjection772
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound772 hH))

def oldProjection773 : Integer.Sparse (Fin 1613) := [(38, -3), (238, -3), (698, 1), (700, 1), (1059, 1)]

theorem oldProjectionSound773 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node773 =
      Integer.Sparse.eval oldProjection773 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value773 oldProjection773
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound773 hH))

def oldProjection774 : Integer.Sparse (Fin 1613) := [(241, 1), (243, 2), (698, -1), (704, 1)]

theorem oldProjectionSound774 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node774 =
      Integer.Sparse.eval oldProjection774 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value774 oldProjection774
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound774 hH))

def oldProjection775 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (241, -8), (243, 8), (698, 8), (1251, -1)]

theorem oldProjectionSound775 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node775 =
      Integer.Sparse.eval oldProjection775 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value775 oldProjection775
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound775 hH))

def oldProjection776 : Integer.Sparse (Fin 1613) := [(19, -4), (37, -48), (94, 1), (104, 16), (241, 16), (690, -48), (1251, 1)]

theorem oldProjectionSound776 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node776 =
      Integer.Sparse.eval oldProjection776 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value776 oldProjection776
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound776 hH))

def oldProjection777 : Integer.Sparse (Fin 1613) := [(42, 1), (82, -3), (90, 1), (243, 1), (698, 1), (700, 2)]

theorem oldProjectionSound777 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node777 =
      Integer.Sparse.eval oldProjection777 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value777 oldProjection777
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound777 hH))

def oldProjection778 : Integer.Sparse (Fin 1613) := [(40, -24), (94, 1), (242, -24), (700, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound778 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node778 =
      Integer.Sparse.eval oldProjection778 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value778 oldProjection778
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound778 hH))

def oldProjection779 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 16), (94, -3), (243, 32), (700, 16), (704, 16), (1251, 4)]

theorem oldProjectionSound779 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node779 =
      Integer.Sparse.eval oldProjection779 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value779 oldProjection779
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound779 hH))

def oldProjection780 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 16), (243, 16), (700, 32), (701, 16), (704, 16), (1251, 3)]

theorem oldProjectionSound780 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node780 =
      Integer.Sparse.eval oldProjection780 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value780 oldProjection780
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound780 hH))

def oldProjection781 : Integer.Sparse (Fin 1613) := [(42, 1), (243, 1), (244, 1), (700, -1), (701, 1)]

theorem oldProjectionSound781 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node781 =
      Integer.Sparse.eval oldProjection781 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value781 oldProjection781
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound781 hH))

def oldProjection782 : Integer.Sparse (Fin 1613) := [(42, 1), (243, -1), (698, 1), (700, 1), (704, 1)]

theorem oldProjectionSound782 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node782 =
      Integer.Sparse.eval oldProjection782 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value782 oldProjection782
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound782 hH))

def oldProjection783 : Integer.Sparse (Fin 1613) := [(40, -3), (105, 1), (241, 1), (243, 1), (691, -3)]

theorem oldProjectionSound783 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node783 =
      Integer.Sparse.eval oldProjection783 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value783 oldProjection783
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound783 hH))

def oldProjection784 : Integer.Sparse (Fin 1613) := [(45, -1), (242, -1), (697, -1)]

theorem oldProjectionSound784 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node784 =
      Integer.Sparse.eval oldProjection784 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value784 oldProjection784
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound784 hH))

def oldProjection785 : Integer.Sparse (Fin 1613) := [(45, -24), (94, 1), (240, -24), (698, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound785 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node785 =
      Integer.Sparse.eval oldProjection785 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value785 oldProjection785
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound785 hH))

def oldProjection786 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -30), (94, 15), (241, 40), (247, 80), (1251, 10)]

theorem oldProjectionSound786 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node786 =
      Integer.Sparse.eval oldProjection786 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value786 oldProjection786
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound786 hH))

def oldProjection787 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 10), (247, -40), (1251, 15)]

theorem oldProjectionSound787 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node787 =
      Integer.Sparse.eval oldProjection787 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value787 oldProjection787
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound787 hH))

def oldProjection788 : Integer.Sparse (Fin 1613) := [(19, -4), (45, -48), (94, 1), (108, 16), (247, 16), (694, -48), (1251, 1)]

theorem oldProjectionSound788 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node788 =
      Integer.Sparse.eval oldProjection788 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value788 oldProjection788
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound788 hH))

def oldProjection789 : Integer.Sparse (Fin 1613) := [(690, -1), (1044, -1), (1050, -1)]

theorem oldProjectionSound789 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node789 =
      Integer.Sparse.eval oldProjection789 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value789 oldProjection789
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound789 hH))

def oldProjection790 : Integer.Sparse (Fin 1613) := [(694, -1), (1047, -1), (1055, -1)]

theorem oldProjectionSound790 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node790 =
      Integer.Sparse.eval oldProjection790 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value790 oldProjection790
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound790 hH))

def oldProjection791 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (691, -48), (694, -48), (698, 16), (1251, -3)]

theorem oldProjectionSound791 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node791 =
      Integer.Sparse.eval oldProjection791 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value791 oldProjection791
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound791 hH))

def oldProjection792 : Integer.Sparse (Fin 1613) := [(19, -4), (40, -24), (94, 1), (104, 8), (241, 8), (243, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound792 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node792 =
      Integer.Sparse.eval oldProjection792 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value792 oldProjection792
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound792 hH))

def oldProjection794 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (690, -48), (698, 16), (1047, -48), (1251, -3)]

theorem oldProjectionSound794 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node794 =
      Integer.Sparse.eval oldProjection794 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value794 oldProjection794
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound794 hH))

def oldProjection795 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (105, 16), (241, -16), (243, 16), (1251, 1)]

theorem oldProjectionSound795 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node795 =
      Integer.Sparse.eval oldProjection795 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value795 oldProjection795
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound795 hH))

def oldProjection796 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (241, 80), (243, 80), (698, 160), (700, 80), (1059, 80), (1251, -25)]

theorem oldProjectionSound796 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node796 =
      Integer.Sparse.eval oldProjection796 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value796 oldProjection796
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound796 hH))

def oldProjection797 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (94, 20), (698, 40), (700, 40), (704, 40), (1251, 15)]

theorem oldProjectionSound797 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node797 =
      Integer.Sparse.eval oldProjection797 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value797 oldProjection797
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound797 hH))

def oldProjection798 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 16), (94, 3), (243, 16), (698, 16), (700, 16), (701, 16), (704, 32), (1251, 2)]

theorem oldProjectionSound798 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node798 =
      Integer.Sparse.eval oldProjection798 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value798 oldProjection798
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound798 hH))

def oldProjection799 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (243, 80), (698, 160), (700, 160), (704, 80), (1059, 80), (1251, -5)]

theorem oldProjectionSound799 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node799 =
      Integer.Sparse.eval oldProjection799 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value799 oldProjection799
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound799 hH))

def oldProjection800 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (243, 80), (698, 160), (704, 80), (1226, 80), (1227, 80)]

theorem oldProjectionSound800 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node800 =
      Integer.Sparse.eval oldProjection800 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value800 oldProjection800
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound800 hH))

def oldProjection801 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 25), (698, 160), (700, 80), (1227, 80)]

theorem oldProjectionSound801 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node801 =
      Integer.Sparse.eval oldProjection801 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value801 oldProjection801
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound801 hH))

def oldProjection802 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 80), (700, 80), (1059, 80), (1251, -10)]

theorem oldProjectionSound802 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node802 =
      Integer.Sparse.eval oldProjection802 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value802 oldProjection802
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound802 hH))

def oldProjection803 : Integer.Sparse (Fin 1613) := [(19, -1), (94, -1), (241, 4), (243, 4), (698, 4), (1226, 4), (1251, -2)]

theorem oldProjectionSound803 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node803 =
      Integer.Sparse.eval oldProjection803 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value803 oldProjection803
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound803 hH))

def oldProjection804 : Integer.Sparse (Fin 1613) := [(0, -1), (697, -240), (698, 80), (1052, -240), (1059, 80), (1251, -15)]

theorem oldProjectionSound804 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node804 =
      Integer.Sparse.eval oldProjection804 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value804 oldProjection804
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound804 hH))

def oldProjection805 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 20), (698, 160), (700, 80), (1059, 80), (1251, -25)]

theorem oldProjectionSound805 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node805 =
      Integer.Sparse.eval oldProjection805 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value805 oldProjection805
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound805 hH))

def oldProjection806 : Integer.Sparse (Fin 1613) := [(698, 1), (700, 3), (1059, -1)]

theorem oldProjectionSound806 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node806 =
      Integer.Sparse.eval oldProjection806 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value806 oldProjection806
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound806 hH))

def oldProjection807 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (698, -80), (700, 80), (1059, 80), (1251, -5)]

theorem oldProjectionSound807 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node807 =
      Integer.Sparse.eval oldProjection807 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value807 oldProjection807
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound807 hH))

def oldProjection808 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (698, 16), (1050, -48), (1052, -48), (1251, -3)]

theorem oldProjectionSound808 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node808 =
      Integer.Sparse.eval oldProjection808 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value808 oldProjection808
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound808 hH))

def oldProjection809 : Integer.Sparse (Fin 1613) := [(58, -12), (94, 1), (698, 4), (700, 8), (704, 4), (1251, 1)]

theorem oldProjectionSound809 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node809 =
      Integer.Sparse.eval oldProjection809 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value809 oldProjection809
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound809 hH))

def oldProjection810 : Integer.Sparse (Fin 1613) := [(60, 16), (94, 1), (698, 16), (700, 64), (1251, 5)]

theorem oldProjectionSound810 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node810 =
      Integer.Sparse.eval oldProjection810 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value810 oldProjection810
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound810 hH))

def oldProjection811 : Integer.Sparse (Fin 1613) := [(60, 1), (700, 1), (1059, 1)]

theorem oldProjectionSound811 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node811 =
      Integer.Sparse.eval oldProjection811 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value811 oldProjection811
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound811 hH))

def oldProjection812 : Integer.Sparse (Fin 1613) := [(58, -3), (243, 1), (698, 1), (700, 1), (1052, -3)]

theorem oldProjectionSound812 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node812 =
      Integer.Sparse.eval oldProjection812 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value812 oldProjection812
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound812 hH))

def oldProjection813 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (61, -48), (94, 1), (701, 16), (704, 16), (1061, -48)]

theorem oldProjectionSound813 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node813 =
      Integer.Sparse.eval oldProjection813 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value813 oldProjection813
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound813 hH))

def oldProjection814 : Integer.Sparse (Fin 1613) := [(61, -3), (244, 1), (700, 1), (701, 1), (1053, -3)]

theorem oldProjectionSound814 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node814 =
      Integer.Sparse.eval oldProjection814 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value814 oldProjection814
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound814 hH))

def oldProjection815 : Integer.Sparse (Fin 1613) := [(0, -1), (697, -240), (698, 80), (1219, -240), (1227, 80), (1251, -15)]

theorem oldProjectionSound815 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node815 =
      Integer.Sparse.eval oldProjection815 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value815 oldProjection815
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound815 hH))

def oldProjection816 : Integer.Sparse (Fin 1613) := [(94, 1), (243, 8), (698, -8), (700, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound816 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node816 =
      Integer.Sparse.eval oldProjection816 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value816 oldProjection816
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound816 hH))

def oldProjection817 : Integer.Sparse (Fin 1613) := [(42, 1), (243, 2), (698, 1), (704, -1)]

theorem oldProjectionSound817 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node817 =
      Integer.Sparse.eval oldProjection817 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value817 oldProjection817
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound817 hH))

def oldProjection818 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (42, 16), (94, 4), (241, 16), (243, 32), (704, 32), (1251, 3)]

theorem oldProjectionSound818 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node818 =
      Integer.Sparse.eval oldProjection818 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value818 oldProjection818
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound818 hH))

def oldProjection819 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 25), (241, 80), (243, 80), (698, 160), (700, 80), (1251, 10)]

theorem oldProjectionSound819 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node819 =
      Integer.Sparse.eval oldProjection819 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value819 oldProjection819
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound819 hH))

def oldProjection820 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (247, 40), (1055, -120), (1219, -120), (1251, 10)]

theorem oldProjectionSound820 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node820 =
      Integer.Sparse.eval oldProjection820 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value820 oldProjection820
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound820 hH))

def oldProjection821 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (228, -48), (231, -48), (241, 16), (247, 16), (1251, 1)]

theorem oldProjectionSound821 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node821 =
      Integer.Sparse.eval oldProjection821 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value821 oldProjection821
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound821 hH))

def oldProjection822 : Integer.Sparse (Fin 1613) := [(682, -1), (1221, -1), (1389, -1)]

theorem oldProjectionSound822 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node822 =
      Integer.Sparse.eval oldProjection822 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value822 oldProjection822
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound822 hH))

def oldProjection823 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (81, -240), (94, 15), (698, 80), (1251, 20)]

theorem oldProjectionSound823 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node823 =
      Integer.Sparse.eval oldProjection823 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value823 oldProjection823
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound823 hH))

def oldProjection824 : Integer.Sparse (Fin 1613) := [(81, -48), (94, 1), (682, -48), (698, 16), (1226, 16), (1251, -3)]

theorem oldProjectionSound824 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node824 =
      Integer.Sparse.eval oldProjection824 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value824 oldProjection824
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound824 hH))

def oldProjection825 : Integer.Sparse (Fin 1613) := [(72, -1), (1050, -1), (1221, -1)]

theorem oldProjectionSound825 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node825 =
      Integer.Sparse.eval oldProjection825 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value825 oldProjection825
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound825 hH))

def oldProjection826 : Integer.Sparse (Fin 1613) := [(19, -2), (88, 8), (94, 1), (241, 16), (243, 16), (698, 8), (1226, 8), (1251, -1)]

theorem oldProjectionSound826 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node826 =
      Integer.Sparse.eval oldProjection826 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value826 oldProjection826
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound826 hH))

def oldProjection827 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (241, 80), (243, 80), (698, 240), (1226, 80), (1227, 80), (1251, -30)]

theorem oldProjectionSound827 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node827 =
      Integer.Sparse.eval oldProjection827 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value827 oldProjection827
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound827 hH))

def oldProjection828 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1055, -240), (1058, -240), (1227, 80), (1251, -15)]

theorem oldProjectionSound828 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node828 =
      Integer.Sparse.eval oldProjection828 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value828 oldProjection828
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound828 hH))

def oldProjection829 : Integer.Sparse (Fin 1613) := [(76, -24), (94, 1), (241, 8), (698, 16), (1226, 8), (1251, -3)]

theorem oldProjectionSound829 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node829 =
      Integer.Sparse.eval oldProjection829 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value829 oldProjection829
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound829 hH))

def oldProjection830 : Integer.Sparse (Fin 1613) := [(19, -4), (77, -48), (94, 1), (241, 16), (243, 16), (1223, -48), (1251, 1)]

theorem oldProjectionSound830 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node830 =
      Integer.Sparse.eval oldProjection830 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value830 oldProjection830
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound830 hH))

def oldProjection831 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1050, -240), (1058, -240), (1059, 80), (1251, -15)]

theorem oldProjectionSound831 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node831 =
      Integer.Sparse.eval oldProjection831 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value831 oldProjection831
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound831 hH))

def oldProjection832 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (243, 16), (698, -16), (1226, 16), (1251, -3)]

theorem oldProjectionSound832 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node832 =
      Integer.Sparse.eval oldProjection832 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value832 oldProjection832
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound832 hH))

def oldProjection833 : Integer.Sparse (Fin 1613) := [(88, 1), (241, -1), (243, 2), (698, 1)]

theorem oldProjectionSound833 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node833 =
      Integer.Sparse.eval oldProjection833 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value833 oldProjection833
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound833 hH))

def oldProjection834 : Integer.Sparse (Fin 1613) := [(88, 1), (243, 2), (698, 2), (704, 1), (1226, 2), (1227, 1)]

theorem oldProjectionSound834 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node834 =
      Integer.Sparse.eval oldProjection834 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value834 oldProjection834
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound834 hH))

def oldProjection835 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 20), (698, 80), (1227, 80), (1251, -15)]

theorem oldProjectionSound835 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node835 =
      Integer.Sparse.eval oldProjection835 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value835 oldProjection835
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound835 hH))

end NoFourMUBs.Step2.SOS.Normalization
