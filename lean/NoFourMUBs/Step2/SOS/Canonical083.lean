import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5312 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, 1, -4], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput5312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node927⟩

theorem canonicalSound5312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5312.moment H = canonicalOutput5312.moment H :=
  canonical_of_padded canonicalInput5312 canonicalOutput5312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5313 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput5313 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node687⟩

theorem canonicalSound5313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5313.moment H = canonicalOutput5313.moment H :=
  canonical_of_padded canonicalInput5313 canonicalOutput5313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5314 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, 4, -4, 0], ![2, -3, 3, -2]]⟩

def canonicalOutput5314 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1039

theorem canonicalSound5314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5314.moment H = canonicalOutput5314.moment H :=
  canonical_of_padded canonicalInput5314 canonicalOutput5314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5315 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, 4, -2, -2], ![2, -3, 1, 0]]⟩

def canonicalOutput5315 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound5315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5315.moment H = canonicalOutput5315.moment H :=
  canonical_of_padded canonicalInput5315 canonicalOutput5315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5316 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![1, -3, 3, -1], ![1, 4, -4, -1]]⟩

def canonicalOutput5316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound5316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5316.moment H = canonicalOutput5316.moment H :=
  canonical_of_padded canonicalInput5316 canonicalOutput5316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5317 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, -1, 2], ![0, 0, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput5317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code589

theorem canonicalSound5317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5317.moment H = canonicalOutput5317.moment H :=
  canonical_of_padded canonicalInput5317 canonicalOutput5317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5318 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, -1, 2], ![0, 2, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput5318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code607

theorem canonicalSound5318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5318.moment H = canonicalOutput5318.moment H :=
  canonical_of_padded canonicalInput5318 canonicalOutput5318 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5319 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5319 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound5319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5319.moment H = canonicalOutput5319.moment H :=
  canonical_of_padded canonicalInput5319 canonicalOutput5319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5320 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput5320 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound5320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5320.moment H = canonicalOutput5320.moment H :=
  canonical_of_padded canonicalInput5320 canonicalOutput5320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5321 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5321 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5321.moment H = canonicalOutput5321.moment H :=
  canonical_of_padded canonicalInput5321 canonicalOutput5321 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5322 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput5322 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound5322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5322.moment H = canonicalOutput5322.moment H :=
  canonical_of_padded canonicalInput5322 canonicalOutput5322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5323 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5323 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound5323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5323.moment H = canonicalOutput5323.moment H :=
  canonical_of_padded canonicalInput5323 canonicalOutput5323 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5324 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 0, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput5324 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound5324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5324.moment H = canonicalOutput5324.moment H :=
  canonical_of_padded canonicalInput5324 canonicalOutput5324 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5325 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 1, 0], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound5325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5325.moment H = canonicalOutput5325.moment H :=
  canonical_of_padded canonicalInput5325 canonicalOutput5325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5326 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 1, 0], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput5326 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5326.moment H = canonicalOutput5326.moment H :=
  canonical_of_padded canonicalInput5326 canonicalOutput5326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5327 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 1, 0], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5327 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound5327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5327.moment H = canonicalOutput5327.moment H :=
  canonical_of_padded canonicalInput5327 canonicalOutput5327 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5328 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 1, 0], ![0, 3, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput5328 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound5328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5328.moment H = canonicalOutput5328.moment H :=
  canonical_of_padded canonicalInput5328 canonicalOutput5328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5329 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![1, -2, 2, -1], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5329 : ExponentCode := normalNode2812

theorem canonicalSound5329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5329.moment H = canonicalOutput5329.moment H :=
  canonical_of_padded canonicalInput5329 canonicalOutput5329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5330 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 2, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput5330 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code608

theorem canonicalSound5330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5330.moment H = canonicalOutput5330.moment H :=
  canonical_of_padded canonicalInput5330 canonicalOutput5330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5331 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 2, -1], ![0, 2, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5331 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code631

theorem canonicalSound5331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5331.moment H = canonicalOutput5331.moment H :=
  canonical_of_padded canonicalInput5331 canonicalOutput5331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5332 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput5332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound5332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5332.moment H = canonicalOutput5332.moment H :=
  canonical_of_padded canonicalInput5332 canonicalOutput5332 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5333 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -2, 2, -1], ![0, 3, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput5333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code644

theorem canonicalSound5333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5333.moment H = canonicalOutput5333.moment H :=
  canonical_of_padded canonicalInput5333 canonicalOutput5333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5334 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -3, 3], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput5334 : ExponentCode := normalNode11197

