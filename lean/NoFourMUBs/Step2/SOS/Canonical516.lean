import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33024 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33024 : ExponentCode := normalNode10645

theorem canonicalSound33024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33024.moment H = canonicalOutput33024.moment H :=
  canonical_of_padded canonicalInput33024 canonicalOutput33024 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33025 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33025 : ExponentCode := normalNode10645

theorem canonicalSound33025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33025.moment H = canonicalOutput33025.moment H :=
  canonical_of_padded canonicalInput33025 canonicalOutput33025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33026 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33026 : ExponentCode := normalNode8361

theorem canonicalSound33026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33026.moment H = canonicalOutput33026.moment H :=
  canonical_of_padded canonicalInput33026 canonicalOutput33026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33027 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33027 : ExponentCode := normalNode10453

theorem canonicalSound33027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33027.moment H = canonicalOutput33027.moment H :=
  canonical_of_padded canonicalInput33027 canonicalOutput33027 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33028 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33028 : ExponentCode := normalNode10645

theorem canonicalSound33028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33028.moment H = canonicalOutput33028.moment H :=
  canonical_of_padded canonicalInput33028 canonicalOutput33028 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33029 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33029 : ExponentCode := normalNode10645

theorem canonicalSound33029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33029.moment H = canonicalOutput33029.moment H :=
  canonical_of_padded canonicalInput33029 canonicalOutput33029 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33030 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33030 : ExponentCode := normalNode10645

theorem canonicalSound33030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33030.moment H = canonicalOutput33030.moment H :=
  canonical_of_padded canonicalInput33030 canonicalOutput33030 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33031 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33031 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound33031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33031.moment H = canonicalOutput33031.moment H :=
  canonical_of_padded canonicalInput33031 canonicalOutput33031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33032 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33032 : ExponentCode := normalNode10645

theorem canonicalSound33032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33032.moment H = canonicalOutput33032.moment H :=
  canonical_of_padded canonicalInput33032 canonicalOutput33032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33033 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33033 : ExponentCode := normalNode10645

theorem canonicalSound33033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33033.moment H = canonicalOutput33033.moment H :=
  canonical_of_padded canonicalInput33033 canonicalOutput33033 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33034 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33034 : ExponentCode := normalNode10645

theorem canonicalSound33034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33034.moment H = canonicalOutput33034.moment H :=
  canonical_of_padded canonicalInput33034 canonicalOutput33034 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33035 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33035 : ExponentCode := normalNode8361

theorem canonicalSound33035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33035.moment H = canonicalOutput33035.moment H :=
  canonical_of_padded canonicalInput33035 canonicalOutput33035 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33036 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33036 : ExponentCode := normalNode10453

theorem canonicalSound33036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33036.moment H = canonicalOutput33036.moment H :=
  canonical_of_padded canonicalInput33036 canonicalOutput33036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33037 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33037 : ExponentCode := normalNode10645

theorem canonicalSound33037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33037.moment H = canonicalOutput33037.moment H :=
  canonical_of_padded canonicalInput33037 canonicalOutput33037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33038 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33038 : ExponentCode := normalNode10645

theorem canonicalSound33038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33038.moment H = canonicalOutput33038.moment H :=
  canonical_of_padded canonicalInput33038 canonicalOutput33038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33039 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33039 : ExponentCode := normalNode10453

theorem canonicalSound33039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33039.moment H = canonicalOutput33039.moment H :=
  canonical_of_padded canonicalInput33039 canonicalOutput33039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33040 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33040 : ExponentCode := normalNode8361

theorem canonicalSound33040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33040.moment H = canonicalOutput33040.moment H :=
  canonical_of_padded canonicalInput33040 canonicalOutput33040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33041 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33041 : ExponentCode := normalNode10453

theorem canonicalSound33041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33041.moment H = canonicalOutput33041.moment H :=
  canonical_of_padded canonicalInput33041 canonicalOutput33041 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33042 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33042 : ExponentCode := normalNode10645

theorem canonicalSound33042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33042.moment H = canonicalOutput33042.moment H :=
  canonical_of_padded canonicalInput33042 canonicalOutput33042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33043 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33043 : ExponentCode := normalNode8361

theorem canonicalSound33043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33043.moment H = canonicalOutput33043.moment H :=
  canonical_of_padded canonicalInput33043 canonicalOutput33043 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33044 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33044 : ExponentCode := normalNode8361

theorem canonicalSound33044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33044.moment H = canonicalOutput33044.moment H :=
  canonical_of_padded canonicalInput33044 canonicalOutput33044 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33045 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33045 : ExponentCode := normalNode10645

