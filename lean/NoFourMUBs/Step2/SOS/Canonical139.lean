import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8896 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8896 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8896.moment H = canonicalOutput8896.moment H :=
  canonical_of_padded canonicalInput8896 canonicalOutput8896 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8897 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8897 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound8897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8897.moment H = canonicalOutput8897.moment H :=
  canonical_of_padded canonicalInput8897 canonicalOutput8897 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8898 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput8898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound8898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8898.moment H = canonicalOutput8898.moment H :=
  canonical_of_padded canonicalInput8898 canonicalOutput8898 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8899 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8899 : ExponentCode := normalNode4572

theorem canonicalSound8899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8899.moment H = canonicalOutput8899.moment H :=
  canonical_of_padded canonicalInput8899 canonicalOutput8899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8900 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput8900 : ExponentCode := normalNode4524

theorem canonicalSound8900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8900.moment H = canonicalOutput8900.moment H :=
  canonical_of_padded canonicalInput8900 canonicalOutput8900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8901 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -3, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput8901 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code785

theorem canonicalSound8901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8901.moment H = canonicalOutput8901.moment H :=
  canonical_of_padded canonicalInput8901 canonicalOutput8901 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8902 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8902.moment H = canonicalOutput8902.moment H :=
  canonical_of_padded canonicalInput8902 canonicalOutput8902 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8903 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8903.moment H = canonicalOutput8903.moment H :=
  canonical_of_padded canonicalInput8903 canonicalOutput8903 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8904 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -2, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput8904 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code897

theorem canonicalSound8904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8904.moment H = canonicalOutput8904.moment H :=
  canonical_of_padded canonicalInput8904 canonicalOutput8904 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8905 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput8905 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound8905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8905.moment H = canonicalOutput8905.moment H :=
  canonical_of_padded canonicalInput8905 canonicalOutput8905 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8906 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput8906 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound8906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8906.moment H = canonicalOutput8906.moment H :=
  canonical_of_padded canonicalInput8906 canonicalOutput8906 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8907 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput8907 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound8907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8907.moment H = canonicalOutput8907.moment H :=
  canonical_of_padded canonicalInput8907 canonicalOutput8907 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8908 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput8908 : ExponentCode := normalNode4568

theorem canonicalSound8908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8908.moment H = canonicalOutput8908.moment H :=
  canonical_of_padded canonicalInput8908 canonicalOutput8908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8909 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput8909 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1017

theorem canonicalSound8909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8909.moment H = canonicalOutput8909.moment H :=
  canonical_of_padded canonicalInput8909 canonicalOutput8909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8910 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput8910 : ExponentCode := normalNode4573

theorem canonicalSound8910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8910.moment H = canonicalOutput8910.moment H :=
  canonical_of_padded canonicalInput8910 canonicalOutput8910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8911 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput8911 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1019

theorem canonicalSound8911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8911.moment H = canonicalOutput8911.moment H :=
  canonical_of_padded canonicalInput8911 canonicalOutput8911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8912 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -2, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput8912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound8912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8912.moment H = canonicalOutput8912.moment H :=
  canonical_of_padded canonicalInput8912 canonicalOutput8912 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8913 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8913 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound8913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8913.moment H = canonicalOutput8913.moment H :=
  canonical_of_padded canonicalInput8913 canonicalOutput8913 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8914 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -3, 1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput8914 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8914.moment H = canonicalOutput8914.moment H :=
  canonical_of_padded canonicalInput8914 canonicalOutput8914 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8915 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -3, 2, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8915 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8915.moment H = canonicalOutput8915.moment H :=
  canonical_of_padded canonicalInput8915 canonicalOutput8915 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8916 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -2, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput8916 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound8916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8916.moment H = canonicalOutput8916.moment H :=
  canonical_of_padded canonicalInput8916 canonicalOutput8916 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8917 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput8917 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound8917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8917.moment H = canonicalOutput8917.moment H :=
  canonical_of_padded canonicalInput8917 canonicalOutput8917 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8918 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput8918 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound8918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8918.moment H = canonicalOutput8918.moment H :=
  canonical_of_padded canonicalInput8918 canonicalOutput8918 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8919 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput8919 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1206

