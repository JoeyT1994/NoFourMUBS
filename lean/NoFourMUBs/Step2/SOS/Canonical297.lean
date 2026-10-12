import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19008 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput19008 : ExponentCode := normalNode10045

theorem canonicalSound19008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19008.moment H = canonicalOutput19008.moment H :=
  canonical_of_padded canonicalInput19008 canonicalOutput19008 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput19009 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19009 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound19009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19009.moment H = canonicalOutput19009.moment H :=
  canonical_of_padded canonicalInput19009 canonicalOutput19009 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput19010 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19010 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound19010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19010.moment H = canonicalOutput19010.moment H :=
  canonical_of_padded canonicalInput19010 canonicalOutput19010 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19011 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19011 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound19011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19011.moment H = canonicalOutput19011.moment H :=
  canonical_of_padded canonicalInput19011 canonicalOutput19011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput19012 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput19012 : ExponentCode := normalNode3766

theorem canonicalSound19012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19012.moment H = canonicalOutput19012.moment H :=
  canonical_of_padded canonicalInput19012 canonicalOutput19012 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput19013 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput19013 : ExponentCode := normalNode10446

theorem canonicalSound19013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19013.moment H = canonicalOutput19013.moment H :=
  canonical_of_padded canonicalInput19013 canonicalOutput19013 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput19014 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput19014 : ExponentCode := normalNode10743

theorem canonicalSound19014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19014.moment H = canonicalOutput19014.moment H :=
  canonical_of_padded canonicalInput19014 canonicalOutput19014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation162, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput19015 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput19015 : ExponentCode := normalNode3656

theorem canonicalSound19015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19015.moment H = canonicalOutput19015.moment H :=
  canonical_of_padded canonicalInput19015 canonicalOutput19015 (by decide) (by decide)
    ⟨false, true, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19016 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19016 : ExponentCode := normalNode8064

theorem canonicalSound19016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19016.moment H = canonicalOutput19016.moment H :=
  canonical_of_padded canonicalInput19016 canonicalOutput19016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19017 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19017 : ExponentCode := normalNode8064

theorem canonicalSound19017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19017.moment H = canonicalOutput19017.moment H :=
  canonical_of_padded canonicalInput19017 canonicalOutput19017 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19018 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput19018 : ExponentCode := normalNode3656

theorem canonicalSound19018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19018.moment H = canonicalOutput19018.moment H :=
  canonical_of_padded canonicalInput19018 canonicalOutput19018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19019 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput19019 : ExponentCode := normalNode8064

theorem canonicalSound19019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19019.moment H = canonicalOutput19019.moment H :=
  canonical_of_padded canonicalInput19019 canonicalOutput19019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19020 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19020 : ExponentCode := normalNode11165

theorem canonicalSound19020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19020.moment H = canonicalOutput19020.moment H :=
  canonical_of_padded canonicalInput19020 canonicalOutput19020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19021 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19021 : ExponentCode := normalNode10869

theorem canonicalSound19021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19021.moment H = canonicalOutput19021.moment H :=
  canonical_of_padded canonicalInput19021 canonicalOutput19021 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19022 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19022 : ExponentCode := normalNode10869

theorem canonicalSound19022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19022.moment H = canonicalOutput19022.moment H :=
  canonical_of_padded canonicalInput19022 canonicalOutput19022 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19023 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19023 : ExponentCode := normalNode11165

theorem canonicalSound19023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19023.moment H = canonicalOutput19023.moment H :=
  canonical_of_padded canonicalInput19023 canonicalOutput19023 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19024 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19024 : ExponentCode := normalNode8064

theorem canonicalSound19024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19024.moment H = canonicalOutput19024.moment H :=
  canonical_of_padded canonicalInput19024 canonicalOutput19024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19025 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput19025 : ExponentCode := normalNode8064

theorem canonicalSound19025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19025.moment H = canonicalOutput19025.moment H :=
  canonical_of_padded canonicalInput19025 canonicalOutput19025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19026 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19026 : ExponentCode := normalNode10869

theorem canonicalSound19026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19026.moment H = canonicalOutput19026.moment H :=
  canonical_of_padded canonicalInput19026 canonicalOutput19026 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19027 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19027 : ExponentCode := normalNode11165

theorem canonicalSound19027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19027.moment H = canonicalOutput19027.moment H :=
  canonical_of_padded canonicalInput19027 canonicalOutput19027 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19028 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19028 : ExponentCode := normalNode11165

theorem canonicalSound19028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19028.moment H = canonicalOutput19028.moment H :=
  canonical_of_padded canonicalInput19028 canonicalOutput19028 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19029 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19029 : ExponentCode := normalNode10869

