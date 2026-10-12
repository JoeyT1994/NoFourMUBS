import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28288 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28288 : ExponentCode := normalNode5909

theorem canonicalSound28288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28288.moment H = canonicalOutput28288.moment H :=
  canonical_of_padded canonicalInput28288 canonicalOutput28288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28289 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, -2, 3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput28289 : ExponentCode := normalNode624

theorem canonicalSound28289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28289.moment H = canonicalOutput28289.moment H :=
  canonical_of_padded canonicalInput28289 canonicalOutput28289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28290 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput28290 : ExponentCode := normalNode7014

theorem canonicalSound28290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28290.moment H = canonicalOutput28290.moment H :=
  canonical_of_padded canonicalInput28290 canonicalOutput28290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28291 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput28291 : ExponentCode := normalNode6760

theorem canonicalSound28291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28291.moment H = canonicalOutput28291.moment H :=
  canonical_of_padded canonicalInput28291 canonicalOutput28291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28292 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput28292 : ExponentCode := normalNode6983

theorem canonicalSound28292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28292.moment H = canonicalOutput28292.moment H :=
  canonical_of_padded canonicalInput28292 canonicalOutput28292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28293 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28293 : ExponentCode := normalNode10710

theorem canonicalSound28293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28293.moment H = canonicalOutput28293.moment H :=
  canonical_of_padded canonicalInput28293 canonicalOutput28293 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28294 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput28294 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2232⟩

theorem canonicalSound28294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28294.moment H = canonicalOutput28294.moment H :=
  canonical_of_padded canonicalInput28294 canonicalOutput28294 (by decide) (by decide)
    ⟨false, true, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28295 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28295 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩

theorem canonicalSound28295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28295.moment H = canonicalOutput28295.moment H :=
  canonical_of_padded canonicalInput28295 canonicalOutput28295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28296 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 3, 0, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28296 : ExponentCode := normalNode1800

theorem canonicalSound28296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28296.moment H = canonicalOutput28296.moment H :=
  canonical_of_padded canonicalInput28296 canonicalOutput28296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation324, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28297 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![-2, 2, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput28297 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2351⟩

theorem canonicalSound28297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28297.moment H = canonicalOutput28297.moment H :=
  canonical_of_padded canonicalInput28297 canonicalOutput28297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28298 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 3, 1]]⟩

def canonicalOutput28298 : ExponentCode := normalNode638

theorem canonicalSound28298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28298.moment H = canonicalOutput28298.moment H :=
  canonical_of_padded canonicalInput28298 canonicalOutput28298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28299 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28299 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound28299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28299.moment H = canonicalOutput28299.moment H :=
  canonical_of_padded canonicalInput28299 canonicalOutput28299 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28300 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 2, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28300 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound28300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28300.moment H = canonicalOutput28300.moment H :=
  canonical_of_padded canonicalInput28300 canonicalOutput28300 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28301 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 1, 3, -2]]⟩

def canonicalOutput28301 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2183⟩

theorem canonicalSound28301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28301.moment H = canonicalOutput28301.moment H :=
  canonical_of_padded canonicalInput28301 canonicalOutput28301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28302 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28302 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound28302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28302.moment H = canonicalOutput28302.moment H :=
  canonical_of_padded canonicalInput28302 canonicalOutput28302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28303 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput28303 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound28303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28303.moment H = canonicalOutput28303.moment H :=
  canonical_of_padded canonicalInput28303 canonicalOutput28303 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28304 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28304 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound28304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28304.moment H = canonicalOutput28304.moment H :=
  canonical_of_padded canonicalInput28304 canonicalOutput28304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28305 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput28305 : ExponentCode := normalNode7021

theorem canonicalSound28305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28305.moment H = canonicalOutput28305.moment H :=
  canonical_of_padded canonicalInput28305 canonicalOutput28305 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28306 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput28306 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩

theorem canonicalSound28306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28306.moment H = canonicalOutput28306.moment H :=
  canonical_of_padded canonicalInput28306 canonicalOutput28306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28307 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28307 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2183⟩

theorem canonicalSound28307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28307.moment H = canonicalOutput28307.moment H :=
  canonical_of_padded canonicalInput28307 canonicalOutput28307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28308 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28308 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1644⟩

theorem canonicalSound28308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28308.moment H = canonicalOutput28308.moment H :=
  canonical_of_padded canonicalInput28308 canonicalOutput28308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation95, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28309 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput28309 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2820⟩

theorem canonicalSound28309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28309.moment H = canonicalOutput28309.moment H :=
  canonical_of_padded canonicalInput28309 canonicalOutput28309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation247, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28310 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28310 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2419⟩