theorem canonicalSound5334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5334.moment H = canonicalOutput5334.moment H :=
  canonical_of_padded canonicalInput5334 canonicalOutput5334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5335 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, -1, 2, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput5335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code562

theorem canonicalSound5335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5335.moment H = canonicalOutput5335.moment H :=
  canonical_of_padded canonicalInput5335 canonicalOutput5335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5336 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 0, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput5336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound5336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5336.moment H = canonicalOutput5336.moment H :=
  canonical_of_padded canonicalInput5336 canonicalOutput5336 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5337 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound5337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5337.moment H = canonicalOutput5337.moment H :=
  canonical_of_padded canonicalInput5337 canonicalOutput5337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5338 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput5338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound5338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5338.moment H = canonicalOutput5338.moment H :=
  canonical_of_padded canonicalInput5338 canonicalOutput5338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5339 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 1, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput5339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code625

theorem canonicalSound5339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5339.moment H = canonicalOutput5339.moment H :=
  canonical_of_padded canonicalInput5339 canonicalOutput5339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5340 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 2, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput5340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code633

theorem canonicalSound5340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5340.moment H = canonicalOutput5340.moment H :=
  canonical_of_padded canonicalInput5340 canonicalOutput5340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5341 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 2, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput5341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound5341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5341.moment H = canonicalOutput5341.moment H :=
  canonical_of_padded canonicalInput5341 canonicalOutput5341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5342 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -2, 2], ![0, 3, -1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput5342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code645

theorem canonicalSound5342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5342.moment H = canonicalOutput5342.moment H :=
  canonical_of_padded canonicalInput5342 canonicalOutput5342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5343 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -1, 1], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound5343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5343.moment H = canonicalOutput5343.moment H :=
  canonical_of_padded canonicalInput5343 canonicalOutput5343 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5344 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -1, 1], ![0, 1, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput5344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩

theorem canonicalSound5344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5344.moment H = canonicalOutput5344.moment H :=
  canonical_of_padded canonicalInput5344 canonicalOutput5344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5345 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, -1, 1], ![0, 2, 2, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput5345 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound5345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5345.moment H = canonicalOutput5345.moment H :=
  canonical_of_padded canonicalInput5345 canonicalOutput5345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5346 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 1, -1], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound5346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5346.moment H = canonicalOutput5346.moment H :=
  canonical_of_padded canonicalInput5346 canonicalOutput5346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5347 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 1, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput5347 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound5347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5347.moment H = canonicalOutput5347.moment H :=
  canonical_of_padded canonicalInput5347 canonicalOutput5347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5348 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code597

theorem canonicalSound5348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5348.moment H = canonicalOutput5348.moment H :=
  canonical_of_padded canonicalInput5348 canonicalOutput5348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5349 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5349 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound5349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5349.moment H = canonicalOutput5349.moment H :=
  canonical_of_padded canonicalInput5349 canonicalOutput5349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5350 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput5350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code619

theorem canonicalSound5350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5350.moment H = canonicalOutput5350.moment H :=
  canonical_of_padded canonicalInput5350 canonicalOutput5350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5351 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 2, -4, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput5351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code628

