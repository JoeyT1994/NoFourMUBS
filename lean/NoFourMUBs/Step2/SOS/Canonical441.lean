import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28224 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, -1, 1, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28224 : ExponentCode := normalNode5719

theorem canonicalSound28224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28224.moment H = canonicalOutput28224.moment H :=
  canonical_of_padded canonicalInput28224 canonicalOutput28224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28225 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput28225 : ExponentCode := normalNode10266

theorem canonicalSound28225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28225.moment H = canonicalOutput28225.moment H :=
  canonical_of_padded canonicalInput28225 canonicalOutput28225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28226 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput28226 : ExponentCode := normalNode8939

theorem canonicalSound28226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28226.moment H = canonicalOutput28226.moment H :=
  canonical_of_padded canonicalInput28226 canonicalOutput28226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28227 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput28227 : ExponentCode := normalNode10711

theorem canonicalSound28227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28227.moment H = canonicalOutput28227.moment H :=
  canonical_of_padded canonicalInput28227 canonicalOutput28227 (by decide) (by decide)
    ⟨false, true, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28228 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28228 : ExponentCode := normalNode10714

theorem canonicalSound28228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28228.moment H = canonicalOutput28228.moment H :=
  canonical_of_padded canonicalInput28228 canonicalOutput28228 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28229 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput28229 : ExponentCode := normalNode2362

theorem canonicalSound28229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28229.moment H = canonicalOutput28229.moment H :=
  canonical_of_padded canonicalInput28229 canonicalOutput28229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28230 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28230 : ExponentCode := normalNode766

theorem canonicalSound28230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28230.moment H = canonicalOutput28230.moment H :=
  canonical_of_padded canonicalInput28230 canonicalOutput28230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28231 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput28231 : ExponentCode := normalNode766

theorem canonicalSound28231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28231.moment H = canonicalOutput28231.moment H :=
  canonical_of_padded canonicalInput28231 canonicalOutput28231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28232 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28232 : ExponentCode := normalNode2365

theorem canonicalSound28232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28232.moment H = canonicalOutput28232.moment H :=
  canonical_of_padded canonicalInput28232 canonicalOutput28232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28233 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput28233 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3143⟩

