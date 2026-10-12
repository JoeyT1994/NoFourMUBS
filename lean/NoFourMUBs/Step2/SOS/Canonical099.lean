import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6336 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6336 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1470⟩

theorem canonicalSound6336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6336.moment H = canonicalOutput6336.moment H :=
  canonical_of_padded canonicalInput6336 canonicalOutput6336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6337 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6337 : ExponentCode := normalNode3332

theorem canonicalSound6337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6337.moment H = canonicalOutput6337.moment H :=
  canonical_of_padded canonicalInput6337 canonicalOutput6337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6338 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput6338 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1325⟩

theorem canonicalSound6338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6338.moment H = canonicalOutput6338.moment H :=
  canonical_of_padded canonicalInput6338 canonicalOutput6338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6339 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6339 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1186⟩

theorem canonicalSound6339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6339.moment H = canonicalOutput6339.moment H :=
  canonical_of_padded canonicalInput6339 canonicalOutput6339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6340 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6340 : ExponentCode := normalNode9009

theorem canonicalSound6340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6340.moment H = canonicalOutput6340.moment H :=
  canonical_of_padded canonicalInput6340 canonicalOutput6340 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6341 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput6341 : ExponentCode := normalNode10549

theorem canonicalSound6341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6341.moment H = canonicalOutput6341.moment H :=
  canonical_of_padded canonicalInput6341 canonicalOutput6341 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6342 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound6342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6342.moment H = canonicalOutput6342.moment H :=
  canonical_of_padded canonicalInput6342 canonicalOutput6342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6343 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput6343 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1937⟩

theorem canonicalSound6343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6343.moment H = canonicalOutput6343.moment H :=
  canonical_of_padded canonicalInput6343 canonicalOutput6343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6344 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput6344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1055⟩

theorem canonicalSound6344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6344.moment H = canonicalOutput6344.moment H :=
  canonical_of_padded canonicalInput6344 canonicalOutput6344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6345 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6345 : ExponentCode := normalNode3329

theorem canonicalSound6345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6345.moment H = canonicalOutput6345.moment H :=
  canonical_of_padded canonicalInput6345 canonicalOutput6345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6346 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node402⟩

theorem canonicalSound6346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6346.moment H = canonicalOutput6346.moment H :=
  canonical_of_padded canonicalInput6346 canonicalOutput6346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6347 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput6347 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1236⟩

theorem canonicalSound6347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6347.moment H = canonicalOutput6347.moment H :=
  canonical_of_padded canonicalInput6347 canonicalOutput6347 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6348 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6348 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node786⟩

theorem canonicalSound6348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6348.moment H = canonicalOutput6348.moment H :=
  canonical_of_padded canonicalInput6348 canonicalOutput6348 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6349 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6349 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1938⟩

theorem canonicalSound6349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6349.moment H = canonicalOutput6349.moment H :=
  canonical_of_padded canonicalInput6349 canonicalOutput6349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6350 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput6350 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1159⟩

theorem canonicalSound6350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6350.moment H = canonicalOutput6350.moment H :=
  canonical_of_padded canonicalInput6350 canonicalOutput6350 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6351 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6351 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1467⟩

theorem canonicalSound6351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6351.moment H = canonicalOutput6351.moment H :=
  canonical_of_padded canonicalInput6351 canonicalOutput6351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6352 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput6352 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1180⟩

theorem canonicalSound6352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6352.moment H = canonicalOutput6352.moment H :=
  canonical_of_padded canonicalInput6352 canonicalOutput6352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6353 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput6353 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node400⟩

theorem canonicalSound6353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6353.moment H = canonicalOutput6353.moment H :=
  canonical_of_padded canonicalInput6353 canonicalOutput6353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6354 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput6354 : ExponentCode := normalNode9872

theorem canonicalSound6354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6354.moment H = canonicalOutput6354.moment H :=
  canonical_of_padded canonicalInput6354 canonicalOutput6354 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6355 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1939⟩

theorem canonicalSound6355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6355.moment H = canonicalOutput6355.moment H :=
  canonical_of_padded canonicalInput6355 canonicalOutput6355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6356 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput6356 : ExponentCode := normalNode9678

theorem canonicalSound6356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6356.moment H = canonicalOutput6356.moment H :=
  canonical_of_padded canonicalInput6356 canonicalOutput6356 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6357 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, -2, 0], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6357 : ExponentCode := normalNode10882

theorem canonicalSound6357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6357.moment H = canonicalOutput6357.moment H :=
  canonical_of_padded canonicalInput6357 canonicalOutput6357 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput6358 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput6358 : ExponentCode := normalNode10899