theorem canonicalSound5351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5351.moment H = canonicalOutput5351.moment H :=
  canonical_of_padded canonicalInput5351 canonicalOutput5351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5352 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput5352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5352.moment H = canonicalOutput5352.moment H :=
  canonical_of_padded canonicalInput5352 canonicalOutput5352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5353 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput5353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound5353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5353.moment H = canonicalOutput5353.moment H :=
  canonical_of_padded canonicalInput5353 canonicalOutput5353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5354 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![0, 3, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput5354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code643

theorem canonicalSound5354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5354.moment H = canonicalOutput5354.moment H :=
  canonical_of_padded canonicalInput5354 canonicalOutput5354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5355 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput5355 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound5355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5355.moment H = canonicalOutput5355.moment H :=
  canonical_of_padded canonicalInput5355 canonicalOutput5355 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5356 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, -1, 3, -3], ![0, 2, -4, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput5356 : ExponentCode := normalNode11203

theorem canonicalSound5356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5356.moment H = canonicalOutput5356.moment H :=
  canonical_of_padded canonicalInput5356 canonicalOutput5356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5357 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -3, 2], ![0, 1, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5357 : ExponentCode := normalNode7063

theorem canonicalSound5357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5357.moment H = canonicalOutput5357.moment H :=
  canonical_of_padded canonicalInput5357 canonicalOutput5357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5358 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -3, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5358 : ExponentCode := normalNode7062

theorem canonicalSound5358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5358.moment H = canonicalOutput5358.moment H :=
  canonical_of_padded canonicalInput5358 canonicalOutput5358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5359 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -3, 2], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput5359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code637

theorem canonicalSound5359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5359.moment H = canonicalOutput5359.moment H :=
  canonical_of_padded canonicalInput5359 canonicalOutput5359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5360 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -3, 2], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput5360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound5360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5360.moment H = canonicalOutput5360.moment H :=
  canonical_of_padded canonicalInput5360 canonicalOutput5360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5361 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -2, 1], ![0, 1, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput5361 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node848⟩

theorem canonicalSound5361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5361.moment H = canonicalOutput5361.moment H :=
  canonical_of_padded canonicalInput5361 canonicalOutput5361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5362 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -2, 1], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput5362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound5362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5362.moment H = canonicalOutput5362.moment H :=
  canonical_of_padded canonicalInput5362 canonicalOutput5362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5363 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -2, 1], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput5363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5363.moment H = canonicalOutput5363.moment H :=
  canonical_of_padded canonicalInput5363 canonicalOutput5363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5364 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, -2, 1], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5364 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound5364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5364.moment H = canonicalOutput5364.moment H :=
  canonical_of_padded canonicalInput5364 canonicalOutput5364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5365 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, 1, -2], ![0, 3, -2, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput5365 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound5365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5365.moment H = canonicalOutput5365.moment H :=
  canonical_of_padded canonicalInput5365 canonicalOutput5365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5366 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, 2, -3], ![0, 2, -4, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput5366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound5366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5366.moment H = canonicalOutput5366.moment H :=
  canonical_of_padded canonicalInput5366 canonicalOutput5366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5367 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, 2, -3], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5367 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound5367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5367.moment H = canonicalOutput5367.moment H :=
  canonical_of_padded canonicalInput5367 canonicalOutput5367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5368 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 0, 2, -3], ![0, 3, -3, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput5368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code491

theorem canonicalSound5368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5368.moment H = canonicalOutput5368.moment H :=
  canonical_of_padded canonicalInput5368 canonicalOutput5368 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5369 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -4, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput5369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code619

theorem canonicalSound5369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5369.moment H = canonicalOutput5369.moment H :=
  canonical_of_padded canonicalInput5369 canonicalOutput5369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5370 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput5370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound5370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5370.moment H = canonicalOutput5370.moment H :=
  canonical_of_padded canonicalInput5370 canonicalOutput5370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5371 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -3, 1], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5371 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code626

theorem canonicalSound5371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5371.moment H = canonicalOutput5371.moment H :=
  canonical_of_padded canonicalInput5371 canonicalOutput5371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5372 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput5372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound5372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5372.moment H = canonicalOutput5372.moment H :=
  canonical_of_padded canonicalInput5372 canonicalOutput5372 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5373 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -2, 0], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput5373 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound5373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5373.moment H = canonicalOutput5373.moment H :=
  canonical_of_padded canonicalInput5373 canonicalOutput5373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5374 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -2, 0], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput5374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound5374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5374.moment H = canonicalOutput5374.moment H :=
  canonical_of_padded canonicalInput5374 canonicalOutput5374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5375 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, -2, 0], ![0, 2, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput5375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound5375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5375.moment H = canonicalOutput5375.moment H :=
  canonical_of_padded canonicalInput5375 canonicalOutput5375 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
