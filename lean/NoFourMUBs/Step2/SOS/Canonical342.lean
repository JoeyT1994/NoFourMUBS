import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21888 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21888 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound21888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21888.moment H = canonicalOutput21888.moment H :=
  canonical_of_padded canonicalInput21888 canonicalOutput21888 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput21889 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21889 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound21889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21889.moment H = canonicalOutput21889.moment H :=
  canonical_of_padded canonicalInput21889 canonicalOutput21889 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput21890 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21890 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound21890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21890.moment H = canonicalOutput21890.moment H :=
  canonical_of_padded canonicalInput21890 canonicalOutput21890 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput21891 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput21891 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound21891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21891.moment H = canonicalOutput21891.moment H :=
  canonical_of_padded canonicalInput21891 canonicalOutput21891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation205, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput21892 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput21892 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound21892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21892.moment H = canonicalOutput21892.moment H :=
  canonical_of_padded canonicalInput21892 canonicalOutput21892 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput21893 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput21893 : ExponentCode := normalNode9917

theorem canonicalSound21893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21893.moment H = canonicalOutput21893.moment H :=
  canonical_of_padded canonicalInput21893 canonicalOutput21893 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput21894 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21894 : ExponentCode := normalNode11165

theorem canonicalSound21894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21894.moment H = canonicalOutput21894.moment H :=
  canonical_of_padded canonicalInput21894 canonicalOutput21894 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21895 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21895 : ExponentCode := normalNode8361

theorem canonicalSound21895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21895.moment H = canonicalOutput21895.moment H :=
  canonical_of_padded canonicalInput21895 canonicalOutput21895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21896 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21896 : ExponentCode := normalNode8361

theorem canonicalSound21896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21896.moment H = canonicalOutput21896.moment H :=
  canonical_of_padded canonicalInput21896 canonicalOutput21896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21897 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21897 : ExponentCode := normalNode11165

theorem canonicalSound21897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21897.moment H = canonicalOutput21897.moment H :=
  canonical_of_padded canonicalInput21897 canonicalOutput21897 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21898 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21898 : ExponentCode := normalNode8361

theorem canonicalSound21898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21898.moment H = canonicalOutput21898.moment H :=
  canonical_of_padded canonicalInput21898 canonicalOutput21898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21899 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21899 : ExponentCode := normalNode10645

theorem canonicalSound21899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21899.moment H = canonicalOutput21899.moment H :=
  canonical_of_padded canonicalInput21899 canonicalOutput21899 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21900 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21900 : ExponentCode := normalNode10453

theorem canonicalSound21900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21900.moment H = canonicalOutput21900.moment H :=
  canonical_of_padded canonicalInput21900 canonicalOutput21900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21901 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21901 : ExponentCode := normalNode10453

theorem canonicalSound21901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21901.moment H = canonicalOutput21901.moment H :=
  canonical_of_padded canonicalInput21901 canonicalOutput21901 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21902 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21902 : ExponentCode := normalNode10645

theorem canonicalSound21902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21902.moment H = canonicalOutput21902.moment H :=
  canonical_of_padded canonicalInput21902 canonicalOutput21902 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21903 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21903 : ExponentCode := normalNode8361

theorem canonicalSound21903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21903.moment H = canonicalOutput21903.moment H :=
  canonical_of_padded canonicalInput21903 canonicalOutput21903 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21904 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21904 : ExponentCode := normalNode8361

theorem canonicalSound21904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21904.moment H = canonicalOutput21904.moment H :=
  canonical_of_padded canonicalInput21904 canonicalOutput21904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21905 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21905 : ExponentCode := normalNode10453

theorem canonicalSound21905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21905.moment H = canonicalOutput21905.moment H :=
  canonical_of_padded canonicalInput21905 canonicalOutput21905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21906 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21906 : ExponentCode := normalNode10645

theorem canonicalSound21906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21906.moment H = canonicalOutput21906.moment H :=
  canonical_of_padded canonicalInput21906 canonicalOutput21906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21907 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21907 : ExponentCode := normalNode10645

theorem canonicalSound21907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21907.moment H = canonicalOutput21907.moment H :=
  canonical_of_padded canonicalInput21907 canonicalOutput21907 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21908 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21908 : ExponentCode := normalNode10453

theorem canonicalSound21908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21908.moment H = canonicalOutput21908.moment H :=
  canonical_of_padded canonicalInput21908 canonicalOutput21908 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21909 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21909 : ExponentCode := normalNode8361