theorem canonicalSound8919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8919.moment H = canonicalOutput8919.moment H :=
  canonical_of_padded canonicalInput8919 canonicalOutput8919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8920 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -3, 0, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput8920 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound8920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8920.moment H = canonicalOutput8920.moment H :=
  canonical_of_padded canonicalInput8920 canonicalOutput8920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8921 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput8921 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound8921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8921.moment H = canonicalOutput8921.moment H :=
  canonical_of_padded canonicalInput8921 canonicalOutput8921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8922 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8922 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound8922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8922.moment H = canonicalOutput8922.moment H :=
  canonical_of_padded canonicalInput8922 canonicalOutput8922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput8923 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput8923 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8923.moment H = canonicalOutput8923.moment H :=
  canonical_of_padded canonicalInput8923 canonicalOutput8923 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8924 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput8924 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8924.moment H = canonicalOutput8924.moment H :=
  canonical_of_padded canonicalInput8924 canonicalOutput8924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8925 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput8925 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound8925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8925.moment H = canonicalOutput8925.moment H :=
  canonical_of_padded canonicalInput8925 canonicalOutput8925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8926 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput8926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound8926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8926.moment H = canonicalOutput8926.moment H :=
  canonical_of_padded canonicalInput8926 canonicalOutput8926 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8927 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput8927 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound8927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8927.moment H = canonicalOutput8927.moment H :=
  canonical_of_padded canonicalInput8927 canonicalOutput8927 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8928 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, 2, 1, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput8928 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound8928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8928.moment H = canonicalOutput8928.moment H :=
  canonical_of_padded canonicalInput8928 canonicalOutput8928 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8929 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -3, -1, 3], ![1, 1, -2, 0]]⟩

def canonicalOutput8929 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1145

theorem canonicalSound8929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8929.moment H = canonicalOutput8929.moment H :=
  canonical_of_padded canonicalInput8929 canonicalOutput8929 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8930 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -2, -3, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput8930 : ExponentCode := normalNode10940

theorem canonicalSound8930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8930.moment H = canonicalOutput8930.moment H :=
  canonical_of_padded canonicalInput8930 canonicalOutput8930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput8931 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput8931 : ExponentCode := normalNode11053

theorem canonicalSound8931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8931.moment H = canonicalOutput8931.moment H :=
  canonical_of_padded canonicalInput8931 canonicalOutput8931 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8932 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput8932 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩

theorem canonicalSound8932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8932.moment H = canonicalOutput8932.moment H :=
  canonical_of_padded canonicalInput8932 canonicalOutput8932 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8933 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput8933 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound8933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8933.moment H = canonicalOutput8933.moment H :=
  canonical_of_padded canonicalInput8933 canonicalOutput8933 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8934 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, 2, -4], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput8934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1275⟩

theorem canonicalSound8934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8934.moment H = canonicalOutput8934.moment H :=
  canonical_of_padded canonicalInput8934 canonicalOutput8934 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8935 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -3, 0], ![1, -3, 1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8935 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1198

theorem canonicalSound8935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8935.moment H = canonicalOutput8935.moment H :=
  canonical_of_padded canonicalInput8935 canonicalOutput8935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8936 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -3, 0], ![1, -2, 0, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput8936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8936.moment H = canonicalOutput8936.moment H :=
  canonical_of_padded canonicalInput8936 canonicalOutput8936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8937 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, 3, -3, 0], ![2, -3, 2, -1]]⟩

