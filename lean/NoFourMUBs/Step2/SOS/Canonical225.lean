import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14400 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14400 : ExponentCode := normalNode7406

theorem canonicalSound14400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14400.moment H = canonicalOutput14400.moment H :=
  canonical_of_padded canonicalInput14400 canonicalOutput14400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14401 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14401 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1558⟩

theorem canonicalSound14401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14401.moment H = canonicalOutput14401.moment H :=
  canonical_of_padded canonicalInput14401 canonicalOutput14401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14402 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14402 : ExponentCode := normalNode11065

theorem canonicalSound14402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14402.moment H = canonicalOutput14402.moment H :=
  canonical_of_padded canonicalInput14402 canonicalOutput14402 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14403 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1176⟩

theorem canonicalSound14403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14403.moment H = canonicalOutput14403.moment H :=
  canonical_of_padded canonicalInput14403 canonicalOutput14403 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14404 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 1, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput14404 : ExponentCode := normalNode7408

theorem canonicalSound14404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14404.moment H = canonicalOutput14404.moment H :=
  canonical_of_padded canonicalInput14404 canonicalOutput14404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14405 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14405 : ExponentCode := normalNode7417

theorem canonicalSound14405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14405.moment H = canonicalOutput14405.moment H :=
  canonical_of_padded canonicalInput14405 canonicalOutput14405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14406 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14406 : ExponentCode := normalNode7418

theorem canonicalSound14406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14406.moment H = canonicalOutput14406.moment H :=
  canonical_of_padded canonicalInput14406 canonicalOutput14406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14407 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14407 : ExponentCode := normalNode7418

theorem canonicalSound14407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14407.moment H = canonicalOutput14407.moment H :=
  canonical_of_padded canonicalInput14407 canonicalOutput14407 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14408 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14408 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1557⟩

theorem canonicalSound14408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14408.moment H = canonicalOutput14408.moment H :=
  canonical_of_padded canonicalInput14408 canonicalOutput14408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14409 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14409 : ExponentCode := normalNode7416

theorem canonicalSound14409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14409.moment H = canonicalOutput14409.moment H :=
  canonical_of_padded canonicalInput14409 canonicalOutput14409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14410 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2394⟩

theorem canonicalSound14410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14410.moment H = canonicalOutput14410.moment H :=
  canonical_of_padded canonicalInput14410 canonicalOutput14410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14411 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14411 : ExponentCode := normalNode7415

theorem canonicalSound14411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14411.moment H = canonicalOutput14411.moment H :=
  canonical_of_padded canonicalInput14411 canonicalOutput14411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14412 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput14412 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound14412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14412.moment H = canonicalOutput14412.moment H :=
  canonical_of_padded canonicalInput14412 canonicalOutput14412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14413 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14413 : ExponentCode := normalNode4018

theorem canonicalSound14413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14413.moment H = canonicalOutput14413.moment H :=
  canonical_of_padded canonicalInput14413 canonicalOutput14413 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14414 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14414 : ExponentCode := normalNode3957

theorem canonicalSound14414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14414.moment H = canonicalOutput14414.moment H :=
  canonical_of_padded canonicalInput14414 canonicalOutput14414 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14415 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14415 : ExponentCode := normalNode3479

theorem canonicalSound14415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14415.moment H = canonicalOutput14415.moment H :=
  canonical_of_padded canonicalInput14415 canonicalOutput14415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14416 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput14416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code320

theorem canonicalSound14416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14416.moment H = canonicalOutput14416.moment H :=
  canonical_of_padded canonicalInput14416 canonicalOutput14416 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14417 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput14417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound14417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14417.moment H = canonicalOutput14417.moment H :=
  canonical_of_padded canonicalInput14417 canonicalOutput14417 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14418 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput14418 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩

theorem canonicalSound14418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14418.moment H = canonicalOutput14418.moment H :=
  canonical_of_padded canonicalInput14418 canonicalOutput14418 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14419 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput14419 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code619

theorem canonicalSound14419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14419.moment H = canonicalOutput14419.moment H :=
  canonical_of_padded canonicalInput14419 canonicalOutput14419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14420 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound14420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14420.moment H = canonicalOutput14420.moment H :=
  canonical_of_padded canonicalInput14420 canonicalOutput14420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14421 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node769⟩

