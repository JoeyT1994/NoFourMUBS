import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23296 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23296 : ExponentCode := normalNode8067

theorem canonicalSound23296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23296.moment H = canonicalOutput23296.moment H :=
  canonical_of_padded canonicalInput23296 canonicalOutput23296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23297 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23297 : ExponentCode := normalNode8361

theorem canonicalSound23297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23297.moment H = canonicalOutput23297.moment H :=
  canonical_of_padded canonicalInput23297 canonicalOutput23297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23298 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23298 : ExponentCode := normalNode8066

theorem canonicalSound23298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23298.moment H = canonicalOutput23298.moment H :=
  canonical_of_padded canonicalInput23298 canonicalOutput23298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23299 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23299 : ExponentCode := normalNode8066

theorem canonicalSound23299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23299.moment H = canonicalOutput23299.moment H :=
  canonical_of_padded canonicalInput23299 canonicalOutput23299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23300 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23300 : ExponentCode := normalNode8361

theorem canonicalSound23300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23300.moment H = canonicalOutput23300.moment H :=
  canonical_of_padded canonicalInput23300 canonicalOutput23300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23301 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23301 : ExponentCode := normalNode8067

theorem canonicalSound23301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23301.moment H = canonicalOutput23301.moment H :=
  canonical_of_padded canonicalInput23301 canonicalOutput23301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23302 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23302 : ExponentCode := normalNode8066

theorem canonicalSound23302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23302.moment H = canonicalOutput23302.moment H :=
  canonical_of_padded canonicalInput23302 canonicalOutput23302 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23303 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23303 : ExponentCode := normalNode8361

theorem canonicalSound23303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23303.moment H = canonicalOutput23303.moment H :=
  canonical_of_padded canonicalInput23303 canonicalOutput23303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23304 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23304 : ExponentCode := normalNode8067

theorem canonicalSound23304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23304.moment H = canonicalOutput23304.moment H :=
  canonical_of_padded canonicalInput23304 canonicalOutput23304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23305 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23305 : ExponentCode := normalNode8067

theorem canonicalSound23305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23305.moment H = canonicalOutput23305.moment H :=
  canonical_of_padded canonicalInput23305 canonicalOutput23305 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23306 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23306 : ExponentCode := normalNode8361

theorem canonicalSound23306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23306.moment H = canonicalOutput23306.moment H :=
  canonical_of_padded canonicalInput23306 canonicalOutput23306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23307 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23307 : ExponentCode := normalNode8066

theorem canonicalSound23307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23307.moment H = canonicalOutput23307.moment H :=
  canonical_of_padded canonicalInput23307 canonicalOutput23307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23308 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23308 : ExponentCode := normalNode8064

theorem canonicalSound23308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23308.moment H = canonicalOutput23308.moment H :=
  canonical_of_padded canonicalInput23308 canonicalOutput23308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23309 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23309 : ExponentCode := normalNode8066

theorem canonicalSound23309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23309.moment H = canonicalOutput23309.moment H :=
  canonical_of_padded canonicalInput23309 canonicalOutput23309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23310 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23310 : ExponentCode := normalNode8066

theorem canonicalSound23310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23310.moment H = canonicalOutput23310.moment H :=
  canonical_of_padded canonicalInput23310 canonicalOutput23310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23311 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23311 : ExponentCode := normalNode8064

theorem canonicalSound23311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23311.moment H = canonicalOutput23311.moment H :=
  canonical_of_padded canonicalInput23311 canonicalOutput23311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23312 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23312 : ExponentCode := normalNode8068

theorem canonicalSound23312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23312.moment H = canonicalOutput23312.moment H :=
  canonical_of_padded canonicalInput23312 canonicalOutput23312 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput23313 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23313 : ExponentCode := normalNode8458

theorem canonicalSound23313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23313.moment H = canonicalOutput23313.moment H :=
  canonical_of_padded canonicalInput23313 canonicalOutput23313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput23314 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23314 : ExponentCode := normalNode8346

