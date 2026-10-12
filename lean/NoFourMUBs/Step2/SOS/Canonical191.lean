import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12224 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -3, -1, 4], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1157⟩

theorem canonicalSound12224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12224.moment H = canonicalOutput12224.moment H :=
  canonical_of_padded canonicalInput12224 canonicalOutput12224 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12225 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -3, -1, 4], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound12225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12225.moment H = canonicalOutput12225.moment H :=
  canonical_of_padded canonicalInput12225 canonicalOutput12225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12226 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -3, 0, 3], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12226 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound12226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12226.moment H = canonicalOutput12226.moment H :=
  canonical_of_padded canonicalInput12226 canonicalOutput12226 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12227 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -3, 1, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12227 : ExponentCode := normalNode5659

theorem canonicalSound12227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12227.moment H = canonicalOutput12227.moment H :=
  canonical_of_padded canonicalInput12227 canonicalOutput12227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12228 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -3, 1, 2], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12228 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1243

theorem canonicalSound12228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12228.moment H = canonicalOutput12228.moment H :=
  canonical_of_padded canonicalInput12228 canonicalOutput12228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12229 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12229 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound12229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12229.moment H = canonicalOutput12229.moment H :=
  canonical_of_padded canonicalInput12229 canonicalOutput12229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12230 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12230 : ExponentCode := normalNode5678

theorem canonicalSound12230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12230.moment H = canonicalOutput12230.moment H :=
  canonical_of_padded canonicalInput12230 canonicalOutput12230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12231 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12231 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩

theorem canonicalSound12231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12231.moment H = canonicalOutput12231.moment H :=
  canonical_of_padded canonicalInput12231 canonicalOutput12231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12232 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -3, 4], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12232 : ExponentCode := normalNode5877

theorem canonicalSound12232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12232.moment H = canonicalOutput12232.moment H :=
  canonical_of_padded canonicalInput12232 canonicalOutput12232 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12233 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -1, -3, 4], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12233 : ExponentCode := normalNode10989

theorem canonicalSound12233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12233.moment H = canonicalOutput12233.moment H :=
  canonical_of_padded canonicalInput12233 canonicalOutput12233 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12234 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -2, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12234 : ExponentCode := normalNode5844

theorem canonicalSound12234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12234.moment H = canonicalOutput12234.moment H :=
  canonical_of_padded canonicalInput12234 canonicalOutput12234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12235 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12235 : ExponentCode := normalNode5878

theorem canonicalSound12235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12235.moment H = canonicalOutput12235.moment H :=
  canonical_of_padded canonicalInput12235 canonicalOutput12235 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12236 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12236 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2350⟩

theorem canonicalSound12236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12236.moment H = canonicalOutput12236.moment H :=
  canonical_of_padded canonicalInput12236 canonicalOutput12236 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12237 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -1, -2, 3], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12237 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound12237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12237.moment H = canonicalOutput12237.moment H :=
  canonical_of_padded canonicalInput12237 canonicalOutput12237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12238 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -1, -2, 3], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12238 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound12238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12238.moment H = canonicalOutput12238.moment H :=
  canonical_of_padded canonicalInput12238 canonicalOutput12238 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12239 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput12239 : ExponentCode := normalNode5885

theorem canonicalSound12239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12239.moment H = canonicalOutput12239.moment H :=
  canonical_of_padded canonicalInput12239 canonicalOutput12239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12240 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput12240 : ExponentCode := normalNode5883

theorem canonicalSound12240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12240.moment H = canonicalOutput12240.moment H :=
  canonical_of_padded canonicalInput12240 canonicalOutput12240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12241 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12241 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1242

theorem canonicalSound12241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12241.moment H = canonicalOutput12241.moment H :=
  canonical_of_padded canonicalInput12241 canonicalOutput12241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12242 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound12242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12242.moment H = canonicalOutput12242.moment H :=
  canonical_of_padded canonicalInput12242 canonicalOutput12242 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12243 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput12243 : ExponentCode := normalNode5903

theorem canonicalSound12243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12243.moment H = canonicalOutput12243.moment H :=
  canonical_of_padded canonicalInput12243 canonicalOutput12243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12244 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput12244 : ExponentCode := normalNode5904

theorem canonicalSound12244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12244.moment H = canonicalOutput12244.moment H :=
  canonical_of_padded canonicalInput12244 canonicalOutput12244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12245 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput12245 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2356⟩

theorem canonicalSound12245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12245.moment H = canonicalOutput12245.moment H :=
  canonical_of_padded canonicalInput12245 canonicalOutput12245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12246 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput12246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound12246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12246.moment H = canonicalOutput12246.moment H :=
  canonical_of_padded canonicalInput12246 canonicalOutput12246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12247 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput12247 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1269

