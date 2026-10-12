import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16320 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, 0, -1], ![0, 1, -3, 1, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16320 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1374

theorem canonicalSound16320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16320.moment H = canonicalOutput16320.moment H :=
  canonical_of_padded canonicalInput16320 canonicalOutput16320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16321 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, 0, -1], ![0, 1, -2, 1, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16321 : ExponentCode := normalNode4293

theorem canonicalSound16321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16321.moment H = canonicalOutput16321.moment H :=
  canonical_of_padded canonicalInput16321 canonicalOutput16321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16322 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16322 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound16322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16322.moment H = canonicalOutput16322.moment H :=
  canonical_of_padded canonicalInput16322 canonicalOutput16322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16323 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, 0, -1], ![1, 1, -2, 1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16323 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound16323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16323.moment H = canonicalOutput16323.moment H :=
  canonical_of_padded canonicalInput16323 canonicalOutput16323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16324 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -2, 0, 1], ![-1, -1, 2, 1, -1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput16324 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1335

theorem canonicalSound16324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16324.moment H = canonicalOutput16324.moment H :=
  canonical_of_padded canonicalInput16324 canonicalOutput16324 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16325 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -2, 1, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16325 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound16325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16325.moment H = canonicalOutput16325.moment H :=
  canonical_of_padded canonicalInput16325 canonicalOutput16325 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16326 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![-1, -1, 3, -1, 0], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput16326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound16326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16326.moment H = canonicalOutput16326.moment H :=
  canonical_of_padded canonicalInput16326 canonicalOutput16326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16327 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -1, 0, 0], ![-1, -1, 2, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16327 : ExponentCode := normalNode5328

theorem canonicalSound16327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16327.moment H = canonicalOutput16327.moment H :=
  canonical_of_padded canonicalInput16327 canonicalOutput16327 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16328 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -1, 0, 0], ![-1, 0, 3, -2, 0], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16328 : ExponentCode := normalNode5327

theorem canonicalSound16328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16328.moment H = canonicalOutput16328.moment H :=
  canonical_of_padded canonicalInput16328 canonicalOutput16328 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16329 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -1, 0, 0], ![0, -1, 2, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput16329 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound16329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16329.moment H = canonicalOutput16329.moment H :=
  canonical_of_padded canonicalInput16329 canonicalOutput16329 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16330 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, -1, 0, 0], ![1, 0, -1, -2, 2], ![1, -1, 2, 1, -3]]⟩

def canonicalOutput16330 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1151

