import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7104 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![1, -1, 1, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7104 : ExponentCode := normalNode8375

theorem canonicalSound7104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7104.moment H = canonicalOutput7104.moment H :=
  canonical_of_padded canonicalInput7104 canonicalOutput7104 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, canonicalPermutation78⟩ (by decide +kernel) hH

def canonicalInput7105 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7105 : ExponentCode := normalNode7628

theorem canonicalSound7105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7105.moment H = canonicalOutput7105.moment H :=
  canonical_of_padded canonicalInput7105 canonicalOutput7105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput7106 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, -2, 1, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7106 : ExponentCode := normalNode8393

theorem canonicalSound7106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7106.moment H = canonicalOutput7106.moment H :=
  canonical_of_padded canonicalInput7106 canonicalOutput7106 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput7107 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput7107 : ExponentCode := normalNode8390

theorem canonicalSound7107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7107.moment H = canonicalOutput7107.moment H :=
  canonical_of_padded canonicalInput7107 canonicalOutput7107 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput7108 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -2, 0, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7108 : ExponentCode := normalNode6616

theorem canonicalSound7108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7108.moment H = canonicalOutput7108.moment H :=
  canonical_of_padded canonicalInput7108 canonicalOutput7108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput7109 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput7109 : ExponentCode := normalNode9214

theorem canonicalSound7109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7109.moment H = canonicalOutput7109.moment H :=
  canonical_of_padded canonicalInput7109 canonicalOutput7109 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput7110 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput7110 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound7110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7110.moment H = canonicalOutput7110.moment H :=
  canonical_of_padded canonicalInput7110 canonicalOutput7110 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7111 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -2, 1], ![1, -2, 1, 0, 0], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound7111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7111.moment H = canonicalOutput7111.moment H :=
  canonical_of_padded canonicalInput7111 canonicalOutput7111 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7112 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -2, 1], ![1, -2, 1, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput7112 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound7112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7112.moment H = canonicalOutput7112.moment H :=
  canonical_of_padded canonicalInput7112 canonicalOutput7112 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7113 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -2, 1], ![2, -2, 1, -1, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7113 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1064

theorem canonicalSound7113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7113.moment H = canonicalOutput7113.moment H :=
  canonical_of_padded canonicalInput7113 canonicalOutput7113 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7114 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7114 : ExponentCode := normalNode8765

theorem canonicalSound7114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7114.moment H = canonicalOutput7114.moment H :=
  canonical_of_padded canonicalInput7114 canonicalOutput7114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput7115 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -2, 0, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7115 : ExponentCode := normalNode8444

theorem canonicalSound7115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7115.moment H = canonicalOutput7115.moment H :=
  canonical_of_padded canonicalInput7115 canonicalOutput7115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput7116 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, -1, 0, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput7116 : ExponentCode := normalNode8767

theorem canonicalSound7116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7116.moment H = canonicalOutput7116.moment H :=
  canonical_of_padded canonicalInput7116 canonicalOutput7116 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput7117 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7117 : ExponentCode := normalNode7633

theorem canonicalSound7117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7117.moment H = canonicalOutput7117.moment H :=
  canonical_of_padded canonicalInput7117 canonicalOutput7117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput7118 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7118 : ExponentCode := normalNode7630

theorem canonicalSound7118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7118.moment H = canonicalOutput7118.moment H :=
  canonical_of_padded canonicalInput7118 canonicalOutput7118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput7119 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -2, -1, 0, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7119 : ExponentCode := normalNode6564

theorem canonicalSound7119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7119.moment H = canonicalOutput7119.moment H :=
  canonical_of_padded canonicalInput7119 canonicalOutput7119 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput7120 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -2, 0, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7120 : ExponentCode := normalNode6617

theorem canonicalSound7120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7120.moment H = canonicalOutput7120.moment H :=
  canonical_of_padded canonicalInput7120 canonicalOutput7120 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput7121 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput7121 : ExponentCode := normalNode10780

theorem canonicalSound7121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7121.moment H = canonicalOutput7121.moment H :=
  canonical_of_padded canonicalInput7121 canonicalOutput7121 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7122 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, -2, 1, 0, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput7122 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code842

theorem canonicalSound7122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7122.moment H = canonicalOutput7122.moment H :=
  canonical_of_padded canonicalInput7122 canonicalOutput7122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7123 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput7123 : ExponentCode := normalNode8171

theorem canonicalSound7123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7123.moment H = canonicalOutput7123.moment H :=
  canonical_of_padded canonicalInput7123 canonicalOutput7123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7124 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 1, 1, -2], ![1, -2, 1, 0, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput7124 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound7124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7124.moment H = canonicalOutput7124.moment H :=
  canonical_of_padded canonicalInput7124 canonicalOutput7124 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7125 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput7125 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code838

theorem canonicalSound7125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7125.moment H = canonicalOutput7125.moment H :=
  canonical_of_padded canonicalInput7125 canonicalOutput7125 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7126 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, -2, -1, 1, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput7126 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound7126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7126.moment H = canonicalOutput7126.moment H :=
  canonical_of_padded canonicalInput7126 canonicalOutput7126 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7127 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, -2, 0, 0, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7127 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound7127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7127.moment H = canonicalOutput7127.moment H :=
  canonical_of_padded canonicalInput7127 canonicalOutput7127 (by decide) (by decide)
    ⟨true, false, canonicalPermutation64, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7128 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, 2, 0, -1, -2], ![1, -2, -2, 2, 1]]⟩