theorem canonicalSound28233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28233.moment H = canonicalOutput28233.moment H :=
  canonical_of_padded canonicalInput28233 canonicalOutput28233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28234 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![-2, 2, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28234 : ExponentCode := normalNode5816

theorem canonicalSound28234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28234.moment H = canonicalOutput28234.moment H :=
  canonical_of_padded canonicalInput28234 canonicalOutput28234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28235 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28235 : ExponentCode := normalNode4063

theorem canonicalSound28235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28235.moment H = canonicalOutput28235.moment H :=
  canonical_of_padded canonicalInput28235 canonicalOutput28235 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28236 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput28236 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3287⟩

theorem canonicalSound28236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28236.moment H = canonicalOutput28236.moment H :=
  canonical_of_padded canonicalInput28236 canonicalOutput28236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28237 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![0, 1, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28237 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3293⟩

theorem canonicalSound28237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28237.moment H = canonicalOutput28237.moment H :=
  canonical_of_padded canonicalInput28237 canonicalOutput28237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28238 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![2, -3, 2, -1]]⟩

def canonicalOutput28238 : ExponentCode := normalNode677

theorem canonicalSound28238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28238.moment H = canonicalOutput28238.moment H :=
  canonical_of_padded canonicalInput28238 canonicalOutput28238 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28239 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput28239 : ExponentCode := normalNode4966

theorem canonicalSound28239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28239.moment H = canonicalOutput28239.moment H :=
  canonical_of_padded canonicalInput28239 canonicalOutput28239 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28240 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![-1, 2, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput28240 : ExponentCode := normalNode5228

theorem canonicalSound28240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28240.moment H = canonicalOutput28240.moment H :=
  canonical_of_padded canonicalInput28240 canonicalOutput28240 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28241 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28241 : ExponentCode := normalNode4966

theorem canonicalSound28241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28241.moment H = canonicalOutput28241.moment H :=
  canonical_of_padded canonicalInput28241 canonicalOutput28241 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28242 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![-1, 2, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28242 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3293⟩

theorem canonicalSound28242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28242.moment H = canonicalOutput28242.moment H :=
  canonical_of_padded canonicalInput28242 canonicalOutput28242 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28243 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, -2, 3, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput28243 : ExponentCode := normalNode1358

theorem canonicalSound28243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28243.moment H = canonicalOutput28243.moment H :=
  canonical_of_padded canonicalInput28243 canonicalOutput28243 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28244 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, 1, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28244 : ExponentCode := normalNode5821

theorem canonicalSound28244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28244.moment H = canonicalOutput28244.moment H :=
  canonical_of_padded canonicalInput28244 canonicalOutput28244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28245 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, -2, 1, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput28245 : ExponentCode := normalNode5907

theorem canonicalSound28245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28245.moment H = canonicalOutput28245.moment H :=
  canonical_of_padded canonicalInput28245 canonicalOutput28245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28246 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![-1, 1, 0, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput28246 : ExponentCode := normalNode5822

theorem canonicalSound28246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28246.moment H = canonicalOutput28246.moment H :=
  canonical_of_padded canonicalInput28246 canonicalOutput28246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28247 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![-1, 2, 0, -1], ![2, -3, 2, -1]]⟩

def canonicalOutput28247 : ExponentCode := normalNode704

theorem canonicalSound28247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28247.moment H = canonicalOutput28247.moment H :=
  canonical_of_padded canonicalInput28247 canonicalOutput28247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28248 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28248 : ExponentCode := normalNode11211

theorem canonicalSound28248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28248.moment H = canonicalOutput28248.moment H :=
  canonical_of_padded canonicalInput28248 canonicalOutput28248 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28249 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 2, 0], ![2, -1, 0, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28249 : ExponentCode := normalNode677

theorem canonicalSound28249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28249.moment H = canonicalOutput28249.moment H :=
  canonical_of_padded canonicalInput28249 canonicalOutput28249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28250 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput28250 : ExponentCode := normalNode6298

theorem canonicalSound28250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28250.moment H = canonicalOutput28250.moment H :=
  canonical_of_padded canonicalInput28250 canonicalOutput28250 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28251 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 3, 1, -2]]⟩

def canonicalOutput28251 : ExponentCode := normalNode532

theorem canonicalSound28251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28251.moment H = canonicalOutput28251.moment H :=
  canonical_of_padded canonicalInput28251 canonicalOutput28251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28252 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28252 : ExponentCode := normalNode5512

theorem canonicalSound28252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28252.moment H = canonicalOutput28252.moment H :=
  canonical_of_padded canonicalInput28252 canonicalOutput28252 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28253 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -2, 3, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput28253 : ExponentCode := normalNode6487

theorem canonicalSound28253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28253.moment H = canonicalOutput28253.moment H :=
  canonical_of_padded canonicalInput28253 canonicalOutput28253 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28254 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![-2, 2, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28254 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2345⟩

theorem canonicalSound28254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28254.moment H = canonicalOutput28254.moment H :=
  canonical_of_padded canonicalInput28254 canonicalOutput28254 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28255 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, 2, 0, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput28255 : ExponentCode := normalNode5815

theorem canonicalSound28255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28255.moment H = canonicalOutput28255.moment H :=
  canonical_of_padded canonicalInput28255 canonicalOutput28255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28256 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, 2, 1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput28256 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3320⟩

theorem canonicalSound28256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28256.moment H = canonicalOutput28256.moment H :=
  canonical_of_padded canonicalInput28256 canonicalOutput28256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28257 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, -2, 3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput28257 : ExponentCode := normalNode624

theorem canonicalSound28257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28257.moment H = canonicalOutput28257.moment H :=
  canonical_of_padded canonicalInput28257 canonicalOutput28257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28258 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 2, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28258 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3265⟩

theorem canonicalSound28258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28258.moment H = canonicalOutput28258.moment H :=
  canonical_of_padded canonicalInput28258 canonicalOutput28258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28259 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput28259 : ExponentCode := normalNode6759

theorem canonicalSound28259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28259.moment H = canonicalOutput28259.moment H :=
  canonical_of_padded canonicalInput28259 canonicalOutput28259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28260 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28260 : ExponentCode := normalNode11066

theorem canonicalSound28260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28260.moment H = canonicalOutput28260.moment H :=
  canonical_of_padded canonicalInput28260 canonicalOutput28260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28261 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![-1, 1, 3, -3]]⟩

def canonicalOutput28261 : ExponentCode := normalNode10999

theorem canonicalSound28261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28261.moment H = canonicalOutput28261.moment H :=
  canonical_of_padded canonicalInput28261 canonicalOutput28261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28262 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-2, 1, 3, -2]]⟩

def canonicalOutput28262 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3241⟩

theorem canonicalSound28262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28262.moment H = canonicalOutput28262.moment H :=
  canonical_of_padded canonicalInput28262 canonicalOutput28262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28263 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput28263 : ExponentCode := normalNode7126

theorem canonicalSound28263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28263.moment H = canonicalOutput28263.moment H :=
  canonical_of_padded canonicalInput28263 canonicalOutput28263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28264 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28264 : ExponentCode := normalNode10709

theorem canonicalSound28264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28264.moment H = canonicalOutput28264.moment H :=
  canonical_of_padded canonicalInput28264 canonicalOutput28264 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28265 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput28265 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1153⟩

theorem canonicalSound28265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28265.moment H = canonicalOutput28265.moment H :=
  canonical_of_padded canonicalInput28265 canonicalOutput28265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28266 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 1, -3], ![0, -2, 2, 0]]⟩

def canonicalOutput28266 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node566⟩

