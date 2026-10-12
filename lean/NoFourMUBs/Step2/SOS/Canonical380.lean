import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24320 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-2, 0, -1, 3, 0], ![0, 1, 1, -3, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput24320 : ExponentCode := normalNode4177

theorem canonicalSound24320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24320.moment H = canonicalOutput24320.moment H :=
  canonical_of_padded canonicalInput24320 canonicalOutput24320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24321 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 1, 0], ![-2, 1, -2, 1, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput24321 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound24321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24321.moment H = canonicalOutput24321.moment H :=
  canonical_of_padded canonicalInput24321 canonicalOutput24321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24322 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-2, 1, 1, 1, -1], ![0, 1, -3, 1, 1], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput24322 : ExponentCode := normalNode4489

theorem canonicalSound24322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24322.moment H = canonicalOutput24322.moment H :=
  canonical_of_padded canonicalInput24322 canonicalOutput24322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24323 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 1, 0], ![-2, 1, 1, 1, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput24323 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound24323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24323.moment H = canonicalOutput24323.moment H :=
  canonical_of_padded canonicalInput24323 canonicalOutput24323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24324 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, -1, 1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput24324 : ExponentCode := normalNode1828

theorem canonicalSound24324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24324.moment H = canonicalOutput24324.moment H :=
  canonical_of_padded canonicalInput24324 canonicalOutput24324 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24325 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 1, 0], ![-1, 0, -1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24325 : ExponentCode := normalNode8533

theorem canonicalSound24325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24325.moment H = canonicalOutput24325.moment H :=
  canonical_of_padded canonicalInput24325 canonicalOutput24325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24326 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 0, -1, 3, -1], ![-1, 1, 1, -3, 2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput24326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound24326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24326.moment H = canonicalOutput24326.moment H :=
  canonical_of_padded canonicalInput24326 canonicalOutput24326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24327 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 0, -1, 3, -1], ![0, 1, 1, -3, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput24327 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound24327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24327.moment H = canonicalOutput24327.moment H :=
  canonical_of_padded canonicalInput24327 canonicalOutput24327 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24328 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 0, 1, 1, -1], ![-1, 3, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput24328 : ExponentCode := normalNode3457

theorem canonicalSound24328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24328.moment H = canonicalOutput24328.moment H :=
  canonical_of_padded canonicalInput24328 canonicalOutput24328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24329 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 0, 1, 1, -1], ![2, 0, -1, -1, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput24329 : ExponentCode := normalNode3878

theorem canonicalSound24329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24329.moment H = canonicalOutput24329.moment H :=
  canonical_of_padded canonicalInput24329 canonicalOutput24329 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24330 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput24330 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node710⟩

theorem canonicalSound24330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24330.moment H = canonicalOutput24330.moment H :=
  canonical_of_padded canonicalInput24330 canonicalOutput24330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24331 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 1, -2, 1, 1], ![2, 0, 0, 0, -2], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput24331 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound24331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24331.moment H = canonicalOutput24331.moment H :=
  canonical_of_padded canonicalInput24331 canonicalOutput24331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24332 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 1, -2, 1, 1], ![2, 0, 0, 1, -3], ![-1, 1, 1, -3, 2]]⟩

def canonicalOutput24332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code929

theorem canonicalSound24332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24332.moment H = canonicalOutput24332.moment H :=
  canonical_of_padded canonicalInput24332 canonicalOutput24332 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24333 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 1, -2, 1, 1], ![3, 0, 0, 0, -3], ![-2, 1, 1, -2, 2]]⟩

def canonicalOutput24333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code932

theorem canonicalSound24333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24333.moment H = canonicalOutput24333.moment H :=
  canonical_of_padded canonicalInput24333 canonicalOutput24333 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24334 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 1, 0], ![-1, 1, -2, 3, -1], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput24334 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node707⟩

theorem canonicalSound24334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24334.moment H = canonicalOutput24334.moment H :=
  canonical_of_padded canonicalInput24334 canonicalOutput24334 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24335 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 1, 1, 1, -2], ![-1, 1, -3, 1, 2], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput24335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code987