theorem canonicalSound28310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28310.moment H = canonicalOutput28310.moment H :=
  canonical_of_padded canonicalInput28310 canonicalOutput28310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28311 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![-1, 2, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput28311 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3257⟩

theorem canonicalSound28311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28311.moment H = canonicalOutput28311.moment H :=
  canonical_of_padded canonicalInput28311 canonicalOutput28311 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28312 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput28312 : ExponentCode := normalNode5489

theorem canonicalSound28312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28312.moment H = canonicalOutput28312.moment H :=
  canonical_of_padded canonicalInput28312 canonicalOutput28312 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28313 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28313 : ExponentCode := normalNode5193

theorem canonicalSound28313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28313.moment H = canonicalOutput28313.moment H :=
  canonical_of_padded canonicalInput28313 canonicalOutput28313 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28314 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput28314 : ExponentCode := normalNode11220

theorem canonicalSound28314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28314.moment H = canonicalOutput28314.moment H :=
  canonical_of_padded canonicalInput28314 canonicalOutput28314 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28315 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, -1, 2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput28315 : ExponentCode := normalNode6991

theorem canonicalSound28315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28315.moment H = canonicalOutput28315.moment H :=
  canonical_of_padded canonicalInput28315 canonicalOutput28315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28316 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28316 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩

theorem canonicalSound28316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28316.moment H = canonicalOutput28316.moment H :=
  canonical_of_padded canonicalInput28316 canonicalOutput28316 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28317 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 3, 0, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28317 : ExponentCode := normalNode1800

theorem canonicalSound28317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28317.moment H = canonicalOutput28317.moment H :=
  canonical_of_padded canonicalInput28317 canonicalOutput28317 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28318 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-1, 2, -2, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28318 : ExponentCode := normalNode11220

theorem canonicalSound28318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28318.moment H = canonicalOutput28318.moment H :=
  canonical_of_padded canonicalInput28318 canonicalOutput28318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28319 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, -1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput28319 : ExponentCode := normalNode11220

theorem canonicalSound28319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28319.moment H = canonicalOutput28319.moment H :=
  canonical_of_padded canonicalInput28319 canonicalOutput28319 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28320 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, -2, -1, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput28320 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩

theorem canonicalSound28320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28320.moment H = canonicalOutput28320.moment H :=
  canonical_of_padded canonicalInput28320 canonicalOutput28320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28321 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 2, -2, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput28321 : ExponentCode := normalNode5809

theorem canonicalSound28321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28321.moment H = canonicalOutput28321.moment H :=
  canonical_of_padded canonicalInput28321 canonicalOutput28321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28322 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 3, -1, 0], ![2, -3, 1, 0]]⟩

def canonicalOutput28322 : ExponentCode := normalNode3440

theorem canonicalSound28322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28322.moment H = canonicalOutput28322.moment H :=
  canonical_of_padded canonicalInput28322 canonicalOutput28322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28323 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 3, 0, -1], ![2, -3, 0, 1]]⟩

def canonicalOutput28323 : ExponentCode := normalNode3440

theorem canonicalSound28323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28323.moment H = canonicalOutput28323.moment H :=
  canonical_of_padded canonicalInput28323 canonicalOutput28323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28324 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![-2, 2, -2, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput28324 : ExponentCode := normalNode5810

theorem canonicalSound28324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28324.moment H = canonicalOutput28324.moment H :=
  canonical_of_padded canonicalInput28324 canonicalOutput28324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28325 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![-2, 2, -1, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput28325 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3318⟩

theorem canonicalSound28325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28325.moment H = canonicalOutput28325.moment H :=
  canonical_of_padded canonicalInput28325 canonicalOutput28325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28326 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, 0, -3], ![-2, -2, 3, 1]]⟩

def canonicalOutput28326 : ExponentCode := normalNode590

theorem canonicalSound28326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28326.moment H = canonicalOutput28326.moment H :=
  canonical_of_padded canonicalInput28326 canonicalOutput28326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28327 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28327 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3097⟩

theorem canonicalSound28327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28327.moment H = canonicalOutput28327.moment H :=
  canonical_of_padded canonicalInput28327 canonicalOutput28327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28328 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 2, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28328 : ExponentCode := normalNode2437

theorem canonicalSound28328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28328.moment H = canonicalOutput28328.moment H :=
  canonical_of_padded canonicalInput28328 canonicalOutput28328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28329 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![-2, 1, 3, -2]]⟩

def canonicalOutput28329 : ExponentCode := normalNode4928

theorem canonicalSound28329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28329.moment H = canonicalOutput28329.moment H :=
  canonical_of_padded canonicalInput28329 canonicalOutput28329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28330 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28330 : ExponentCode := normalNode589

theorem canonicalSound28330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28330.moment H = canonicalOutput28330.moment H :=
  canonical_of_padded canonicalInput28330 canonicalOutput28330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28331 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28331 : ExponentCode := normalNode826