def canonicalOutput8937 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound8937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8937.moment H = canonicalOutput8937.moment H :=
  canonical_of_padded canonicalInput8937 canonicalOutput8937 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8938 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -2, -1], ![1, -3, 0, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8938 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8938.moment H = canonicalOutput8938.moment H :=
  canonical_of_padded canonicalInput8938 canonicalOutput8938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8939 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -2, -1], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8939 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound8939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8939.moment H = canonicalOutput8939.moment H :=
  canonical_of_padded canonicalInput8939 canonicalOutput8939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput8940 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -2, -1], ![1, -2, 0, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput8940 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound8940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8940.moment H = canonicalOutput8940.moment H :=
  canonical_of_padded canonicalInput8940 canonicalOutput8940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8941 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -1, -2], ![1, -3, 2, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8941.moment H = canonicalOutput8941.moment H :=
  canonical_of_padded canonicalInput8941 canonicalOutput8941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8942 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, -1, -2], ![1, -2, 2, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput8942 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1029

theorem canonicalSound8942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8942.moment H = canonicalOutput8942.moment H :=
  canonical_of_padded canonicalInput8942 canonicalOutput8942 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8943 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, 0, -3], ![1, -3, 1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput8943 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1198

theorem canonicalSound8943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8943.moment H = canonicalOutput8943.moment H :=
  canonical_of_padded canonicalInput8943 canonicalOutput8943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8944 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, 0, -3], ![1, -2, 1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput8944 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8944.moment H = canonicalOutput8944.moment H :=
  canonical_of_padded canonicalInput8944 canonicalOutput8944 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8945 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, 1, -4], ![1, -3, -1, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput8945 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1343⟩

theorem canonicalSound8945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8945.moment H = canonicalOutput8945.moment H :=
  canonical_of_padded canonicalInput8945 canonicalOutput8945 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8946 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 3, 1, -4], ![1, -3, 0, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput8946 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound8946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8946.moment H = canonicalOutput8946.moment H :=
  canonical_of_padded canonicalInput8946 canonicalOutput8946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8947 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, 3, 1, -4], ![2, -3, -2, 3]]⟩

def canonicalOutput8947 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound8947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8947.moment H = canonicalOutput8947.moment H :=
  canonical_of_padded canonicalInput8947 canonicalOutput8947 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8948 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, 5, -3, -2], ![2, -5, 2, 1]]⟩

def canonicalOutput8948 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound8948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8948.moment H = canonicalOutput8948.moment H :=
  canonical_of_padded canonicalInput8948 canonicalOutput8948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8949 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, -4, 1, 2], ![1, 4, -2, -3]]⟩

def canonicalOutput8949 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound8949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8949.moment H = canonicalOutput8949.moment H :=
  canonical_of_padded canonicalInput8949 canonicalOutput8949 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8950 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput8950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound8950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8950.moment H = canonicalOutput8950.moment H :=
  canonical_of_padded canonicalInput8950 canonicalOutput8950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8951 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput8951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound8951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8951.moment H = canonicalOutput8951.moment H :=
  canonical_of_padded canonicalInput8951 canonicalOutput8951 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8952 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8952.moment H = canonicalOutput8952.moment H :=
  canonical_of_padded canonicalInput8952 canonicalOutput8952 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8953 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput8953 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound8953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8953.moment H = canonicalOutput8953.moment H :=
  canonical_of_padded canonicalInput8953 canonicalOutput8953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8954 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 2, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput8954 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1028

theorem canonicalSound8954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8954.moment H = canonicalOutput8954.moment H :=
  canonical_of_padded canonicalInput8954 canonicalOutput8954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8955 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 0, 2], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8955.moment H = canonicalOutput8955.moment H :=
  canonical_of_padded canonicalInput8955 canonicalOutput8955 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8956 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 1, 1], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput8956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound8956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8956.moment H = canonicalOutput8956.moment H :=
  canonical_of_padded canonicalInput8956 canonicalOutput8956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8957 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -3, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8957 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound8957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8957.moment H = canonicalOutput8957.moment H :=
  canonical_of_padded canonicalInput8957 canonicalOutput8957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8958 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, -3, 2, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput8958 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound8958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8958.moment H = canonicalOutput8958.moment H :=
  canonical_of_padded canonicalInput8958 canonicalOutput8958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8959 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, -3, 3, -1], ![1, 3, -4, 0]]⟩

def canonicalOutput8959 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound8959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8959.moment H = canonicalOutput8959.moment H :=
  canonical_of_padded canonicalInput8959 canonicalOutput8959 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