theorem canonicalSound24335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24335.moment H = canonicalOutput24335.moment H :=
  canonical_of_padded canonicalInput24335 canonicalOutput24335 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24336 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 1, 1, 1, -2], ![0, 1, -3, 1, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput24336 : ExponentCode := normalNode4530

theorem canonicalSound24336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24336.moment H = canonicalOutput24336.moment H :=
  canonical_of_padded canonicalInput24336 canonicalOutput24336 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24337 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 1, 0], ![-1, 1, 1, 1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput24337 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound24337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24337.moment H = canonicalOutput24337.moment H :=
  canonical_of_padded canonicalInput24337 canonicalOutput24337 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24338 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![-1, 2, -1, 0, 0], ![-1, 1, 1, -2, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput24338 : ExponentCode := normalNode5885

theorem canonicalSound24338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24338.moment H = canonicalOutput24338.moment H :=
  canonical_of_padded canonicalInput24338 canonicalOutput24338 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24339 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, 0, -1, 0, 0], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput24339 : ExponentCode := normalNode10575

theorem canonicalSound24339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24339.moment H = canonicalOutput24339.moment H :=
  canonical_of_padded canonicalInput24339 canonicalOutput24339 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24340 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![-2, 3, -1, -2, 2]]⟩

def canonicalOutput24340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code407

theorem canonicalSound24340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24340.moment H = canonicalOutput24340.moment H :=
  canonical_of_padded canonicalInput24340 canonicalOutput24340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24341 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node620⟩

theorem canonicalSound24341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24341.moment H = canonicalOutput24341.moment H :=
  canonical_of_padded canonicalInput24341 canonicalOutput24341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24342 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput24342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound24342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24342.moment H = canonicalOutput24342.moment H :=
  canonical_of_padded canonicalInput24342 canonicalOutput24342 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24343 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 1, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24343 : ExponentCode := normalNode10469

theorem canonicalSound24343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24343.moment H = canonicalOutput24343.moment H :=
  canonical_of_padded canonicalInput24343 canonicalOutput24343 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput24344 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 1, 0], ![0, 0, -1, 1, 0], ![0, 1, -1, -1, 1], ![-1, 1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24344 : ExponentCode := normalNode8761

theorem canonicalSound24344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24344.moment H = canonicalOutput24344.moment H :=
  canonical_of_padded canonicalInput24344 canonicalOutput24344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput24345 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 1, 0], ![0, 0, -1, 1, 0], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24345 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound24345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24345.moment H = canonicalOutput24345.moment H :=
  canonical_of_padded canonicalInput24345 canonicalOutput24345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24346 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 0, 1, -1], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput24346 : ExponentCode := normalNode9388

theorem canonicalSound24346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24346.moment H = canonicalOutput24346.moment H :=
  canonical_of_padded canonicalInput24346 canonicalOutput24346 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24347 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 1, -2, 2, 0], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput24347 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2497⟩

theorem canonicalSound24347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24347.moment H = canonicalOutput24347.moment H :=
  canonical_of_padded canonicalInput24347 canonicalOutput24347 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24348 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, -2, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput24348 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2538⟩

theorem canonicalSound24348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24348.moment H = canonicalOutput24348.moment H :=
  canonical_of_padded canonicalInput24348 canonicalOutput24348 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24349 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![-2, 3, -1, -1, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput24349 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code755

theorem canonicalSound24349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24349.moment H = canonicalOutput24349.moment H :=
  canonical_of_padded canonicalInput24349 canonicalOutput24349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24350 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![-1, 3, -1, -1, 0], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput24350 : ExponentCode := normalNode3361

theorem canonicalSound24350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24350.moment H = canonicalOutput24350.moment H :=
  canonical_of_padded canonicalInput24350 canonicalOutput24350 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24351 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![1, 0, -1, -1, 1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput24351 : ExponentCode := normalNode3760

theorem canonicalSound24351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24351.moment H = canonicalOutput24351.moment H :=
  canonical_of_padded canonicalInput24351 canonicalOutput24351 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24352 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![2, 0, -1, -1, 0], ![-2, 2, -1, -1, 2]]⟩

def canonicalOutput24352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code840

theorem canonicalSound24352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24352.moment H = canonicalOutput24352.moment H :=
  canonical_of_padded canonicalInput24352 canonicalOutput24352 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24353 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput24353 : ExponentCode := normalNode10529

theorem canonicalSound24353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24353.moment H = canonicalOutput24353.moment H :=
  canonical_of_padded canonicalInput24353 canonicalOutput24353 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24354 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 0, 0, 1, -2], ![-1, 1, 1, -3, 2]]⟩

