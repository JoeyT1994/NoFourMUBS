import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22016 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22016 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound22016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22016.moment H = canonicalOutput22016.moment H :=
  canonical_of_padded canonicalInput22016 canonicalOutput22016 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput22017 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput22017 : ExponentCode := normalNode10685

theorem canonicalSound22017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22017.moment H = canonicalOutput22017.moment H :=
  canonical_of_padded canonicalInput22017 canonicalOutput22017 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput22018 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput22018 : ExponentCode := normalNode10452

theorem canonicalSound22018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22018.moment H = canonicalOutput22018.moment H :=
  canonical_of_padded canonicalInput22018 canonicalOutput22018 (by decide) (by decide)
    ⟨false, false, canonicalPermutation242, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput22019 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput22019 : ExponentCode := normalNode10367

theorem canonicalSound22019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22019.moment H = canonicalOutput22019.moment H :=
  canonical_of_padded canonicalInput22019 canonicalOutput22019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput22020 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22020 : ExponentCode := normalNode10869

theorem canonicalSound22020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22020.moment H = canonicalOutput22020.moment H :=
  canonical_of_padded canonicalInput22020 canonicalOutput22020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22021 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22021 : ExponentCode := normalNode8067

theorem canonicalSound22021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22021.moment H = canonicalOutput22021.moment H :=
  canonical_of_padded canonicalInput22021 canonicalOutput22021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22022 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22022 : ExponentCode := normalNode8067

theorem canonicalSound22022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22022.moment H = canonicalOutput22022.moment H :=
  canonical_of_padded canonicalInput22022 canonicalOutput22022 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22023 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22023 : ExponentCode := normalNode10869

theorem canonicalSound22023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22023.moment H = canonicalOutput22023.moment H :=
  canonical_of_padded canonicalInput22023 canonicalOutput22023 (by decide) (by decide)
    ⟨false, true, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22024 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22024 : ExponentCode := normalNode8067

theorem canonicalSound22024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22024.moment H = canonicalOutput22024.moment H :=
  canonical_of_padded canonicalInput22024 canonicalOutput22024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22025 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22025 : ExponentCode := normalNode10453

theorem canonicalSound22025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22025.moment H = canonicalOutput22025.moment H :=
  canonical_of_padded canonicalInput22025 canonicalOutput22025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22026 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22026 : ExponentCode := normalNode10435

theorem canonicalSound22026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22026.moment H = canonicalOutput22026.moment H :=
  canonical_of_padded canonicalInput22026 canonicalOutput22026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22027 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22027 : ExponentCode := normalNode10435

theorem canonicalSound22027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22027.moment H = canonicalOutput22027.moment H :=
  canonical_of_padded canonicalInput22027 canonicalOutput22027 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22028 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22028 : ExponentCode := normalNode10453

theorem canonicalSound22028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22028.moment H = canonicalOutput22028.moment H :=
  canonical_of_padded canonicalInput22028 canonicalOutput22028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22029 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22029 : ExponentCode := normalNode8067

theorem canonicalSound22029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22029.moment H = canonicalOutput22029.moment H :=
  canonical_of_padded canonicalInput22029 canonicalOutput22029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22030 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22030 : ExponentCode := normalNode8067

theorem canonicalSound22030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22030.moment H = canonicalOutput22030.moment H :=
  canonical_of_padded canonicalInput22030 canonicalOutput22030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22031 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22031 : ExponentCode := normalNode10435

theorem canonicalSound22031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22031.moment H = canonicalOutput22031.moment H :=
  canonical_of_padded canonicalInput22031 canonicalOutput22031 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22032 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22032 : ExponentCode := normalNode10453

theorem canonicalSound22032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22032.moment H = canonicalOutput22032.moment H :=
  canonical_of_padded canonicalInput22032 canonicalOutput22032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22033 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22033 : ExponentCode := normalNode10453

theorem canonicalSound22033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22033.moment H = canonicalOutput22033.moment H :=
  canonical_of_padded canonicalInput22033 canonicalOutput22033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22034 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22034 : ExponentCode := normalNode10435

theorem canonicalSound22034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22034.moment H = canonicalOutput22034.moment H :=
  canonical_of_padded canonicalInput22034 canonicalOutput22034 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22035 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22035 : ExponentCode := normalNode8067

theorem canonicalSound22035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22035.moment H = canonicalOutput22035.moment H :=
  canonical_of_padded canonicalInput22035 canonicalOutput22035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22036 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22036 : ExponentCode := normalNode10869

theorem canonicalSound22036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22036.moment H = canonicalOutput22036.moment H :=
  canonical_of_padded canonicalInput22036 canonicalOutput22036 (by decide) (by decide)
    ⟨false, true, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22037 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22037 : ExponentCode := normalNode8067

