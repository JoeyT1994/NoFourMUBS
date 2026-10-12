import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10304 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10304 : ExponentCode := normalNode5255

theorem canonicalSound10304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10304.moment H = canonicalOutput10304.moment H :=
  canonical_of_padded canonicalInput10304 canonicalOutput10304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10305 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput10305 : ExponentCode := normalNode7369

theorem canonicalSound10305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10305.moment H = canonicalOutput10305.moment H :=
  canonical_of_padded canonicalInput10305 canonicalOutput10305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10306 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput10306 : ExponentCode := normalNode11073

theorem canonicalSound10306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10306.moment H = canonicalOutput10306.moment H :=
  canonical_of_padded canonicalInput10306 canonicalOutput10306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10307 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput10307 : ExponentCode := normalNode11129

theorem canonicalSound10307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10307.moment H = canonicalOutput10307.moment H :=
  canonical_of_padded canonicalInput10307 canonicalOutput10307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10308 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10308 : ExponentCode := normalNode11149

theorem canonicalSound10308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10308.moment H = canonicalOutput10308.moment H :=
  canonical_of_padded canonicalInput10308 canonicalOutput10308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10309 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, 0, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput10309 : ExponentCode := normalNode11149

theorem canonicalSound10309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10309.moment H = canonicalOutput10309.moment H :=
  canonical_of_padded canonicalInput10309 canonicalOutput10309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10310 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput10310 : ExponentCode := normalNode11129

theorem canonicalSound10310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10310.moment H = canonicalOutput10310.moment H :=
  canonical_of_padded canonicalInput10310 canonicalOutput10310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10311 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![1, 1, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput10311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1135

theorem canonicalSound10311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10311.moment H = canonicalOutput10311.moment H :=
  canonical_of_padded canonicalInput10311 canonicalOutput10311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10312 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -3, 2], ![0, 0, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput10312 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1127

theorem canonicalSound10312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10312.moment H = canonicalOutput10312.moment H :=
  canonical_of_padded canonicalInput10312 canonicalOutput10312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10313 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 1, -3, 2], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10313 : ExponentCode := normalNode5249

theorem canonicalSound10313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10313.moment H = canonicalOutput10313.moment H :=
  canonical_of_padded canonicalInput10313 canonicalOutput10313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10314 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 1, -3, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10314 : ExponentCode := normalNode5253

theorem canonicalSound10314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10314.moment H = canonicalOutput10314.moment H :=
  canonical_of_padded canonicalInput10314 canonicalOutput10314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10315 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput10315 : ExponentCode := normalNode10878

theorem canonicalSound10315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10315.moment H = canonicalOutput10315.moment H :=
  canonical_of_padded canonicalInput10315 canonicalOutput10315 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10316 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput10316 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound10316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10316.moment H = canonicalOutput10316.moment H :=
  canonical_of_padded canonicalInput10316 canonicalOutput10316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10317 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 1, -2, 1], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10317 : ExponentCode := normalNode5250

