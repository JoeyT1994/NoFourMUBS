import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9408 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput9408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound9408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9408.moment H = canonicalOutput9408.moment H :=
  canonical_of_padded canonicalInput9408 canonicalOutput9408 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9409 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9409 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound9409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9409.moment H = canonicalOutput9409.moment H :=
  canonical_of_padded canonicalInput9409 canonicalOutput9409 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9410 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound9410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9410.moment H = canonicalOutput9410.moment H :=
  canonical_of_padded canonicalInput9410 canonicalOutput9410 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9411 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound9411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9411.moment H = canonicalOutput9411.moment H :=
  canonical_of_padded canonicalInput9411 canonicalOutput9411 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9412 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9412 : ExponentCode := normalNode3912

theorem canonicalSound9412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9412.moment H = canonicalOutput9412.moment H :=
  canonical_of_padded canonicalInput9412 canonicalOutput9412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9413 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9413 : ExponentCode := normalNode9020

theorem canonicalSound9413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9413.moment H = canonicalOutput9413.moment H :=
  canonical_of_padded canonicalInput9413 canonicalOutput9413 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9414 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2020⟩

theorem canonicalSound9414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9414.moment H = canonicalOutput9414.moment H :=
  canonical_of_padded canonicalInput9414 canonicalOutput9414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9415 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9415 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2019⟩

theorem canonicalSound9415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9415.moment H = canonicalOutput9415.moment H :=
  canonical_of_padded canonicalInput9415 canonicalOutput9415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9416 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput9416 : ExponentCode := normalNode10263

theorem canonicalSound9416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9416.moment H = canonicalOutput9416.moment H :=
  canonical_of_padded canonicalInput9416 canonicalOutput9416 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9417 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput9417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound9417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9417.moment H = canonicalOutput9417.moment H :=
  canonical_of_padded canonicalInput9417 canonicalOutput9417 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9418 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2601⟩