theorem canonicalSound23314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23314.moment H = canonicalOutput23314.moment H :=
  canonical_of_padded canonicalInput23314 canonicalOutput23314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23315 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23315 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23315.moment H = canonicalOutput23315.moment H :=
  canonical_of_padded canonicalInput23315 canonicalOutput23315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23316 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23316 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23316.moment H = canonicalOutput23316.moment H :=
  canonical_of_padded canonicalInput23316 canonicalOutput23316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23317 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23317 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23317.moment H = canonicalOutput23317.moment H :=
  canonical_of_padded canonicalInput23317 canonicalOutput23317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput23318 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23318 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23318.moment H = canonicalOutput23318.moment H :=
  canonical_of_padded canonicalInput23318 canonicalOutput23318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput23319 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23319 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound23319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23319.moment H = canonicalOutput23319.moment H :=
  canonical_of_padded canonicalInput23319 canonicalOutput23319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput23320 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23320 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23320.moment H = canonicalOutput23320.moment H :=
  canonical_of_padded canonicalInput23320 canonicalOutput23320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23321 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![-1, -2, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23321 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound23321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23321.moment H = canonicalOutput23321.moment H :=
  canonical_of_padded canonicalInput23321 canonicalOutput23321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23322 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![-1, -2, 1, 1, 1, 0], ![2, 1, -2, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23322 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23322.moment H = canonicalOutput23322.moment H :=
  canonical_of_padded canonicalInput23322 canonicalOutput23322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23323 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -2, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23323 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound23323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23323.moment H = canonicalOutput23323.moment H :=
  canonical_of_padded canonicalInput23323 canonicalOutput23323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23324 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23324 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound23324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23324.moment H = canonicalOutput23324.moment H :=
  canonical_of_padded canonicalInput23324 canonicalOutput23324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23325 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23325 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound23325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23325.moment H = canonicalOutput23325.moment H :=
  canonical_of_padded canonicalInput23325 canonicalOutput23325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23326 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23326.moment H = canonicalOutput23326.moment H :=
  canonical_of_padded canonicalInput23326 canonicalOutput23326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23327 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![2, -2, 1, 1, -2, 0], ![-1, 1, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23327 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23327.moment H = canonicalOutput23327.moment H :=
  canonical_of_padded canonicalInput23327 canonicalOutput23327 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23328 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, -2, 1, 0], ![2, -2, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23328 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23328.moment H = canonicalOutput23328.moment H :=
  canonical_of_padded canonicalInput23328 canonicalOutput23328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23329 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-4, 1, 1, 2], ![5, -2, -2, -1]]⟩

def canonicalOutput23329 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound23329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23329.moment H = canonicalOutput23329.moment H :=
  canonical_of_padded canonicalInput23329 canonicalOutput23329 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23330 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-4, 1, 2, 1], ![5, -2, -3, 0]]⟩

def canonicalOutput23330 : ExponentCode := normalNode5980

theorem canonicalSound23330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23330.moment H = canonicalOutput23330.moment H :=
  canonical_of_padded canonicalInput23330 canonicalOutput23330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23331 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-3, -2, 3, 2], ![4, 1, -4, -1]]⟩

def canonicalOutput23331 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound23331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23331.moment H = canonicalOutput23331.moment H :=
  canonical_of_padded canonicalInput23331 canonicalOutput23331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23332 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-2, -3, 3, 2], ![3, 2, -4, -1]]⟩

def canonicalOutput23332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound23332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23332.moment H = canonicalOutput23332.moment H :=
  canonical_of_padded canonicalInput23332 canonicalOutput23332 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23333 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-2, -2, 4, 0], ![3, 1, -5, 1]]⟩

def canonicalOutput23333 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound23333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23333.moment H = canonicalOutput23333.moment H :=
  canonical_of_padded canonicalInput23333 canonicalOutput23333 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23334 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-1, -4, 1, 4], ![2, 3, -2, -3]]⟩

def canonicalOutput23334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound23334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23334.moment H = canonicalOutput23334.moment H :=
  canonical_of_padded canonicalInput23334 canonicalOutput23334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23335 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-1, -4, 2, 3], ![2, 3, -3, -2]]⟩

def canonicalOutput23335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound23335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23335.moment H = canonicalOutput23335.moment H :=
  canonical_of_padded canonicalInput23335 canonicalOutput23335 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23336 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-1, -4, 3, 2], ![2, 3, -4, -1]]⟩

def canonicalOutput23336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1294

theorem canonicalSound23336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23336.moment H = canonicalOutput23336.moment H :=
  canonical_of_padded canonicalInput23336 canonicalOutput23336 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23337 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-1, -3, 4, 0], ![2, 2, -5, 1]]⟩

def canonicalOutput23337 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound23337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23337.moment H = canonicalOutput23337.moment H :=
  canonical_of_padded canonicalInput23337 canonicalOutput23337 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23338 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![-1, -2, 4, -1], ![2, 1, -5, 2]]⟩

