import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9216 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 1, 0], ![1, 2, -2, 1, -2], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound9216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9216.moment H = canonicalOutput9216.moment H :=
  canonical_of_padded canonicalInput9216 canonicalOutput9216 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9217 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![2, -2, 0, 0, 0], ![-1, 1, -2, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9217 : ExponentCode := normalNode4461

theorem canonicalSound9217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9217.moment H = canonicalOutput9217.moment H :=
  canonical_of_padded canonicalInput9217 canonicalOutput9217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9218 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![2, 0, -2, 0, 0], ![0, -3, 1, 1, 1], ![0, 3, 0, -2, -1]]⟩

def canonicalOutput9218 : ExponentCode := normalNode5494

theorem canonicalSound9218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9218.moment H = canonicalOutput9218.moment H :=
  canonical_of_padded canonicalInput9218 canonicalOutput9218 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9219 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 2, 1, -2, 0], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput9219 : ExponentCode := normalNode5852

theorem canonicalSound9219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9219.moment H = canonicalOutput9219.moment H :=
  canonical_of_padded canonicalInput9219 canonicalOutput9219 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9220 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![2, 0, -1, 0, -1], ![0, 2, 1, -2, -1], ![0, -2, -1, 1, 2]]⟩

def canonicalOutput9220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound9220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9220.moment H = canonicalOutput9220.moment H :=
  canonical_of_padded canonicalInput9220 canonicalOutput9220 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9221 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![-1, 2, -2, -1, 2], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput9221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound9221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9221.moment H = canonicalOutput9221.moment H :=
  canonical_of_padded canonicalInput9221 canonicalOutput9221 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9222 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![0, -2, 1, -1, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput9222 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound9222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9222.moment H = canonicalOutput9222.moment H :=
  canonical_of_padded canonicalInput9222 canonicalOutput9222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9223 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, -1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9223 : ExponentCode := normalNode9206

theorem canonicalSound9223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9223.moment H = canonicalOutput9223.moment H :=
  canonical_of_padded canonicalInput9223 canonicalOutput9223 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput9224 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, -1, -1, 3], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9224 : ExponentCode := normalNode8006

theorem canonicalSound9224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9224.moment H = canonicalOutput9224.moment H :=
  canonical_of_padded canonicalInput9224 canonicalOutput9224 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput9225 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9225 : ExponentCode := normalNode9208

theorem canonicalSound9225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9225.moment H = canonicalOutput9225.moment H :=
  canonical_of_padded canonicalInput9225 canonicalOutput9225 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput9226 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9226 : ExponentCode := normalNode9207

theorem canonicalSound9226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9226.moment H = canonicalOutput9226.moment H :=
  canonical_of_padded canonicalInput9226 canonicalOutput9226 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput9227 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput9227 : ExponentCode := normalNode8103

theorem canonicalSound9227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9227.moment H = canonicalOutput9227.moment H :=
  canonical_of_padded canonicalInput9227 canonicalOutput9227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput9228 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput9228 : ExponentCode := normalNode8166

theorem canonicalSound9228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9228.moment H = canonicalOutput9228.moment H :=
  canonical_of_padded canonicalInput9228 canonicalOutput9228 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput9229 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput9229 : ExponentCode := normalNode8190

theorem canonicalSound9229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9229.moment H = canonicalOutput9229.moment H :=
  canonical_of_padded canonicalInput9229 canonicalOutput9229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput9230 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput9230 : ExponentCode := normalNode8233

theorem canonicalSound9230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9230.moment H = canonicalOutput9230.moment H :=
  canonical_of_padded canonicalInput9230 canonicalOutput9230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput9231 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput9231 : ExponentCode := normalNode8544

theorem canonicalSound9231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9231.moment H = canonicalOutput9231.moment H :=
  canonical_of_padded canonicalInput9231 canonicalOutput9231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation75, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput9232 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput9232 : ExponentCode := normalNode8402