theorem canonicalSound16330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16330.moment H = canonicalOutput16330.moment H :=
  canonical_of_padded canonicalInput16330 canonicalOutput16330 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16331 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, -2, 1], ![-1, -1, 2, 1, -1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput16331 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1336

theorem canonicalSound16331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16331.moment H = canonicalOutput16331.moment H :=
  canonical_of_padded canonicalInput16331 canonicalOutput16331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16332 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, -1, 0], ![0, -1, 2, 1, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput16332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound16332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16332.moment H = canonicalOutput16332.moment H :=
  canonical_of_padded canonicalInput16332 canonicalOutput16332 (by decide) (by decide)
    ⟨true, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16333 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, -1, 0], ![1, -1, -2, 1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound16333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16333.moment H = canonicalOutput16333.moment H :=
  canonical_of_padded canonicalInput16333 canonicalOutput16333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16334 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![-1, 0, 2, -2, 1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1167

theorem canonicalSound16334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16334.moment H = canonicalOutput16334.moment H :=
  canonical_of_padded canonicalInput16334 canonicalOutput16334 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16335 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![0, -1, 2, -2, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound16335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16335.moment H = canonicalOutput16335.moment H :=
  canonical_of_padded canonicalInput16335 canonicalOutput16335 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16336 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![0, -1, 3, -2, 0], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput16336 : ExponentCode := normalNode5305

theorem canonicalSound16336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16336.moment H = canonicalOutput16336.moment H :=
  canonical_of_padded canonicalInput16336 canonicalOutput16336 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16337 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![0, 0, -2, 1, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound16337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16337.moment H = canonicalOutput16337.moment H :=
  canonical_of_padded canonicalInput16337 canonicalOutput16337 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16338 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16338 : ExponentCode := normalNode3773

theorem canonicalSound16338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16338.moment H = canonicalOutput16338.moment H :=
  canonical_of_padded canonicalInput16338 canonicalOutput16338 (by decide) (by decide)
    ⟨true, true, canonicalPermutation79, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16339 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput16339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound16339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16339.moment H = canonicalOutput16339.moment H :=
  canonical_of_padded canonicalInput16339 canonicalOutput16339 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16340 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16340 : ExponentCode := normalNode3965

theorem canonicalSound16340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16340.moment H = canonicalOutput16340.moment H :=
  canonical_of_padded canonicalInput16340 canonicalOutput16340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16341 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16341 : ExponentCode := normalNode3965

theorem canonicalSound16341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16341.moment H = canonicalOutput16341.moment H :=
  canonical_of_padded canonicalInput16341 canonicalOutput16341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16342 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![1, 0, 2, -2, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput16342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound16342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16342.moment H = canonicalOutput16342.moment H :=
  canonical_of_padded canonicalInput16342 canonicalOutput16342 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16343 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -2, 2, 0, 0], ![-1, 2, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput16343 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code663

theorem canonicalSound16343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16343.moment H = canonicalOutput16343.moment H :=
  canonical_of_padded canonicalInput16343 canonicalOutput16343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16344 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -2, 2, 0, 0], ![-1, 3, -1, -2, 1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput16344 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound16344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16344.moment H = canonicalOutput16344.moment H :=
  canonical_of_padded canonicalInput16344 canonicalOutput16344 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16345 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 2, 0, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16345 : ExponentCode := normalNode2931

theorem canonicalSound16345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16345.moment H = canonicalOutput16345.moment H :=
  canonical_of_padded canonicalInput16345 canonicalOutput16345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16346 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 3, -1, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16346 : ExponentCode := normalNode1802

theorem canonicalSound16346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16346.moment H = canonicalOutput16346.moment H :=
  canonical_of_padded canonicalInput16346 canonicalOutput16346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16347 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -2, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, 1, 0, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16347 : ExponentCode := normalNode9233

theorem canonicalSound16347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16347.moment H = canonicalOutput16347.moment H :=
  canonical_of_padded canonicalInput16347 canonicalOutput16347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation27⟩ (by decide +kernel) hH

def canonicalInput16348 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -2, 1, 2], ![0, 2, 1, 0, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16348 : ExponentCode := normalNode5430

theorem canonicalSound16348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16348.moment H = canonicalOutput16348.moment H :=
  canonical_of_padded canonicalInput16348 canonicalOutput16348 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16349 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput16349 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound16349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16349.moment H = canonicalOutput16349.moment H :=
  canonical_of_padded canonicalInput16349 canonicalOutput16349 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16350 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 2, -2, 0], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput16350 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound16350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16350.moment H = canonicalOutput16350.moment H :=
  canonical_of_padded canonicalInput16350 canonicalOutput16350 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16351 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 1, -1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput16351 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1731⟩

theorem canonicalSound16351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16351.moment H = canonicalOutput16351.moment H :=
  canonical_of_padded canonicalInput16351 canonicalOutput16351 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16352 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16352 : ExponentCode := normalNode10022

theorem canonicalSound16352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16352.moment H = canonicalOutput16352.moment H :=
  canonical_of_padded canonicalInput16352 canonicalOutput16352 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16353 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput16353 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound16353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16353.moment H = canonicalOutput16353.moment H :=
  canonical_of_padded canonicalInput16353 canonicalOutput16353 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16354 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, 1, -3], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16354 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound16354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16354.moment H = canonicalOutput16354.moment H :=
  canonical_of_padded canonicalInput16354 canonicalOutput16354 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16355 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound16355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16355.moment H = canonicalOutput16355.moment H :=
  canonical_of_padded canonicalInput16355 canonicalOutput16355 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16356 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound16356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16356.moment H = canonicalOutput16356.moment H :=
  canonical_of_padded canonicalInput16356 canonicalOutput16356 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16357 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, 0, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16357 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound16357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16357.moment H = canonicalOutput16357.moment H :=
  canonical_of_padded canonicalInput16357 canonicalOutput16357 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16358 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 2, -2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16358 : ExponentCode := normalNode2316

theorem canonicalSound16358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16358.moment H = canonicalOutput16358.moment H :=
  canonical_of_padded canonicalInput16358 canonicalOutput16358 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16359 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![1, 0, 0, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16359 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound16359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16359.moment H = canonicalOutput16359.moment H :=
  canonical_of_padded canonicalInput16359 canonicalOutput16359 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16360 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![1, 0, 1, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput16360 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound16360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16360.moment H = canonicalOutput16360.moment H :=
  canonical_of_padded canonicalInput16360 canonicalOutput16360 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16361 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![1, 1, -1, 1, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput16361 : ExponentCode := normalNode2568

theorem canonicalSound16361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16361.moment H = canonicalOutput16361.moment H :=
  canonical_of_padded canonicalInput16361 canonicalOutput16361 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16362 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 0, 2], ![1, 1, 0, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput16362 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound16362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16362.moment H = canonicalOutput16362.moment H :=
  canonical_of_padded canonicalInput16362 canonicalOutput16362 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16363 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput16363 : ExponentCode := normalNode4299

theorem canonicalSound16363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16363.moment H = canonicalOutput16363.moment H :=
  canonical_of_padded canonicalInput16363 canonicalOutput16363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16364 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16364 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2618⟩

theorem canonicalSound16364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16364.moment H = canonicalOutput16364.moment H :=
  canonical_of_padded canonicalInput16364 canonicalOutput16364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16365 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16365 : ExponentCode := normalNode8786

theorem canonicalSound16365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16365.moment H = canonicalOutput16365.moment H :=
  canonical_of_padded canonicalInput16365 canonicalOutput16365 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16366 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, -1, 1, 1], ![1, 0, 2, -2, -1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput16366 : ExponentCode := normalNode5625

theorem canonicalSound16366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16366.moment H = canonicalOutput16366.moment H :=
  canonical_of_padded canonicalInput16366 canonicalOutput16366 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16367 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, 2, 1, 0, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16367 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2748⟩

theorem canonicalSound16367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16367.moment H = canonicalOutput16367.moment H :=
  canonical_of_padded canonicalInput16367 canonicalOutput16367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16368 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, 2, 2, -1, -3], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16368 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1697⟩

theorem canonicalSound16368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16368.moment H = canonicalOutput16368.moment H :=
  canonical_of_padded canonicalInput16368 canonicalOutput16368 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16369 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16369 : ExponentCode := normalNode8741

theorem canonicalSound16369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16369.moment H = canonicalOutput16369.moment H :=
  canonical_of_padded canonicalInput16369 canonicalOutput16369 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16370 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16370 : ExponentCode := normalNode10461

theorem canonicalSound16370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16370.moment H = canonicalOutput16370.moment H :=
  canonical_of_padded canonicalInput16370 canonicalOutput16370 (by decide) (by decide)
    ⟨false, false, canonicalPermutation75, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput16371 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16371 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound16371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16371.moment H = canonicalOutput16371.moment H :=
  canonical_of_padded canonicalInput16371 canonicalOutput16371 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16372 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16372 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound16372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16372.moment H = canonicalOutput16372.moment H :=
  canonical_of_padded canonicalInput16372 canonicalOutput16372 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16373 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16373 : ExponentCode := normalNode8964

theorem canonicalSound16373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16373.moment H = canonicalOutput16373.moment H :=
  canonical_of_padded canonicalInput16373 canonicalOutput16373 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16374 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 0, 1, 0], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16374 : ExponentCode := normalNode8989

theorem canonicalSound16374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16374.moment H = canonicalOutput16374.moment H :=
  canonical_of_padded canonicalInput16374 canonicalOutput16374 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16375 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -2, 2], ![0, 2, 1, 0, -3], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16375 : ExponentCode := normalNode4308

theorem canonicalSound16375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16375.moment H = canonicalOutput16375.moment H :=
  canonical_of_padded canonicalInput16375 canonicalOutput16375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16376 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, -2, 1, 1], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput16376 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2059⟩

theorem canonicalSound16376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16376.moment H = canonicalOutput16376.moment H :=
  canonical_of_padded canonicalInput16376 canonicalOutput16376 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16377 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16377 : ExponentCode := normalNode10148

theorem canonicalSound16377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16377.moment H = canonicalOutput16377.moment H :=
  canonical_of_padded canonicalInput16377 canonicalOutput16377 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput16378 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, -1, 0], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16378 : ExponentCode := normalNode10164

theorem canonicalSound16378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16378.moment H = canonicalOutput16378.moment H :=
  canonical_of_padded canonicalInput16378 canonicalOutput16378 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput16379 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16379 : ExponentCode := normalNode8378

theorem canonicalSound16379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16379.moment H = canonicalOutput16379.moment H :=
  canonical_of_padded canonicalInput16379 canonicalOutput16379 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput16380 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16380 : ExponentCode := normalNode10168

theorem canonicalSound16380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16380.moment H = canonicalOutput16380.moment H :=
  canonical_of_padded canonicalInput16380 canonicalOutput16380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16381 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput16381 : ExponentCode := normalNode5621

theorem canonicalSound16381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16381.moment H = canonicalOutput16381.moment H :=
  canonical_of_padded canonicalInput16381 canonicalOutput16381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16382 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16382 : ExponentCode := normalNode10177

theorem canonicalSound16382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16382.moment H = canonicalOutput16382.moment H :=
  canonical_of_padded canonicalInput16382 canonicalOutput16382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput16383 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput16383 : ExponentCode := normalNode4396

theorem canonicalSound16383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16383.moment H = canonicalOutput16383.moment H :=
  canonical_of_padded canonicalInput16383 canonicalOutput16383 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