theorem canonicalSound10317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10317.moment H = canonicalOutput10317.moment H :=
  canonical_of_padded canonicalInput10317 canonicalOutput10317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10318 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -2, 1], ![0, 0, 3, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput10318 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound10318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10318.moment H = canonicalOutput10318.moment H :=
  canonical_of_padded canonicalInput10318 canonicalOutput10318 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10319 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -2, 1], ![1, -2, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput10319 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node788⟩

theorem canonicalSound10319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10319.moment H = canonicalOutput10319.moment H :=
  canonical_of_padded canonicalInput10319 canonicalOutput10319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10320 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput10320 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code320

theorem canonicalSound10320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10320.moment H = canonicalOutput10320.moment H :=
  canonical_of_padded canonicalInput10320 canonicalOutput10320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10321 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10321 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound10321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10321.moment H = canonicalOutput10321.moment H :=
  canonical_of_padded canonicalInput10321 canonicalOutput10321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10322 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput10322 : ExponentCode := normalNode6521

theorem canonicalSound10322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10322.moment H = canonicalOutput10322.moment H :=
  canonical_of_padded canonicalInput10322 canonicalOutput10322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10323 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput10323 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound10323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10323.moment H = canonicalOutput10323.moment H :=
  canonical_of_padded canonicalInput10323 canonicalOutput10323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10324 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput10324 : ExponentCode := normalNode9128

theorem canonicalSound10324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10324.moment H = canonicalOutput10324.moment H :=
  canonical_of_padded canonicalInput10324 canonicalOutput10324 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10325 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound10325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10325.moment H = canonicalOutput10325.moment H :=
  canonical_of_padded canonicalInput10325 canonicalOutput10325 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10326 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput10326 : ExponentCode := normalNode9137

theorem canonicalSound10326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10326.moment H = canonicalOutput10326.moment H :=
  canonical_of_padded canonicalInput10326 canonicalOutput10326 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10327 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput10327 : ExponentCode := normalNode9481

theorem canonicalSound10327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10327.moment H = canonicalOutput10327.moment H :=
  canonical_of_padded canonicalInput10327 canonicalOutput10327 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10328 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput10328 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound10328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10328.moment H = canonicalOutput10328.moment H :=
  canonical_of_padded canonicalInput10328 canonicalOutput10328 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput10329 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput10329 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound10329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10329.moment H = canonicalOutput10329.moment H :=
  canonical_of_padded canonicalInput10329 canonicalOutput10329 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput10330 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10330 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound10330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10330.moment H = canonicalOutput10330.moment H :=
  canonical_of_padded canonicalInput10330 canonicalOutput10330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10331 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput10331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound10331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10331.moment H = canonicalOutput10331.moment H :=
  canonical_of_padded canonicalInput10331 canonicalOutput10331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10332 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10332 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound10332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10332.moment H = canonicalOutput10332.moment H :=
  canonical_of_padded canonicalInput10332 canonicalOutput10332 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput10333 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10333 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound10333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10333.moment H = canonicalOutput10333.moment H :=
  canonical_of_padded canonicalInput10333 canonicalOutput10333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput10334 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 3, -4], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10334 : ExponentCode := normalNode11198

theorem canonicalSound10334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10334.moment H = canonicalOutput10334.moment H :=
  canonical_of_padded canonicalInput10334 canonicalOutput10334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10335 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10335 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1089⟩

theorem canonicalSound10335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10335.moment H = canonicalOutput10335.moment H :=
  canonical_of_padded canonicalInput10335 canonicalOutput10335 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10336 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, -2, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput10336 : ExponentCode := normalNode11198

theorem canonicalSound10336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10336.moment H = canonicalOutput10336.moment H :=
  canonical_of_padded canonicalInput10336 canonicalOutput10336 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10337 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1131

theorem canonicalSound10337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10337.moment H = canonicalOutput10337.moment H :=
  canonical_of_padded canonicalInput10337 canonicalOutput10337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10338 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, -1, 2], ![0, 0, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput10338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1134

theorem canonicalSound10338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10338.moment H = canonicalOutput10338.moment H :=
  canonical_of_padded canonicalInput10338 canonicalOutput10338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10339 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, 2, -1], ![0, 1, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1137

theorem canonicalSound10339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10339.moment H = canonicalOutput10339.moment H :=
  canonical_of_padded canonicalInput10339 canonicalOutput10339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10340 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, 2, -1], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node684⟩

theorem canonicalSound10340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10340.moment H = canonicalOutput10340.moment H :=
  canonical_of_padded canonicalInput10340 canonicalOutput10340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10341 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, 2, -1], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput10341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound10341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10341.moment H = canonicalOutput10341.moment H :=
  canonical_of_padded canonicalInput10341 canonicalOutput10341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10342 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, 3, -2], ![0, 0, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node593⟩

theorem canonicalSound10342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10342.moment H = canonicalOutput10342.moment H :=
  canonical_of_padded canonicalInput10342 canonicalOutput10342 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10343 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -2, 4, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput10343 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code317

theorem canonicalSound10343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10343.moment H = canonicalOutput10343.moment H :=
  canonical_of_padded canonicalInput10343 canonicalOutput10343 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10344 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -2, 2], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound10344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10344.moment H = canonicalOutput10344.moment H :=
  canonical_of_padded canonicalInput10344 canonicalOutput10344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10345 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -2, 2], ![0, -1, 4, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1118

theorem canonicalSound10345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10345.moment H = canonicalOutput10345.moment H :=
  canonical_of_padded canonicalInput10345 canonicalOutput10345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10346 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput10346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound10346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10346.moment H = canonicalOutput10346.moment H :=
  canonical_of_padded canonicalInput10346 canonicalOutput10346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10347 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput10347 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound10347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10347.moment H = canonicalOutput10347.moment H :=
  canonical_of_padded canonicalInput10347 canonicalOutput10347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10348 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -1, 1], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10348 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound10348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10348.moment H = canonicalOutput10348.moment H :=
  canonical_of_padded canonicalInput10348 canonicalOutput10348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10349 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, -1, 1], ![0, -1, 4, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10349 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound10349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10349.moment H = canonicalOutput10349.moment H :=
  canonical_of_padded canonicalInput10349 canonicalOutput10349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10350 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, 1, -1], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput10350 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound10350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10350.moment H = canonicalOutput10350.moment H :=
  canonical_of_padded canonicalInput10350 canonicalOutput10350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10351 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, 2, -2], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput10351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound10351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10351.moment H = canonicalOutput10351.moment H :=
  canonical_of_padded canonicalInput10351 canonicalOutput10351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10352 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, 4, -4], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput10352 : ExponentCode := normalNode10878