theorem canonicalSound9232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9232.moment H = canonicalOutput9232.moment H :=
  canonical_of_padded canonicalInput9232 canonicalOutput9232 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput9233 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![0, 2, -2, -1, 1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput9233 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node624⟩

theorem canonicalSound9233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9233.moment H = canonicalOutput9233.moment H :=
  canonical_of_padded canonicalInput9233 canonicalOutput9233 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9234 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![0, 2, -2, 0, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9234 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound9234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9234.moment H = canonicalOutput9234.moment H :=
  canonical_of_padded canonicalInput9234 canonicalOutput9234 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9235 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![1, -2, 1, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput9235 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound9235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9235.moment H = canonicalOutput9235.moment H :=
  canonical_of_padded canonicalInput9235 canonicalOutput9235 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9236 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![1, -2, 1, 0, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput9236 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound9236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9236.moment H = canonicalOutput9236.moment H :=
  canonical_of_padded canonicalInput9236 canonicalOutput9236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9237 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![1, 2, -3, 0, 0], ![1, -2, 2, -2, 1]]⟩

def canonicalOutput9237 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node367⟩

theorem canonicalSound9237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9237.moment H = canonicalOutput9237.moment H :=
  canonical_of_padded canonicalInput9237 canonicalOutput9237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9238 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![1, 2, -2, 0, -1], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9238 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound9238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9238.moment H = canonicalOutput9238.moment H :=
  canonical_of_padded canonicalInput9238 canonicalOutput9238 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9239 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 2, -1], ![2, -2, 1, 0, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput9239 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound9239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9239.moment H = canonicalOutput9239.moment H :=
  canonical_of_padded canonicalInput9239 canonicalOutput9239 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9240 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -3, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9240 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound9240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9240.moment H = canonicalOutput9240.moment H :=
  canonical_of_padded canonicalInput9240 canonicalOutput9240 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput9241 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -3, 1, -1, 2, 0], ![1, 3, -2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9241 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound9241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9241.moment H = canonicalOutput9241.moment H :=
  canonical_of_padded canonicalInput9241 canonicalOutput9241 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput9242 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound9242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9242.moment H = canonicalOutput9242.moment H :=
  canonical_of_padded canonicalInput9242 canonicalOutput9242 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput9243 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound9243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9243.moment H = canonicalOutput9243.moment H :=
  canonical_of_padded canonicalInput9243 canonicalOutput9243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation328⟩ (by decide +kernel) hH

def canonicalInput9244 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9244 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound9244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9244.moment H = canonicalOutput9244.moment H :=
  canonical_of_padded canonicalInput9244 canonicalOutput9244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation328⟩ (by decide +kernel) hH

def canonicalInput9245 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -2, -1, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9245 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound9245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9245.moment H = canonicalOutput9245.moment H :=
  canonical_of_padded canonicalInput9245 canonicalOutput9245 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput9246 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, 0, 1, -1, -1, 0], ![1, 0, -2, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9246 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound9246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9246.moment H = canonicalOutput9246.moment H :=
  canonical_of_padded canonicalInput9246 canonicalOutput9246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9247 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, 2, -1, 0], ![1, 0, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9247 : ExponentCode := normalNode4310

theorem canonicalSound9247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9247.moment H = canonicalOutput9247.moment H :=
  canonical_of_padded canonicalInput9247 canonicalOutput9247 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput9248 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -2, 3], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput9248 : ExponentCode := normalNode118

theorem canonicalSound9248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9248.moment H = canonicalOutput9248.moment H :=
  canonical_of_padded canonicalInput9248 canonicalOutput9248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9249 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, -2, 3], ![1, -1, 0], ![2, 3, -5]]⟩

def canonicalOutput9249 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound9249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9249.moment H = canonicalOutput9249.moment H :=
  canonical_of_padded canonicalInput9249 canonicalOutput9249 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9250 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, -2, 3], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput9250 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound9250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9250.moment H = canonicalOutput9250.moment H :=
  canonical_of_padded canonicalInput9250 canonicalOutput9250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9251 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -1, 2], ![0, 1, -1], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput9251 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node529⟩