def canonicalOutput24354 : ExponentCode := normalNode3768

theorem canonicalSound24354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24354.moment H = canonicalOutput24354.moment H :=
  canonical_of_padded canonicalInput24354 canonicalOutput24354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24355 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![2, 0, 0, 0, -2], ![-2, 1, 1, -2, 2]]⟩

def canonicalOutput24355 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound24355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24355.moment H = canonicalOutput24355.moment H :=
  canonical_of_padded canonicalInput24355 canonicalOutput24355 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24356 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![2, 0, 0, 1, -3], ![-2, 1, 1, -3, 3]]⟩

def canonicalOutput24356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1179

theorem canonicalSound24356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24356.moment H = canonicalOutput24356.moment H :=
  canonical_of_padded canonicalInput24356 canonicalOutput24356 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24357 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![3, 0, 0, 0, -3], ![-3, 1, 1, -2, 3]]⟩

def canonicalOutput24357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1181

theorem canonicalSound24357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24357.moment H = canonicalOutput24357.moment H :=
  canonical_of_padded canonicalInput24357 canonicalOutput24357 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24358 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![-1, 2, -2, 1, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput24358 : ExponentCode := normalNode10705

theorem canonicalSound24358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24358.moment H = canonicalOutput24358.moment H :=
  canonical_of_padded canonicalInput24358 canonicalOutput24358 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24359 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 2, -1, 0, -1], ![-2, 1, 1, -2, 2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput24359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1262

theorem canonicalSound24359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24359.moment H = canonicalOutput24359.moment H :=
  canonical_of_padded canonicalInput24359 canonicalOutput24359 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24360 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![0, 2, -1, 0, -1], ![-1, 1, 1, -2, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput24360 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound24360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24360.moment H = canonicalOutput24360.moment H :=
  canonical_of_padded canonicalInput24360 canonicalOutput24360 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24361 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-3, 1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput24361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code851

theorem canonicalSound24361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24361.moment H = canonicalOutput24361.moment H :=
  canonical_of_padded canonicalInput24361 canonicalOutput24361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24362 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-2, 1, -2, 2, 1], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput24362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound24362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24362.moment H = canonicalOutput24362.moment H :=
  canonical_of_padded canonicalInput24362 canonicalOutput24362 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24363 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-2, 1, 1, -1, 1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput24363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound24363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24363.moment H = canonicalOutput24363.moment H :=
  canonical_of_padded canonicalInput24363 canonicalOutput24363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24364 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-2, 2, -2, 1, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput24364 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code854

theorem canonicalSound24364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24364.moment H = canonicalOutput24364.moment H :=
  canonical_of_padded canonicalInput24364 canonicalOutput24364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24365 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-1, 1, -2, 2, 0], ![0, 1, 1, -4, 2]]⟩

def canonicalOutput24365 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1991⟩

theorem canonicalSound24365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24365.moment H = canonicalOutput24365.moment H :=
  canonical_of_padded canonicalInput24365 canonicalOutput24365 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24366 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 0, 0, 1, -2], ![-1, 2, -2, 1, 0], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput24366 : ExponentCode := normalNode3809

theorem canonicalSound24366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24366.moment H = canonicalOutput24366.moment H :=
  canonical_of_padded canonicalInput24366 canonicalOutput24366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24367 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 1, 0, 0, -2], ![-2, 2, -2, 1, 1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput24367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound24367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24367.moment H = canonicalOutput24367.moment H :=
  canonical_of_padded canonicalInput24367 canonicalOutput24367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24368 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 1, 0], ![1, 1, 0, 0, -2], ![-1, 2, -2, 1, 0], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput24368 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound24368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24368.moment H = canonicalOutput24368.moment H :=
  canonical_of_padded canonicalInput24368 canonicalOutput24368 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24369 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 2, -1], ![-3, 3, 1, -1, 0], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput24369 : ExponentCode := normalNode2997