theorem canonicalSound19029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19029.moment H = canonicalOutput19029.moment H :=
  canonical_of_padded canonicalInput19029 canonicalOutput19029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19030 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19030 : ExponentCode := normalNode8064

theorem canonicalSound19030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19030.moment H = canonicalOutput19030.moment H :=
  canonical_of_padded canonicalInput19030 canonicalOutput19030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19031 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput19031 : ExponentCode := normalNode3656

theorem canonicalSound19031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19031.moment H = canonicalOutput19031.moment H :=
  canonical_of_padded canonicalInput19031 canonicalOutput19031 (by decide) (by decide)
    ⟨false, true, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19032 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19032 : ExponentCode := normalNode8064

theorem canonicalSound19032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19032.moment H = canonicalOutput19032.moment H :=
  canonical_of_padded canonicalInput19032 canonicalOutput19032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19033 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19033 : ExponentCode := normalNode8064

theorem canonicalSound19033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19033.moment H = canonicalOutput19033.moment H :=
  canonical_of_padded canonicalInput19033 canonicalOutput19033 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19034 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19034 : ExponentCode := normalNode3656

theorem canonicalSound19034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19034.moment H = canonicalOutput19034.moment H :=
  canonical_of_padded canonicalInput19034 canonicalOutput19034 (by decide) (by decide)
    ⟨false, true, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19035 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19035 : ExponentCode := normalNode10869

theorem canonicalSound19035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19035.moment H = canonicalOutput19035.moment H :=
  canonical_of_padded canonicalInput19035 canonicalOutput19035 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19036 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19036 : ExponentCode := normalNode8064

theorem canonicalSound19036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19036.moment H = canonicalOutput19036.moment H :=
  canonical_of_padded canonicalInput19036 canonicalOutput19036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19037 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19037 : ExponentCode := normalNode11165

theorem canonicalSound19037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19037.moment H = canonicalOutput19037.moment H :=
  canonical_of_padded canonicalInput19037 canonicalOutput19037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19038 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19038 : ExponentCode := normalNode11165

theorem canonicalSound19038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19038.moment H = canonicalOutput19038.moment H :=
  canonical_of_padded canonicalInput19038 canonicalOutput19038 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19039 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput19039 : ExponentCode := normalNode8064

theorem canonicalSound19039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19039.moment H = canonicalOutput19039.moment H :=
  canonical_of_padded canonicalInput19039 canonicalOutput19039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19040 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19040 : ExponentCode := normalNode10869

theorem canonicalSound19040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19040.moment H = canonicalOutput19040.moment H :=
  canonical_of_padded canonicalInput19040 canonicalOutput19040 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19041 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19041 : ExponentCode := normalNode11165

theorem canonicalSound19041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19041.moment H = canonicalOutput19041.moment H :=
  canonical_of_padded canonicalInput19041 canonicalOutput19041 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19042 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19042 : ExponentCode := normalNode11165

theorem canonicalSound19042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19042.moment H = canonicalOutput19042.moment H :=
  canonical_of_padded canonicalInput19042 canonicalOutput19042 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19043 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19043 : ExponentCode := normalNode11165

theorem canonicalSound19043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19043.moment H = canonicalOutput19043.moment H :=
  canonical_of_padded canonicalInput19043 canonicalOutput19043 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19044 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19044 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound19044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19044.moment H = canonicalOutput19044.moment H :=
  canonical_of_padded canonicalInput19044 canonicalOutput19044 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19045 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19045 : ExponentCode := normalNode11165

theorem canonicalSound19045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19045.moment H = canonicalOutput19045.moment H :=
  canonical_of_padded canonicalInput19045 canonicalOutput19045 (by decide) (by decide)
    ⟨false, true, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19046 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19046 : ExponentCode := normalNode11165

theorem canonicalSound19046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19046.moment H = canonicalOutput19046.moment H :=
  canonical_of_padded canonicalInput19046 canonicalOutput19046 (by decide) (by decide)
    ⟨false, true, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19047 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19047 : ExponentCode := normalNode11165

theorem canonicalSound19047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19047.moment H = canonicalOutput19047.moment H :=
  canonical_of_padded canonicalInput19047 canonicalOutput19047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation167, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19048 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput19048 : ExponentCode := normalNode8064

theorem canonicalSound19048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19048.moment H = canonicalOutput19048.moment H :=
  canonical_of_padded canonicalInput19048 canonicalOutput19048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19049 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput19049 : ExponentCode := normalNode10869

theorem canonicalSound19049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19049.moment H = canonicalOutput19049.moment H :=
  canonical_of_padded canonicalInput19049 canonicalOutput19049 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19050 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19050 : ExponentCode := normalNode11165