theorem canonicalSound9251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9251.moment H = canonicalOutput9251.moment H :=
  canonical_of_padded canonicalInput9251 canonicalOutput9251 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9252 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -1, 2], ![0, 4, -4], ![2, -2, 0], ![1, -1, 0]]⟩

def canonicalOutput9252 : ExponentCode := normalNode4585

theorem canonicalSound9252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9252.moment H = canonicalOutput9252.moment H :=
  canonical_of_padded canonicalInput9252 canonicalOutput9252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9253 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, -1, 2], ![0, 4, -4], ![3, -3, 0]]⟩

def canonicalOutput9253 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound9253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9253.moment H = canonicalOutput9253.moment H :=
  canonical_of_padded canonicalInput9253 canonicalOutput9253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9254 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -1, 2], ![1, -2, 1], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput9254 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node308⟩

theorem canonicalSound9254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9254.moment H = canonicalOutput9254.moment H :=
  canonical_of_padded canonicalInput9254 canonicalOutput9254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9255 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, -1, 2], ![1, -2, 1], ![2, 3, -5]]⟩

def canonicalOutput9255 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound9255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9255.moment H = canonicalOutput9255.moment H :=
  canonical_of_padded canonicalInput9255 canonicalOutput9255 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9256 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -1, 2], ![1, -1, 0], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput9256 : ExponentCode := normalNode4586

theorem canonicalSound9256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9256.moment H = canonicalOutput9256.moment H :=
  canonical_of_padded canonicalInput9256 canonicalOutput9256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9257 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, -1, 2], ![1, 3, -4], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput9257 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node322⟩

theorem canonicalSound9257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9257.moment H = canonicalOutput9257.moment H :=
  canonical_of_padded canonicalInput9257 canonicalOutput9257 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9258 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, -1, 2], ![2, -3, 1], ![1, 4, -5]]⟩

def canonicalOutput9258 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound9258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9258.moment H = canonicalOutput9258.moment H :=
  canonical_of_padded canonicalInput9258 canonicalOutput9258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9259 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput9259 : ExponentCode := normalNode4587

theorem canonicalSound9259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9259.moment H = canonicalOutput9259.moment H :=
  canonical_of_padded canonicalInput9259 canonicalOutput9259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9260 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 0, 1], ![0, -1, 1], ![1, 3, -4], ![2, -2, 0]]⟩

def canonicalOutput9260 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node317⟩

theorem canonicalSound9260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9260.moment H = canonicalOutput9260.moment H :=
  canonical_of_padded canonicalInput9260 canonicalOutput9260 (by decide) (by decide)
    ⟨false, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9261 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 0, 1], ![1, -3, 2], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput9261 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node305⟩

theorem canonicalSound9261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9261.moment H = canonicalOutput9261.moment H :=
  canonical_of_padded canonicalInput9261 canonicalOutput9261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9262 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 0, 1], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput9262 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node316⟩

theorem canonicalSound9262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9262.moment H = canonicalOutput9262.moment H :=
  canonical_of_padded canonicalInput9262 canonicalOutput9262 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9263 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![0, -2, 2], ![2, 3, -5]]⟩

def canonicalOutput9263 : ExponentCode := normalNode312

theorem canonicalSound9263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9263.moment H = canonicalOutput9263.moment H :=
  canonical_of_padded canonicalInput9263 canonicalOutput9263 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9264 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 1, 0], ![0, -1, 1], ![1, 0, -1], ![1, -3, 2], ![1, 3, -4]]⟩

def canonicalOutput9264 : ExponentCode := normalNode4594

theorem canonicalSound9264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9264.moment H = canonicalOutput9264.moment H :=
  canonical_of_padded canonicalInput9264 canonicalOutput9264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9265 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![0, -3, 3], ![2, 2, -4]]⟩

def canonicalOutput9265 : ExponentCode := normalNode963

