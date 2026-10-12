import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22080 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput22080 : ExponentCode := normalNode9917

theorem canonicalSound22080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22080.moment H = canonicalOutput22080.moment H :=
  canonical_of_padded canonicalInput22080 canonicalOutput22080 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput22081 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22081 : ExponentCode := normalNode11165

theorem canonicalSound22081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22081.moment H = canonicalOutput22081.moment H :=
  canonical_of_padded canonicalInput22081 canonicalOutput22081 (by decide) (by decide)
    ⟨false, true, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22082 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22082 : ExponentCode := normalNode8361

theorem canonicalSound22082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22082.moment H = canonicalOutput22082.moment H :=
  canonical_of_padded canonicalInput22082 canonicalOutput22082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22083 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22083 : ExponentCode := normalNode8361

theorem canonicalSound22083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22083.moment H = canonicalOutput22083.moment H :=
  canonical_of_padded canonicalInput22083 canonicalOutput22083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22084 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22084 : ExponentCode := normalNode11165

theorem canonicalSound22084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22084.moment H = canonicalOutput22084.moment H :=
  canonical_of_padded canonicalInput22084 canonicalOutput22084 (by decide) (by decide)
    ⟨false, true, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22085 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22085 : ExponentCode := normalNode8361

theorem canonicalSound22085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22085.moment H = canonicalOutput22085.moment H :=
  canonical_of_padded canonicalInput22085 canonicalOutput22085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22086 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22086 : ExponentCode := normalNode10645

theorem canonicalSound22086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22086.moment H = canonicalOutput22086.moment H :=
  canonical_of_padded canonicalInput22086 canonicalOutput22086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22087 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22087 : ExponentCode := normalNode10453

theorem canonicalSound22087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22087.moment H = canonicalOutput22087.moment H :=
  canonical_of_padded canonicalInput22087 canonicalOutput22087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22088 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22088 : ExponentCode := normalNode10453

theorem canonicalSound22088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22088.moment H = canonicalOutput22088.moment H :=
  canonical_of_padded canonicalInput22088 canonicalOutput22088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22089 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22089 : ExponentCode := normalNode10645

theorem canonicalSound22089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22089.moment H = canonicalOutput22089.moment H :=
  canonical_of_padded canonicalInput22089 canonicalOutput22089 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22090 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22090 : ExponentCode := normalNode8361

theorem canonicalSound22090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22090.moment H = canonicalOutput22090.moment H :=
  canonical_of_padded canonicalInput22090 canonicalOutput22090 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22091 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22091 : ExponentCode := normalNode8361

theorem canonicalSound22091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22091.moment H = canonicalOutput22091.moment H :=
  canonical_of_padded canonicalInput22091 canonicalOutput22091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22092 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22092 : ExponentCode := normalNode10453

theorem canonicalSound22092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22092.moment H = canonicalOutput22092.moment H :=
  canonical_of_padded canonicalInput22092 canonicalOutput22092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22093 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22093 : ExponentCode := normalNode10645

theorem canonicalSound22093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22093.moment H = canonicalOutput22093.moment H :=
  canonical_of_padded canonicalInput22093 canonicalOutput22093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22094 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22094 : ExponentCode := normalNode10645

theorem canonicalSound22094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22094.moment H = canonicalOutput22094.moment H :=
  canonical_of_padded canonicalInput22094 canonicalOutput22094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22095 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22095 : ExponentCode := normalNode10453

theorem canonicalSound22095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22095.moment H = canonicalOutput22095.moment H :=
  canonical_of_padded canonicalInput22095 canonicalOutput22095 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22096 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22096 : ExponentCode := normalNode8361

theorem canonicalSound22096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22096.moment H = canonicalOutput22096.moment H :=
  canonical_of_padded canonicalInput22096 canonicalOutput22096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22097 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22097 : ExponentCode := normalNode11165

theorem canonicalSound22097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22097.moment H = canonicalOutput22097.moment H :=
  canonical_of_padded canonicalInput22097 canonicalOutput22097 (by decide) (by decide)
    ⟨false, true, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22098 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22098 : ExponentCode := normalNode8361

theorem canonicalSound22098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22098.moment H = canonicalOutput22098.moment H :=
  canonical_of_padded canonicalInput22098 canonicalOutput22098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22099 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22099 : ExponentCode := normalNode8361

theorem canonicalSound22099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22099.moment H = canonicalOutput22099.moment H :=
  canonical_of_padded canonicalInput22099 canonicalOutput22099 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22100 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22100 : ExponentCode := normalNode11165

