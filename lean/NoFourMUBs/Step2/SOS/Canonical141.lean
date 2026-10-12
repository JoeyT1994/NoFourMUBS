import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9024 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 0, 1, 2], ![1, 0, 1, 0, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput9024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1064

theorem canonicalSound9024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9024.moment H = canonicalOutput9024.moment H :=
  canonical_of_padded canonicalInput9024 canonicalOutput9024 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9025 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 0, 1, 2], ![1, 1, 1, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput9025 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code529

theorem canonicalSound9025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9025.moment H = canonicalOutput9025.moment H :=
  canonical_of_padded canonicalInput9025 canonicalOutput9025 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9026 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 1, 1, 1], ![0, 2, -2, -1, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput9026 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code388

theorem canonicalSound9026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9026.moment H = canonicalOutput9026.moment H :=
  canonical_of_padded canonicalInput9026 canonicalOutput9026 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9027 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 1, 1, 1], ![1, 0, -2, 0, 1], ![2, 2, 0, -2, -2]]⟩

def canonicalOutput9027 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1122

theorem canonicalSound9027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9027.moment H = canonicalOutput9027.moment H :=
  canonical_of_padded canonicalInput9027 canonicalOutput9027 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9028 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 1, 1, 1], ![1, 1, -2, -1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput9028 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code527

theorem canonicalSound9028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9028.moment H = canonicalOutput9028.moment H :=
  canonical_of_padded canonicalInput9028 canonicalOutput9028 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9029 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 1, 1, 1], ![1, 2, -1, 0, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput9029 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code533

theorem canonicalSound9029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9029.moment H = canonicalOutput9029.moment H :=
  canonical_of_padded canonicalInput9029 canonicalOutput9029 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9030 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -1, 0, 1, 1], ![0, 2, -2, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput9030 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code419

theorem canonicalSound9030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9030.moment H = canonicalOutput9030.moment H :=
  canonical_of_padded canonicalInput9030 canonicalOutput9030 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9031 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput9031 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound9031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9031.moment H = canonicalOutput9031.moment H :=
  canonical_of_padded canonicalInput9031 canonicalOutput9031 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9032 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -1, 0, 1, 1], ![1, 2, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput9032 : ExponentCode := normalNode2568

theorem canonicalSound9032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9032.moment H = canonicalOutput9032.moment H :=
  canonical_of_padded canonicalInput9032 canonicalOutput9032 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9033 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -1, 0, 1, 1], ![1, 2, -2, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput9033 : ExponentCode := normalNode2559

theorem canonicalSound9033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9033.moment H = canonicalOutput9033.moment H :=
  canonical_of_padded canonicalInput9033 canonicalOutput9033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9034 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -1, 1, 1, 0], ![1, 2, -2, 0, -1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput9034 : ExponentCode := normalNode2544

theorem canonicalSound9034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9034.moment H = canonicalOutput9034.moment H :=
  canonical_of_padded canonicalInput9034 canonicalOutput9034 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9035 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 0, -1, 1, 1], ![0, -2, 1, 0, 1], ![3, 2, -1, -2, -2]]⟩

def canonicalOutput9035 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code452

theorem canonicalSound9035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9035.moment H = canonicalOutput9035.moment H :=
  canonical_of_padded canonicalInput9035 canonicalOutput9035 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9036 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 0, -1, 1, 1], ![1, -2, 1, 0, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput9036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound9036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9036.moment H = canonicalOutput9036.moment H :=
  canonical_of_padded canonicalInput9036 canonicalOutput9036 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9037 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 0, 2], ![1, -2, 0, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9037 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code990

theorem canonicalSound9037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9037.moment H = canonicalOutput9037.moment H :=
  canonical_of_padded canonicalInput9037 canonicalOutput9037 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9038 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 0, 2], ![1, 1, 0, -2, 0], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9038 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1129

theorem canonicalSound9038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9038.moment H = canonicalOutput9038.moment H :=
  canonical_of_padded canonicalInput9038 canonicalOutput9038 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9039 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 0, 2], ![1, 1, 1, -2, -1], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput9039 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code613

theorem canonicalSound9039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9039.moment H = canonicalOutput9039.moment H :=
  canonical_of_padded canonicalInput9039 canonicalOutput9039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9040 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, -2, 0, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9040 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound9040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9040.moment H = canonicalOutput9040.moment H :=
  canonical_of_padded canonicalInput9040 canonicalOutput9040 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9041 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, -2, 1, -1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput9041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound9041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9041.moment H = canonicalOutput9041.moment H :=
  canonical_of_padded canonicalInput9041 canonicalOutput9041 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9042 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, 1, 1, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput9042 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound9042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9042.moment H = canonicalOutput9042.moment H :=
  canonical_of_padded canonicalInput9042 canonicalOutput9042 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9043 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![0, -2, 1, 1, 0], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput9043 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1709⟩

theorem canonicalSound9043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9043.moment H = canonicalOutput9043.moment H :=
  canonical_of_padded canonicalInput9043 canonicalOutput9043 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9044 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![0, 1, 1, -2, 0], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput9044 : ExponentCode := normalNode2130

