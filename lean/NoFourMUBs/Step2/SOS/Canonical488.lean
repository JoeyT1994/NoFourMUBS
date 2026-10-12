import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31232 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 1, -1], ![-2, 0, -3, 5]]⟩

def canonicalOutput31232 : ExponentCode := normalNode3080

theorem canonicalSound31232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31232.moment H = canonicalOutput31232.moment H :=
  canonical_of_padded canonicalInput31232 canonicalOutput31232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31233 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31233 : ExponentCode := normalNode636

theorem canonicalSound31233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31233.moment H = canonicalOutput31233.moment H :=
  canonical_of_padded canonicalInput31233 canonicalOutput31233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31234 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -2, -3, 5]]⟩

def canonicalOutput31234 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node387⟩

theorem canonicalSound31234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31234.moment H = canonicalOutput31234.moment H :=
  canonical_of_padded canonicalInput31234 canonicalOutput31234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31235 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31235 : ExponentCode := normalNode629

theorem canonicalSound31235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31235.moment H = canonicalOutput31235.moment H :=
  canonical_of_padded canonicalInput31235 canonicalOutput31235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31236 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31236 : ExponentCode := normalNode634

theorem canonicalSound31236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31236.moment H = canonicalOutput31236.moment H :=
  canonical_of_padded canonicalInput31236 canonicalOutput31236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31237 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31237 : ExponentCode := normalNode637

theorem canonicalSound31237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31237.moment H = canonicalOutput31237.moment H :=
  canonical_of_padded canonicalInput31237 canonicalOutput31237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31238 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 0, 4]]⟩

def canonicalOutput31238 : ExponentCode := normalNode434

theorem canonicalSound31238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31238.moment H = canonicalOutput31238.moment H :=
  canonical_of_padded canonicalInput31238 canonicalOutput31238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31239 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput31239 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound31239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31239.moment H = canonicalOutput31239.moment H :=
  canonical_of_padded canonicalInput31239 canonicalOutput31239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31240 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -2, -3, 5]]⟩

def canonicalOutput31240 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node119⟩

theorem canonicalSound31240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31240.moment H = canonicalOutput31240.moment H :=
  canonical_of_padded canonicalInput31240 canonicalOutput31240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31241 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31241 : ExponentCode := normalNode6033

theorem canonicalSound31241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31241.moment H = canonicalOutput31241.moment H :=
  canonical_of_padded canonicalInput31241 canonicalOutput31241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31242 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, -1, 0, 0], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31242 : ExponentCode := normalNode6068

theorem canonicalSound31242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31242.moment H = canonicalOutput31242.moment H :=
  canonical_of_padded canonicalInput31242 canonicalOutput31242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31243 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31243 : ExponentCode := normalNode2007

theorem canonicalSound31243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31243.moment H = canonicalOutput31243.moment H :=
  canonical_of_padded canonicalInput31243 canonicalOutput31243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31244 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1], ![-2, 3, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31244 : ExponentCode := normalNode4678

theorem canonicalSound31244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31244.moment H = canonicalOutput31244.moment H :=
  canonical_of_padded canonicalInput31244 canonicalOutput31244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31245 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31245 : ExponentCode := normalNode7686

theorem canonicalSound31245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31245.moment H = canonicalOutput31245.moment H :=
  canonical_of_padded canonicalInput31245 canonicalOutput31245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31246 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31246 : ExponentCode := normalNode5861

theorem canonicalSound31246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31246.moment H = canonicalOutput31246.moment H :=
  canonical_of_padded canonicalInput31246 canonicalOutput31246 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31247 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31247 : ExponentCode := normalNode642

theorem canonicalSound31247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31247.moment H = canonicalOutput31247.moment H :=
  canonical_of_padded canonicalInput31247 canonicalOutput31247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31248 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31248 : ExponentCode := normalNode10946

theorem canonicalSound31248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31248.moment H = canonicalOutput31248.moment H :=
  canonical_of_padded canonicalInput31248 canonicalOutput31248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31249 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, -2, 1, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput31249 : ExponentCode := normalNode6034

theorem canonicalSound31249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31249.moment H = canonicalOutput31249.moment H :=
  canonical_of_padded canonicalInput31249 canonicalOutput31249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31250 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 0, -3, 4]]⟩

def canonicalOutput31250 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3292⟩

theorem canonicalSound31250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31250.moment H = canonicalOutput31250.moment H :=
  canonical_of_padded canonicalInput31250 canonicalOutput31250 (by decide) (by decide)
    ⟨false, true, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31251 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -2, 0, 1], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31251 : ExponentCode := normalNode6068

theorem canonicalSound31251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31251.moment H = canonicalOutput31251.moment H :=
  canonical_of_padded canonicalInput31251 canonicalOutput31251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31252 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -2, 1, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31252 : ExponentCode := normalNode1664

theorem canonicalSound31252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31252.moment H = canonicalOutput31252.moment H :=
  canonical_of_padded canonicalInput31252 canonicalOutput31252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31253 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31253 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3461⟩