theorem canonicalSound21909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21909.moment H = canonicalOutput21909.moment H :=
  canonical_of_padded canonicalInput21909 canonicalOutput21909 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21910 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21910 : ExponentCode := normalNode11165

theorem canonicalSound21910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21910.moment H = canonicalOutput21910.moment H :=
  canonical_of_padded canonicalInput21910 canonicalOutput21910 (by decide) (by decide)
    ⟨false, true, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21911 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21911 : ExponentCode := normalNode8361

theorem canonicalSound21911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21911.moment H = canonicalOutput21911.moment H :=
  canonical_of_padded canonicalInput21911 canonicalOutput21911 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21912 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21912 : ExponentCode := normalNode8361

theorem canonicalSound21912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21912.moment H = canonicalOutput21912.moment H :=
  canonical_of_padded canonicalInput21912 canonicalOutput21912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21913 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21913 : ExponentCode := normalNode11165

theorem canonicalSound21913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21913.moment H = canonicalOutput21913.moment H :=
  canonical_of_padded canonicalInput21913 canonicalOutput21913 (by decide) (by decide)
    ⟨false, true, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21914 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21914 : ExponentCode := normalNode10453

theorem canonicalSound21914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21914.moment H = canonicalOutput21914.moment H :=
  canonical_of_padded canonicalInput21914 canonicalOutput21914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21915 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21915 : ExponentCode := normalNode8361

theorem canonicalSound21915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21915.moment H = canonicalOutput21915.moment H :=
  canonical_of_padded canonicalInput21915 canonicalOutput21915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21916 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21916 : ExponentCode := normalNode10645

theorem canonicalSound21916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21916.moment H = canonicalOutput21916.moment H :=
  canonical_of_padded canonicalInput21916 canonicalOutput21916 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21917 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21917 : ExponentCode := normalNode10645

theorem canonicalSound21917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21917.moment H = canonicalOutput21917.moment H :=
  canonical_of_padded canonicalInput21917 canonicalOutput21917 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21918 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21918 : ExponentCode := normalNode8361

theorem canonicalSound21918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21918.moment H = canonicalOutput21918.moment H :=
  canonical_of_padded canonicalInput21918 canonicalOutput21918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21919 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21919 : ExponentCode := normalNode10453

theorem canonicalSound21919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21919.moment H = canonicalOutput21919.moment H :=
  canonical_of_padded canonicalInput21919 canonicalOutput21919 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21920 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21920 : ExponentCode := normalNode10645

theorem canonicalSound21920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21920.moment H = canonicalOutput21920.moment H :=
  canonical_of_padded canonicalInput21920 canonicalOutput21920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21921 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21921 : ExponentCode := normalNode10645

theorem canonicalSound21921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21921.moment H = canonicalOutput21921.moment H :=
  canonical_of_padded canonicalInput21921 canonicalOutput21921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21922 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21922 : ExponentCode := normalNode10645

theorem canonicalSound21922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21922.moment H = canonicalOutput21922.moment H :=
  canonical_of_padded canonicalInput21922 canonicalOutput21922 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21923 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21923 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound21923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21923.moment H = canonicalOutput21923.moment H :=
  canonical_of_padded canonicalInput21923 canonicalOutput21923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput21924 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21924 : ExponentCode := normalNode10645

theorem canonicalSound21924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21924.moment H = canonicalOutput21924.moment H :=
  canonical_of_padded canonicalInput21924 canonicalOutput21924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21925 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21925 : ExponentCode := normalNode10645

theorem canonicalSound21925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21925.moment H = canonicalOutput21925.moment H :=
  canonical_of_padded canonicalInput21925 canonicalOutput21925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21926 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21926 : ExponentCode := normalNode10645

theorem canonicalSound21926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21926.moment H = canonicalOutput21926.moment H :=
  canonical_of_padded canonicalInput21926 canonicalOutput21926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21927 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21927 : ExponentCode := normalNode8361

theorem canonicalSound21927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21927.moment H = canonicalOutput21927.moment H :=
  canonical_of_padded canonicalInput21927 canonicalOutput21927 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21928 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21928 : ExponentCode := normalNode10453

theorem canonicalSound21928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21928.moment H = canonicalOutput21928.moment H :=
  canonical_of_padded canonicalInput21928 canonicalOutput21928 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21929 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21929 : ExponentCode := normalNode10645

theorem canonicalSound21929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21929.moment H = canonicalOutput21929.moment H :=
  canonical_of_padded canonicalInput21929 canonicalOutput21929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21930 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21930 : ExponentCode := normalNode10645

theorem canonicalSound21930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21930.moment H = canonicalOutput21930.moment H :=
  canonical_of_padded canonicalInput21930 canonicalOutput21930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput21931 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21931 : ExponentCode := normalNode10453