def canonicalOutput7128 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code880

theorem canonicalSound7128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7128.moment H = canonicalOutput7128.moment H :=
  canonical_of_padded canonicalInput7128 canonicalOutput7128 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7129 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, 2, 0, 0, -3], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput7129 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code893

theorem canonicalSound7129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7129.moment H = canonicalOutput7129.moment H :=
  canonical_of_padded canonicalInput7129 canonicalOutput7129 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7130 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7130 : ExponentCode := normalNode7571

theorem canonicalSound7130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7130.moment H = canonicalOutput7130.moment H :=
  canonical_of_padded canonicalInput7130 canonicalOutput7130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput7131 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, -1, -1, 2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7131 : ExponentCode := normalNode7553

theorem canonicalSound7131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7131.moment H = canonicalOutput7131.moment H :=
  canonical_of_padded canonicalInput7131 canonicalOutput7131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput7132 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, -1, -1], ![1, -2, -1, 1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput7132 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code988

theorem canonicalSound7132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7132.moment H = canonicalOutput7132.moment H :=
  canonical_of_padded canonicalInput7132 canonicalOutput7132 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7133 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, -2, 0, 1, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput7133 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code839

theorem canonicalSound7133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7133.moment H = canonicalOutput7133.moment H :=
  canonical_of_padded canonicalInput7133 canonicalOutput7133 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7134 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 2, 0, -2], ![1, -2, 0, 1, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput7134 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound7134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7134.moment H = canonicalOutput7134.moment H :=
  canonical_of_padded canonicalInput7134 canonicalOutput7134 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7135 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 1, -2, 0], ![1, -2, 1, -1, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput7135 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound7135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7135.moment H = canonicalOutput7135.moment H :=
  canonical_of_padded canonicalInput7135 canonicalOutput7135 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7136 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 1, -1, -1], ![1, -2, 1, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput7136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound7136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7136.moment H = canonicalOutput7136.moment H :=
  canonical_of_padded canonicalInput7136 canonicalOutput7136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7137 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 2, -3, 0], ![1, -3, 0, 1, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7137 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code999

theorem canonicalSound7137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7137.moment H = canonicalOutput7137.moment H :=
  canonical_of_padded canonicalInput7137 canonicalOutput7137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7138 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 2, -3, 0], ![1, -2, -1, 1, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7138 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1011

theorem canonicalSound7138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7138.moment H = canonicalOutput7138.moment H :=
  canonical_of_padded canonicalInput7138 canonicalOutput7138 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7139 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 2, -2, -1], ![1, -3, 0, 1, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput7139 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1000

theorem canonicalSound7139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7139.moment H = canonicalOutput7139.moment H :=
  canonical_of_padded canonicalInput7139 canonicalOutput7139 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7140 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, 1, 2, -2, -1], ![1, -2, 1, 1, -1], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput7140 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound7140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7140.moment H = canonicalOutput7140.moment H :=
  canonical_of_padded canonicalInput7140 canonicalOutput7140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7141 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -3, 0, 1, 1], ![1, 1, -2, -1, 1], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput7141 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1229

theorem canonicalSound7141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7141.moment H = canonicalOutput7141.moment H :=
  canonical_of_padded canonicalInput7141 canonicalOutput7141 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7142 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![-1, 1, 2, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput7142 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code990

theorem canonicalSound7142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7142.moment H = canonicalOutput7142.moment H :=
  canonical_of_padded canonicalInput7142 canonicalOutput7142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7143 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![-1, 2, -2, 1, 0], ![2, 0, 2, -2, -2]]⟩

def canonicalOutput7143 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1064

