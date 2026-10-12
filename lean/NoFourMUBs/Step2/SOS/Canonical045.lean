import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2880 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput2880 : ExponentCode := normalNode8047

theorem canonicalSound2880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2880.moment H = canonicalOutput2880.moment H :=
  canonical_of_padded canonicalInput2880 canonicalOutput2880 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2881 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![1, 0, 1, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput2881 : ExponentCode := normalNode8018

theorem canonicalSound2881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2881.moment H = canonicalOutput2881.moment H :=
  canonical_of_padded canonicalInput2881 canonicalOutput2881 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2882 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput2882 : ExponentCode := normalNode9561

theorem canonicalSound2882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2882.moment H = canonicalOutput2882.moment H :=
  canonical_of_padded canonicalInput2882 canonicalOutput2882 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2883 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput2883 : ExponentCode := normalNode10364

theorem canonicalSound2883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2883.moment H = canonicalOutput2883.moment H :=
  canonical_of_padded canonicalInput2883 canonicalOutput2883 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2884 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput2884 : ExponentCode := normalNode8019

theorem canonicalSound2884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2884.moment H = canonicalOutput2884.moment H :=
  canonical_of_padded canonicalInput2884 canonicalOutput2884 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2885 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 2, -1, -3]]⟩

def canonicalOutput2885 : ExponentCode := normalNode9497

theorem canonicalSound2885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2885.moment H = canonicalOutput2885.moment H :=
  canonical_of_padded canonicalInput2885 canonicalOutput2885 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput2886 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 2, -2, -2]]⟩

def canonicalOutput2886 : ExponentCode := normalNode9489

theorem canonicalSound2886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2886.moment H = canonicalOutput2886.moment H :=
  canonical_of_padded canonicalInput2886 canonicalOutput2886 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput2887 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput2887 : ExponentCode := normalNode9254

theorem canonicalSound2887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2887.moment H = canonicalOutput2887.moment H :=
  canonical_of_padded canonicalInput2887 canonicalOutput2887 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2888 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput2888 : ExponentCode := normalNode9237

theorem canonicalSound2888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2888.moment H = canonicalOutput2888.moment H :=
  canonical_of_padded canonicalInput2888 canonicalOutput2888 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2889 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput2889 : ExponentCode := normalNode9217

theorem canonicalSound2889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2889.moment H = canonicalOutput2889.moment H :=
  canonical_of_padded canonicalInput2889 canonicalOutput2889 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2890 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput2890 : ExponentCode := normalNode9263

theorem canonicalSound2890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2890.moment H = canonicalOutput2890.moment H :=
  canonical_of_padded canonicalInput2890 canonicalOutput2890 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2891 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput2891 : ExponentCode := normalNode9238

theorem canonicalSound2891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2891.moment H = canonicalOutput2891.moment H :=
  canonical_of_padded canonicalInput2891 canonicalOutput2891 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2892 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 2, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2892 : ExponentCode := normalNode8306

theorem canonicalSound2892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2892.moment H = canonicalOutput2892.moment H :=
  canonical_of_padded canonicalInput2892 canonicalOutput2892 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput2893 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 2, -1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2893 : ExponentCode := normalNode8409

theorem canonicalSound2893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2893.moment H = canonicalOutput2893.moment H :=
  canonical_of_padded canonicalInput2893 canonicalOutput2893 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput2894 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput2894 : ExponentCode := normalNode9251

theorem canonicalSound2894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2894.moment H = canonicalOutput2894.moment H :=
  canonical_of_padded canonicalInput2894 canonicalOutput2894 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2895 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2895 : ExponentCode := normalNode8460

theorem canonicalSound2895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2895.moment H = canonicalOutput2895.moment H :=
  canonical_of_padded canonicalInput2895 canonicalOutput2895 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput2896 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2896 : ExponentCode := normalNode9203

theorem canonicalSound2896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2896.moment H = canonicalOutput2896.moment H :=
  canonical_of_padded canonicalInput2896 canonicalOutput2896 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2897 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 1, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2897 : ExponentCode := normalNode8077

theorem canonicalSound2897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2897.moment H = canonicalOutput2897.moment H :=
  canonical_of_padded canonicalInput2897 canonicalOutput2897 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput2898 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput2898 : ExponentCode := normalNode9255

theorem canonicalSound2898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2898.moment H = canonicalOutput2898.moment H :=
  canonical_of_padded canonicalInput2898 canonicalOutput2898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2899 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput2899 : ExponentCode := normalNode8041

theorem canonicalSound2899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2899.moment H = canonicalOutput2899.moment H :=
  canonical_of_padded canonicalInput2899 canonicalOutput2899 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2900 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2900 : ExponentCode := normalNode6529

