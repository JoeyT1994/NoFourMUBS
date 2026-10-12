import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13952 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![1, 0, -3, 2], ![0, 0, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput13952 : ExponentCode := normalNode7051

theorem canonicalSound13952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13952.moment H = canonicalOutput13952.moment H :=
  canonical_of_padded canonicalInput13952 canonicalOutput13952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13953 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![1, 0, -2, 1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput13953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound13953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13953.moment H = canonicalOutput13953.moment H :=
  canonical_of_padded canonicalInput13953 canonicalOutput13953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13954 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![1, 0, 3, -4], ![0, 2, -4, 2]]⟩

def canonicalOutput13954 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound13954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13954.moment H = canonicalOutput13954.moment H :=
  canonical_of_padded canonicalInput13954 canonicalOutput13954 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13955 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![1, 1, -4, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput13955 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound13955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13955.moment H = canonicalOutput13955.moment H :=
  canonical_of_padded canonicalInput13955 canonicalOutput13955 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13956 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![-2, 3, 1, -1, -1], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput13956 : ExponentCode := normalNode3007

theorem canonicalSound13956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13956.moment H = canonicalOutput13956.moment H :=
  canonical_of_padded canonicalInput13956 canonicalOutput13956 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13957 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![-1, 2, -2, -1, 2], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput13957 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound13957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13957.moment H = canonicalOutput13957.moment H :=
  canonical_of_padded canonicalInput13957 canonicalOutput13957 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13958 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![-1, 2, 1, -1, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput13958 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound13958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13958.moment H = canonicalOutput13958.moment H :=
  canonical_of_padded canonicalInput13958 canonicalOutput13958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13959 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, -1, 3], ![0, 1, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13959 : ExponentCode := normalNode1865

theorem canonicalSound13959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13959.moment H = canonicalOutput13959.moment H :=
  canonical_of_padded canonicalInput13959 canonicalOutput13959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13960 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, -1, 3], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13960 : ExponentCode := normalNode1861

theorem canonicalSound13960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13960.moment H = canonicalOutput13960.moment H :=
  canonical_of_padded canonicalInput13960 canonicalOutput13960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13961 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13961 : ExponentCode := normalNode1839

theorem canonicalSound13961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13961.moment H = canonicalOutput13961.moment H :=
  canonical_of_padded canonicalInput13961 canonicalOutput13961 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13962 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13962 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound13962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13962.moment H = canonicalOutput13962.moment H :=
  canonical_of_padded canonicalInput13962 canonicalOutput13962 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13963 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13963 : ExponentCode := normalNode4299

theorem canonicalSound13963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13963.moment H = canonicalOutput13963.moment H :=
  canonical_of_padded canonicalInput13963 canonicalOutput13963 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13964 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput13964 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound13964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13964.moment H = canonicalOutput13964.moment H :=
  canonical_of_padded canonicalInput13964 canonicalOutput13964 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13965 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13965 : ExponentCode := normalNode3877

theorem canonicalSound13965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13965.moment H = canonicalOutput13965.moment H :=
  canonical_of_padded canonicalInput13965 canonicalOutput13965 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13966 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -2, 0, 2], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13966 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound13966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13966.moment H = canonicalOutput13966.moment H :=
  canonical_of_padded canonicalInput13966 canonicalOutput13966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13967 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13967 : ExponentCode := normalNode8943

theorem canonicalSound13967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13967.moment H = canonicalOutput13967.moment H :=
  canonical_of_padded canonicalInput13967 canonicalOutput13967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13968 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13968 : ExponentCode := normalNode8941

theorem canonicalSound13968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13968.moment H = canonicalOutput13968.moment H :=
  canonical_of_padded canonicalInput13968 canonicalOutput13968 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13969 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13969 : ExponentCode := normalNode5621

theorem canonicalSound13969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13969.moment H = canonicalOutput13969.moment H :=
  canonical_of_padded canonicalInput13969 canonicalOutput13969 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13970 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput13970 : ExponentCode := normalNode4647

theorem canonicalSound13970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13970.moment H = canonicalOutput13970.moment H :=
  canonical_of_padded canonicalInput13970 canonicalOutput13970 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13971 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 2, 0], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13971 : ExponentCode := normalNode7524

theorem canonicalSound13971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13971.moment H = canonicalOutput13971.moment H :=
  canonical_of_padded canonicalInput13971 canonicalOutput13971 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput13972 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13972 : ExponentCode := normalNode1842