theorem canonicalSound19050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19050.moment H = canonicalOutput19050.moment H :=
  canonical_of_padded canonicalInput19050 canonicalOutput19050 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19051 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19051 : ExponentCode := normalNode11165

theorem canonicalSound19051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19051.moment H = canonicalOutput19051.moment H :=
  canonical_of_padded canonicalInput19051 canonicalOutput19051 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19052 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19052 : ExponentCode := normalNode10869

theorem canonicalSound19052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19052.moment H = canonicalOutput19052.moment H :=
  canonical_of_padded canonicalInput19052 canonicalOutput19052 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19053 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19053 : ExponentCode := normalNode8064

theorem canonicalSound19053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19053.moment H = canonicalOutput19053.moment H :=
  canonical_of_padded canonicalInput19053 canonicalOutput19053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19054 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19054 : ExponentCode := normalNode10869

theorem canonicalSound19054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19054.moment H = canonicalOutput19054.moment H :=
  canonical_of_padded canonicalInput19054 canonicalOutput19054 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19055 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19055 : ExponentCode := normalNode11165

theorem canonicalSound19055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19055.moment H = canonicalOutput19055.moment H :=
  canonical_of_padded canonicalInput19055 canonicalOutput19055 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19056 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19056 : ExponentCode := normalNode8064

theorem canonicalSound19056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19056.moment H = canonicalOutput19056.moment H :=
  canonical_of_padded canonicalInput19056 canonicalOutput19056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19057 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput19057 : ExponentCode := normalNode8064

theorem canonicalSound19057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19057.moment H = canonicalOutput19057.moment H :=
  canonical_of_padded canonicalInput19057 canonicalOutput19057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput19058 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19058 : ExponentCode := normalNode11165

theorem canonicalSound19058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19058.moment H = canonicalOutput19058.moment H :=
  canonical_of_padded canonicalInput19058 canonicalOutput19058 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput19059 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19059 : ExponentCode := normalNode10869

theorem canonicalSound19059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19059.moment H = canonicalOutput19059.moment H :=
  canonical_of_padded canonicalInput19059 canonicalOutput19059 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput19060 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput19060 : ExponentCode := normalNode8064

theorem canonicalSound19060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19060.moment H = canonicalOutput19060.moment H :=
  canonical_of_padded canonicalInput19060 canonicalOutput19060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19061 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19061 : ExponentCode := normalNode11165

theorem canonicalSound19061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19061.moment H = canonicalOutput19061.moment H :=
  canonical_of_padded canonicalInput19061 canonicalOutput19061 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19062 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput19062 : ExponentCode := normalNode10869

theorem canonicalSound19062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19062.moment H = canonicalOutput19062.moment H :=
  canonical_of_padded canonicalInput19062 canonicalOutput19062 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19063 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19063 : ExponentCode := normalNode10869

theorem canonicalSound19063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19063.moment H = canonicalOutput19063.moment H :=
  canonical_of_padded canonicalInput19063 canonicalOutput19063 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput19064 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19064 : ExponentCode := normalNode11165

theorem canonicalSound19064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19064.moment H = canonicalOutput19064.moment H :=
  canonical_of_padded canonicalInput19064 canonicalOutput19064 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput19065 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19065 : ExponentCode := normalNode8064

theorem canonicalSound19065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19065.moment H = canonicalOutput19065.moment H :=
  canonical_of_padded canonicalInput19065 canonicalOutput19065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput19066 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput19066 : ExponentCode := normalNode3656

theorem canonicalSound19066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19066.moment H = canonicalOutput19066.moment H :=
  canonical_of_padded canonicalInput19066 canonicalOutput19066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19067 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19067 : ExponentCode := normalNode8064

theorem canonicalSound19067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19067.moment H = canonicalOutput19067.moment H :=
  canonical_of_padded canonicalInput19067 canonicalOutput19067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19068 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19068 : ExponentCode := normalNode8064

theorem canonicalSound19068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19068.moment H = canonicalOutput19068.moment H :=
  canonical_of_padded canonicalInput19068 canonicalOutput19068 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19069 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19069 : ExponentCode := normalNode3656

theorem canonicalSound19069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19069.moment H = canonicalOutput19069.moment H :=
  canonical_of_padded canonicalInput19069 canonicalOutput19069 (by decide) (by decide)
    ⟨false, true, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput19070 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput19070 : ExponentCode := normalNode8063

theorem canonicalSound19070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19070.moment H = canonicalOutput19070.moment H :=
  canonical_of_padded canonicalInput19070 canonicalOutput19070 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput19071 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput19071 : ExponentCode := normalNode6527

theorem canonicalSound19071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19071.moment H = canonicalOutput19071.moment H :=
  canonical_of_padded canonicalInput19071 canonicalOutput19071 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