theorem canonicalSound12247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12247.moment H = canonicalOutput12247.moment H :=
  canonical_of_padded canonicalInput12247 canonicalOutput12247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12248 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, 0, -3, 3], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput12248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound12248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12248.moment H = canonicalOutput12248.moment H :=
  canonical_of_padded canonicalInput12248 canonicalOutput12248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12249 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput12249 : ExponentCode := normalNode5902

theorem canonicalSound12249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12249.moment H = canonicalOutput12249.moment H :=
  canonical_of_padded canonicalInput12249 canonicalOutput12249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12250 : ExponentCode := ⟨4, 4, ![![-2, 2, 1, -1], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12250 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound12250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12250.moment H = canonicalOutput12250.moment H :=
  canonical_of_padded canonicalInput12250 canonicalOutput12250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12251 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -4, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12251 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound12251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12251.moment H = canonicalOutput12251.moment H :=
  canonical_of_padded canonicalInput12251 canonicalOutput12251 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput12252 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -4, 1, 1, 1, 0], ![1, 2, -2, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12252 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound12252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12252.moment H = canonicalOutput12252.moment H :=
  canonical_of_padded canonicalInput12252 canonicalOutput12252 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12253 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -2, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12253.moment H = canonicalOutput12253.moment H :=
  canonical_of_padded canonicalInput12253 canonicalOutput12253 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput12254 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12254 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound12254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12254.moment H = canonicalOutput12254.moment H :=
  canonical_of_padded canonicalInput12254 canonicalOutput12254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation330⟩ (by decide +kernel) hH

def canonicalInput12255 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12255 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound12255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12255.moment H = canonicalOutput12255.moment H :=
  canonical_of_padded canonicalInput12255 canonicalOutput12255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation330⟩ (by decide +kernel) hH

def canonicalInput12256 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12256 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound12256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12256.moment H = canonicalOutput12256.moment H :=
  canonical_of_padded canonicalInput12256 canonicalOutput12256 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput12257 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -1, 1, -2, 1, 0], ![1, -1, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12257 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound12257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12257.moment H = canonicalOutput12257.moment H :=
  canonical_of_padded canonicalInput12257 canonicalOutput12257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput12258 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, 1, -2, 0], ![1, -1, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12258 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12258.moment H = canonicalOutput12258.moment H :=
  canonical_of_padded canonicalInput12258 canonicalOutput12258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput12259 : ExponentCode := ⟨4, 4, ![![-2, 2, 2, -2], ![0, -3, -1, 4], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12259 : ExponentCode := normalNode7419

theorem canonicalSound12259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12259.moment H = canonicalOutput12259.moment H :=
  canonical_of_padded canonicalInput12259 canonicalOutput12259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12260 : ExponentCode := ⟨4, 4, ![![-2, 2, 2, -2], ![0, -1, -3, 4], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12260 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound12260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12260.moment H = canonicalOutput12260.moment H :=
  canonical_of_padded canonicalInput12260 canonicalOutput12260 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12261 : ExponentCode := ⟨4, 4, ![![-2, 2, 2, -2], ![0, -1, -3, 4], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12261 : ExponentCode := normalNode7419

theorem canonicalSound12261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12261.moment H = canonicalOutput12261.moment H :=
  canonical_of_padded canonicalInput12261 canonicalOutput12261 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12262 : ExponentCode := ⟨4, 4, ![![-2, 2, 2, -2], ![0, -1, -2, 3], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12262 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node714⟩

theorem canonicalSound12262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12262.moment H = canonicalOutput12262.moment H :=
  canonical_of_padded canonicalInput12262 canonicalOutput12262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12263 : ExponentCode := ⟨4, 4, ![![-2, 2, 2, -2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput12263 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1256

theorem canonicalSound12263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12263.moment H = canonicalOutput12263.moment H :=
  canonical_of_padded canonicalInput12263 canonicalOutput12263 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12264 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12264 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound12264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12264.moment H = canonicalOutput12264.moment H :=
  canonical_of_padded canonicalInput12264 canonicalOutput12264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12265 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12265 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound12265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12265.moment H = canonicalOutput12265.moment H :=
  canonical_of_padded canonicalInput12265 canonicalOutput12265 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation299, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12266 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12266 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound12266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12266.moment H = canonicalOutput12266.moment H :=
  canonical_of_padded canonicalInput12266 canonicalOutput12266 (by decide) (by decide)
    ⟨true, false, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput12267 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12267 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound12267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12267.moment H = canonicalOutput12267.moment H :=
  canonical_of_padded canonicalInput12267 canonicalOutput12267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput12268 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12268 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound12268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12268.moment H = canonicalOutput12268.moment H :=
  canonical_of_padded canonicalInput12268 canonicalOutput12268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput12269 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12269 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound12269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12269.moment H = canonicalOutput12269.moment H :=
  canonical_of_padded canonicalInput12269 canonicalOutput12269 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput12270 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12270 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound12270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12270.moment H = canonicalOutput12270.moment H :=
  canonical_of_padded canonicalInput12270 canonicalOutput12270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation70, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput12271 : ExponentCode := ⟨6, 6, ![![-2, 2, 2, -2, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12271 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound12271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12271.moment H = canonicalOutput12271.moment H :=
  canonical_of_padded canonicalInput12271 canonicalOutput12271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput12272 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, -2, -2, 4], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12272 : ExponentCode := normalNode9123

theorem canonicalSound12272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12272.moment H = canonicalOutput12272.moment H :=
  canonical_of_padded canonicalInput12272 canonicalOutput12272 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12273 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12273 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1350

theorem canonicalSound12273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12273.moment H = canonicalOutput12273.moment H :=
  canonical_of_padded canonicalInput12273 canonicalOutput12273 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12274 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput12274 : ExponentCode := normalNode11184

theorem canonicalSound12274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12274.moment H = canonicalOutput12274.moment H :=
  canonical_of_padded canonicalInput12274 canonicalOutput12274 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12275 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput12275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1083

theorem canonicalSound12275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12275.moment H = canonicalOutput12275.moment H :=
  canonical_of_padded canonicalInput12275 canonicalOutput12275 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12276 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound12276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12276.moment H = canonicalOutput12276.moment H :=
  canonical_of_padded canonicalInput12276 canonicalOutput12276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12277 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput12277 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound12277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12277.moment H = canonicalOutput12277.moment H :=
  canonical_of_padded canonicalInput12277 canonicalOutput12277 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12278 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, 1, 0, -1], ![1, -3, -2, 4], ![1, 0, -1, 0]]⟩

def canonicalOutput12278 : ExponentCode := normalNode9717

theorem canonicalSound12278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12278.moment H = canonicalOutput12278.moment H :=
  canonical_of_padded canonicalInput12278 canonicalOutput12278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12279 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 0, -2, 1]]⟩

def canonicalOutput12279 : ExponentCode := normalNode10918

theorem canonicalSound12279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12279.moment H = canonicalOutput12279.moment H :=
  canonical_of_padded canonicalInput12279 canonicalOutput12279 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12280 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput12280 : ExponentCode := normalNode11179

theorem canonicalSound12280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12280.moment H = canonicalOutput12280.moment H :=
  canonical_of_padded canonicalInput12280 canonicalOutput12280 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12281 : ExponentCode := ⟨4, 4, ![![-2, 2, 3, -3], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, -1, -2, 2]]⟩

def canonicalOutput12281 : ExponentCode := normalNode11180

theorem canonicalSound12281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12281.moment H = canonicalOutput12281.moment H :=
  canonical_of_padded canonicalInput12281 canonicalOutput12281 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12282 : ExponentCode := ⟨2, 4, ![![-2, 2, 3, -3], ![2, -2, -3, 3]]⟩

def canonicalOutput12282 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node23⟩

theorem canonicalSound12282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12282.moment H = canonicalOutput12282.moment H :=
  canonical_of_padded canonicalInput12282 canonicalOutput12282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12283 : ExponentCode := ⟨5, 3, ![![-2, 3, -1], ![-1, -4, 5], ![1, 0, -1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput12283 : ExponentCode := normalNode5967

theorem canonicalSound12283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12283.moment H = canonicalOutput12283.moment H :=
  canonical_of_padded canonicalInput12283 canonicalOutput12283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12284 : ExponentCode := ⟨4, 3, ![![-2, 3, -1], ![-1, -4, 5], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput12284 : ExponentCode := normalNode2988

theorem canonicalSound12284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12284.moment H = canonicalOutput12284.moment H :=
  canonical_of_padded canonicalInput12284 canonicalOutput12284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12285 : ExponentCode := ⟨5, 3, ![![-2, 3, -1], ![-1, -4, 5], ![1, 1, -2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12285 : ExponentCode := normalNode5967

theorem canonicalSound12285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12285.moment H = canonicalOutput12285.moment H :=
  canonical_of_padded canonicalInput12285 canonicalOutput12285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12286 : ExponentCode := ⟨4, 3, ![![-2, 3, -1], ![-1, -4, 5], ![2, 0, -2], ![1, 1, -2]]⟩

def canonicalOutput12286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound12286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12286.moment H = canonicalOutput12286.moment H :=
  canonical_of_padded canonicalInput12286 canonicalOutput12286 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12287 : ExponentCode := ⟨5, 3, ![![-2, 3, -1], ![-1, -3, 4], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12287 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩

theorem canonicalSound12287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12287.moment H = canonicalOutput12287.moment H :=
  canonical_of_padded canonicalInput12287 canonicalOutput12287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
