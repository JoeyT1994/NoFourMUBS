import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput896 : ExponentCode := ⟨5, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput896 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2152⟩

theorem canonicalSound896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput896.moment H = canonicalOutput896.moment H :=
  canonical_of_padded canonicalInput896 canonicalOutput896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput897 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput897 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1182⟩

theorem canonicalSound897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput897.moment H = canonicalOutput897.moment H :=
  canonical_of_padded canonicalInput897 canonicalOutput897 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput898 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node918⟩

theorem canonicalSound898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput898.moment H = canonicalOutput898.moment H :=
  canonical_of_padded canonicalInput898 canonicalOutput898 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput899 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node923⟩

theorem canonicalSound899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput899.moment H = canonicalOutput899.moment H :=
  canonical_of_padded canonicalInput899 canonicalOutput899 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput900 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node788⟩

theorem canonicalSound900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput900.moment H = canonicalOutput900.moment H :=
  canonical_of_padded canonicalInput900 canonicalOutput900 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput901 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput901 : ExponentCode := normalNode9948

theorem canonicalSound901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput901.moment H = canonicalOutput901.moment H :=
  canonical_of_padded canonicalInput901 canonicalOutput901 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput902 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 2, -3, -1]]⟩

def canonicalOutput902 : ExponentCode := normalNode6502

theorem canonicalSound902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput902.moment H = canonicalOutput902.moment H :=
  canonical_of_padded canonicalInput902 canonicalOutput902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput903 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput903 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code308

theorem canonicalSound903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput903.moment H = canonicalOutput903.moment H :=
  canonical_of_padded canonicalInput903 canonicalOutput903 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput904 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput904 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code313

theorem canonicalSound904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput904.moment H = canonicalOutput904.moment H :=
  canonical_of_padded canonicalInput904 canonicalOutput904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput905 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput905 : ExponentCode := normalNode10311

theorem canonicalSound905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput905.moment H = canonicalOutput905.moment H :=
  canonical_of_padded canonicalInput905 canonicalOutput905 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput906 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput906 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code323

theorem canonicalSound906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput906.moment H = canonicalOutput906.moment H :=
  canonical_of_padded canonicalInput906 canonicalOutput906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput907 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 2, -2], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput907 : ExponentCode := normalNode6511

theorem canonicalSound907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput907.moment H = canonicalOutput907.moment H :=
  canonical_of_padded canonicalInput907 canonicalOutput907 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput908 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node957⟩

theorem canonicalSound908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput908.moment H = canonicalOutput908.moment H :=
  canonical_of_padded canonicalInput908 canonicalOutput908 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput909 : ExponentCode := ⟨5, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput909 : ExponentCode := normalNode4738

theorem canonicalSound909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput909.moment H = canonicalOutput909.moment H :=
  canonical_of_padded canonicalInput909 canonicalOutput909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput910 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput910 : ExponentCode := normalNode7939

theorem canonicalSound910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput910.moment H = canonicalOutput910.moment H :=
  canonical_of_padded canonicalInput910 canonicalOutput910 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput911 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput911 : ExponentCode := normalNode7104

theorem canonicalSound911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput911.moment H = canonicalOutput911.moment H :=
  canonical_of_padded canonicalInput911 canonicalOutput911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput912 : ExponentCode := ⟨5, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput912 : ExponentCode := normalNode4740

theorem canonicalSound912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput912.moment H = canonicalOutput912.moment H :=
  canonical_of_padded canonicalInput912 canonicalOutput912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput913 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput913 : ExponentCode := normalNode9433

theorem canonicalSound913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput913.moment H = canonicalOutput913.moment H :=
  canonical_of_padded canonicalInput913 canonicalOutput913 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput914 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput914 : ExponentCode := normalNode9872

theorem canonicalSound914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput914.moment H = canonicalOutput914.moment H :=
  canonical_of_padded canonicalInput914 canonicalOutput914 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput915 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput915 : ExponentCode := normalNode6687

theorem canonicalSound915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput915.moment H = canonicalOutput915.moment H :=
  canonical_of_padded canonicalInput915 canonicalOutput915 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput916 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput916 : ExponentCode := normalNode7113