theorem canonicalSound28266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28266.moment H = canonicalOutput28266.moment H :=
  canonical_of_padded canonicalInput28266 canonicalOutput28266 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28267 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -2, 0, 2]]⟩

def canonicalOutput28267 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node384⟩

theorem canonicalSound28267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28267.moment H = canonicalOutput28267.moment H :=
  canonical_of_padded canonicalInput28267 canonicalOutput28267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28268 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -3, 1, 1], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28268 : ExponentCode := normalNode5686

theorem canonicalSound28268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28268.moment H = canonicalOutput28268.moment H :=
  canonical_of_padded canonicalInput28268 canonicalOutput28268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28269 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -3, 1, 1], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28269 : ExponentCode := normalNode4703

theorem canonicalSound28269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28269.moment H = canonicalOutput28269.moment H :=
  canonical_of_padded canonicalInput28269 canonicalOutput28269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28270 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28270 : ExponentCode := normalNode1995

theorem canonicalSound28270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28270.moment H = canonicalOutput28270.moment H :=
  canonical_of_padded canonicalInput28270 canonicalOutput28270 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28271 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28271 : ExponentCode := normalNode5479

theorem canonicalSound28271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28271.moment H = canonicalOutput28271.moment H :=
  canonical_of_padded canonicalInput28271 canonicalOutput28271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28272 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-2, 2, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28272 : ExponentCode := normalNode5477

theorem canonicalSound28272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28272.moment H = canonicalOutput28272.moment H :=
  canonical_of_padded canonicalInput28272 canonicalOutput28272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28273 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28273 : ExponentCode := normalNode4702

theorem canonicalSound28273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28273.moment H = canonicalOutput28273.moment H :=
  canonical_of_padded canonicalInput28273 canonicalOutput28273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28274 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28274 : ExponentCode := normalNode5727

theorem canonicalSound28274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28274.moment H = canonicalOutput28274.moment H :=
  canonical_of_padded canonicalInput28274 canonicalOutput28274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28275 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput28275 : ExponentCode := normalNode5513

theorem canonicalSound28275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28275.moment H = canonicalOutput28275.moment H :=
  canonical_of_padded canonicalInput28275 canonicalOutput28275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28276 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 2, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput28276 : ExponentCode := normalNode5511

theorem canonicalSound28276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28276.moment H = canonicalOutput28276.moment H :=
  canonical_of_padded canonicalInput28276 canonicalOutput28276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28277 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 2, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28277 : ExponentCode := normalNode5512

theorem canonicalSound28277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28277.moment H = canonicalOutput28277.moment H :=
  canonical_of_padded canonicalInput28277 canonicalOutput28277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28278 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput28278 : ExponentCode := normalNode2102

theorem canonicalSound28278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28278.moment H = canonicalOutput28278.moment H :=
  canonical_of_padded canonicalInput28278 canonicalOutput28278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28279 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28279 : ExponentCode := normalNode704

theorem canonicalSound28279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28279.moment H = canonicalOutput28279.moment H :=
  canonical_of_padded canonicalInput28279 canonicalOutput28279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28280 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput28280 : ExponentCode := normalNode1067

theorem canonicalSound28280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28280.moment H = canonicalOutput28280.moment H :=
  canonical_of_padded canonicalInput28280 canonicalOutput28280 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28281 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28281 : ExponentCode := normalNode11161

theorem canonicalSound28281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28281.moment H = canonicalOutput28281.moment H :=
  canonical_of_padded canonicalInput28281 canonicalOutput28281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28282 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput28282 : ExponentCode := normalNode5908

theorem canonicalSound28282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28282.moment H = canonicalOutput28282.moment H :=
  canonical_of_padded canonicalInput28282 canonicalOutput28282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28283 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput28283 : ExponentCode := normalNode2103

theorem canonicalSound28283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28283.moment H = canonicalOutput28283.moment H :=
  canonical_of_padded canonicalInput28283 canonicalOutput28283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28284 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput28284 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3406⟩

theorem canonicalSound28284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28284.moment H = canonicalOutput28284.moment H :=
  canonical_of_padded canonicalInput28284 canonicalOutput28284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28285 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -2, 2, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28285 : ExponentCode := normalNode705

theorem canonicalSound28285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28285.moment H = canonicalOutput28285.moment H :=
  canonical_of_padded canonicalInput28285 canonicalOutput28285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28286 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 2, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput28286 : ExponentCode := normalNode5908

theorem canonicalSound28286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28286.moment H = canonicalOutput28286.moment H :=
  canonical_of_padded canonicalInput28286 canonicalOutput28286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28287 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -2, 1, 0], ![-2, 3, 1, -2]]⟩

def canonicalOutput28287 : ExponentCode := normalNode704

theorem canonicalSound28287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28287.moment H = canonicalOutput28287.moment H :=
  canonical_of_padded canonicalInput28287 canonicalOutput28287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