theorem canonicalSound22100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22100.moment H = canonicalOutput22100.moment H :=
  canonical_of_padded canonicalInput22100 canonicalOutput22100 (by decide) (by decide)
    ⟨false, true, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22101 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22101 : ExponentCode := normalNode10453

theorem canonicalSound22101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22101.moment H = canonicalOutput22101.moment H :=
  canonical_of_padded canonicalInput22101 canonicalOutput22101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22102 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22102 : ExponentCode := normalNode8361

theorem canonicalSound22102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22102.moment H = canonicalOutput22102.moment H :=
  canonical_of_padded canonicalInput22102 canonicalOutput22102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22103 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22103 : ExponentCode := normalNode10645

theorem canonicalSound22103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22103.moment H = canonicalOutput22103.moment H :=
  canonical_of_padded canonicalInput22103 canonicalOutput22103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22104 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22104 : ExponentCode := normalNode10645

theorem canonicalSound22104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22104.moment H = canonicalOutput22104.moment H :=
  canonical_of_padded canonicalInput22104 canonicalOutput22104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22105 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22105 : ExponentCode := normalNode8361

theorem canonicalSound22105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22105.moment H = canonicalOutput22105.moment H :=
  canonical_of_padded canonicalInput22105 canonicalOutput22105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22106 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22106 : ExponentCode := normalNode10453

theorem canonicalSound22106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22106.moment H = canonicalOutput22106.moment H :=
  canonical_of_padded canonicalInput22106 canonicalOutput22106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22107 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22107 : ExponentCode := normalNode10645

theorem canonicalSound22107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22107.moment H = canonicalOutput22107.moment H :=
  canonical_of_padded canonicalInput22107 canonicalOutput22107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22108 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22108 : ExponentCode := normalNode10645

theorem canonicalSound22108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22108.moment H = canonicalOutput22108.moment H :=
  canonical_of_padded canonicalInput22108 canonicalOutput22108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22109 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22109 : ExponentCode := normalNode10645

theorem canonicalSound22109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22109.moment H = canonicalOutput22109.moment H :=
  canonical_of_padded canonicalInput22109 canonicalOutput22109 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22110 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22110 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound22110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22110.moment H = canonicalOutput22110.moment H :=
  canonical_of_padded canonicalInput22110 canonicalOutput22110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput22111 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22111 : ExponentCode := normalNode10645

theorem canonicalSound22111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22111.moment H = canonicalOutput22111.moment H :=
  canonical_of_padded canonicalInput22111 canonicalOutput22111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22112 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22112 : ExponentCode := normalNode10645

theorem canonicalSound22112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22112.moment H = canonicalOutput22112.moment H :=
  canonical_of_padded canonicalInput22112 canonicalOutput22112 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22113 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22113 : ExponentCode := normalNode10645

theorem canonicalSound22113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22113.moment H = canonicalOutput22113.moment H :=
  canonical_of_padded canonicalInput22113 canonicalOutput22113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22114 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22114 : ExponentCode := normalNode8361

theorem canonicalSound22114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22114.moment H = canonicalOutput22114.moment H :=
  canonical_of_padded canonicalInput22114 canonicalOutput22114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22115 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22115 : ExponentCode := normalNode10453

theorem canonicalSound22115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22115.moment H = canonicalOutput22115.moment H :=
  canonical_of_padded canonicalInput22115 canonicalOutput22115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22116 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22116 : ExponentCode := normalNode10645

theorem canonicalSound22116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22116.moment H = canonicalOutput22116.moment H :=
  canonical_of_padded canonicalInput22116 canonicalOutput22116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22117 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22117 : ExponentCode := normalNode10645

theorem canonicalSound22117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22117.moment H = canonicalOutput22117.moment H :=
  canonical_of_padded canonicalInput22117 canonicalOutput22117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput22118 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22118 : ExponentCode := normalNode10453

theorem canonicalSound22118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22118.moment H = canonicalOutput22118.moment H :=
  canonical_of_padded canonicalInput22118 canonicalOutput22118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22119 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22119 : ExponentCode := normalNode8361

theorem canonicalSound22119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22119.moment H = canonicalOutput22119.moment H :=
  canonical_of_padded canonicalInput22119 canonicalOutput22119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22120 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22120 : ExponentCode := normalNode10453

theorem canonicalSound22120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22120.moment H = canonicalOutput22120.moment H :=
  canonical_of_padded canonicalInput22120 canonicalOutput22120 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22121 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22121 : ExponentCode := normalNode10645

theorem canonicalSound22121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22121.moment H = canonicalOutput22121.moment H :=
  canonical_of_padded canonicalInput22121 canonicalOutput22121 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22122 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22122 : ExponentCode := normalNode8361