theorem canonicalSound10352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10352.moment H = canonicalOutput10352.moment H :=
  canonical_of_padded canonicalInput10352 canonicalOutput10352 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput10353 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, -1, 4, -4], ![0, 1, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput10353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code320

theorem canonicalSound10353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10353.moment H = canonicalOutput10353.moment H :=
  canonical_of_padded canonicalInput10353 canonicalOutput10353 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10354 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, 0, -2, 1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput10354 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10354.moment H = canonicalOutput10354.moment H :=
  canonical_of_padded canonicalInput10354 canonicalOutput10354 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput10355 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, 0, -2, 1], ![0, 1, 3, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput10355 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound10355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10355.moment H = canonicalOutput10355.moment H :=
  canonical_of_padded canonicalInput10355 canonicalOutput10355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10356 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, 0, 2, -3], ![0, 1, -2, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput10356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound10356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10356.moment H = canonicalOutput10356.moment H :=
  canonical_of_padded canonicalInput10356 canonicalOutput10356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10357 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, 0, 3, -4], ![0, 1, -3, 2], ![1, -2, 1, 0]]⟩

def canonicalOutput10357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1136

theorem canonicalSound10357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10357.moment H = canonicalOutput10357.moment H :=
  canonical_of_padded canonicalInput10357 canonicalOutput10357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10358 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![1, 0, 3, -4], ![0, 1, -2, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput10358 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩

theorem canonicalSound10358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10358.moment H = canonicalOutput10358.moment H :=
  canonical_of_padded canonicalInput10358 canonicalOutput10358 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10359 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, -2, 3], ![0, -1, -1, 3, -1], ![0, -1, 2, -1, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput10359 : ExponentCode := normalNode8020

theorem canonicalSound10359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10359.moment H = canonicalOutput10359.moment H :=
  canonical_of_padded canonicalInput10359 canonicalOutput10359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput10360 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput10360 : ExponentCode := normalNode10002

theorem canonicalSound10360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10360.moment H = canonicalOutput10360.moment H :=
  canonical_of_padded canonicalInput10360 canonicalOutput10360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput10361 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound10361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10361.moment H = canonicalOutput10361.moment H :=
  canonical_of_padded canonicalInput10361 canonicalOutput10361 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10362 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10362 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound10362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10362.moment H = canonicalOutput10362.moment H :=
  canonical_of_padded canonicalInput10362 canonicalOutput10362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation95, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput10363 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound10363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10363.moment H = canonicalOutput10363.moment H :=
  canonical_of_padded canonicalInput10363 canonicalOutput10363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput10364 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10364 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound10364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10364.moment H = canonicalOutput10364.moment H :=
  canonical_of_padded canonicalInput10364 canonicalOutput10364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation321⟩ (by decide +kernel) hH

def canonicalInput10365 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10365 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound10365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10365.moment H = canonicalOutput10365.moment H :=
  canonical_of_padded canonicalInput10365 canonicalOutput10365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation321⟩ (by decide +kernel) hH

def canonicalInput10366 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10366 : ExponentCode := normalNode4310

theorem canonicalSound10366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10366.moment H = canonicalOutput10366.moment H :=
  canonical_of_padded canonicalInput10366 canonicalOutput10366 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput10367 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound10367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10367.moment H = canonicalOutput10367.moment H :=
  canonical_of_padded canonicalInput10367 canonicalOutput10367 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