theorem canonicalSound9044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9044.moment H = canonicalOutput9044.moment H :=
  canonical_of_padded canonicalInput9044 canonicalOutput9044 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9045 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![1, -2, -1, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9045 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code600

theorem canonicalSound9045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9045.moment H = canonicalOutput9045.moment H :=
  canonical_of_padded canonicalInput9045 canonicalOutput9045 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9046 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![1, -2, 1, 1, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput9046 : ExponentCode := normalNode2803

theorem canonicalSound9046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9046.moment H = canonicalOutput9046.moment H :=
  canonical_of_padded canonicalInput9046 canonicalOutput9046 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9047 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![1, 1, 1, -2, -1], ![2, -2, -1, 1, 0]]⟩

def canonicalOutput9047 : ExponentCode := normalNode2826

theorem canonicalSound9047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9047.moment H = canonicalOutput9047.moment H :=
  canonical_of_padded canonicalInput9047 canonicalOutput9047 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9048 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![2, -2, -1, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9048 : ExponentCode := normalNode2826

theorem canonicalSound9048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9048.moment H = canonicalOutput9048.moment H :=
  canonical_of_padded canonicalInput9048 canonicalOutput9048 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9049 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 1, 0], ![0, -2, 1, -1, 2], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput9049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code457

theorem canonicalSound9049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9049.moment H = canonicalOutput9049.moment H :=
  canonical_of_padded canonicalInput9049 canonicalOutput9049 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9050 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 1, 0], ![1, -2, -1, 0, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9050 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code582

theorem canonicalSound9050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9050.moment H = canonicalOutput9050.moment H :=
  canonical_of_padded canonicalInput9050 canonicalOutput9050 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9051 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 1, 0], ![1, -2, 1, -1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput9051 : ExponentCode := normalNode2747

theorem canonicalSound9051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9051.moment H = canonicalOutput9051.moment H :=
  canonical_of_padded canonicalInput9051 canonicalOutput9051 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9052 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, -1, 1, 0], ![2, -2, -1, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9052 : ExponentCode := normalNode2711

theorem canonicalSound9052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9052.moment H = canonicalOutput9052.moment H :=
  canonical_of_padded canonicalInput9052 canonicalOutput9052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9053 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![0, -2, 1, -1, 2], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput9053 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code417

theorem canonicalSound9053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9053.moment H = canonicalOutput9053.moment H :=
  canonical_of_padded canonicalInput9053 canonicalOutput9053 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9054 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![0, 1, -2, -1, 2], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput9054 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code419

theorem canonicalSound9054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9054.moment H = canonicalOutput9054.moment H :=
  canonical_of_padded canonicalInput9054 canonicalOutput9054 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9055 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, -2, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput9055 : ExponentCode := normalNode2497

theorem canonicalSound9055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9055.moment H = canonicalOutput9055.moment H :=
  canonical_of_padded canonicalInput9055 canonicalOutput9055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9056 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, -2, 1, 0, 0], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput9056 : ExponentCode := normalNode2392

theorem canonicalSound9056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9056.moment H = canonicalOutput9056.moment H :=
  canonical_of_padded canonicalInput9056 canonicalOutput9056 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9057 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, -2, -1, 1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput9057 : ExponentCode := normalNode2514

theorem canonicalSound9057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9057.moment H = canonicalOutput9057.moment H :=
  canonical_of_padded canonicalInput9057 canonicalOutput9057 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9058 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, -2, 0, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9058 : ExponentCode := normalNode2410

theorem canonicalSound9058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9058.moment H = canonicalOutput9058.moment H :=
  canonical_of_padded canonicalInput9058 canonicalOutput9058 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9059 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -2, 1, 0, -1], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput9059 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code664

theorem canonicalSound9059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9059.moment H = canonicalOutput9059.moment H :=
  canonical_of_padded canonicalInput9059 canonicalOutput9059 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9060 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -2, 0, 1], ![1, -1, 1, -2, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput9060 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code613

theorem canonicalSound9060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9060.moment H = canonicalOutput9060.moment H :=
  canonical_of_padded canonicalInput9060 canonicalOutput9060 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9061 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -2, 0, 1], ![1, 0, 0, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9061 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1129

theorem canonicalSound9061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9061.moment H = canonicalOutput9061.moment H :=
  canonical_of_padded canonicalInput9061 canonicalOutput9061 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9062 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -1, 0, 0], ![0, -1, 1, -2, 2], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput9062 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code460

theorem canonicalSound9062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9062.moment H = canonicalOutput9062.moment H :=
  canonical_of_padded canonicalInput9062 canonicalOutput9062 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9063 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -1, 0, 0], ![1, -1, 1, -2, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput9063 : ExponentCode := normalNode2761

theorem canonicalSound9063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9063.moment H = canonicalOutput9063.moment H :=
  canonical_of_padded canonicalInput9063 canonicalOutput9063 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9064 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -1, 0, 0], ![1, 0, -1, -2, 2], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9064 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code587

