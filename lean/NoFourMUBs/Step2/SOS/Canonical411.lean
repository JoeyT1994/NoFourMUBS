import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26304 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, -1, 1, -1, 2], ![1, 1, -2, -1, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput26304 : ExponentCode := normalNode2761

theorem canonicalSound26304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26304.moment H = canonicalOutput26304.moment H :=
  canonical_of_padded canonicalInput26304 canonicalOutput26304 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput26305 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-1, -1, 2, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput26305 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound26305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26305.moment H = canonicalOutput26305.moment H :=
  canonical_of_padded canonicalInput26305 canonicalOutput26305 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26306 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-1, -1, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput26306 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node705⟩

theorem canonicalSound26306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26306.moment H = canonicalOutput26306.moment H :=
  canonical_of_padded canonicalInput26306 canonicalOutput26306 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26307 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 0, -1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput26307 : ExponentCode := normalNode10108

theorem canonicalSound26307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26307.moment H = canonicalOutput26307.moment H :=
  canonical_of_padded canonicalInput26307 canonicalOutput26307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26308 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, -1, 0], ![2, -1, -1, 0, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput26308 : ExponentCode := normalNode4212

theorem canonicalSound26308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26308.moment H = canonicalOutput26308.moment H :=
  canonical_of_padded canonicalInput26308 canonicalOutput26308 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26309 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, -1, 0], ![2, -1, 0, -1, 0], ![-1, 2, -2, 0, 1]]⟩

def canonicalOutput26309 : ExponentCode := normalNode4090

theorem canonicalSound26309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26309.moment H = canonicalOutput26309.moment H :=
  canonical_of_padded canonicalInput26309 canonicalOutput26309 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput26310 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput26310 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound26310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26310.moment H = canonicalOutput26310.moment H :=
  canonical_of_padded canonicalInput26310 canonicalOutput26310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput26311 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput26311 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound26311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26311.moment H = canonicalOutput26311.moment H :=
  canonical_of_padded canonicalInput26311 canonicalOutput26311 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26312 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput26312 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound26312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26312.moment H = canonicalOutput26312.moment H :=
  canonical_of_padded canonicalInput26312 canonicalOutput26312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput26313 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput26313 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound26313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26313.moment H = canonicalOutput26313.moment H :=
  canonical_of_padded canonicalInput26313 canonicalOutput26313 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput26314 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 0, 2, 0, -1], ![0, 2, 0, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26314 : ExponentCode := normalNode3768

theorem canonicalSound26314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26314.moment H = canonicalOutput26314.moment H :=
  canonical_of_padded canonicalInput26314 canonicalOutput26314 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26315 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 1, 1, -1, 0], ![-1, -1, 1, -1, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput26315 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound26315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26315.moment H = canonicalOutput26315.moment H :=
  canonical_of_padded canonicalInput26315 canonicalOutput26315 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26316 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 1, 1, 0, -1], ![-1, -1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput26316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound26316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26316.moment H = canonicalOutput26316.moment H :=
  canonical_of_padded canonicalInput26316 canonicalOutput26316 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26317 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 1, 2, -1, -1], ![-1, -1, -1, -1, 4], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput26317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code945

theorem canonicalSound26317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26317.moment H = canonicalOutput26317.moment H :=
  canonical_of_padded canonicalInput26317 canonicalOutput26317 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26318 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 1, 2, -1, -1], ![0, -1, -1, -1, 3], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput26318 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound26318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26318.moment H = canonicalOutput26318.moment H :=
  canonical_of_padded canonicalInput26318 canonicalOutput26318 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26319 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-1, 2, -2, 0, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput26319 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node670⟩

theorem canonicalSound26319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26319.moment H = canonicalOutput26319.moment H :=
  canonical_of_padded canonicalInput26319 canonicalOutput26319 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26320 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 2, 0, -1, 0], ![-2, -1, 2, 0, 1], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput26320 : ExponentCode := normalNode5476