theorem canonicalSound6358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6358.moment H = canonicalOutput6358.moment H :=
  canonical_of_padded canonicalInput6358 canonicalOutput6358 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6359 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, -1, -1], ![1, -2, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6359 : ExponentCode := normalNode7437

theorem canonicalSound6359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6359.moment H = canonicalOutput6359.moment H :=
  canonical_of_padded canonicalInput6359 canonicalOutput6359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput6360 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6360 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩

theorem canonicalSound6360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6360.moment H = canonicalOutput6360.moment H :=
  canonical_of_padded canonicalInput6360 canonicalOutput6360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6361 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, 1, -3], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6361 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩

theorem canonicalSound6361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6361.moment H = canonicalOutput6361.moment H :=
  canonical_of_padded canonicalInput6361 canonicalOutput6361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6362 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, 2, -4], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6362 : ExponentCode := normalNode9117

theorem canonicalSound6362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6362.moment H = canonicalOutput6362.moment H :=
  canonical_of_padded canonicalInput6362 canonicalOutput6362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6363 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, 3, -5], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6363 : ExponentCode := normalNode9547

theorem canonicalSound6363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6363.moment H = canonicalOutput6363.moment H :=
  canonical_of_padded canonicalInput6363 canonicalOutput6363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6364 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 2, 3, -5], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput6364 : ExponentCode := normalNode8919

theorem canonicalSound6364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6364.moment H = canonicalOutput6364.moment H :=
  canonical_of_padded canonicalInput6364 canonicalOutput6364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6365 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 1, 0], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6365 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node583⟩

theorem canonicalSound6365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6365.moment H = canonicalOutput6365.moment H :=
  canonical_of_padded canonicalInput6365 canonicalOutput6365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6366 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 1, 0], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6366 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩

theorem canonicalSound6366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6366.moment H = canonicalOutput6366.moment H :=
  canonical_of_padded canonicalInput6366 canonicalOutput6366 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6367 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6367 : ExponentCode := normalNode9117

theorem canonicalSound6367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6367.moment H = canonicalOutput6367.moment H :=
  canonical_of_padded canonicalInput6367 canonicalOutput6367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6368 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 2, -1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code742

theorem canonicalSound6368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6368.moment H = canonicalOutput6368.moment H :=
  canonical_of_padded canonicalInput6368 canonicalOutput6368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6369 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6369 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node773⟩

theorem canonicalSound6369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6369.moment H = canonicalOutput6369.moment H :=
  canonical_of_padded canonicalInput6369 canonicalOutput6369 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6370 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1087⟩

theorem canonicalSound6370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6370.moment H = canonicalOutput6370.moment H :=
  canonical_of_padded canonicalInput6370 canonicalOutput6370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6371 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6371 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code740

theorem canonicalSound6371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6371.moment H = canonicalOutput6371.moment H :=
  canonical_of_padded canonicalInput6371 canonicalOutput6371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6372 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 3, -2], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code746

theorem canonicalSound6372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6372.moment H = canonicalOutput6372.moment H :=
  canonical_of_padded canonicalInput6372 canonicalOutput6372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6373 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩

theorem canonicalSound6373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6373.moment H = canonicalOutput6373.moment H :=
  canonical_of_padded canonicalInput6373 canonicalOutput6373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6374 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 4, -3], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6374 : ExponentCode := normalNode10882

theorem canonicalSound6374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6374.moment H = canonicalOutput6374.moment H :=
  canonical_of_padded canonicalInput6374 canonicalOutput6374 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6375 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -2, 4, -3], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6375 : ExponentCode := normalNode7437

theorem canonicalSound6375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6375.moment H = canonicalOutput6375.moment H :=
  canonical_of_padded canonicalInput6375 canonicalOutput6375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6376 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -1, 1, -1], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node585⟩

theorem canonicalSound6376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6376.moment H = canonicalOutput6376.moment H :=
  canonical_of_padded canonicalInput6376 canonicalOutput6376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6377 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -1, 2, -2], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput6377 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code748

theorem canonicalSound6377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6377.moment H = canonicalOutput6377.moment H :=
  canonical_of_padded canonicalInput6377 canonicalOutput6377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6378 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -1, 3, -3], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code747

theorem canonicalSound6378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6378.moment H = canonicalOutput6378.moment H :=
  canonical_of_padded canonicalInput6378 canonicalOutput6378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6379 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -1, 3, -3], ![0, 2, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput6379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code752

theorem canonicalSound6379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6379.moment H = canonicalOutput6379.moment H :=
  canonical_of_padded canonicalInput6379 canonicalOutput6379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6380 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, -1, 4, -4], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6380 : ExponentCode := normalNode10899