theorem canonicalSound2900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2900.moment H = canonicalOutput2900.moment H :=
  canonical_of_padded canonicalInput2900 canonicalOutput2900 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2901 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2901 : ExponentCode := normalNode7488

theorem canonicalSound2901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2901.moment H = canonicalOutput2901.moment H :=
  canonical_of_padded canonicalInput2901 canonicalOutput2901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2902 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2902 : ExponentCode := normalNode7996

theorem canonicalSound2902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2902.moment H = canonicalOutput2902.moment H :=
  canonical_of_padded canonicalInput2902 canonicalOutput2902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2903 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2903 : ExponentCode := normalNode6535

theorem canonicalSound2903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2903.moment H = canonicalOutput2903.moment H :=
  canonical_of_padded canonicalInput2903 canonicalOutput2903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2904 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput2904 : ExponentCode := normalNode9209

theorem canonicalSound2904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2904.moment H = canonicalOutput2904.moment H :=
  canonical_of_padded canonicalInput2904 canonicalOutput2904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput2905 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2905 : ExponentCode := normalNode6528

theorem canonicalSound2905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2905.moment H = canonicalOutput2905.moment H :=
  canonical_of_padded canonicalInput2905 canonicalOutput2905 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2906 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2906 : ExponentCode := normalNode6528

theorem canonicalSound2906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2906.moment H = canonicalOutput2906.moment H :=
  canonical_of_padded canonicalInput2906 canonicalOutput2906 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput2907 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2907 : ExponentCode := normalNode8181

theorem canonicalSound2907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2907.moment H = canonicalOutput2907.moment H :=
  canonical_of_padded canonicalInput2907 canonicalOutput2907 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2908 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2908 : ExponentCode := normalNode7995

theorem canonicalSound2908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2908.moment H = canonicalOutput2908.moment H :=
  canonical_of_padded canonicalInput2908 canonicalOutput2908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2909 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput2909 : ExponentCode := normalNode10365

theorem canonicalSound2909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2909.moment H = canonicalOutput2909.moment H :=
  canonical_of_padded canonicalInput2909 canonicalOutput2909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2910 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2910 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code339

theorem canonicalSound2910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2910.moment H = canonicalOutput2910.moment H :=
  canonical_of_padded canonicalInput2910 canonicalOutput2910 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput2911 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2911 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code339

theorem canonicalSound2911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2911.moment H = canonicalOutput2911.moment H :=
  canonical_of_padded canonicalInput2911 canonicalOutput2911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2912 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 0, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2912 : ExponentCode := normalNode6532

theorem canonicalSound2912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2912.moment H = canonicalOutput2912.moment H :=
  canonical_of_padded canonicalInput2912 canonicalOutput2912 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2913 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 0, -1, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2913 : ExponentCode := normalNode7489

theorem canonicalSound2913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2913.moment H = canonicalOutput2913.moment H :=
  canonical_of_padded canonicalInput2913 canonicalOutput2913 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2914 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2914 : ExponentCode := normalNode8281

theorem canonicalSound2914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2914.moment H = canonicalOutput2914.moment H :=
  canonical_of_padded canonicalInput2914 canonicalOutput2914 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2915 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2915 : ExponentCode := normalNode8040

theorem canonicalSound2915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2915.moment H = canonicalOutput2915.moment H :=
  canonical_of_padded canonicalInput2915 canonicalOutput2915 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2916 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 2, -2, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2916 : ExponentCode := normalNode9149

theorem canonicalSound2916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2916.moment H = canonicalOutput2916.moment H :=
  canonical_of_padded canonicalInput2916 canonicalOutput2916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation75⟩ (by decide +kernel) hH

def canonicalInput2917 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2917 : ExponentCode := normalNode6534

theorem canonicalSound2917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2917.moment H = canonicalOutput2917.moment H :=
  canonical_of_padded canonicalInput2917 canonicalOutput2917 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput2918 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput2918 : ExponentCode := normalNode10372

theorem canonicalSound2918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2918.moment H = canonicalOutput2918.moment H :=
  canonical_of_padded canonicalInput2918 canonicalOutput2918 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2919 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2919 : ExponentCode := normalNode10753

theorem canonicalSound2919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2919.moment H = canonicalOutput2919.moment H :=
  canonical_of_padded canonicalInput2919 canonicalOutput2919 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput2920 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput2920 : ExponentCode := normalNode9146

theorem canonicalSound2920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2920.moment H = canonicalOutput2920.moment H :=
  canonical_of_padded canonicalInput2920 canonicalOutput2920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput2921 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput2921 : ExponentCode := normalNode8045

theorem canonicalSound2921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2921.moment H = canonicalOutput2921.moment H :=
  canonical_of_padded canonicalInput2921 canonicalOutput2921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2922 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput2922 : ExponentCode := normalNode9253