theorem canonicalSound7143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7143.moment H = canonicalOutput7143.moment H :=
  canonical_of_padded canonicalInput7143 canonicalOutput7143 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7144 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![0, 1, 2, -2, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput7144 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound7144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7144.moment H = canonicalOutput7144.moment H :=
  canonical_of_padded canonicalInput7144 canonicalOutput7144 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7145 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput7145 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound7145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7145.moment H = canonicalOutput7145.moment H :=
  canonical_of_padded canonicalInput7145 canonicalOutput7145 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7146 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![1, 0, -2, 1, 0], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput7146 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code842

theorem canonicalSound7146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7146.moment H = canonicalOutput7146.moment H :=
  canonical_of_padded canonicalInput7146 canonicalOutput7146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7147 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 0, 1], ![1, 0, 2, -3, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7147 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code902

theorem canonicalSound7147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7147.moment H = canonicalOutput7147.moment H :=
  canonical_of_padded canonicalInput7147 canonicalOutput7147 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7148 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 1, 0], ![0, 0, 2, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput7148 : ExponentCode := normalNode3888

theorem canonicalSound7148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7148.moment H = canonicalOutput7148.moment H :=
  canonical_of_padded canonicalInput7148 canonicalOutput7148 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7149 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 0, 1, 0], ![1, 0, 2, -2, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput7149 : ExponentCode := normalNode3780

theorem canonicalSound7149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7149.moment H = canonicalOutput7149.moment H :=
  canonical_of_padded canonicalInput7149 canonicalOutput7149 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7150 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 1, -1, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7150 : ExponentCode := normalNode8537

theorem canonicalSound7150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7150.moment H = canonicalOutput7150.moment H :=
  canonical_of_padded canonicalInput7150 canonicalOutput7150 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation43⟩ (by decide +kernel) hH

def canonicalInput7151 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 1, 0, 0], ![-1, 1, 1, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput7151 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound7151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7151.moment H = canonicalOutput7151.moment H :=
  canonical_of_padded canonicalInput7151 canonicalOutput7151 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7152 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -2, 1, 0, 0], ![1, 0, 1, -3, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7152 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code909

theorem canonicalSound7152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7152.moment H = canonicalOutput7152.moment H :=
  canonical_of_padded canonicalInput7152 canonicalOutput7152 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7153 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -1, -1, 0, 1], ![-1, -1, 2, 1, -1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput7153 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1111

theorem canonicalSound7153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7153.moment H = canonicalOutput7153.moment H :=
  canonical_of_padded canonicalInput7153 canonicalOutput7153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7154 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -1, -1, 0, 1], ![0, -1, 2, 1, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput7154 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound7154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7154.moment H = canonicalOutput7154.moment H :=
  canonical_of_padded canonicalInput7154 canonicalOutput7154 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7155 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, -1, 1, -1, 0], ![0, 2, 1, -1, -2], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput7155 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound7155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7155.moment H = canonicalOutput7155.moment H :=
  canonical_of_padded canonicalInput7155 canonicalOutput7155 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7156 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![-1, -2, 2, 1, 0], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput7156 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1119

theorem canonicalSound7156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7156.moment H = canonicalOutput7156.moment H :=
  canonical_of_padded canonicalInput7156 canonicalOutput7156 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7157 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![0, -3, 2, 0, 1], ![1, 3, -2, 1, -3]]⟩

def canonicalOutput7157 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1179

theorem canonicalSound7157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7157.moment H = canonicalOutput7157.moment H :=
  canonical_of_padded canonicalInput7157 canonicalOutput7157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7158 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![0, -3, 2, 1, 0], ![1, 3, -2, 0, -2]]⟩

def canonicalOutput7158 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound7158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7158.moment H = canonicalOutput7158.moment H :=
  canonical_of_padded canonicalInput7158 canonicalOutput7158 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7159 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![0, -2, 2, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput7159 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound7159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7159.moment H = canonicalOutput7159.moment H :=
  canonical_of_padded canonicalInput7159 canonicalOutput7159 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7160 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![0, -2, 3, 0, -1], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput7160 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1191

theorem canonicalSound7160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7160.moment H = canonicalOutput7160.moment H :=
  canonical_of_padded canonicalInput7160 canonicalOutput7160 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7161 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![1, -3, 2, 0, 0], ![0, 3, -2, 1, -2]]⟩

def canonicalOutput7161 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound7161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7161.moment H = canonicalOutput7161.moment H :=
  canonical_of_padded canonicalInput7161 canonicalOutput7161 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7162 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 0, -2, 1], ![1, -2, 2, -1, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7162 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1119

theorem canonicalSound7162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7162.moment H = canonicalOutput7162.moment H :=
  canonical_of_padded canonicalInput7162 canonicalOutput7162 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7163 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 1, -2, 0], ![1, -2, 1, -1, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7163 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1122

theorem canonicalSound7163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7163.moment H = canonicalOutput7163.moment H :=
  canonical_of_padded canonicalInput7163 canonicalOutput7163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7164 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![1, 0, 1, -1, -1], ![0, 2, -2, -1, 1], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput7164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound7164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7164.moment H = canonicalOutput7164.moment H :=
  canonical_of_padded canonicalInput7164 canonicalOutput7164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7165 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![0, 3, -2, 1, -2]]⟩

def canonicalOutput7165 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound7165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7165.moment H = canonicalOutput7165.moment H :=
  canonical_of_padded canonicalInput7165 canonicalOutput7165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7166 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![2, 0, 0, -1, -1], ![0, -3, 3, -1, 1], ![0, 3, -3, 1, -1]]⟩

def canonicalOutput7166 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1275

theorem canonicalSound7166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7166.moment H = canonicalOutput7166.moment H :=
  canonical_of_padded canonicalInput7166 canonicalOutput7166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7167 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-3, 2, 2, -1], ![5, -2, -2, -1]]⟩

def canonicalOutput7167 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound7167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7167.moment H = canonicalOutput7167.moment H :=
  canonical_of_padded canonicalInput7167 canonicalOutput7167 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