theorem canonicalSound31253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31253.moment H = canonicalOutput31253.moment H :=
  canonical_of_padded canonicalInput31253 canonicalOutput31253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31254 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, 1, -2], ![-1, 0, -3, 4]]⟩

def canonicalOutput31254 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3256⟩

theorem canonicalSound31254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31254.moment H = canonicalOutput31254.moment H :=
  canonical_of_padded canonicalInput31254 canonicalOutput31254 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31255 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31255 : ExponentCode := normalNode5875

theorem canonicalSound31255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31255.moment H = canonicalOutput31255.moment H :=
  canonical_of_padded canonicalInput31255 canonicalOutput31255 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31256 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput31256 : ExponentCode := normalNode1776

theorem canonicalSound31256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31256.moment H = canonicalOutput31256.moment H :=
  canonical_of_padded canonicalInput31256 canonicalOutput31256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31257 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput31257 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound31257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31257.moment H = canonicalOutput31257.moment H :=
  canonical_of_padded canonicalInput31257 canonicalOutput31257 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31258 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -2, 1, 0], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31258 : ExponentCode := normalNode2006

theorem canonicalSound31258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31258.moment H = canonicalOutput31258.moment H :=
  canonical_of_padded canonicalInput31258 canonicalOutput31258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31259 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31259 : ExponentCode := normalNode1734

theorem canonicalSound31259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31259.moment H = canonicalOutput31259.moment H :=
  canonical_of_padded canonicalInput31259 canonicalOutput31259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31260 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -2, 1, 0], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31260 : ExponentCode := normalNode7678

theorem canonicalSound31260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31260.moment H = canonicalOutput31260.moment H :=
  canonical_of_padded canonicalInput31260 canonicalOutput31260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31261 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![0, 3, -2, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31261 : ExponentCode := normalNode643

theorem canonicalSound31261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31261.moment H = canonicalOutput31261.moment H :=
  canonical_of_padded canonicalInput31261 canonicalOutput31261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31262 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, -2, 0, 4], ![0, 3, -2, -1]]⟩

def canonicalOutput31262 : ExponentCode := normalNode437

theorem canonicalSound31262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31262.moment H = canonicalOutput31262.moment H :=
  canonical_of_padded canonicalInput31262 canonicalOutput31262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31263 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![0, 2, -2, 0]]⟩

def canonicalOutput31263 : ExponentCode := normalNode2002

theorem canonicalSound31263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31263.moment H = canonicalOutput31263.moment H :=
  canonical_of_padded canonicalInput31263 canonicalOutput31263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31264 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput31264 : ExponentCode := normalNode5931

theorem canonicalSound31264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31264.moment H = canonicalOutput31264.moment H :=
  canonical_of_padded canonicalInput31264 canonicalOutput31264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31265 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, 3, 0, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31265 : ExponentCode := normalNode4670

theorem canonicalSound31265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31265.moment H = canonicalOutput31265.moment H :=
  canonical_of_padded canonicalInput31265 canonicalOutput31265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31266 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -2, -1, 4], ![-1, 3, -1, -1]]⟩

def canonicalOutput31266 : ExponentCode := normalNode6431

theorem canonicalSound31266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31266.moment H = canonicalOutput31266.moment H :=
  canonical_of_padded canonicalInput31266 canonicalOutput31266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31267 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 2, -1, 0]]⟩

def canonicalOutput31267 : ExponentCode := normalNode5343

theorem canonicalSound31267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31267.moment H = canonicalOutput31267.moment H :=
  canonical_of_padded canonicalInput31267 canonicalOutput31267 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31268 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31268 : ExponentCode := normalNode632

theorem canonicalSound31268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31268.moment H = canonicalOutput31268.moment H :=
  canonical_of_padded canonicalInput31268 canonicalOutput31268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31269 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -3, 1, 4]]⟩

def canonicalOutput31269 : ExponentCode := normalNode254

theorem canonicalSound31269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31269.moment H = canonicalOutput31269.moment H :=
  canonical_of_padded canonicalInput31269 canonicalOutput31269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31270 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -3, 1, 1], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31270 : ExponentCode := normalNode1665

theorem canonicalSound31270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31270.moment H = canonicalOutput31270.moment H :=
  canonical_of_padded canonicalInput31270 canonicalOutput31270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31271 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, 1, 0], ![-2, -1, -1, 4], ![0, 3, -2, -1]]⟩

def canonicalOutput31271 : ExponentCode := normalNode1186

theorem canonicalSound31271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31271.moment H = canonicalOutput31271.moment H :=
  canonical_of_padded canonicalInput31271 canonicalOutput31271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31272 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, 1, 0], ![-2, 0, -1, 3], ![0, 2, -2, 0]]⟩

def canonicalOutput31272 : ExponentCode := normalNode3595