theorem canonicalSound14421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14421.moment H = canonicalOutput14421.moment H :=
  canonical_of_padded canonicalInput14421 canonicalOutput14421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14422 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput14422 : ExponentCode := normalNode7419

theorem canonicalSound14422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14422.moment H = canonicalOutput14422.moment H :=
  canonical_of_padded canonicalInput14422 canonicalOutput14422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14423 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14423 : ExponentCode := normalNode7427

theorem canonicalSound14423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14423.moment H = canonicalOutput14423.moment H :=
  canonical_of_padded canonicalInput14423 canonicalOutput14423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14424 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14424 : ExponentCode := normalNode7428

theorem canonicalSound14424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14424.moment H = canonicalOutput14424.moment H :=
  canonical_of_padded canonicalInput14424 canonicalOutput14424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14425 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14425 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2500⟩

theorem canonicalSound14425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14425.moment H = canonicalOutput14425.moment H :=
  canonical_of_padded canonicalInput14425 canonicalOutput14425 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14426 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14426 : ExponentCode := normalNode7426

theorem canonicalSound14426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14426.moment H = canonicalOutput14426.moment H :=
  canonical_of_padded canonicalInput14426 canonicalOutput14426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14427 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput14427 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩

theorem canonicalSound14427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14427.moment H = canonicalOutput14427.moment H :=
  canonical_of_padded canonicalInput14427 canonicalOutput14427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14428 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14428 : ExponentCode := normalNode3993

theorem canonicalSound14428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14428.moment H = canonicalOutput14428.moment H :=
  canonical_of_padded canonicalInput14428 canonicalOutput14428 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14429 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14429 : ExponentCode := normalNode3960

theorem canonicalSound14429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14429.moment H = canonicalOutput14429.moment H :=
  canonical_of_padded canonicalInput14429 canonicalOutput14429 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14430 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14430 : ExponentCode := normalNode4399

theorem canonicalSound14430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14430.moment H = canonicalOutput14430.moment H :=
  canonical_of_padded canonicalInput14430 canonicalOutput14430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14431 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput14431 : ExponentCode := normalNode3891

theorem canonicalSound14431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14431.moment H = canonicalOutput14431.moment H :=
  canonical_of_padded canonicalInput14431 canonicalOutput14431 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14432 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14432 : ExponentCode := normalNode3943

theorem canonicalSound14432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14432.moment H = canonicalOutput14432.moment H :=
  canonical_of_padded canonicalInput14432 canonicalOutput14432 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14433 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput14433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code474

theorem canonicalSound14433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14433.moment H = canonicalOutput14433.moment H :=
  canonical_of_padded canonicalInput14433 canonicalOutput14433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14434 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput14434 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code624

theorem canonicalSound14434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14434.moment H = canonicalOutput14434.moment H :=
  canonical_of_padded canonicalInput14434 canonicalOutput14434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14435 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14435 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound14435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14435.moment H = canonicalOutput14435.moment H :=
  canonical_of_padded canonicalInput14435 canonicalOutput14435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14436 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput14436 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩

theorem canonicalSound14436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14436.moment H = canonicalOutput14436.moment H :=
  canonical_of_padded canonicalInput14436 canonicalOutput14436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14437 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14437 : ExponentCode := normalNode7432

theorem canonicalSound14437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14437.moment H = canonicalOutput14437.moment H :=
  canonical_of_padded canonicalInput14437 canonicalOutput14437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14438 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14438 : ExponentCode := normalNode7431

theorem canonicalSound14438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14438.moment H = canonicalOutput14438.moment H :=
  canonical_of_padded canonicalInput14438 canonicalOutput14438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14439 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14439 : ExponentCode := normalNode3962

theorem canonicalSound14439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14439.moment H = canonicalOutput14439.moment H :=
  canonical_of_padded canonicalInput14439 canonicalOutput14439 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14440 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14440 : ExponentCode := normalNode4401

theorem canonicalSound14440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14440.moment H = canonicalOutput14440.moment H :=
  canonical_of_padded canonicalInput14440 canonicalOutput14440 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14441 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput14441 : ExponentCode := normalNode9479

theorem canonicalSound14441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14441.moment H = canonicalOutput14441.moment H :=
  canonical_of_padded canonicalInput14441 canonicalOutput14441 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14442 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput14442 : ExponentCode := normalNode7433