theorem canonicalSound22037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22037.moment H = canonicalOutput22037.moment H :=
  canonical_of_padded canonicalInput22037 canonicalOutput22037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22038 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22038 : ExponentCode := normalNode8067

theorem canonicalSound22038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22038.moment H = canonicalOutput22038.moment H :=
  canonical_of_padded canonicalInput22038 canonicalOutput22038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22039 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22039 : ExponentCode := normalNode10869

theorem canonicalSound22039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22039.moment H = canonicalOutput22039.moment H :=
  canonical_of_padded canonicalInput22039 canonicalOutput22039 (by decide) (by decide)
    ⟨false, true, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22040 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22040 : ExponentCode := normalNode10435

theorem canonicalSound22040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22040.moment H = canonicalOutput22040.moment H :=
  canonical_of_padded canonicalInput22040 canonicalOutput22040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22041 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22041 : ExponentCode := normalNode8067

theorem canonicalSound22041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22041.moment H = canonicalOutput22041.moment H :=
  canonical_of_padded canonicalInput22041 canonicalOutput22041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22042 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22042 : ExponentCode := normalNode10453

theorem canonicalSound22042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22042.moment H = canonicalOutput22042.moment H :=
  canonical_of_padded canonicalInput22042 canonicalOutput22042 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22043 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22043 : ExponentCode := normalNode10453

theorem canonicalSound22043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22043.moment H = canonicalOutput22043.moment H :=
  canonical_of_padded canonicalInput22043 canonicalOutput22043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22044 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22044 : ExponentCode := normalNode8067

theorem canonicalSound22044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22044.moment H = canonicalOutput22044.moment H :=
  canonical_of_padded canonicalInput22044 canonicalOutput22044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22045 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22045 : ExponentCode := normalNode10435

theorem canonicalSound22045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22045.moment H = canonicalOutput22045.moment H :=
  canonical_of_padded canonicalInput22045 canonicalOutput22045 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22046 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22046 : ExponentCode := normalNode10453

theorem canonicalSound22046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22046.moment H = canonicalOutput22046.moment H :=
  canonical_of_padded canonicalInput22046 canonicalOutput22046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22047 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22047 : ExponentCode := normalNode10453

theorem canonicalSound22047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22047.moment H = canonicalOutput22047.moment H :=
  canonical_of_padded canonicalInput22047 canonicalOutput22047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22048 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22048 : ExponentCode := normalNode10453

theorem canonicalSound22048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22048.moment H = canonicalOutput22048.moment H :=
  canonical_of_padded canonicalInput22048 canonicalOutput22048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22049 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22049 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound22049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22049.moment H = canonicalOutput22049.moment H :=
  canonical_of_padded canonicalInput22049 canonicalOutput22049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput22050 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22050 : ExponentCode := normalNode10453

theorem canonicalSound22050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22050.moment H = canonicalOutput22050.moment H :=
  canonical_of_padded canonicalInput22050 canonicalOutput22050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22051 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22051 : ExponentCode := normalNode10453

theorem canonicalSound22051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22051.moment H = canonicalOutput22051.moment H :=
  canonical_of_padded canonicalInput22051 canonicalOutput22051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22052 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22052 : ExponentCode := normalNode10453

theorem canonicalSound22052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22052.moment H = canonicalOutput22052.moment H :=
  canonical_of_padded canonicalInput22052 canonicalOutput22052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22053 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22053 : ExponentCode := normalNode8067

theorem canonicalSound22053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22053.moment H = canonicalOutput22053.moment H :=
  canonical_of_padded canonicalInput22053 canonicalOutput22053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22054 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22054 : ExponentCode := normalNode10435

theorem canonicalSound22054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22054.moment H = canonicalOutput22054.moment H :=
  canonical_of_padded canonicalInput22054 canonicalOutput22054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22055 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22055 : ExponentCode := normalNode10453

theorem canonicalSound22055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22055.moment H = canonicalOutput22055.moment H :=
  canonical_of_padded canonicalInput22055 canonicalOutput22055 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22056 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22056 : ExponentCode := normalNode10453

theorem canonicalSound22056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22056.moment H = canonicalOutput22056.moment H :=
  canonical_of_padded canonicalInput22056 canonicalOutput22056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22057 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22057 : ExponentCode := normalNode10435

theorem canonicalSound22057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22057.moment H = canonicalOutput22057.moment H :=
  canonical_of_padded canonicalInput22057 canonicalOutput22057 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22058 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22058 : ExponentCode := normalNode8067

theorem canonicalSound22058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22058.moment H = canonicalOutput22058.moment H :=
  canonical_of_padded canonicalInput22058 canonicalOutput22058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22059 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22059 : ExponentCode := normalNode10435