theorem canonicalSound31272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31272.moment H = canonicalOutput31272.moment H :=
  canonical_of_padded canonicalInput31272 canonicalOutput31272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31273 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 2, -2], ![-1, 2, -2, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput31273 : ExponentCode := normalNode7001

theorem canonicalSound31273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31273.moment H = canonicalOutput31273.moment H :=
  canonical_of_padded canonicalInput31273 canonicalOutput31273 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31274 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31274 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node760⟩

theorem canonicalSound31274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31274.moment H = canonicalOutput31274.moment H :=
  canonical_of_padded canonicalInput31274 canonicalOutput31274 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31275 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput31275 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound31275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31275.moment H = canonicalOutput31275.moment H :=
  canonical_of_padded canonicalInput31275 canonicalOutput31275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31276 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 2, -2, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput31276 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound31276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31276.moment H = canonicalOutput31276.moment H :=
  canonical_of_padded canonicalInput31276 canonicalOutput31276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31277 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 3, -3], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31277 : ExponentCode := normalNode11127

theorem canonicalSound31277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31277.moment H = canonicalOutput31277.moment H :=
  canonical_of_padded canonicalInput31277 canonicalOutput31277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31278 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -2, -2, 3]]⟩

def canonicalOutput31278 : ExponentCode := normalNode11127

theorem canonicalSound31278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31278.moment H = canonicalOutput31278.moment H :=
  canonical_of_padded canonicalInput31278 canonicalOutput31278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31279 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, -2, 4]]⟩

def canonicalOutput31279 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound31279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31279.moment H = canonicalOutput31279.moment H :=
  canonical_of_padded canonicalInput31279 canonicalOutput31279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31280 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![-1, 1, 0, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput31280 : ExponentCode := normalNode9710

theorem canonicalSound31280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31280.moment H = canonicalOutput31280.moment H :=
  canonical_of_padded canonicalInput31280 canonicalOutput31280 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31281 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![-1, 1, 1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput31281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound31281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31281.moment H = canonicalOutput31281.moment H :=
  canonical_of_padded canonicalInput31281 canonicalOutput31281 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31282 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![-1, 1, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput31282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node892⟩

theorem canonicalSound31282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31282.moment H = canonicalOutput31282.moment H :=
  canonical_of_padded canonicalInput31282 canonicalOutput31282 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31283 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput31283 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound31283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31283.moment H = canonicalOutput31283.moment H :=
  canonical_of_padded canonicalInput31283 canonicalOutput31283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31284 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 1, -2], ![0, -2, 2, 0]]⟩

def canonicalOutput31284 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node206⟩

theorem canonicalSound31284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31284.moment H = canonicalOutput31284.moment H :=
  canonical_of_padded canonicalInput31284 canonicalOutput31284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31285 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 2, -3], ![0, -2, 1, 1]]⟩

def canonicalOutput31285 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound31285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31285.moment H = canonicalOutput31285.moment H :=
  canonical_of_padded canonicalInput31285 canonicalOutput31285 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31286 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput31286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound31286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31286.moment H = canonicalOutput31286.moment H :=
  canonical_of_padded canonicalInput31286 canonicalOutput31286 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31287 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, 1, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput31287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound31287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31287.moment H = canonicalOutput31287.moment H :=
  canonical_of_padded canonicalInput31287 canonicalOutput31287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31288 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -2, 2, 0]]⟩

def canonicalOutput31288 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound31288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31288.moment H = canonicalOutput31288.moment H :=
  canonical_of_padded canonicalInput31288 canonicalOutput31288 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31289 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![0, -2, 1, 1]]⟩

def canonicalOutput31289 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound31289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31289.moment H = canonicalOutput31289.moment H :=
  canonical_of_padded canonicalInput31289 canonicalOutput31289 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31290 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31290 : ExponentCode := normalNode3801

theorem canonicalSound31290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31290.moment H = canonicalOutput31290.moment H :=
  canonical_of_padded canonicalInput31290 canonicalOutput31290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31291 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31291 : ExponentCode := normalNode3976

theorem canonicalSound31291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31291.moment H = canonicalOutput31291.moment H :=
  canonical_of_padded canonicalInput31291 canonicalOutput31291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31292 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31292 : ExponentCode := normalNode4194

theorem canonicalSound31292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31292.moment H = canonicalOutput31292.moment H :=
  canonical_of_padded canonicalInput31292 canonicalOutput31292 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31293 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31293 : ExponentCode := normalNode4262

theorem canonicalSound31293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31293.moment H = canonicalOutput31293.moment H :=
  canonical_of_padded canonicalInput31293 canonicalOutput31293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31294 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput31294 : ExponentCode := normalNode4473

theorem canonicalSound31294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31294.moment H = canonicalOutput31294.moment H :=
  canonical_of_padded canonicalInput31294 canonicalOutput31294 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31295 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput31295 : ExponentCode := normalNode2552

theorem canonicalSound31295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31295.moment H = canonicalOutput31295.moment H :=
  canonical_of_padded canonicalInput31295 canonicalOutput31295 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation349, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