theorem canonicalSound26320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26320.moment H = canonicalOutput26320.moment H :=
  canonical_of_padded canonicalInput26320 canonicalOutput26320 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26321 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 2, 0, -1, 0], ![2, 0, -2, 0, 0], ![-1, -1, 2, -1, 1]]⟩

def canonicalOutput26321 : ExponentCode := normalNode3873

theorem canonicalSound26321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26321.moment H = canonicalOutput26321.moment H :=
  canonical_of_padded canonicalInput26321 canonicalOutput26321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26322 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, 2, 0, -1, 0], ![3, 0, -2, 0, -1], ![-2, -1, 2, -1, 2]]⟩

def canonicalOutput26322 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1194

theorem canonicalSound26322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26322.moment H = canonicalOutput26322.moment H :=
  canonical_of_padded canonicalInput26322 canonicalOutput26322 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26323 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-1, 2, 2, -1, -2], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26323 : ExponentCode := normalNode5601

theorem canonicalSound26323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26323.moment H = canonicalOutput26323.moment H :=
  canonical_of_padded canonicalInput26323 canonicalOutput26323 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26324 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, -2, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput26324 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound26324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26324.moment H = canonicalOutput26324.moment H :=
  canonical_of_padded canonicalInput26324 canonicalOutput26324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26325 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![-1, 0, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput26325 : ExponentCode := normalNode8288

theorem canonicalSound26325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26325.moment H = canonicalOutput26325.moment H :=
  canonical_of_padded canonicalInput26325 canonicalOutput26325 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput26326 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![0, 0, 2, 0, -2], ![-1, 1, 0, -1, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput26326 : ExponentCode := normalNode10769

theorem canonicalSound26326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26326.moment H = canonicalOutput26326.moment H :=
  canonical_of_padded canonicalInput26326 canonicalOutput26326 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26327 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![0, 0, -2, 0, 2]]⟩

def canonicalOutput26327 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound26327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26327.moment H = canonicalOutput26327.moment H :=
  canonical_of_padded canonicalInput26327 canonicalOutput26327 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26328 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 1, -2, 1], ![-1, 2, 1, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput26328 : ExponentCode := normalNode5885

theorem canonicalSound26328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26328.moment H = canonicalOutput26328.moment H :=
  canonical_of_padded canonicalInput26328 canonicalOutput26328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26329 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 1, -1, 0], ![-1, -1, 1, -1, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput26329 : ExponentCode := normalNode10342

theorem canonicalSound26329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26329.moment H = canonicalOutput26329.moment H :=
  canonical_of_padded canonicalInput26329 canonicalOutput26329 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26330 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput26330 : ExponentCode := normalNode8998

theorem canonicalSound26330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26330.moment H = canonicalOutput26330.moment H :=
  canonical_of_padded canonicalInput26330 canonicalOutput26330 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26331 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput26331 : ExponentCode := normalNode4385

theorem canonicalSound26331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26331.moment H = canonicalOutput26331.moment H :=
  canonical_of_padded canonicalInput26331 canonicalOutput26331 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26332 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, -1, 1], ![-1, 2, -2, 0, 1]]⟩

def canonicalOutput26332 : ExponentCode := normalNode3901

theorem canonicalSound26332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26332.moment H = canonicalOutput26332.moment H :=
  canonical_of_padded canonicalInput26332 canonicalOutput26332 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput26333 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![2, -1, -1, 0, 0], ![-2, 2, -1, -1, 2]]⟩

def canonicalOutput26333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound26333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26333.moment H = canonicalOutput26333.moment H :=
  canonical_of_padded canonicalInput26333 canonicalOutput26333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26334 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![2, -1, 0, -1, 0], ![-2, 2, -2, 0, 2]]⟩

def canonicalOutput26334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code842

theorem canonicalSound26334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26334.moment H = canonicalOutput26334.moment H :=
  canonical_of_padded canonicalInput26334 canonicalOutput26334 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput26335 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, -2, 0, 2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput26335 : ExponentCode := normalNode2371