def canonicalOutput23338 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound23338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23338.moment H = canonicalOutput23338.moment H :=
  canonical_of_padded canonicalInput23338 canonicalOutput23338 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23339 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![-1, 1, -1, 1], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput23339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1379

theorem canonicalSound23339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23339.moment H = canonicalOutput23339.moment H :=
  canonical_of_padded canonicalInput23339 canonicalOutput23339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23340 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput23340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound23340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23340.moment H = canonicalOutput23340.moment H :=
  canonical_of_padded canonicalInput23340 canonicalOutput23340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23341 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![0, -4, 1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput23341 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound23341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23341.moment H = canonicalOutput23341.moment H :=
  canonical_of_padded canonicalInput23341 canonicalOutput23341 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23342 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![0, -4, 3, 1], ![1, 3, -4, 0]]⟩

def canonicalOutput23342 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound23342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23342.moment H = canonicalOutput23342.moment H :=
  canonical_of_padded canonicalInput23342 canonicalOutput23342 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23343 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, -3, 0, 3], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput23343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound23343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23343.moment H = canonicalOutput23343.moment H :=
  canonical_of_padded canonicalInput23343 canonicalOutput23343 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23344 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![0, -3, 4, -1], ![1, 2, -5, 2]]⟩

def canonicalOutput23344 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound23344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23344.moment H = canonicalOutput23344.moment H :=
  canonical_of_padded canonicalInput23344 canonicalOutput23344 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23345 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![0, -2, 4, -2], ![1, 1, -5, 3]]⟩

def canonicalOutput23345 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound23345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23345.moment H = canonicalOutput23345.moment H :=
  canonical_of_padded canonicalInput23345 canonicalOutput23345 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23346 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound23346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23346.moment H = canonicalOutput23346.moment H :=
  canonical_of_padded canonicalInput23346 canonicalOutput23346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput23347 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput23347 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node987⟩

theorem canonicalSound23347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23347.moment H = canonicalOutput23347.moment H :=
  canonical_of_padded canonicalInput23347 canonicalOutput23347 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23348 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput23348 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound23348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23348.moment H = canonicalOutput23348.moment H :=
  canonical_of_padded canonicalInput23348 canonicalOutput23348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23349 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput23349 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩

theorem canonicalSound23349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23349.moment H = canonicalOutput23349.moment H :=
  canonical_of_padded canonicalInput23349 canonicalOutput23349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23350 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput23350 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound23350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23350.moment H = canonicalOutput23350.moment H :=
  canonical_of_padded canonicalInput23350 canonicalOutput23350 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23351 : ExponentCode := ⟨5, 4, ![![-1, 1, 1, -1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23351 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2857⟩

theorem canonicalSound23351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23351.moment H = canonicalOutput23351.moment H :=
  canonical_of_padded canonicalInput23351 canonicalOutput23351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23352 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput23352 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound23352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23352.moment H = canonicalOutput23352.moment H :=
  canonical_of_padded canonicalInput23352 canonicalOutput23352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput23353 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -3, 2], ![0, 0, 2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput23353 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound23353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23353.moment H = canonicalOutput23353.moment H :=
  canonical_of_padded canonicalInput23353 canonicalOutput23353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23354 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput23354 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound23354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23354.moment H = canonicalOutput23354.moment H :=
  canonical_of_padded canonicalInput23354 canonicalOutput23354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23355 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -1, 0], ![0, -1, -3, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput23355 : ExponentCode := normalNode9474

theorem canonicalSound23355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23355.moment H = canonicalOutput23355.moment H :=
  canonical_of_padded canonicalInput23355 canonicalOutput23355 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput23356 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput23356 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound23356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23356.moment H = canonicalOutput23356.moment H :=
  canonical_of_padded canonicalInput23356 canonicalOutput23356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput23357 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, -3, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput23357 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound23357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23357.moment H = canonicalOutput23357.moment H :=
  canonical_of_padded canonicalInput23357 canonicalOutput23357 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput23358 : ExponentCode := ⟨4, 4, ![![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput23358 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound23358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23358.moment H = canonicalOutput23358.moment H :=
  canonical_of_padded canonicalInput23358 canonicalOutput23358 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23359 : ExponentCode := ⟨3, 4, ![![-1, 1, 1, -1], ![1, -4, 1, 2], ![0, 3, -2, -1]]⟩

def canonicalOutput23359 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound23359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23359.moment H = canonicalOutput23359.moment H :=
  canonical_of_padded canonicalInput23359 canonicalOutput23359 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