theorem canonicalSound33045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33045.moment H = canonicalOutput33045.moment H :=
  canonical_of_padded canonicalInput33045 canonicalOutput33045 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33046 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33046 : ExponentCode := normalNode10453

theorem canonicalSound33046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33046.moment H = canonicalOutput33046.moment H :=
  canonical_of_padded canonicalInput33046 canonicalOutput33046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33047 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33047 : ExponentCode := normalNode8361

theorem canonicalSound33047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33047.moment H = canonicalOutput33047.moment H :=
  canonical_of_padded canonicalInput33047 canonicalOutput33047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33048 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33048 : ExponentCode := normalNode10645

theorem canonicalSound33048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33048.moment H = canonicalOutput33048.moment H :=
  canonical_of_padded canonicalInput33048 canonicalOutput33048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33049 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33049 : ExponentCode := normalNode10453

theorem canonicalSound33049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33049.moment H = canonicalOutput33049.moment H :=
  canonical_of_padded canonicalInput33049 canonicalOutput33049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33050 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33050 : ExponentCode := normalNode10453

theorem canonicalSound33050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33050.moment H = canonicalOutput33050.moment H :=
  canonical_of_padded canonicalInput33050 canonicalOutput33050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33051 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33051 : ExponentCode := normalNode10645

theorem canonicalSound33051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33051.moment H = canonicalOutput33051.moment H :=
  canonical_of_padded canonicalInput33051 canonicalOutput33051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33052 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33052 : ExponentCode := normalNode8361

theorem canonicalSound33052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33052.moment H = canonicalOutput33052.moment H :=
  canonical_of_padded canonicalInput33052 canonicalOutput33052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33053 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33053 : ExponentCode := normalNode11165

theorem canonicalSound33053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33053.moment H = canonicalOutput33053.moment H :=
  canonical_of_padded canonicalInput33053 canonicalOutput33053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33054 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33054 : ExponentCode := normalNode8361

theorem canonicalSound33054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33054.moment H = canonicalOutput33054.moment H :=
  canonical_of_padded canonicalInput33054 canonicalOutput33054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33055 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33055 : ExponentCode := normalNode8361

theorem canonicalSound33055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33055.moment H = canonicalOutput33055.moment H :=
  canonical_of_padded canonicalInput33055 canonicalOutput33055 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33056 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33056 : ExponentCode := normalNode11165

theorem canonicalSound33056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33056.moment H = canonicalOutput33056.moment H :=
  canonical_of_padded canonicalInput33056 canonicalOutput33056 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33057 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33057 : ExponentCode := normalNode10415

theorem canonicalSound33057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33057.moment H = canonicalOutput33057.moment H :=
  canonical_of_padded canonicalInput33057 canonicalOutput33057 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput33058 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33058 : ExponentCode := normalNode10371

theorem canonicalSound33058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33058.moment H = canonicalOutput33058.moment H :=
  canonical_of_padded canonicalInput33058 canonicalOutput33058 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput33059 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33059 : ExponentCode := normalNode10274

theorem canonicalSound33059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33059.moment H = canonicalOutput33059.moment H :=
  canonical_of_padded canonicalInput33059 canonicalOutput33059 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput33060 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33060 : ExponentCode := normalNode10818

theorem canonicalSound33060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33060.moment H = canonicalOutput33060.moment H :=
  canonical_of_padded canonicalInput33060 canonicalOutput33060 (by decide) (by decide)
    ⟨false, true, canonicalPermutation256, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput33061 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33061 : ExponentCode := normalNode10455

theorem canonicalSound33061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33061.moment H = canonicalOutput33061.moment H :=
  canonical_of_padded canonicalInput33061 canonicalOutput33061 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput33062 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33062 : ExponentCode := normalNode10375

theorem canonicalSound33062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33062.moment H = canonicalOutput33062.moment H :=
  canonical_of_padded canonicalInput33062 canonicalOutput33062 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput33063 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33063 : ExponentCode := normalNode8064

theorem canonicalSound33063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33063.moment H = canonicalOutput33063.moment H :=
  canonical_of_padded canonicalInput33063 canonicalOutput33063 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33064 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33064 : ExponentCode := normalNode8066

theorem canonicalSound33064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33064.moment H = canonicalOutput33064.moment H :=
  canonical_of_padded canonicalInput33064 canonicalOutput33064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33065 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33065 : ExponentCode := normalNode8066

theorem canonicalSound33065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33065.moment H = canonicalOutput33065.moment H :=
  canonical_of_padded canonicalInput33065 canonicalOutput33065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33066 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33066 : ExponentCode := normalNode8064