theorem canonicalSound22122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22122.moment H = canonicalOutput22122.moment H :=
  canonical_of_padded canonicalInput22122 canonicalOutput22122 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22123 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22123 : ExponentCode := normalNode8361

theorem canonicalSound22123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22123.moment H = canonicalOutput22123.moment H :=
  canonical_of_padded canonicalInput22123 canonicalOutput22123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput22124 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22124 : ExponentCode := normalNode10645

theorem canonicalSound22124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22124.moment H = canonicalOutput22124.moment H :=
  canonical_of_padded canonicalInput22124 canonicalOutput22124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput22125 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22125 : ExponentCode := normalNode10453

theorem canonicalSound22125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22125.moment H = canonicalOutput22125.moment H :=
  canonical_of_padded canonicalInput22125 canonicalOutput22125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput22126 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22126 : ExponentCode := normalNode8361

theorem canonicalSound22126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22126.moment H = canonicalOutput22126.moment H :=
  canonical_of_padded canonicalInput22126 canonicalOutput22126 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22127 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22127 : ExponentCode := normalNode10645

theorem canonicalSound22127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22127.moment H = canonicalOutput22127.moment H :=
  canonical_of_padded canonicalInput22127 canonicalOutput22127 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22128 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22128 : ExponentCode := normalNode10453

theorem canonicalSound22128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22128.moment H = canonicalOutput22128.moment H :=
  canonical_of_padded canonicalInput22128 canonicalOutput22128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22129 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22129 : ExponentCode := normalNode10453

theorem canonicalSound22129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22129.moment H = canonicalOutput22129.moment H :=
  canonical_of_padded canonicalInput22129 canonicalOutput22129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput22130 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22130 : ExponentCode := normalNode10645

theorem canonicalSound22130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22130.moment H = canonicalOutput22130.moment H :=
  canonical_of_padded canonicalInput22130 canonicalOutput22130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput22131 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22131 : ExponentCode := normalNode8361

theorem canonicalSound22131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22131.moment H = canonicalOutput22131.moment H :=
  canonical_of_padded canonicalInput22131 canonicalOutput22131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput22132 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22132 : ExponentCode := normalNode11165

theorem canonicalSound22132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22132.moment H = canonicalOutput22132.moment H :=
  canonical_of_padded canonicalInput22132 canonicalOutput22132 (by decide) (by decide)
    ⟨false, true, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22133 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22133 : ExponentCode := normalNode8361

theorem canonicalSound22133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22133.moment H = canonicalOutput22133.moment H :=
  canonical_of_padded canonicalInput22133 canonicalOutput22133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22134 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22134 : ExponentCode := normalNode8361

theorem canonicalSound22134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22134.moment H = canonicalOutput22134.moment H :=
  canonical_of_padded canonicalInput22134 canonicalOutput22134 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput22135 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22135 : ExponentCode := normalNode11165

theorem canonicalSound22135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22135.moment H = canonicalOutput22135.moment H :=
  canonical_of_padded canonicalInput22135 canonicalOutput22135 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput22136 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput22136 : ExponentCode := normalNode10415

theorem canonicalSound22136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22136.moment H = canonicalOutput22136.moment H :=
  canonical_of_padded canonicalInput22136 canonicalOutput22136 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput22137 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput22137 : ExponentCode := normalNode10371

theorem canonicalSound22137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22137.moment H = canonicalOutput22137.moment H :=
  canonical_of_padded canonicalInput22137 canonicalOutput22137 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput22138 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput22138 : ExponentCode := normalNode10274

theorem canonicalSound22138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22138.moment H = canonicalOutput22138.moment H :=
  canonical_of_padded canonicalInput22138 canonicalOutput22138 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

def canonicalInput22139 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22139 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound22139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22139.moment H = canonicalOutput22139.moment H :=
  canonical_of_padded canonicalInput22139 canonicalOutput22139 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput22140 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22140 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound22140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22140.moment H = canonicalOutput22140.moment H :=
  canonical_of_padded canonicalInput22140 canonicalOutput22140 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput22141 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22141 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound22141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22141.moment H = canonicalOutput22141.moment H :=
  canonical_of_padded canonicalInput22141 canonicalOutput22141 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput22142 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22142 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound22142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22142.moment H = canonicalOutput22142.moment H :=
  canonical_of_padded canonicalInput22142 canonicalOutput22142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput22143 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput22143 : ExponentCode := normalNode9068

theorem canonicalSound22143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22143.moment H = canonicalOutput22143.moment H :=
  canonical_of_padded canonicalInput22143 canonicalOutput22143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