theorem canonicalSound26335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26335.moment H = canonicalOutput26335.moment H :=
  canonical_of_padded canonicalInput26335 canonicalOutput26335 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26336 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, -1, -1, 2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput26336 : ExponentCode := normalNode2373

theorem canonicalSound26336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26336.moment H = canonicalOutput26336.moment H :=
  canonical_of_padded canonicalInput26336 canonicalOutput26336 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26337 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, 0, -2, 2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput26337 : ExponentCode := normalNode2375

theorem canonicalSound26337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26337.moment H = canonicalOutput26337.moment H :=
  canonical_of_padded canonicalInput26337 canonicalOutput26337 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26338 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, 0, -1, 1], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput26338 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound26338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26338.moment H = canonicalOutput26338.moment H :=
  canonical_of_padded canonicalInput26338 canonicalOutput26338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26339 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![-1, 2, 0, -1, 0], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26339 : ExponentCode := normalNode1827

theorem canonicalSound26339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26339.moment H = canonicalOutput26339.moment H :=
  canonical_of_padded canonicalInput26339 canonicalOutput26339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26340 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -2, 0, 1], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput26340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound26340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26340.moment H = canonicalOutput26340.moment H :=
  canonical_of_padded canonicalInput26340 canonicalOutput26340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26341 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, 0, -1, -1, 2]]⟩

def canonicalOutput26341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound26341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26341.moment H = canonicalOutput26341.moment H :=
  canonical_of_padded canonicalInput26341 canonicalOutput26341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26342 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![0, 0, -2, 0, 2]]⟩

def canonicalOutput26342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound26342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26342.moment H = canonicalOutput26342.moment H :=
  canonical_of_padded canonicalInput26342 canonicalOutput26342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26343 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![0, 0, -2, -1, 3]]⟩

def canonicalOutput26343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound26343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26343.moment H = canonicalOutput26343.moment H :=
  canonical_of_padded canonicalInput26343 canonicalOutput26343 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26344 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1], ![0, -1, -2, -1, 4]]⟩

def canonicalOutput26344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node449⟩

theorem canonicalSound26344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26344.moment H = canonicalOutput26344.moment H :=
  canonical_of_padded canonicalInput26344 canonicalOutput26344 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26345 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, -2, 0, 1], ![-2, 1, 1, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput26345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code988

theorem canonicalSound26345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26345.moment H = canonicalOutput26345.moment H :=
  canonical_of_padded canonicalInput26345 canonicalOutput26345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26346 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, -2, 0, 1], ![-1, -1, 2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput26346 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1958⟩

theorem canonicalSound26346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26346.moment H = canonicalOutput26346.moment H :=
  canonical_of_padded canonicalInput26346 canonicalOutput26346 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26347 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 0, -2, 1], ![-1, -1, 2, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26347 : ExponentCode := normalNode5902

theorem canonicalSound26347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26347.moment H = canonicalOutput26347.moment H :=
  canonical_of_padded canonicalInput26347 canonicalOutput26347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26348 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 0, -2, 1], ![-1, -1, 3, 0, -1], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput26348 : ExponentCode := normalNode5960

