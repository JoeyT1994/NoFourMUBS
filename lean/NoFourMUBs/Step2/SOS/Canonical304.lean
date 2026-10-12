import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19456 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19456 : ExponentCode := normalNode10647

theorem canonicalSound19456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19456.moment H = canonicalOutput19456.moment H :=
  canonical_of_padded canonicalInput19456 canonicalOutput19456 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19457 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 0, 2, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput19457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound19457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19457.moment H = canonicalOutput19457.moment H :=
  canonical_of_padded canonicalInput19457 canonicalOutput19457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19458 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput19458 : ExponentCode := normalNode10656

theorem canonicalSound19458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19458.moment H = canonicalOutput19458.moment H :=
  canonical_of_padded canonicalInput19458 canonicalOutput19458 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19459 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19459 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2773⟩

theorem canonicalSound19459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19459.moment H = canonicalOutput19459.moment H :=
  canonical_of_padded canonicalInput19459 canonicalOutput19459 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19460 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19460 : ExponentCode := normalNode4523

theorem canonicalSound19460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19460.moment H = canonicalOutput19460.moment H :=
  canonical_of_padded canonicalInput19460 canonicalOutput19460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19461 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19461 : ExponentCode := normalNode4122

theorem canonicalSound19461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19461.moment H = canonicalOutput19461.moment H :=
  canonical_of_padded canonicalInput19461 canonicalOutput19461 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19462 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput19462 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound19462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19462.moment H = canonicalOutput19462.moment H :=
  canonical_of_padded canonicalInput19462 canonicalOutput19462 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19463 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 0, 3, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput19463 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound19463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19463.moment H = canonicalOutput19463.moment H :=
  canonical_of_padded canonicalInput19463 canonicalOutput19463 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19464 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19464 : ExponentCode := normalNode10290

theorem canonicalSound19464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19464.moment H = canonicalOutput19464.moment H :=
  canonical_of_padded canonicalInput19464 canonicalOutput19464 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19465 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19465 : ExponentCode := normalNode10643

theorem canonicalSound19465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19465.moment H = canonicalOutput19465.moment H :=
  canonical_of_padded canonicalInput19465 canonicalOutput19465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19466 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput19466 : ExponentCode := normalNode10640

theorem canonicalSound19466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19466.moment H = canonicalOutput19466.moment H :=
  canonical_of_padded canonicalInput19466 canonicalOutput19466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19467 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput19467 : ExponentCode := normalNode10654

theorem canonicalSound19467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19467.moment H = canonicalOutput19467.moment H :=
  canonical_of_padded canonicalInput19467 canonicalOutput19467 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19468 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput19468 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound19468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19468.moment H = canonicalOutput19468.moment H :=
  canonical_of_padded canonicalInput19468 canonicalOutput19468 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19469 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 0, 4, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput19469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound19469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19469.moment H = canonicalOutput19469.moment H :=
  canonical_of_padded canonicalInput19469 canonicalOutput19469 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19470 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput19470 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1173

theorem canonicalSound19470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19470.moment H = canonicalOutput19470.moment H :=
  canonical_of_padded canonicalInput19470 canonicalOutput19470 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19471 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19471 : ExponentCode := normalNode8873

theorem canonicalSound19471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19471.moment H = canonicalOutput19471.moment H :=
  canonical_of_padded canonicalInput19471 canonicalOutput19471 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19472 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1382

theorem canonicalSound19472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19472.moment H = canonicalOutput19472.moment H :=
  canonical_of_padded canonicalInput19472 canonicalOutput19472 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19473 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19473 : ExponentCode := normalNode9939

theorem canonicalSound19473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19473.moment H = canonicalOutput19473.moment H :=
  canonical_of_padded canonicalInput19473 canonicalOutput19473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19474 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19474 : ExponentCode := normalNode10915

theorem canonicalSound19474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19474.moment H = canonicalOutput19474.moment H :=
  canonical_of_padded canonicalInput19474 canonicalOutput19474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19475 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput19475 : ExponentCode := normalNode9939

theorem canonicalSound19475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19475.moment H = canonicalOutput19475.moment H :=
  canonical_of_padded canonicalInput19475 canonicalOutput19475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19476 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19476 : ExponentCode := normalNode11134