theorem canonicalSound916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput916.moment H = canonicalOutput916.moment H :=
  canonical_of_padded canonicalInput916 canonicalOutput916 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput917 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput917 : ExponentCode := normalNode7852

theorem canonicalSound917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput917.moment H = canonicalOutput917.moment H :=
  canonical_of_padded canonicalInput917 canonicalOutput917 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput918 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput918 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node770⟩

theorem canonicalSound918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput918.moment H = canonicalOutput918.moment H :=
  canonical_of_padded canonicalInput918 canonicalOutput918 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput919 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput919 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩

theorem canonicalSound919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput919.moment H = canonicalOutput919.moment H :=
  canonical_of_padded canonicalInput919 canonicalOutput919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput920 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput920 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node770⟩

theorem canonicalSound920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput920.moment H = canonicalOutput920.moment H :=
  canonical_of_padded canonicalInput920 canonicalOutput920 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput921 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput921 : ExponentCode := normalNode7114

theorem canonicalSound921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput921.moment H = canonicalOutput921.moment H :=
  canonical_of_padded canonicalInput921 canonicalOutput921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput922 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput922 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node466⟩

theorem canonicalSound922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput922.moment H = canonicalOutput922.moment H :=
  canonical_of_padded canonicalInput922 canonicalOutput922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput923 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput923 : ExponentCode := normalNode7105

theorem canonicalSound923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput923.moment H = canonicalOutput923.moment H :=
  canonical_of_padded canonicalInput923 canonicalOutput923 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput924 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput924 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩

theorem canonicalSound924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput924.moment H = canonicalOutput924.moment H :=
  canonical_of_padded canonicalInput924 canonicalOutput924 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput925 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput925 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1026⟩

theorem canonicalSound925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput925.moment H = canonicalOutput925.moment H :=
  canonical_of_padded canonicalInput925 canonicalOutput925 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput926 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1022⟩

theorem canonicalSound926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput926.moment H = canonicalOutput926.moment H :=
  canonical_of_padded canonicalInput926 canonicalOutput926 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput927 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![1, 0, 1, -2], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput927 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩

theorem canonicalSound927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput927.moment H = canonicalOutput927.moment H :=
  canonical_of_padded canonicalInput927 canonicalOutput927 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput928 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput928 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1061⟩

theorem canonicalSound928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput928.moment H = canonicalOutput928.moment H :=
  canonical_of_padded canonicalInput928 canonicalOutput928 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput929 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput929 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1195⟩

theorem canonicalSound929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput929.moment H = canonicalOutput929.moment H :=
  canonical_of_padded canonicalInput929 canonicalOutput929 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput930 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 0, 0, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput930.moment H = canonicalOutput930.moment H :=
  canonical_of_padded canonicalInput930 canonicalOutput930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput931 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 0, 0, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput931.moment H = canonicalOutput931.moment H :=
  canonical_of_padded canonicalInput931 canonicalOutput931 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput932 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput932 : ExponentCode := normalNode9947

theorem canonicalSound932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput932.moment H = canonicalOutput932.moment H :=
  canonical_of_padded canonicalInput932 canonicalOutput932 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput933 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput933 : ExponentCode := normalNode9971

theorem canonicalSound933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput933.moment H = canonicalOutput933.moment H :=
  canonical_of_padded canonicalInput933 canonicalOutput933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput934 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput934 : ExponentCode := normalNode6794

theorem canonicalSound934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput934.moment H = canonicalOutput934.moment H :=
  canonical_of_padded canonicalInput934 canonicalOutput934 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput935 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput935 : ExponentCode := normalNode288

theorem canonicalSound935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput935.moment H = canonicalOutput935.moment H :=
  canonical_of_padded canonicalInput935 canonicalOutput935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput936 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput936 : ExponentCode := normalNode7981

theorem canonicalSound936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput936.moment H = canonicalOutput936.moment H :=
  canonical_of_padded canonicalInput936 canonicalOutput936 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput937 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput937 : ExponentCode := normalNode9975

theorem canonicalSound937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput937.moment H = canonicalOutput937.moment H :=
  canonical_of_padded canonicalInput937 canonicalOutput937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput938 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput938 : ExponentCode := normalNode11006