theorem canonicalSound9064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9064.moment H = canonicalOutput9064.moment H :=
  canonical_of_padded canonicalInput9064 canonicalOutput9064 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9065 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, -1, 0, 0], ![2, 0, -1, -2, 1], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput9065 : ExponentCode := normalNode2716

theorem canonicalSound9065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9065.moment H = canonicalOutput9065.moment H :=
  canonical_of_padded canonicalInput9065 canonicalOutput9065 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9066 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, 0, 0, -1], ![0, -1, -2, 1, 2], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput9066 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound9066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9066.moment H = canonicalOutput9066.moment H :=
  canonical_of_padded canonicalInput9066 canonicalOutput9066 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9067 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput9067 : ExponentCode := normalNode2520

theorem canonicalSound9067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9067.moment H = canonicalOutput9067.moment H :=
  canonical_of_padded canonicalInput9067 canonicalOutput9067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9068 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9068 : ExponentCode := normalNode2414

theorem canonicalSound9068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9068.moment H = canonicalOutput9068.moment H :=
  canonical_of_padded canonicalInput9068 canonicalOutput9068 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9069 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, 2, 0, 0, -1], ![2, 0, -2, 1, -1], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9069 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound9069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9069.moment H = canonicalOutput9069.moment H :=
  canonical_of_padded canonicalInput9069 canonicalOutput9069 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9070 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -3, 1, 1, 1], ![0, 2, -2, 1, -1], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput9070 : ExponentCode := normalNode3713

theorem canonicalSound9070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9070.moment H = canonicalOutput9070.moment H :=
  canonical_of_padded canonicalInput9070 canonicalOutput9070 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9071 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 1, 0], ![0, -3, 1, 1, 1], ![2, 3, -2, -2, -1]]⟩

def canonicalOutput9071 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node634⟩

theorem canonicalSound9071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9071.moment H = canonicalOutput9071.moment H :=
  canonical_of_padded canonicalInput9071 canonicalOutput9071 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9072 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 0, 2], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput9072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound9072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9072.moment H = canonicalOutput9072.moment H :=
  canonical_of_padded canonicalInput9072 canonicalOutput9072 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9073 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 0, 2], ![1, 0, -2, 1, 0], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput9073 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound9073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9073.moment H = canonicalOutput9073.moment H :=
  canonical_of_padded canonicalInput9073 canonicalOutput9073 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9074 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 0, 2], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9074 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound9074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9074.moment H = canonicalOutput9074.moment H :=
  canonical_of_padded canonicalInput9074 canonicalOutput9074 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9075 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 0, 1, -2, 1], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput9075 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code842

theorem canonicalSound9075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9075.moment H = canonicalOutput9075.moment H :=
  canonical_of_padded canonicalInput9075 canonicalOutput9075 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9076 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 0, 1, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput9076 : ExponentCode := normalNode8930

theorem canonicalSound9076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9076.moment H = canonicalOutput9076.moment H :=
  canonical_of_padded canonicalInput9076 canonicalOutput9076 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9077 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 1, 1, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput9077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound9077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9077.moment H = canonicalOutput9077.moment H :=
  canonical_of_padded canonicalInput9077 canonicalOutput9077 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9078 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 2, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput9078 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code863

theorem canonicalSound9078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9078.moment H = canonicalOutput9078.moment H :=
  canonical_of_padded canonicalInput9078 canonicalOutput9078 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9079 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 2, -2, 0, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput9079 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound9079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9079.moment H = canonicalOutput9079.moment H :=
  canonical_of_padded canonicalInput9079 canonicalOutput9079 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9080 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 3, -2, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput9080 : ExponentCode := normalNode3374

theorem canonicalSound9080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9080.moment H = canonicalOutput9080.moment H :=
  canonical_of_padded canonicalInput9080 canonicalOutput9080 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9081 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 0, -2, 0, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput9081 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound9081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9081.moment H = canonicalOutput9081.moment H :=
  canonical_of_padded canonicalInput9081 canonicalOutput9081 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9082 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 0, 1, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput9082 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound9082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9082.moment H = canonicalOutput9082.moment H :=
  canonical_of_padded canonicalInput9082 canonicalOutput9082 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9083 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 0, 1, 0, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput9083 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound9083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9083.moment H = canonicalOutput9083.moment H :=
  canonical_of_padded canonicalInput9083 canonicalOutput9083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9084 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput9084 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound9084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9084.moment H = canonicalOutput9084.moment H :=
  canonical_of_padded canonicalInput9084 canonicalOutput9084 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9085 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput9085 : ExponentCode := normalNode4211

theorem canonicalSound9085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9085.moment H = canonicalOutput9085.moment H :=
  canonical_of_padded canonicalInput9085 canonicalOutput9085 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9086 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 1, 1], ![1, 1, 1, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput9086 : ExponentCode := normalNode4212

theorem canonicalSound9086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9086.moment H = canonicalOutput9086.moment H :=
  canonical_of_padded canonicalInput9086 canonicalOutput9086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9087 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 2, 0], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput9087 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1832⟩

theorem canonicalSound9087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9087.moment H = canonicalOutput9087.moment H :=
  canonical_of_padded canonicalInput9087 canonicalOutput9087 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