theorem canonicalSound19476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19476.moment H = canonicalOutput19476.moment H :=
  canonical_of_padded canonicalInput19476 canonicalOutput19476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19477 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19477 : ExponentCode := normalNode11168

theorem canonicalSound19477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19477.moment H = canonicalOutput19477.moment H :=
  canonical_of_padded canonicalInput19477 canonicalOutput19477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19478 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19478 : ExponentCode := normalNode11136

theorem canonicalSound19478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19478.moment H = canonicalOutput19478.moment H :=
  canonical_of_padded canonicalInput19478 canonicalOutput19478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19479 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19479 : ExponentCode := normalNode11093

theorem canonicalSound19479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19479.moment H = canonicalOutput19479.moment H :=
  canonical_of_padded canonicalInput19479 canonicalOutput19479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19480 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19480 : ExponentCode := normalNode11095

theorem canonicalSound19480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19480.moment H = canonicalOutput19480.moment H :=
  canonical_of_padded canonicalInput19480 canonicalOutput19480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19481 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19481 : ExponentCode := normalNode11095

theorem canonicalSound19481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19481.moment H = canonicalOutput19481.moment H :=
  canonical_of_padded canonicalInput19481 canonicalOutput19481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19482 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19482 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2679⟩

theorem canonicalSound19482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19482.moment H = canonicalOutput19482.moment H :=
  canonical_of_padded canonicalInput19482 canonicalOutput19482 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19483 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput19483 : ExponentCode := normalNode4917

theorem canonicalSound19483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19483.moment H = canonicalOutput19483.moment H :=
  canonical_of_padded canonicalInput19483 canonicalOutput19483 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19484 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1359⟩

theorem canonicalSound19484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19484.moment H = canonicalOutput19484.moment H :=
  canonical_of_padded canonicalInput19484 canonicalOutput19484 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19485 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput19485 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound19485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19485.moment H = canonicalOutput19485.moment H :=
  canonical_of_padded canonicalInput19485 canonicalOutput19485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19486 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19486 : ExponentCode := normalNode7482

theorem canonicalSound19486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19486.moment H = canonicalOutput19486.moment H :=
  canonical_of_padded canonicalInput19486 canonicalOutput19486 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19487 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput19487 : ExponentCode := normalNode7482

theorem canonicalSound19487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19487.moment H = canonicalOutput19487.moment H :=
  canonical_of_padded canonicalInput19487 canonicalOutput19487 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19488 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound19488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19488.moment H = canonicalOutput19488.moment H :=
  canonical_of_padded canonicalInput19488 canonicalOutput19488 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19489 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput19489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound19489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19489.moment H = canonicalOutput19489.moment H :=
  canonical_of_padded canonicalInput19489 canonicalOutput19489 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19490 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19490 : ExponentCode := normalNode1784

theorem canonicalSound19490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19490.moment H = canonicalOutput19490.moment H :=
  canonical_of_padded canonicalInput19490 canonicalOutput19490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19491 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19491 : ExponentCode := normalNode4016

theorem canonicalSound19491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19491.moment H = canonicalOutput19491.moment H :=
  canonical_of_padded canonicalInput19491 canonicalOutput19491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19492 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19492 : ExponentCode := normalNode4014

theorem canonicalSound19492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19492.moment H = canonicalOutput19492.moment H :=
  canonical_of_padded canonicalInput19492 canonicalOutput19492 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19493 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound19493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19493.moment H = canonicalOutput19493.moment H :=
  canonical_of_padded canonicalInput19493 canonicalOutput19493 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19494 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19494 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound19494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19494.moment H = canonicalOutput19494.moment H :=
  canonical_of_padded canonicalInput19494 canonicalOutput19494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput19495 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19495 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2263⟩

theorem canonicalSound19495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19495.moment H = canonicalOutput19495.moment H :=
  canonical_of_padded canonicalInput19495 canonicalOutput19495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19496 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19496 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2211⟩