theorem canonicalSound9418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9418.moment H = canonicalOutput9418.moment H :=
  canonical_of_padded canonicalInput9418 canonicalOutput9418 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9419 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9419 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound9419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9419.moment H = canonicalOutput9419.moment H :=
  canonical_of_padded canonicalInput9419 canonicalOutput9419 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput9420 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -3, 3], ![1, -2, 0, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput9420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node461⟩

theorem canonicalSound9420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9420.moment H = canonicalOutput9420.moment H :=
  canonical_of_padded canonicalInput9420 canonicalOutput9420 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9421 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound9421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9421.moment H = canonicalOutput9421.moment H :=
  canonical_of_padded canonicalInput9421 canonicalOutput9421 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9422 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput9422 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound9422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9422.moment H = canonicalOutput9422.moment H :=
  canonical_of_padded canonicalInput9422 canonicalOutput9422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9423 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9423 : ExponentCode := normalNode3780

theorem canonicalSound9423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9423.moment H = canonicalOutput9423.moment H :=
  canonical_of_padded canonicalInput9423 canonicalOutput9423 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9424 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9424 : ExponentCode := normalNode3968

theorem canonicalSound9424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9424.moment H = canonicalOutput9424.moment H :=
  canonical_of_padded canonicalInput9424 canonicalOutput9424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9425 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9425 : ExponentCode := normalNode3968

theorem canonicalSound9425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9425.moment H = canonicalOutput9425.moment H :=
  canonical_of_padded canonicalInput9425 canonicalOutput9425 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9426 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput9426 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound9426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9426.moment H = canonicalOutput9426.moment H :=
  canonical_of_padded canonicalInput9426 canonicalOutput9426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9427 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![1, -2, -1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput9427 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩

theorem canonicalSound9427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9427.moment H = canonicalOutput9427.moment H :=
  canonical_of_padded canonicalInput9427 canonicalOutput9427 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9428 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9428 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound9428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9428.moment H = canonicalOutput9428.moment H :=
  canonical_of_padded canonicalInput9428 canonicalOutput9428 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9429 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9429 : ExponentCode := normalNode10716

theorem canonicalSound9429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9429.moment H = canonicalOutput9429.moment H :=
  canonical_of_padded canonicalInput9429 canonicalOutput9429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9430 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9430 : ExponentCode := normalNode5929

theorem canonicalSound9430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9430.moment H = canonicalOutput9430.moment H :=
  canonical_of_padded canonicalInput9430 canonicalOutput9430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9431 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput9431 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2035⟩

theorem canonicalSound9431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9431.moment H = canonicalOutput9431.moment H :=
  canonical_of_padded canonicalInput9431 canonicalOutput9431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9432 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9432 : ExponentCode := normalNode2413

theorem canonicalSound9432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9432.moment H = canonicalOutput9432.moment H :=
  canonical_of_padded canonicalInput9432 canonicalOutput9432 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9433 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput9433 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound9433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9433.moment H = canonicalOutput9433.moment H :=
  canonical_of_padded canonicalInput9433 canonicalOutput9433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9434 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput9434 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound9434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9434.moment H = canonicalOutput9434.moment H :=
  canonical_of_padded canonicalInput9434 canonicalOutput9434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput9435 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput9435 : ExponentCode := normalNode4057

theorem canonicalSound9435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9435.moment H = canonicalOutput9435.moment H :=
  canonical_of_padded canonicalInput9435 canonicalOutput9435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9436 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput9436 : ExponentCode := normalNode4055

theorem canonicalSound9436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9436.moment H = canonicalOutput9436.moment H :=
  canonical_of_padded canonicalInput9436 canonicalOutput9436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9437 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 0, 1, -1], ![1, -3, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput9437 : ExponentCode := normalNode7058

theorem canonicalSound9437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9437.moment H = canonicalOutput9437.moment H :=
  canonical_of_padded canonicalInput9437 canonicalOutput9437 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9438 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9438 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound9438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9438.moment H = canonicalOutput9438.moment H :=
  canonical_of_padded canonicalInput9438 canonicalOutput9438 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput9439 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput9439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound9439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9439.moment H = canonicalOutput9439.moment H :=
  canonical_of_padded canonicalInput9439 canonicalOutput9439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9440 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9440 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code998

theorem canonicalSound9440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9440.moment H = canonicalOutput9440.moment H :=
  canonical_of_padded canonicalInput9440 canonicalOutput9440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9441 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput9441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound9441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9441.moment H = canonicalOutput9441.moment H :=
  canonical_of_padded canonicalInput9441 canonicalOutput9441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9442 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9442 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound9442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9442.moment H = canonicalOutput9442.moment H :=
  canonical_of_padded canonicalInput9442 canonicalOutput9442 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9443 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput9443 : ExponentCode := normalNode3757

theorem canonicalSound9443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9443.moment H = canonicalOutput9443.moment H :=
  canonical_of_padded canonicalInput9443 canonicalOutput9443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9444 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput9444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2043⟩

theorem canonicalSound9444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9444.moment H = canonicalOutput9444.moment H :=
  canonical_of_padded canonicalInput9444 canonicalOutput9444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9445 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput9445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound9445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9445.moment H = canonicalOutput9445.moment H :=
  canonical_of_padded canonicalInput9445 canonicalOutput9445 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9446 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput9446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound9446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9446.moment H = canonicalOutput9446.moment H :=
  canonical_of_padded canonicalInput9446 canonicalOutput9446 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9447 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -3, 3]]⟩

def canonicalOutput9447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node791⟩

theorem canonicalSound9447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9447.moment H = canonicalOutput9447.moment H :=
  canonical_of_padded canonicalInput9447 canonicalOutput9447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9448 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 0, -1], ![1, -2, -3, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput9448 : ExponentCode := normalNode9643

theorem canonicalSound9448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9448.moment H = canonicalOutput9448.moment H :=
  canonical_of_padded canonicalInput9448 canonicalOutput9448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9449 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput9449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound9449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9449.moment H = canonicalOutput9449.moment H :=
  canonical_of_padded canonicalInput9449 canonicalOutput9449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9450 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput9450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound9450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9450.moment H = canonicalOutput9450.moment H :=
  canonical_of_padded canonicalInput9450 canonicalOutput9450 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9451 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 1, -2], ![1, -2, -3, 4], ![1, 1, 0, -2]]⟩

def canonicalOutput9451 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node403⟩

theorem canonicalSound9451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9451.moment H = canonicalOutput9451.moment H :=
  canonical_of_padded canonicalInput9451 canonicalOutput9451 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9452 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput9452 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound9452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9452.moment H = canonicalOutput9452.moment H :=
  canonical_of_padded canonicalInput9452 canonicalOutput9452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9453 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput9453 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩

theorem canonicalSound9453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9453.moment H = canonicalOutput9453.moment H :=
  canonical_of_padded canonicalInput9453 canonicalOutput9453 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput9454 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -2, -3, 4], ![1, 0, 1, -2]]⟩

def canonicalOutput9454 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node401⟩

theorem canonicalSound9454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9454.moment H = canonicalOutput9454.moment H :=
  canonical_of_padded canonicalInput9454 canonicalOutput9454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9455 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, 2, 1, -3], ![1, -3, 0, 2], ![1, 1, -3, 1]]⟩

def canonicalOutput9455 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound9455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9455.moment H = canonicalOutput9455.moment H :=
  canonical_of_padded canonicalInput9455 canonicalOutput9455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9456 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![0, 4, -1, -3], ![2, -4, -1, 3]]⟩

def canonicalOutput9456 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node193⟩

theorem canonicalSound9456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9456.moment H = canonicalOutput9456.moment H :=
  canonical_of_padded canonicalInput9456 canonicalOutput9456 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9457 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -4, 1, 2], ![1, 4, -3, -2]]⟩

def canonicalOutput9457 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound9457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9457.moment H = canonicalOutput9457.moment H :=
  canonical_of_padded canonicalInput9457 canonicalOutput9457 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9458 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -4, 2, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput9458 : ExponentCode := normalNode1002

theorem canonicalSound9458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9458.moment H = canonicalOutput9458.moment H :=
  canonical_of_padded canonicalInput9458 canonicalOutput9458 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9459 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -3, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput9459 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound9459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9459.moment H = canonicalOutput9459.moment H :=
  canonical_of_padded canonicalInput9459 canonicalOutput9459 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9460 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput9460 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound9460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9460.moment H = canonicalOutput9460.moment H :=
  canonical_of_padded canonicalInput9460 canonicalOutput9460 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9461 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -3, 3, -1], ![1, 3, -5, 1]]⟩

def canonicalOutput9461 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound9461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9461.moment H = canonicalOutput9461.moment H :=
  canonical_of_padded canonicalInput9461 canonicalOutput9461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9462 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -2, -2, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput9462 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound9462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9462.moment H = canonicalOutput9462.moment H :=
  canonical_of_padded canonicalInput9462 canonicalOutput9462 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9463 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, -2, 3, -2], ![1, 2, -5, 2]]⟩

def canonicalOutput9463 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound9463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9463.moment H = canonicalOutput9463.moment H :=
  canonical_of_padded canonicalInput9463 canonicalOutput9463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9464 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, 2, -4, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput9464 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node146⟩

theorem canonicalSound9464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9464.moment H = canonicalOutput9464.moment H :=
  canonical_of_padded canonicalInput9464 canonicalOutput9464 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9465 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, 2, 1, -4], ![1, -2, -3, 4]]⟩

def canonicalOutput9465 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound9465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9465.moment H = canonicalOutput9465.moment H :=
  canonical_of_padded canonicalInput9465 canonicalOutput9465 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9466 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![1, 3, -1, -3], ![1, -3, -1, 3]]⟩

def canonicalOutput9466 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound9466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9466.moment H = canonicalOutput9466.moment H :=
  canonical_of_padded canonicalInput9466 canonicalOutput9466 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9467 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![2, -4, 1, 1], ![0, 4, -3, -1]]⟩

def canonicalOutput9467 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩

theorem canonicalSound9467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9467.moment H = canonicalOutput9467.moment H :=
  canonical_of_padded canonicalInput9467 canonicalOutput9467 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9468 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![2, -3, 0, 1], ![0, 3, -2, -1]]⟩

def canonicalOutput9468 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound9468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9468.moment H = canonicalOutput9468.moment H :=
  canonical_of_padded canonicalInput9468 canonicalOutput9468 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9469 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, 0, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9469 : ExponentCode := normalNode6623

theorem canonicalSound9469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9469.moment H = canonicalOutput9469.moment H :=
  canonical_of_padded canonicalInput9469 canonicalOutput9469 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9470 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput9470 : ExponentCode := normalNode9568

theorem canonicalSound9470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9470.moment H = canonicalOutput9470.moment H :=
  canonical_of_padded canonicalInput9470 canonicalOutput9470 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput9471 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, 0, 0], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput9471 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code825

theorem canonicalSound9471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9471.moment H = canonicalOutput9471.moment H :=
  canonical_of_padded canonicalInput9471 canonicalOutput9471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