theorem canonicalSound938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput938.moment H = canonicalOutput938.moment H :=
  canonical_of_padded canonicalInput938 canonicalOutput938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput939 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput939 : ExponentCode := normalNode9974

theorem canonicalSound939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput939.moment H = canonicalOutput939.moment H :=
  canonical_of_padded canonicalInput939 canonicalOutput939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput940 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput940 : ExponentCode := normalNode7977

theorem canonicalSound940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput940.moment H = canonicalOutput940.moment H :=
  canonical_of_padded canonicalInput940 canonicalOutput940 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput941 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput941 : ExponentCode := normalNode7990

theorem canonicalSound941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput941.moment H = canonicalOutput941.moment H :=
  canonical_of_padded canonicalInput941 canonicalOutput941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput942 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput942 : ExponentCode := normalNode6808

theorem canonicalSound942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput942.moment H = canonicalOutput942.moment H :=
  canonical_of_padded canonicalInput942 canonicalOutput942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput943 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput943 : ExponentCode := normalNode7041

theorem canonicalSound943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput943.moment H = canonicalOutput943.moment H :=
  canonical_of_padded canonicalInput943 canonicalOutput943 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput944 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput944 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node406⟩

theorem canonicalSound944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput944.moment H = canonicalOutput944.moment H :=
  canonical_of_padded canonicalInput944 canonicalOutput944 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput945 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput945 : ExponentCode := normalNode7060

theorem canonicalSound945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput945.moment H = canonicalOutput945.moment H :=
  canonical_of_padded canonicalInput945 canonicalOutput945 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput946 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput946 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1104

theorem canonicalSound946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput946.moment H = canonicalOutput946.moment H :=
  canonical_of_padded canonicalInput946 canonicalOutput946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput947 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput947 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code615

theorem canonicalSound947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput947.moment H = canonicalOutput947.moment H :=
  canonical_of_padded canonicalInput947 canonicalOutput947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput948 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput948 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1104

theorem canonicalSound948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput948.moment H = canonicalOutput948.moment H :=
  canonical_of_padded canonicalInput948 canonicalOutput948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput949 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput949 : ExponentCode := normalNode7041

theorem canonicalSound949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput949.moment H = canonicalOutput949.moment H :=
  canonical_of_padded canonicalInput949 canonicalOutput949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput950 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput950.moment H = canonicalOutput950.moment H :=
  canonical_of_padded canonicalInput950 canonicalOutput950 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput951 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput951 : ExponentCode := normalNode5752

theorem canonicalSound951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput951.moment H = canonicalOutput951.moment H :=
  canonical_of_padded canonicalInput951 canonicalOutput951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput952 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput952.moment H = canonicalOutput952.moment H :=
  canonical_of_padded canonicalInput952 canonicalOutput952 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput953 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput953 : ExponentCode := normalNode7938

theorem canonicalSound953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput953.moment H = canonicalOutput953.moment H :=
  canonical_of_padded canonicalInput953 canonicalOutput953 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput954 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput954 : ExponentCode := normalNode6726

theorem canonicalSound954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput954.moment H = canonicalOutput954.moment H :=
  canonical_of_padded canonicalInput954 canonicalOutput954 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput955 : ExponentCode := ⟨5, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput955 : ExponentCode := normalNode5753

theorem canonicalSound955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput955.moment H = canonicalOutput955.moment H :=
  canonical_of_padded canonicalInput955 canonicalOutput955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput956 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node794⟩

theorem canonicalSound956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput956.moment H = canonicalOutput956.moment H :=
  canonical_of_padded canonicalInput956 canonicalOutput956 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput957 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput957 : ExponentCode := normalNode7059

theorem canonicalSound957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput957.moment H = canonicalOutput957.moment H :=
  canonical_of_padded canonicalInput957 canonicalOutput957 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput958 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput958.moment H = canonicalOutput958.moment H :=
  canonical_of_padded canonicalInput958 canonicalOutput958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput959 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput959 : ExponentCode := normalNode9869

theorem canonicalSound959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput959.moment H = canonicalOutput959.moment H :=
  canonical_of_padded canonicalInput959 canonicalOutput959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