theorem canonicalSound13972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13972.moment H = canonicalOutput13972.moment H :=
  canonical_of_padded canonicalInput13972 canonicalOutput13972 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13973 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 0, 0, -2, 2], ![1, 1, -2, 0, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13973 : ExponentCode := normalNode3780

theorem canonicalSound13973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13973.moment H = canonicalOutput13973.moment H :=
  canonical_of_padded canonicalInput13973 canonicalOutput13973 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13974 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![0, 0, 2, -1, -1], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput13974 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node572⟩

theorem canonicalSound13974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13974.moment H = canonicalOutput13974.moment H :=
  canonical_of_padded canonicalInput13974 canonicalOutput13974 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13975 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13975 : ExponentCode := normalNode3759

theorem canonicalSound13975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13975.moment H = canonicalOutput13975.moment H :=
  canonical_of_padded canonicalInput13975 canonicalOutput13975 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13976 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13976 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound13976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13976.moment H = canonicalOutput13976.moment H :=
  canonical_of_padded canonicalInput13976 canonicalOutput13976 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13977 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![0, 1, -2, 2, -1], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput13977 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node422⟩

theorem canonicalSound13977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13977.moment H = canonicalOutput13977.moment H :=
  canonical_of_padded canonicalInput13977 canonicalOutput13977 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13978 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13978 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound13978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13978.moment H = canonicalOutput13978.moment H :=
  canonical_of_padded canonicalInput13978 canonicalOutput13978 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13979 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput13979 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound13979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13979.moment H = canonicalOutput13979.moment H :=
  canonical_of_padded canonicalInput13979 canonicalOutput13979 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13980 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![0, 2, -2, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13980 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1142⟩

theorem canonicalSound13980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13980.moment H = canonicalOutput13980.moment H :=
  canonical_of_padded canonicalInput13980 canonicalOutput13980 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13981 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![0, 2, 1, -1, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput13981 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node624⟩

theorem canonicalSound13981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13981.moment H = canonicalOutput13981.moment H :=
  canonical_of_padded canonicalInput13981 canonicalOutput13981 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13982 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![1, -1, 1, 0, -1], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput13982 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node863⟩

theorem canonicalSound13982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13982.moment H = canonicalOutput13982.moment H :=
  canonical_of_padded canonicalInput13982 canonicalOutput13982 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13983 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![1, 0, -2, 0, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13983 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound13983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13983.moment H = canonicalOutput13983.moment H :=
  canonical_of_padded canonicalInput13983 canonicalOutput13983 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13984 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 2, 0], ![1, 0, 0, -2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13984 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound13984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13984.moment H = canonicalOutput13984.moment H :=
  canonical_of_padded canonicalInput13984 canonicalOutput13984 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13985 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![1, 0, 1, 0, -2], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput13985 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound13985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13985.moment H = canonicalOutput13985.moment H :=
  canonical_of_padded canonicalInput13985 canonicalOutput13985 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13986 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![1, 0, 2, -1, -2], ![0, 2, -3, -1, 2]]⟩

def canonicalOutput13986 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node533⟩

theorem canonicalSound13986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13986.moment H = canonicalOutput13986.moment H :=
  canonical_of_padded canonicalInput13986 canonicalOutput13986 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13987 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![1, 1, -2, 2, -2], ![0, 1, 1, -4, 2]]⟩

def canonicalOutput13987 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node423⟩

theorem canonicalSound13987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13987.moment H = canonicalOutput13987.moment H :=
  canonical_of_padded canonicalInput13987 canonicalOutput13987 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13988 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![1, 1, 1, 0, -3], ![0, 1, -2, -2, 3]]⟩

def canonicalOutput13988 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node351⟩

theorem canonicalSound13988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13988.moment H = canonicalOutput13988.moment H :=
  canonical_of_padded canonicalInput13988 canonicalOutput13988 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13989 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![2, -1, 1, -1, -1], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput13989 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound13989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13989.moment H = canonicalOutput13989.moment H :=
  canonical_of_padded canonicalInput13989 canonicalOutput13989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13990 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![2, -1, 1, 0, -2], ![-1, 3, -2, -2, 2]]⟩

def canonicalOutput13990 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node534⟩

theorem canonicalSound13990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13990.moment H = canonicalOutput13990.moment H :=
  canonical_of_padded canonicalInput13990 canonicalOutput13990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13991 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 2, 0], ![2, 0, 1, 0, -3], ![-1, 2, -2, -2, 3]]⟩

def canonicalOutput13991 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node329⟩

theorem canonicalSound13991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13991.moment H = canonicalOutput13991.moment H :=
  canonical_of_padded canonicalInput13991 canonicalOutput13991 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13992 : ExponentCode := ⟨5, 5, ![![-1, -2, 2, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13992 : ExponentCode := normalNode8335

theorem canonicalSound13992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13992.moment H = canonicalOutput13992.moment H :=
  canonical_of_padded canonicalInput13992 canonicalOutput13992 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13993 : ExponentCode := ⟨5, 5, ![![-1, -2, 2, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13993 : ExponentCode := normalNode8332

theorem canonicalSound13993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13993.moment H = canonicalOutput13993.moment H :=
  canonical_of_padded canonicalInput13993 canonicalOutput13993 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13994 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-4, 2, 1, 1], ![5, 0, -3, -2]]⟩

def canonicalOutput13994 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound13994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13994.moment H = canonicalOutput13994.moment H :=
  canonical_of_padded canonicalInput13994 canonicalOutput13994 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13995 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-4, 3, 0, 1], ![5, -1, -2, -2]]⟩