theorem canonicalSound22059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22059.moment H = canonicalOutput22059.moment H :=
  canonical_of_padded canonicalInput22059 canonicalOutput22059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22060 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22060 : ExponentCode := normalNode10453

theorem canonicalSound22060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22060.moment H = canonicalOutput22060.moment H :=
  canonical_of_padded canonicalInput22060 canonicalOutput22060 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22061 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22061 : ExponentCode := normalNode8067

theorem canonicalSound22061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22061.moment H = canonicalOutput22061.moment H :=
  canonical_of_padded canonicalInput22061 canonicalOutput22061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22062 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22062 : ExponentCode := normalNode8067

theorem canonicalSound22062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22062.moment H = canonicalOutput22062.moment H :=
  canonical_of_padded canonicalInput22062 canonicalOutput22062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput22063 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22063 : ExponentCode := normalNode10453

theorem canonicalSound22063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22063.moment H = canonicalOutput22063.moment H :=
  canonical_of_padded canonicalInput22063 canonicalOutput22063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput22064 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22064 : ExponentCode := normalNode10435

theorem canonicalSound22064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22064.moment H = canonicalOutput22064.moment H :=
  canonical_of_padded canonicalInput22064 canonicalOutput22064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22065 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22065 : ExponentCode := normalNode8067

theorem canonicalSound22065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22065.moment H = canonicalOutput22065.moment H :=
  canonical_of_padded canonicalInput22065 canonicalOutput22065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22066 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22066 : ExponentCode := normalNode10453

theorem canonicalSound22066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22066.moment H = canonicalOutput22066.moment H :=
  canonical_of_padded canonicalInput22066 canonicalOutput22066 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22067 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22067 : ExponentCode := normalNode10435

theorem canonicalSound22067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22067.moment H = canonicalOutput22067.moment H :=
  canonical_of_padded canonicalInput22067 canonicalOutput22067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22068 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22068 : ExponentCode := normalNode10435

theorem canonicalSound22068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22068.moment H = canonicalOutput22068.moment H :=
  canonical_of_padded canonicalInput22068 canonicalOutput22068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22069 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22069 : ExponentCode := normalNode10453

theorem canonicalSound22069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22069.moment H = canonicalOutput22069.moment H :=
  canonical_of_padded canonicalInput22069 canonicalOutput22069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22070 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22070 : ExponentCode := normalNode8067

theorem canonicalSound22070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22070.moment H = canonicalOutput22070.moment H :=
  canonical_of_padded canonicalInput22070 canonicalOutput22070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22071 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22071 : ExponentCode := normalNode10869

theorem canonicalSound22071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22071.moment H = canonicalOutput22071.moment H :=
  canonical_of_padded canonicalInput22071 canonicalOutput22071 (by decide) (by decide)
    ⟨false, true, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22072 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22072 : ExponentCode := normalNode8067

theorem canonicalSound22072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22072.moment H = canonicalOutput22072.moment H :=
  canonical_of_padded canonicalInput22072 canonicalOutput22072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22073 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22073 : ExponentCode := normalNode8067

theorem canonicalSound22073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22073.moment H = canonicalOutput22073.moment H :=
  canonical_of_padded canonicalInput22073 canonicalOutput22073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22074 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22074 : ExponentCode := normalNode10869

theorem canonicalSound22074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22074.moment H = canonicalOutput22074.moment H :=
  canonical_of_padded canonicalInput22074 canonicalOutput22074 (by decide) (by decide)
    ⟨false, true, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22075 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput22075 : ExponentCode := normalNode10434

theorem canonicalSound22075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22075.moment H = canonicalOutput22075.moment H :=
  canonical_of_padded canonicalInput22075 canonicalOutput22075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput22076 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput22076 : ExponentCode := normalNode10433

theorem canonicalSound22076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22076.moment H = canonicalOutput22076.moment H :=
  canonical_of_padded canonicalInput22076 canonicalOutput22076 (by decide) (by decide)
    ⟨false, false, canonicalPermutation125, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput22077 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput22077 : ExponentCode := normalNode10396

theorem canonicalSound22077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22077.moment H = canonicalOutput22077.moment H :=
  canonical_of_padded canonicalInput22077 canonicalOutput22077 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput22078 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput22078 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound22078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22078.moment H = canonicalOutput22078.moment H :=
  canonical_of_padded canonicalInput22078 canonicalOutput22078 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation226, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput22079 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput22079 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound22079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22079.moment H = canonicalOutput22079.moment H :=
  canonical_of_padded canonicalInput22079 canonicalOutput22079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, canonicalPermutation223⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