theorem canonicalSound19496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19496.moment H = canonicalOutput19496.moment H :=
  canonical_of_padded canonicalInput19496 canonicalOutput19496 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19497 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput19497 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound19497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19497.moment H = canonicalOutput19497.moment H :=
  canonical_of_padded canonicalInput19497 canonicalOutput19497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19498 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound19498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19498.moment H = canonicalOutput19498.moment H :=
  canonical_of_padded canonicalInput19498 canonicalOutput19498 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19499 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19499 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound19499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19499.moment H = canonicalOutput19499.moment H :=
  canonical_of_padded canonicalInput19499 canonicalOutput19499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19500 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput19500 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound19500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19500.moment H = canonicalOutput19500.moment H :=
  canonical_of_padded canonicalInput19500 canonicalOutput19500 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19501 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19501 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound19501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19501.moment H = canonicalOutput19501.moment H :=
  canonical_of_padded canonicalInput19501 canonicalOutput19501 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19502 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19502 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩

theorem canonicalSound19502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19502.moment H = canonicalOutput19502.moment H :=
  canonical_of_padded canonicalInput19502 canonicalOutput19502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19503 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 1, -1], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19503 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound19503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19503.moment H = canonicalOutput19503.moment H :=
  canonical_of_padded canonicalInput19503 canonicalOutput19503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19504 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19504 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound19504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19504.moment H = canonicalOutput19504.moment H :=
  canonical_of_padded canonicalInput19504 canonicalOutput19504 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput19505 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19505 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2264⟩

theorem canonicalSound19505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19505.moment H = canonicalOutput19505.moment H :=
  canonical_of_padded canonicalInput19505 canonicalOutput19505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19506 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19506 : ExponentCode := normalNode9827

theorem canonicalSound19506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19506.moment H = canonicalOutput19506.moment H :=
  canonical_of_padded canonicalInput19506 canonicalOutput19506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19507 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19507 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound19507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19507.moment H = canonicalOutput19507.moment H :=
  canonical_of_padded canonicalInput19507 canonicalOutput19507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19508 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput19508 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1261

theorem canonicalSound19508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19508.moment H = canonicalOutput19508.moment H :=
  canonical_of_padded canonicalInput19508 canonicalOutput19508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19509 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput19509 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound19509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19509.moment H = canonicalOutput19509.moment H :=
  canonical_of_padded canonicalInput19509 canonicalOutput19509 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19510 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19510 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound19510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19510.moment H = canonicalOutput19510.moment H :=
  canonical_of_padded canonicalInput19510 canonicalOutput19510 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19511 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19511 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound19511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19511.moment H = canonicalOutput19511.moment H :=
  canonical_of_padded canonicalInput19511 canonicalOutput19511 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19512 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, 0, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput19512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound19512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19512.moment H = canonicalOutput19512.moment H :=
  canonical_of_padded canonicalInput19512 canonicalOutput19512 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19513 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19513 : ExponentCode := normalNode10966

theorem canonicalSound19513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19513.moment H = canonicalOutput19513.moment H :=
  canonical_of_padded canonicalInput19513 canonicalOutput19513 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19514 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19514 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound19514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19514.moment H = canonicalOutput19514.moment H :=
  canonical_of_padded canonicalInput19514 canonicalOutput19514 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput19515 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput19515 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1263

theorem canonicalSound19515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19515.moment H = canonicalOutput19515.moment H :=
  canonical_of_padded canonicalInput19515 canonicalOutput19515 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19516 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19516 : ExponentCode := normalNode5274

theorem canonicalSound19516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19516.moment H = canonicalOutput19516.moment H :=
  canonical_of_padded canonicalInput19516 canonicalOutput19516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19517 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput19517 : ExponentCode := normalNode5273

theorem canonicalSound19517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19517.moment H = canonicalOutput19517.moment H :=
  canonical_of_padded canonicalInput19517 canonicalOutput19517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19518 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput19518 : ExponentCode := normalNode9836

theorem canonicalSound19518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19518.moment H = canonicalOutput19518.moment H :=
  canonical_of_padded canonicalInput19518 canonicalOutput19518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19519 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19519 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound19519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19519.moment H = canonicalOutput19519.moment H :=
  canonical_of_padded canonicalInput19519 canonicalOutput19519 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