theorem canonicalSound26348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26348.moment H = canonicalOutput26348.moment H :=
  canonical_of_padded canonicalInput26348 canonicalOutput26348 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26349 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 0, -2, 1], ![-1, 1, 2, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput26349 : ExponentCode := normalNode5902

theorem canonicalSound26349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26349.moment H = canonicalOutput26349.moment H :=
  canonical_of_padded canonicalInput26349 canonicalOutput26349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26350 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![-2, -1, 1, -1, 3], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput26350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1167

theorem canonicalSound26350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26350.moment H = canonicalOutput26350.moment H :=
  canonical_of_padded canonicalInput26350 canonicalOutput26350 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26351 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![-1, -1, 1, -1, 2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput26351 : ExponentCode := normalNode4311

theorem canonicalSound26351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26351.moment H = canonicalOutput26351.moment H :=
  canonical_of_padded canonicalInput26351 canonicalOutput26351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26352 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![-2, -1, 1, -1, 3], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput26352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code460

theorem canonicalSound26352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26352.moment H = canonicalOutput26352.moment H :=
  canonical_of_padded canonicalInput26352 canonicalOutput26352 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26353 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![-1, -1, 1, -1, 2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput26353 : ExponentCode := normalNode2761

theorem canonicalSound26353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26353.moment H = canonicalOutput26353.moment H :=
  canonical_of_padded canonicalInput26353 canonicalOutput26353 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26354 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![-3, -1, 2, 0, 2], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput26354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound26354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26354.moment H = canonicalOutput26354.moment H :=
  canonical_of_padded canonicalInput26354 canonicalOutput26354 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26355 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![-2, -1, 2, 0, 1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput26355 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound26355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26355.moment H = canonicalOutput26355.moment H :=
  canonical_of_padded canonicalInput26355 canonicalOutput26355 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26356 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1], ![-1, -1, 2, -1, 1]]⟩

def canonicalOutput26356 : ExponentCode := normalNode3994

theorem canonicalSound26356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26356.moment H = canonicalOutput26356.moment H :=
  canonical_of_padded canonicalInput26356 canonicalOutput26356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26357 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![2, 0, -2, 0, 0], ![-2, -1, 2, -1, 2]]⟩

def canonicalOutput26357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound26357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26357.moment H = canonicalOutput26357.moment H :=
  canonical_of_padded canonicalInput26357 canonicalOutput26357 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput26358 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![3, 0, -2, 0, -1], ![-3, -1, 2, -1, 3]]⟩

def canonicalOutput26358 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1179

theorem canonicalSound26358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26358.moment H = canonicalOutput26358.moment H :=
  canonical_of_padded canonicalInput26358 canonicalOutput26358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26359 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![1, -1, -2, 0, 2], ![-1, 2, 2, -2, -1]]⟩

def canonicalOutput26359 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound26359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26359.moment H = canonicalOutput26359.moment H :=
  canonical_of_padded canonicalInput26359 canonicalOutput26359 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26360 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, -2, 0], ![-2, 2, 1, -1, 0], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput26360 : ExponentCode := normalNode5842

theorem canonicalSound26360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26360.moment H = canonicalOutput26360.moment H :=
  canonical_of_padded canonicalInput26360 canonicalOutput26360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26361 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, -2, 0], ![-1, 2, 1, -1, -1], ![0, -1, -2, 1, 2]]⟩

def canonicalOutput26361 : ExponentCode := normalNode5842

theorem canonicalSound26361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26361.moment H = canonicalOutput26361.moment H :=
  canonical_of_padded canonicalInput26361 canonicalOutput26361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26362 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![-2, -1, 1, -1, 3], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput26362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1157

theorem canonicalSound26362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26362.moment H = canonicalOutput26362.moment H :=
  canonical_of_padded canonicalInput26362 canonicalOutput26362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26363 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![-1, -1, 1, -1, 2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput26363 : ExponentCode := normalNode4269

theorem canonicalSound26363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26363.moment H = canonicalOutput26363.moment H :=
  canonical_of_padded canonicalInput26363 canonicalOutput26363 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26364 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, 0, -2], ![-2, -1, 1, -1, 3], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput26364 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound26364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26364.moment H = canonicalOutput26364.moment H :=
  canonical_of_padded canonicalInput26364 canonicalOutput26364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26365 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 0, 1, 0, -2], ![-1, -1, 1, -1, 2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput26365 : ExponentCode := normalNode2575

theorem canonicalSound26365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26365.moment H = canonicalOutput26365.moment H :=
  canonical_of_padded canonicalInput26365 canonicalOutput26365 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26366 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, -2, 0, 0], ![-3, 1, 1, -1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput26366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound26366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26366.moment H = canonicalOutput26366.moment H :=
  canonical_of_padded canonicalInput26366 canonicalOutput26366 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26367 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, -2, 0, 0], ![-2, -1, 2, 1, 0], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput26367 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound26367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26367.moment H = canonicalOutput26367.moment H :=
  canonical_of_padded canonicalInput26367 canonicalOutput26367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