theorem canonicalSound9265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9265.moment H = canonicalOutput9265.moment H :=
  canonical_of_padded canonicalInput9265 canonicalOutput9265 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9266 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 1, 0], ![1, -2, 1], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput9266 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node366⟩

theorem canonicalSound9266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9266.moment H = canonicalOutput9266.moment H :=
  canonical_of_padded canonicalInput9266 canonicalOutput9266 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9267 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![1, 3, -4]]⟩

def canonicalOutput9267 : ExponentCode := normalNode4591

theorem canonicalSound9267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9267.moment H = canonicalOutput9267.moment H :=
  canonical_of_padded canonicalInput9267 canonicalOutput9267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9268 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![-1, 1, 0], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput9268 : ExponentCode := normalNode4597

theorem canonicalSound9268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9268.moment H = canonicalOutput9268.moment H :=
  canonical_of_padded canonicalInput9268 canonicalOutput9268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9269 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 2, -1], ![0, -2, 2], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput9269 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node533⟩

theorem canonicalSound9269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9269.moment H = canonicalOutput9269.moment H :=
  canonical_of_padded canonicalInput9269 canonicalOutput9269 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9270 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 2, -1], ![0, -2, 2], ![2, -2, 0], ![1, 2, -3]]⟩

def canonicalOutput9270 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1035

theorem canonicalSound9270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9270.moment H = canonicalOutput9270.moment H :=
  canonical_of_padded canonicalInput9270 canonicalOutput9270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9271 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, 2, -1], ![1, -3, 2], ![2, 1, -3]]⟩

def canonicalOutput9271 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound9271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9271.moment H = canonicalOutput9271.moment H :=
  canonical_of_padded canonicalInput9271 canonicalOutput9271 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9272 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, 2, -1], ![1, 2, -3], ![2, -4, 2]]⟩

def canonicalOutput9272 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound9272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9272.moment H = canonicalOutput9272.moment H :=
  canonical_of_padded canonicalInput9272 canonicalOutput9272 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9273 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, 2, -1], ![2, -4, 2], ![1, 2, -3]]⟩

def canonicalOutput9273 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound9273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9273.moment H = canonicalOutput9273.moment H :=
  canonical_of_padded canonicalInput9273 canonicalOutput9273 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9274 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 3, -2], ![0, -2, 2], ![1, -1, 0], ![2, 0, -2]]⟩

def canonicalOutput9274 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node357⟩

theorem canonicalSound9274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9274.moment H = canonicalOutput9274.moment H :=
  canonical_of_padded canonicalInput9274 canonicalOutput9274 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9275 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 3, -2], ![0, -2, 2], ![2, -2, 0], ![1, 1, -2]]⟩

def canonicalOutput9275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1035

theorem canonicalSound9275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9275.moment H = canonicalOutput9275.moment H :=
  canonical_of_padded canonicalInput9275 canonicalOutput9275 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9276 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![-1, 3, -2], ![1, 1, -2], ![2, -4, 2]]⟩

def canonicalOutput9276 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound9276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9276.moment H = canonicalOutput9276.moment H :=
  canonical_of_padded canonicalInput9276 canonicalOutput9276 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9277 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![-1, 4, -3], ![1, -3, 2], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput9277 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node629⟩

theorem canonicalSound9277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9277.moment H = canonicalOutput9277.moment H :=
  canonical_of_padded canonicalInput9277 canonicalOutput9277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9278 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, -4, 4], ![1, 4, -5], ![1, 0, -1]]⟩

def canonicalOutput9278 : ExponentCode := normalNode4610

theorem canonicalSound9278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9278.moment H = canonicalOutput9278.moment H :=
  canonical_of_padded canonicalInput9278 canonicalOutput9278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9279 : ExponentCode := ⟨3, 3, ![![-2, 0, 2], ![0, -4, 4], ![2, 4, -6]]⟩

def canonicalOutput9279 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code97

theorem canonicalSound9279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9279.moment H = canonicalOutput9279.moment H :=
  canonical_of_padded canonicalInput9279 canonicalOutput9279 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