theorem canonicalSound24369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24369.moment H = canonicalOutput24369.moment H :=
  canonical_of_padded canonicalInput24369 canonicalOutput24369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24370 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 2, -1], ![-2, 3, 1, -1, -1], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput24370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound24370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24370.moment H = canonicalOutput24370.moment H :=
  canonical_of_padded canonicalInput24370 canonicalOutput24370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24371 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound24371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24371.moment H = canonicalOutput24371.moment H :=
  canonical_of_padded canonicalInput24371 canonicalOutput24371 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24372 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound24372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24372.moment H = canonicalOutput24372.moment H :=
  canonical_of_padded canonicalInput24372 canonicalOutput24372 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24373 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound24373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24373.moment H = canonicalOutput24373.moment H :=
  canonical_of_padded canonicalInput24373 canonicalOutput24373 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24374 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 2, -1], ![1, -1, 1, -1, 0], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput24374 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node870⟩

theorem canonicalSound24374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24374.moment H = canonicalOutput24374.moment H :=
  canonical_of_padded canonicalInput24374 canonicalOutput24374 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24375 : ExponentCode := ⟨3, 5, ![![0, -2, 1, 2, -1], ![2, -1, 1, -1, -1], ![-2, 3, -2, -1, 2]]⟩

def canonicalOutput24375 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node526⟩

theorem canonicalSound24375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24375.moment H = canonicalOutput24375.moment H :=
  canonical_of_padded canonicalInput24375 canonicalOutput24375 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24376 : ExponentCode := ⟨4, 3, ![![0, -2, 2], ![-1, -1, 2], ![0, 5, -5], ![1, -2, 1]]⟩

def canonicalOutput24376 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩

theorem canonicalSound24376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24376.moment H = canonicalOutput24376.moment H :=
  canonical_of_padded canonicalInput24376 canonicalOutput24376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24377 : ExponentCode := ⟨3, 3, ![![0, -2, 2], ![0, -3, 3], ![0, 5, -5]]⟩

def canonicalOutput24377 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node7⟩

theorem canonicalSound24377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24377.moment H = canonicalOutput24377.moment H :=
  canonical_of_padded canonicalInput24377 canonicalOutput24377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24378 : ExponentCode := ⟨4, 3, ![![0, -2, 2], ![0, -2, 2], ![0, 2, -2], ![0, 2, -2]]⟩

def canonicalOutput24378 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node45⟩

theorem canonicalSound24378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24378.moment H = canonicalOutput24378.moment H :=
  canonical_of_padded canonicalInput24378 canonicalOutput24378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24379 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![2, 0, -2], ![0, 3, -3]]⟩

def canonicalOutput24379 : ExponentCode := normalNode4612

theorem canonicalSound24379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24379.moment H = canonicalOutput24379.moment H :=
  canonical_of_padded canonicalInput24379 canonicalOutput24379 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24380 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![0, 2, -2], ![2, 0, -2]]⟩

def canonicalOutput24380 : ExponentCode := normalNode4621

theorem canonicalSound24380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24380.moment H = canonicalOutput24380.moment H :=
  canonical_of_padded canonicalInput24380 canonicalOutput24380 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24381 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![-1, 2, -1], ![-1, 2, -1], ![2, 0, -2]]⟩

def canonicalOutput24381 : ExponentCode := normalNode4632

theorem canonicalSound24381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24381.moment H = canonicalOutput24381.moment H :=
  canonical_of_padded canonicalInput24381 canonicalOutput24381 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24382 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![2, 3, -5]]⟩

def canonicalOutput24382 : ExponentCode := normalNode339

theorem canonicalSound24382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24382.moment H = canonicalOutput24382.moment H :=
  canonical_of_padded canonicalInput24382 canonicalOutput24382 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24383 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![2, 2, -4]]⟩

def canonicalOutput24383 : ExponentCode := normalNode1005

theorem canonicalSound24383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24383.moment H = canonicalOutput24383.moment H :=
  canonical_of_padded canonicalInput24383 canonicalOutput24383 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