theorem canonicalSound21931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21931.moment H = canonicalOutput21931.moment H :=
  canonical_of_padded canonicalInput21931 canonicalOutput21931 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21932 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21932 : ExponentCode := normalNode8361

theorem canonicalSound21932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21932.moment H = canonicalOutput21932.moment H :=
  canonical_of_padded canonicalInput21932 canonicalOutput21932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21933 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21933 : ExponentCode := normalNode10453

theorem canonicalSound21933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21933.moment H = canonicalOutput21933.moment H :=
  canonical_of_padded canonicalInput21933 canonicalOutput21933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21934 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21934 : ExponentCode := normalNode10645

theorem canonicalSound21934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21934.moment H = canonicalOutput21934.moment H :=
  canonical_of_padded canonicalInput21934 canonicalOutput21934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21935 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21935 : ExponentCode := normalNode8361

theorem canonicalSound21935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21935.moment H = canonicalOutput21935.moment H :=
  canonical_of_padded canonicalInput21935 canonicalOutput21935 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21936 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21936 : ExponentCode := normalNode8361

theorem canonicalSound21936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21936.moment H = canonicalOutput21936.moment H :=
  canonical_of_padded canonicalInput21936 canonicalOutput21936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput21937 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21937 : ExponentCode := normalNode10645

theorem canonicalSound21937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21937.moment H = canonicalOutput21937.moment H :=
  canonical_of_padded canonicalInput21937 canonicalOutput21937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput21938 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21938 : ExponentCode := normalNode10453

theorem canonicalSound21938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21938.moment H = canonicalOutput21938.moment H :=
  canonical_of_padded canonicalInput21938 canonicalOutput21938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput21939 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21939 : ExponentCode := normalNode8361

theorem canonicalSound21939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21939.moment H = canonicalOutput21939.moment H :=
  canonical_of_padded canonicalInput21939 canonicalOutput21939 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21940 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21940 : ExponentCode := normalNode10645

theorem canonicalSound21940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21940.moment H = canonicalOutput21940.moment H :=
  canonical_of_padded canonicalInput21940 canonicalOutput21940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21941 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21941 : ExponentCode := normalNode10453

theorem canonicalSound21941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21941.moment H = canonicalOutput21941.moment H :=
  canonical_of_padded canonicalInput21941 canonicalOutput21941 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21942 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21942 : ExponentCode := normalNode10453

theorem canonicalSound21942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21942.moment H = canonicalOutput21942.moment H :=
  canonical_of_padded canonicalInput21942 canonicalOutput21942 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput21943 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21943 : ExponentCode := normalNode10645

theorem canonicalSound21943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21943.moment H = canonicalOutput21943.moment H :=
  canonical_of_padded canonicalInput21943 canonicalOutput21943 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput21944 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21944 : ExponentCode := normalNode8361

theorem canonicalSound21944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21944.moment H = canonicalOutput21944.moment H :=
  canonical_of_padded canonicalInput21944 canonicalOutput21944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput21945 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21945 : ExponentCode := normalNode11165

theorem canonicalSound21945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21945.moment H = canonicalOutput21945.moment H :=
  canonical_of_padded canonicalInput21945 canonicalOutput21945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21946 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21946 : ExponentCode := normalNode8361

theorem canonicalSound21946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21946.moment H = canonicalOutput21946.moment H :=
  canonical_of_padded canonicalInput21946 canonicalOutput21946 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21947 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21947 : ExponentCode := normalNode8361

theorem canonicalSound21947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21947.moment H = canonicalOutput21947.moment H :=
  canonical_of_padded canonicalInput21947 canonicalOutput21947 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput21948 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21948 : ExponentCode := normalNode11165

theorem canonicalSound21948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21948.moment H = canonicalOutput21948.moment H :=
  canonical_of_padded canonicalInput21948 canonicalOutput21948 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput21949 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput21949 : ExponentCode := normalNode10415

theorem canonicalSound21949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21949.moment H = canonicalOutput21949.moment H :=
  canonical_of_padded canonicalInput21949 canonicalOutput21949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput21950 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput21950 : ExponentCode := normalNode10371

theorem canonicalSound21950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21950.moment H = canonicalOutput21950.moment H :=
  canonical_of_padded canonicalInput21950 canonicalOutput21950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput21951 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput21951 : ExponentCode := normalNode10274

theorem canonicalSound21951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21951.moment H = canonicalOutput21951.moment H :=
  canonical_of_padded canonicalInput21951 canonicalOutput21951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