theorem canonicalSound2922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2922.moment H = canonicalOutput2922.moment H :=
  canonical_of_padded canonicalInput2922 canonicalOutput2922 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2923 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2923 : ExponentCode := normalNode10011

theorem canonicalSound2923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2923.moment H = canonicalOutput2923.moment H :=
  canonical_of_padded canonicalInput2923 canonicalOutput2923 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2924 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2924 : ExponentCode := normalNode9145

theorem canonicalSound2924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2924.moment H = canonicalOutput2924.moment H :=
  canonical_of_padded canonicalInput2924 canonicalOutput2924 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput2925 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput2925 : ExponentCode := normalNode9256

theorem canonicalSound2925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2925.moment H = canonicalOutput2925.moment H :=
  canonical_of_padded canonicalInput2925 canonicalOutput2925 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2926 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput2926 : ExponentCode := normalNode9215

theorem canonicalSound2926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2926.moment H = canonicalOutput2926.moment H :=
  canonical_of_padded canonicalInput2926 canonicalOutput2926 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2927 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2927 : ExponentCode := normalNode8469

theorem canonicalSound2927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2927.moment H = canonicalOutput2927.moment H :=
  canonical_of_padded canonicalInput2927 canonicalOutput2927 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2928 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2928 : ExponentCode := normalNode8484

theorem canonicalSound2928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2928.moment H = canonicalOutput2928.moment H :=
  canonical_of_padded canonicalInput2928 canonicalOutput2928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2929 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2929 : ExponentCode := normalNode8479

theorem canonicalSound2929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2929.moment H = canonicalOutput2929.moment H :=
  canonical_of_padded canonicalInput2929 canonicalOutput2929 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2930 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2930 : ExponentCode := normalNode7495

theorem canonicalSound2930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2930.moment H = canonicalOutput2930.moment H :=
  canonical_of_padded canonicalInput2930 canonicalOutput2930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2931 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2931 : ExponentCode := normalNode8089

theorem canonicalSound2931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2931.moment H = canonicalOutput2931.moment H :=
  canonical_of_padded canonicalInput2931 canonicalOutput2931 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2932 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2932 : ExponentCode := normalNode7494

theorem canonicalSound2932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2932.moment H = canonicalOutput2932.moment H :=
  canonical_of_padded canonicalInput2932 canonicalOutput2932 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2933 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2933 : ExponentCode := normalNode7499

theorem canonicalSound2933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2933.moment H = canonicalOutput2933.moment H :=
  canonical_of_padded canonicalInput2933 canonicalOutput2933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput2934 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 0, 2, -1], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2934 : ExponentCode := normalNode8278

theorem canonicalSound2934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2934.moment H = canonicalOutput2934.moment H :=
  canonical_of_padded canonicalInput2934 canonicalOutput2934 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput2935 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 1, 0, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, -1, 2, -3]]⟩

def canonicalOutput2935 : ExponentCode := normalNode9241

theorem canonicalSound2935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2935.moment H = canonicalOutput2935.moment H :=
  canonical_of_padded canonicalInput2935 canonicalOutput2935 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2936 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2936 : ExponentCode := normalNode7488

theorem canonicalSound2936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2936.moment H = canonicalOutput2936.moment H :=
  canonical_of_padded canonicalInput2936 canonicalOutput2936 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2937 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput2937 : ExponentCode := normalNode8754

theorem canonicalSound2937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2937.moment H = canonicalOutput2937.moment H :=
  canonical_of_padded canonicalInput2937 canonicalOutput2937 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput2938 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput2938 : ExponentCode := normalNode8560

theorem canonicalSound2938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2938.moment H = canonicalOutput2938.moment H :=
  canonical_of_padded canonicalInput2938 canonicalOutput2938 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2939 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput2939 : ExponentCode := normalNode9570

theorem canonicalSound2939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2939.moment H = canonicalOutput2939.moment H :=
  canonical_of_padded canonicalInput2939 canonicalOutput2939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2940 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2940 : ExponentCode := normalNode8507

theorem canonicalSound2940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2940.moment H = canonicalOutput2940.moment H :=
  canonical_of_padded canonicalInput2940 canonicalOutput2940 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2941 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2941 : ExponentCode := normalNode6540

theorem canonicalSound2941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2941.moment H = canonicalOutput2941.moment H :=
  canonical_of_padded canonicalInput2941 canonicalOutput2941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2942 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput2942 : ExponentCode := normalNode10363

theorem canonicalSound2942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2942.moment H = canonicalOutput2942.moment H :=
  canonical_of_padded canonicalInput2942 canonicalOutput2942 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2943 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput2943 : ExponentCode := normalNode8061

theorem canonicalSound2943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2943.moment H = canonicalOutput2943.moment H :=
  canonical_of_padded canonicalInput2943 canonicalOutput2943 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation35⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