theorem canonicalSound33066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33066.moment H = canonicalOutput33066.moment H :=
  canonical_of_padded canonicalInput33066 canonicalOutput33066 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33067 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33067 : ExponentCode := normalNode8066

theorem canonicalSound33067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33067.moment H = canonicalOutput33067.moment H :=
  canonical_of_padded canonicalInput33067 canonicalOutput33067 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33068 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33068 : ExponentCode := normalNode8361

theorem canonicalSound33068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33068.moment H = canonicalOutput33068.moment H :=
  canonical_of_padded canonicalInput33068 canonicalOutput33068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33069 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33069 : ExponentCode := normalNode8067

theorem canonicalSound33069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33069.moment H = canonicalOutput33069.moment H :=
  canonical_of_padded canonicalInput33069 canonicalOutput33069 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33070 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33070 : ExponentCode := normalNode8067

theorem canonicalSound33070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33070.moment H = canonicalOutput33070.moment H :=
  canonical_of_padded canonicalInput33070 canonicalOutput33070 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33071 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33071 : ExponentCode := normalNode8361

theorem canonicalSound33071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33071.moment H = canonicalOutput33071.moment H :=
  canonical_of_padded canonicalInput33071 canonicalOutput33071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33072 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33072 : ExponentCode := normalNode8066

theorem canonicalSound33072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33072.moment H = canonicalOutput33072.moment H :=
  canonical_of_padded canonicalInput33072 canonicalOutput33072 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33073 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33073 : ExponentCode := normalNode8066

theorem canonicalSound33073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33073.moment H = canonicalOutput33073.moment H :=
  canonical_of_padded canonicalInput33073 canonicalOutput33073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33074 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33074 : ExponentCode := normalNode8067

theorem canonicalSound33074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33074.moment H = canonicalOutput33074.moment H :=
  canonical_of_padded canonicalInput33074 canonicalOutput33074 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33075 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33075 : ExponentCode := normalNode8361

theorem canonicalSound33075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33075.moment H = canonicalOutput33075.moment H :=
  canonical_of_padded canonicalInput33075 canonicalOutput33075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33076 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33076 : ExponentCode := normalNode8361

theorem canonicalSound33076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33076.moment H = canonicalOutput33076.moment H :=
  canonical_of_padded canonicalInput33076 canonicalOutput33076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33077 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33077 : ExponentCode := normalNode8067

theorem canonicalSound33077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33077.moment H = canonicalOutput33077.moment H :=
  canonical_of_padded canonicalInput33077 canonicalOutput33077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33078 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33078 : ExponentCode := normalNode8066

theorem canonicalSound33078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33078.moment H = canonicalOutput33078.moment H :=
  canonical_of_padded canonicalInput33078 canonicalOutput33078 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33079 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33079 : ExponentCode := normalNode8064

theorem canonicalSound33079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33079.moment H = canonicalOutput33079.moment H :=
  canonical_of_padded canonicalInput33079 canonicalOutput33079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33080 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33080 : ExponentCode := normalNode8066

theorem canonicalSound33080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33080.moment H = canonicalOutput33080.moment H :=
  canonical_of_padded canonicalInput33080 canonicalOutput33080 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33081 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33081 : ExponentCode := normalNode8066

theorem canonicalSound33081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33081.moment H = canonicalOutput33081.moment H :=
  canonical_of_padded canonicalInput33081 canonicalOutput33081 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33082 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33082 : ExponentCode := normalNode8064

theorem canonicalSound33082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33082.moment H = canonicalOutput33082.moment H :=
  canonical_of_padded canonicalInput33082 canonicalOutput33082 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33083 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33083 : ExponentCode := normalNode8067

theorem canonicalSound33083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33083.moment H = canonicalOutput33083.moment H :=
  canonical_of_padded canonicalInput33083 canonicalOutput33083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33084 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33084 : ExponentCode := normalNode8066

theorem canonicalSound33084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33084.moment H = canonicalOutput33084.moment H :=
  canonical_of_padded canonicalInput33084 canonicalOutput33084 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33085 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33085 : ExponentCode := normalNode8361

theorem canonicalSound33085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33085.moment H = canonicalOutput33085.moment H :=
  canonical_of_padded canonicalInput33085 canonicalOutput33085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33086 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33086 : ExponentCode := normalNode8361

theorem canonicalSound33086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33086.moment H = canonicalOutput33086.moment H :=
  canonical_of_padded canonicalInput33086 canonicalOutput33086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33087 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33087 : ExponentCode := normalNode8066

theorem canonicalSound33087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33087.moment H = canonicalOutput33087.moment H :=
  canonical_of_padded canonicalInput33087 canonicalOutput33087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, canonicalPermutation47⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