theorem canonicalSound6380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6380.moment H = canonicalOutput6380.moment H :=
  canonical_of_padded canonicalInput6380 canonicalOutput6380 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6381 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, 0, 1, -2], ![0, 2, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput6381 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node469⟩

theorem canonicalSound6381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6381.moment H = canonicalOutput6381.moment H :=
  canonical_of_padded canonicalInput6381 canonicalOutput6381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6382 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![1, 0, 3, -4], ![0, 2, -2, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput6382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code745

theorem canonicalSound6382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6382.moment H = canonicalOutput6382.moment H :=
  canonical_of_padded canonicalInput6382 canonicalOutput6382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6383 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 0, 3], ![0, -2, 1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput6383 : ExponentCode := normalNode9562

theorem canonicalSound6383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6383.moment H = canonicalOutput6383.moment H :=
  canonical_of_padded canonicalInput6383 canonicalOutput6383 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6384 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput6384 : ExponentCode := normalNode9140

theorem canonicalSound6384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6384.moment H = canonicalOutput6384.moment H :=
  canonical_of_padded canonicalInput6384 canonicalOutput6384 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput6385 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput6385 : ExponentCode := normalNode6540

theorem canonicalSound6385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6385.moment H = canonicalOutput6385.moment H :=
  canonical_of_padded canonicalInput6385 canonicalOutput6385 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6386 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6386 : ExponentCode := normalNode9167

theorem canonicalSound6386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6386.moment H = canonicalOutput6386.moment H :=
  canonical_of_padded canonicalInput6386 canonicalOutput6386 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput6387 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput6387 : ExponentCode := normalNode10786

theorem canonicalSound6387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6387.moment H = canonicalOutput6387.moment H :=
  canonical_of_padded canonicalInput6387 canonicalOutput6387 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput6388 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput6388 : ExponentCode := normalNode10787

theorem canonicalSound6388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6388.moment H = canonicalOutput6388.moment H :=
  canonical_of_padded canonicalInput6388 canonicalOutput6388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6389 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6389 : ExponentCode := normalNode10789

theorem canonicalSound6389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6389.moment H = canonicalOutput6389.moment H :=
  canonical_of_padded canonicalInput6389 canonicalOutput6389 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6390 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code365

theorem canonicalSound6390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6390.moment H = canonicalOutput6390.moment H :=
  canonical_of_padded canonicalInput6390 canonicalOutput6390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6391 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6391 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code367

theorem canonicalSound6391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6391.moment H = canonicalOutput6391.moment H :=
  canonical_of_padded canonicalInput6391 canonicalOutput6391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6392 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 1, 0], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6392 : ExponentCode := normalNode8104

theorem canonicalSound6392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6392.moment H = canonicalOutput6392.moment H :=
  canonical_of_padded canonicalInput6392 canonicalOutput6392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6393 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput6393 : ExponentCode := normalNode8188

theorem canonicalSound6393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6393.moment H = canonicalOutput6393.moment H :=
  canonical_of_padded canonicalInput6393 canonicalOutput6393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6394 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6394 : ExponentCode := normalNode8125

theorem canonicalSound6394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6394.moment H = canonicalOutput6394.moment H :=
  canonical_of_padded canonicalInput6394 canonicalOutput6394 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6395 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -2, 2, 0, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6395 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code360

theorem canonicalSound6395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6395.moment H = canonicalOutput6395.moment H :=
  canonical_of_padded canonicalInput6395 canonicalOutput6395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6396 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6396 : ExponentCode := normalNode7567

theorem canonicalSound6396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6396.moment H = canonicalOutput6396.moment H :=
  canonical_of_padded canonicalInput6396 canonicalOutput6396 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput6397 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput6397 : ExponentCode := normalNode10058

theorem canonicalSound6397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6397.moment H = canonicalOutput6397.moment H :=
  canonical_of_padded canonicalInput6397 canonicalOutput6397 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput6398 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput6398 : ExponentCode := normalNode10062

theorem canonicalSound6398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6398.moment H = canonicalOutput6398.moment H :=
  canonical_of_padded canonicalInput6398 canonicalOutput6398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput6399 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6399 : ExponentCode := normalNode8373

theorem canonicalSound6399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6399.moment H = canonicalOutput6399.moment H :=
  canonical_of_padded canonicalInput6399 canonicalOutput6399 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
