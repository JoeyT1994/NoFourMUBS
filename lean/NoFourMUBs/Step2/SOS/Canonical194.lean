import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12416 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput12416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound12416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12416.moment H = canonicalOutput12416.moment H :=
  canonical_of_padded canonicalInput12416 canonicalOutput12416 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12417 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12417 : ExponentCode := normalNode10191

theorem canonicalSound12417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12417.moment H = canonicalOutput12417.moment H :=
  canonical_of_padded canonicalInput12417 canonicalOutput12417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12418 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2834⟩

theorem canonicalSound12418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12418.moment H = canonicalOutput12418.moment H :=
  canonical_of_padded canonicalInput12418 canonicalOutput12418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12419 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12419 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1206

theorem canonicalSound12419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12419.moment H = canonicalOutput12419.moment H :=
  canonical_of_padded canonicalInput12419 canonicalOutput12419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12420 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound12420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12420.moment H = canonicalOutput12420.moment H :=
  canonical_of_padded canonicalInput12420 canonicalOutput12420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12421 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound12421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12421.moment H = canonicalOutput12421.moment H :=
  canonical_of_padded canonicalInput12421 canonicalOutput12421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12422 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput12422 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node492⟩

theorem canonicalSound12422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12422.moment H = canonicalOutput12422.moment H :=
  canonical_of_padded canonicalInput12422 canonicalOutput12422 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12423 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound12423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12423.moment H = canonicalOutput12423.moment H :=
  canonical_of_padded canonicalInput12423 canonicalOutput12423 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12424 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12424 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound12424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12424.moment H = canonicalOutput12424.moment H :=
  canonical_of_padded canonicalInput12424 canonicalOutput12424 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12425 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12425 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound12425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12425.moment H = canonicalOutput12425.moment H :=
  canonical_of_padded canonicalInput12425 canonicalOutput12425 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12426 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![1, 1, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput12426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1284

theorem canonicalSound12426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12426.moment H = canonicalOutput12426.moment H :=
  canonical_of_padded canonicalInput12426 canonicalOutput12426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12427 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12427 : ExponentCode := normalNode6062

theorem canonicalSound12427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12427.moment H = canonicalOutput12427.moment H :=
  canonical_of_padded canonicalInput12427 canonicalOutput12427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12428 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput12428 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code562

theorem canonicalSound12428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12428.moment H = canonicalOutput12428.moment H :=
  canonical_of_padded canonicalInput12428 canonicalOutput12428 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12429 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12429 : ExponentCode := normalNode6067

theorem canonicalSound12429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12429.moment H = canonicalOutput12429.moment H :=
  canonical_of_padded canonicalInput12429 canonicalOutput12429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12430 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12430 : ExponentCode := normalNode6071

theorem canonicalSound12430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12430.moment H = canonicalOutput12430.moment H :=
  canonical_of_padded canonicalInput12430 canonicalOutput12430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12431 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12431 : ExponentCode := normalNode6070

theorem canonicalSound12431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12431.moment H = canonicalOutput12431.moment H :=
  canonical_of_padded canonicalInput12431 canonicalOutput12431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12432 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput12432 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound12432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12432.moment H = canonicalOutput12432.moment H :=
  canonical_of_padded canonicalInput12432 canonicalOutput12432 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12433 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput12433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound12433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12433.moment H = canonicalOutput12433.moment H :=
  canonical_of_padded canonicalInput12433 canonicalOutput12433 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12434 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput12434 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code147

theorem canonicalSound12434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12434.moment H = canonicalOutput12434.moment H :=
  canonical_of_padded canonicalInput12434 canonicalOutput12434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12435 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput12435 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code676

theorem canonicalSound12435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12435.moment H = canonicalOutput12435.moment H :=
  canonical_of_padded canonicalInput12435 canonicalOutput12435 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12436 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput12436 : ExponentCode := normalNode7107

theorem canonicalSound12436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12436.moment H = canonicalOutput12436.moment H :=
  canonical_of_padded canonicalInput12436 canonicalOutput12436 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12437 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput12437 : ExponentCode := normalNode6810

theorem canonicalSound12437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12437.moment H = canonicalOutput12437.moment H :=
  canonical_of_padded canonicalInput12437 canonicalOutput12437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12438 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12438 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code180

theorem canonicalSound12438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12438.moment H = canonicalOutput12438.moment H :=
  canonical_of_padded canonicalInput12438 canonicalOutput12438 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12439 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12439 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code662

theorem canonicalSound12439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12439.moment H = canonicalOutput12439.moment H :=
  canonical_of_padded canonicalInput12439 canonicalOutput12439 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12440 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12440 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code662

theorem canonicalSound12440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12440.moment H = canonicalOutput12440.moment H :=
  canonical_of_padded canonicalInput12440 canonicalOutput12440 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12441 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12441 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code180

theorem canonicalSound12441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12441.moment H = canonicalOutput12441.moment H :=
  canonical_of_padded canonicalInput12441 canonicalOutput12441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12442 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 2, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12442 : ExponentCode := normalNode6810

theorem canonicalSound12442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12442.moment H = canonicalOutput12442.moment H :=
  canonical_of_padded canonicalInput12442 canonicalOutput12442 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12443 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12443 : ExponentCode := normalNode7107

theorem canonicalSound12443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12443.moment H = canonicalOutput12443.moment H :=
  canonical_of_padded canonicalInput12443 canonicalOutput12443 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12444 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 1, 2, -2], ![1, 2, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code676

theorem canonicalSound12444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12444.moment H = canonicalOutput12444.moment H :=
  canonical_of_padded canonicalInput12444 canonicalOutput12444 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12445 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12445 : ExponentCode := normalNode8869

theorem canonicalSound12445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12445.moment H = canonicalOutput12445.moment H :=
  canonical_of_padded canonicalInput12445 canonicalOutput12445 (by decide) (by decide)
    ⟨false, false, canonicalPermutation64, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12446 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12446 : ExponentCode := normalNode8875

theorem canonicalSound12446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12446.moment H = canonicalOutput12446.moment H :=
  canonical_of_padded canonicalInput12446 canonicalOutput12446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12447 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput12447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code671

theorem canonicalSound12447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12447.moment H = canonicalOutput12447.moment H :=
  canonical_of_padded canonicalInput12447 canonicalOutput12447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12448 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩

theorem canonicalSound12448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12448.moment H = canonicalOutput12448.moment H :=
  canonical_of_padded canonicalInput12448 canonicalOutput12448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12449 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node491⟩

theorem canonicalSound12449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12449.moment H = canonicalOutput12449.moment H :=
  canonical_of_padded canonicalInput12449 canonicalOutput12449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12450 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, -1, 0], ![1, 1, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩

theorem canonicalSound12450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12450.moment H = canonicalOutput12450.moment H :=
  canonical_of_padded canonicalInput12450 canonicalOutput12450 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12451 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12451 : ExponentCode := normalNode5435

theorem canonicalSound12451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12451.moment H = canonicalOutput12451.moment H :=
  canonical_of_padded canonicalInput12451 canonicalOutput12451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12452 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12452 : ExponentCode := normalNode6079

theorem canonicalSound12452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12452.moment H = canonicalOutput12452.moment H :=
  canonical_of_padded canonicalInput12452 canonicalOutput12452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12453 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![0, 0, 2, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput12453 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound12453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12453.moment H = canonicalOutput12453.moment H :=
  canonical_of_padded canonicalInput12453 canonicalOutput12453 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12454 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2260⟩

theorem canonicalSound12454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12454.moment H = canonicalOutput12454.moment H :=
  canonical_of_padded canonicalInput12454 canonicalOutput12454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12455 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2713⟩

theorem canonicalSound12455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12455.moment H = canonicalOutput12455.moment H :=
  canonical_of_padded canonicalInput12455 canonicalOutput12455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12456 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound12456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12456.moment H = canonicalOutput12456.moment H :=
  canonical_of_padded canonicalInput12456 canonicalOutput12456 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12457 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 0, -1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput12457 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code513

theorem canonicalSound12457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12457.moment H = canonicalOutput12457.moment H :=
  canonical_of_padded canonicalInput12457 canonicalOutput12457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12458 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12458 : ExponentCode := normalNode4558

theorem canonicalSound12458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12458.moment H = canonicalOutput12458.moment H :=
  canonical_of_padded canonicalInput12458 canonicalOutput12458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12459 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput12459 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound12459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12459.moment H = canonicalOutput12459.moment H :=
  canonical_of_padded canonicalInput12459 canonicalOutput12459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12460 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12460 : ExponentCode := normalNode10492

theorem canonicalSound12460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12460.moment H = canonicalOutput12460.moment H :=
  canonical_of_padded canonicalInput12460 canonicalOutput12460 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12461 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12461 : ExponentCode := normalNode10492

theorem canonicalSound12461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12461.moment H = canonicalOutput12461.moment H :=
  canonical_of_padded canonicalInput12461 canonicalOutput12461 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12462 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12462 : ExponentCode := normalNode5533

theorem canonicalSound12462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12462.moment H = canonicalOutput12462.moment H :=
  canonical_of_padded canonicalInput12462 canonicalOutput12462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12463 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12463 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩

theorem canonicalSound12463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12463.moment H = canonicalOutput12463.moment H :=
  canonical_of_padded canonicalInput12463 canonicalOutput12463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12464 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput12464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code151

theorem canonicalSound12464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12464.moment H = canonicalOutput12464.moment H :=
  canonical_of_padded canonicalInput12464 canonicalOutput12464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12465 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12465 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound12465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12465.moment H = canonicalOutput12465.moment H :=
  canonical_of_padded canonicalInput12465 canonicalOutput12465 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12466 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12466 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound12466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12466.moment H = canonicalOutput12466.moment H :=
  canonical_of_padded canonicalInput12466 canonicalOutput12466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12467 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12467 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound12467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12467.moment H = canonicalOutput12467.moment H :=
  canonical_of_padded canonicalInput12467 canonicalOutput12467 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12468 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12468 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code181

theorem canonicalSound12468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12468.moment H = canonicalOutput12468.moment H :=
  canonical_of_padded canonicalInput12468 canonicalOutput12468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12469 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12469 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code181

theorem canonicalSound12469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12469.moment H = canonicalOutput12469.moment H :=
  canonical_of_padded canonicalInput12469 canonicalOutput12469 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12470 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 1, -2], ![1, 1, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12470 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound12470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12470.moment H = canonicalOutput12470.moment H :=
  canonical_of_padded canonicalInput12470 canonicalOutput12470 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12471 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput12471 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code637

theorem canonicalSound12471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12471.moment H = canonicalOutput12471.moment H :=
  canonical_of_padded canonicalInput12471 canonicalOutput12471 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12472 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code598

theorem canonicalSound12472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12472.moment H = canonicalOutput12472.moment H :=
  canonical_of_padded canonicalInput12472 canonicalOutput12472 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12473 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput12473 : ExponentCode := normalNode7055

theorem canonicalSound12473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12473.moment H = canonicalOutput12473.moment H :=
  canonical_of_padded canonicalInput12473 canonicalOutput12473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12474 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput12474 : ExponentCode := normalNode9372

theorem canonicalSound12474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12474.moment H = canonicalOutput12474.moment H :=
  canonical_of_padded canonicalInput12474 canonicalOutput12474 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12475 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12475 : ExponentCode := normalNode9372

theorem canonicalSound12475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12475.moment H = canonicalOutput12475.moment H :=
  canonical_of_padded canonicalInput12475 canonicalOutput12475 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12476 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 2, 2, -3], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12476 : ExponentCode := normalNode7055

theorem canonicalSound12476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12476.moment H = canonicalOutput12476.moment H :=
  canonical_of_padded canonicalInput12476 canonicalOutput12476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12477 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12477 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1717⟩

theorem canonicalSound12477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12477.moment H = canonicalOutput12477.moment H :=
  canonical_of_padded canonicalInput12477 canonicalOutput12477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12478 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -2, 0], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput12478 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code468

theorem canonicalSound12478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12478.moment H = canonicalOutput12478.moment H :=
  canonical_of_padded canonicalInput12478 canonicalOutput12478 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12479 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -2, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12479 : ExponentCode := normalNode7122

theorem canonicalSound12479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12479.moment H = canonicalOutput12479.moment H :=
  canonical_of_padded canonicalInput12479 canonicalOutput12479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