theorem canonicalSound28331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28331.moment H = canonicalOutput28331.moment H :=
  canonical_of_padded canonicalInput28331 canonicalOutput28331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28332 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -2, 2, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput28332 : ExponentCode := normalNode827

theorem canonicalSound28332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28332.moment H = canonicalOutput28332.moment H :=
  canonical_of_padded canonicalInput28332 canonicalOutput28332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28333 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput28333 : ExponentCode := normalNode6990

theorem canonicalSound28333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28333.moment H = canonicalOutput28333.moment H :=
  canonical_of_padded canonicalInput28333 canonicalOutput28333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28334 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput28334 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3166⟩

theorem canonicalSound28334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28334.moment H = canonicalOutput28334.moment H :=
  canonical_of_padded canonicalInput28334 canonicalOutput28334 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28335 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -3, 2, -1]]⟩

def canonicalOutput28335 : ExponentCode := normalNode494

theorem canonicalSound28335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28335.moment H = canonicalOutput28335.moment H :=
  canonical_of_padded canonicalInput28335 canonicalOutput28335 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28336 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, -3, 1, 0]]⟩

def canonicalOutput28336 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2964⟩

theorem canonicalSound28336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28336.moment H = canonicalOutput28336.moment H :=
  canonical_of_padded canonicalInput28336 canonicalOutput28336 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28337 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 1, -1], ![2, -3, 0, 1]]⟩

def canonicalOutput28337 : ExponentCode := normalNode3467

theorem canonicalSound28337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28337.moment H = canonicalOutput28337.moment H :=
  canonical_of_padded canonicalInput28337 canonicalOutput28337 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28338 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -3, -1, 2], ![-2, 2, 2, -2]]⟩

def canonicalOutput28338 : ExponentCode := normalNode5735

theorem canonicalSound28338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28338.moment H = canonicalOutput28338.moment H :=
  canonical_of_padded canonicalInput28338 canonicalOutput28338 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28339 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -2, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput28339 : ExponentCode := normalNode4927

theorem canonicalSound28339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28339.moment H = canonicalOutput28339.moment H :=
  canonical_of_padded canonicalInput28339 canonicalOutput28339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28340 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -2, 0, 2]]⟩

def canonicalOutput28340 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node555⟩

theorem canonicalSound28340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28340.moment H = canonicalOutput28340.moment H :=
  canonical_of_padded canonicalInput28340 canonicalOutput28340 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28341 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput28341 : ExponentCode := normalNode1944

theorem canonicalSound28341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28341.moment H = canonicalOutput28341.moment H :=
  canonical_of_padded canonicalInput28341 canonicalOutput28341 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28342 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 3, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28342 : ExponentCode := normalNode1798

theorem canonicalSound28342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28342.moment H = canonicalOutput28342.moment H :=
  canonical_of_padded canonicalInput28342 canonicalOutput28342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28343 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput28343 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2985⟩

theorem canonicalSound28343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28343.moment H = canonicalOutput28343.moment H :=
  canonical_of_padded canonicalInput28343 canonicalOutput28343 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28344 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28344 : ExponentCode := normalNode2641

theorem canonicalSound28344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28344.moment H = canonicalOutput28344.moment H :=
  canonical_of_padded canonicalInput28344 canonicalOutput28344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28345 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 3, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput28345 : ExponentCode := normalNode3482

theorem canonicalSound28345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28345.moment H = canonicalOutput28345.moment H :=
  canonical_of_padded canonicalInput28345 canonicalOutput28345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28346 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput28346 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2971⟩

theorem canonicalSound28346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28346.moment H = canonicalOutput28346.moment H :=
  canonical_of_padded canonicalInput28346 canonicalOutput28346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28347 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28347 : ExponentCode := normalNode1799

theorem canonicalSound28347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28347.moment H = canonicalOutput28347.moment H :=
  canonical_of_padded canonicalInput28347 canonicalOutput28347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28348 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -2, 2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28348 : ExponentCode := normalNode827

theorem canonicalSound28348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28348.moment H = canonicalOutput28348.moment H :=
  canonical_of_padded canonicalInput28348 canonicalOutput28348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28349 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput28349 : ExponentCode := normalNode6989

theorem canonicalSound28349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28349.moment H = canonicalOutput28349.moment H :=
  canonical_of_padded canonicalInput28349 canonicalOutput28349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28350 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28350 : ExponentCode := normalNode4927

theorem canonicalSound28350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28350.moment H = canonicalOutput28350.moment H :=
  canonical_of_padded canonicalInput28350 canonicalOutput28350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28351 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput28351 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3257⟩

theorem canonicalSound28351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28351.moment H = canonicalOutput28351.moment H :=
  canonical_of_padded canonicalInput28351 canonicalOutput28351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