def canonicalOutput13995 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound13995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13995.moment H = canonicalOutput13995.moment H :=
  canonical_of_padded canonicalInput13995 canonicalOutput13995 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13996 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 0, 2, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput13996 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound13996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13996.moment H = canonicalOutput13996.moment H :=
  canonical_of_padded canonicalInput13996 canonicalOutput13996 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13997 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 1, 1, 1], ![4, 1, -3, -2]]⟩

def canonicalOutput13997 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound13997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13997.moment H = canonicalOutput13997.moment H :=
  canonical_of_padded canonicalInput13997 canonicalOutput13997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13998 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 2, 2, -1], ![4, 0, -4, 0]]⟩

def canonicalOutput13998 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound13998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13998.moment H = canonicalOutput13998.moment H :=
  canonical_of_padded canonicalInput13998 canonicalOutput13998 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13999 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 3, 1, -1], ![4, -1, -3, 0]]⟩

def canonicalOutput13999 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound13999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13999.moment H = canonicalOutput13999.moment H :=
  canonical_of_padded canonicalInput13999 canonicalOutput13999 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14000 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 4, -2, 1], ![4, -2, 0, -2]]⟩

def canonicalOutput14000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound14000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14000.moment H = canonicalOutput14000.moment H :=
  canonical_of_padded canonicalInput14000 canonicalOutput14000 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14001 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 4, -1, 0], ![4, -2, -1, -1]]⟩

def canonicalOutput14001 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound14001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14001.moment H = canonicalOutput14001.moment H :=
  canonical_of_padded canonicalInput14001 canonicalOutput14001 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14002 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-3, 4, 0, -1], ![4, -2, -2, 0]]⟩

def canonicalOutput14002 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound14002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14002.moment H = canonicalOutput14002.moment H :=
  canonical_of_padded canonicalInput14002 canonicalOutput14002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14003 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 1, 3, -2], ![3, 1, -5, 1]]⟩

def canonicalOutput14003 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound14003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14003.moment H = canonicalOutput14003.moment H :=
  canonical_of_padded canonicalInput14003 canonicalOutput14003 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14004 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 2, -2, 2], ![3, 0, 0, -3]]⟩

def canonicalOutput14004 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound14004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14004.moment H = canonicalOutput14004.moment H :=
  canonical_of_padded canonicalInput14004 canonicalOutput14004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14005 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 3, -3, 2], ![3, -1, 1, -3]]⟩

def canonicalOutput14005 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code684

theorem canonicalSound14005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14005.moment H = canonicalOutput14005.moment H :=
  canonical_of_padded canonicalInput14005 canonicalOutput14005 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14006 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 3, -1, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput14006 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound14006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14006.moment H = canonicalOutput14006.moment H :=
  canonical_of_padded canonicalInput14006 canonicalOutput14006 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14007 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 3, 0, -1], ![3, -1, -2, 0]]⟩

def canonicalOutput14007 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound14007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14007.moment H = canonicalOutput14007.moment H :=
  canonical_of_padded canonicalInput14007 canonicalOutput14007 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14008 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 3, 1, -2], ![3, -1, -3, 1]]⟩

def canonicalOutput14008 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound14008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14008.moment H = canonicalOutput14008.moment H :=
  canonical_of_padded canonicalInput14008 canonicalOutput14008 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14009 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 4, -3, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput14009 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound14009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14009.moment H = canonicalOutput14009.moment H :=
  canonical_of_padded canonicalInput14009 canonicalOutput14009 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14010 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 4, -2, 0], ![3, -2, 0, -1]]⟩

def canonicalOutput14010 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound14010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14010.moment H = canonicalOutput14010.moment H :=
  canonical_of_padded canonicalInput14010 canonicalOutput14010 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14011 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-2, 4, -1, -1], ![3, -2, -1, 0]]⟩

def canonicalOutput14011 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound14011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14011.moment H = canonicalOutput14011.moment H :=
  canonical_of_padded canonicalInput14011 canonicalOutput14011 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14012 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, -2, 2, 1], ![2, 4, -4, -2]]⟩

def canonicalOutput14012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code225

theorem canonicalSound14012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14012.moment H = canonicalOutput14012.moment H :=
  canonical_of_padded canonicalInput14012 canonicalOutput14012 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14013 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14013 : ExponentCode := normalNode5690

theorem canonicalSound14013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14013.moment H = canonicalOutput14013.moment H :=
  canonical_of_padded canonicalInput14013 canonicalOutput14013 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14014 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![0, 3, -1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput14014 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound14014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14014.moment H = canonicalOutput14014.moment H :=
  canonical_of_padded canonicalInput14014 canonicalOutput14014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14015 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14015 : ExponentCode := normalNode5692

theorem canonicalSound14015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14015.moment H = canonicalOutput14015.moment H :=
  canonical_of_padded canonicalInput14015 canonicalOutput14015 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