theorem canonicalSound14442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14442.moment H = canonicalOutput14442.moment H :=
  canonical_of_padded canonicalInput14442 canonicalOutput14442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14443 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 4, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput14443 : ExponentCode := normalNode7434

theorem canonicalSound14443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14443.moment H = canonicalOutput14443.moment H :=
  canonical_of_padded canonicalInput14443 canonicalOutput14443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14444 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput14444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1082

theorem canonicalSound14444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14444.moment H = canonicalOutput14444.moment H :=
  canonical_of_padded canonicalInput14444 canonicalOutput14444 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14445 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput14445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1108

theorem canonicalSound14445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14445.moment H = canonicalOutput14445.moment H :=
  canonical_of_padded canonicalInput14445 canonicalOutput14445 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14446 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput14446 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1148

theorem canonicalSound14446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14446.moment H = canonicalOutput14446.moment H :=
  canonical_of_padded canonicalInput14446 canonicalOutput14446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14447 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput14447 : ExponentCode := normalNode11087

theorem canonicalSound14447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14447.moment H = canonicalOutput14447.moment H :=
  canonical_of_padded canonicalInput14447 canonicalOutput14447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14448 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput14448 : ExponentCode := normalNode7482

theorem canonicalSound14448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14448.moment H = canonicalOutput14448.moment H :=
  canonical_of_padded canonicalInput14448 canonicalOutput14448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14449 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput14449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node923⟩

theorem canonicalSound14449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14449.moment H = canonicalOutput14449.moment H :=
  canonical_of_padded canonicalInput14449 canonicalOutput14449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14450 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput14450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node923⟩

theorem canonicalSound14450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14450.moment H = canonicalOutput14450.moment H :=
  canonical_of_padded canonicalInput14450 canonicalOutput14450 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14451 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput14451 : ExponentCode := normalNode7482

theorem canonicalSound14451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14451.moment H = canonicalOutput14451.moment H :=
  canonical_of_padded canonicalInput14451 canonicalOutput14451 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14452 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 1, 1, -3], ![1, -1, 2, -2]]⟩

def canonicalOutput14452 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1329

theorem canonicalSound14452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14452.moment H = canonicalOutput14452.moment H :=
  canonical_of_padded canonicalInput14452 canonicalOutput14452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14453 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, 1, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput14453 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1328

theorem canonicalSound14453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14453.moment H = canonicalOutput14453.moment H :=
  canonical_of_padded canonicalInput14453 canonicalOutput14453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14454 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14454 : ExponentCode := normalNode1254

theorem canonicalSound14454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14454.moment H = canonicalOutput14454.moment H :=
  canonical_of_padded canonicalInput14454 canonicalOutput14454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14455 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound14455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14455.moment H = canonicalOutput14455.moment H :=
  canonical_of_padded canonicalInput14455 canonicalOutput14455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14456 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14456 : ExponentCode := normalNode1254

theorem canonicalSound14456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14456.moment H = canonicalOutput14456.moment H :=
  canonical_of_padded canonicalInput14456 canonicalOutput14456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14457 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14457 : ExponentCode := normalNode11119

theorem canonicalSound14457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14457.moment H = canonicalOutput14457.moment H :=
  canonical_of_padded canonicalInput14457 canonicalOutput14457 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14458 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14458 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound14458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14458.moment H = canonicalOutput14458.moment H :=
  canonical_of_padded canonicalInput14458 canonicalOutput14458 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14459 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 0, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14459 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound14459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14459.moment H = canonicalOutput14459.moment H :=
  canonical_of_padded canonicalInput14459 canonicalOutput14459 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14460 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14460 : ExponentCode := normalNode7363

theorem canonicalSound14460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14460.moment H = canonicalOutput14460.moment H :=
  canonical_of_padded canonicalInput14460 canonicalOutput14460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14461 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14461 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩

theorem canonicalSound14461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14461.moment H = canonicalOutput14461.moment H :=
  canonical_of_padded canonicalInput14461 canonicalOutput14461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14462 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14462 : ExponentCode := normalNode7358

theorem canonicalSound14462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14462.moment H = canonicalOutput14462.moment H :=
  canonical_of_padded canonicalInput14462 canonicalOutput14462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14463 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14463 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound14463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14463.moment H = canonicalOutput14463.moment H :=
  canonical_of_padded canonicalInput14463 canonicalOutput14463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
