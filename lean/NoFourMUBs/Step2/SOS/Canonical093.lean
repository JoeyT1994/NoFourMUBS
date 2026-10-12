import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5952 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5952 : ExponentCode := normalNode8925

theorem canonicalSound5952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5952.moment H = canonicalOutput5952.moment H :=
  canonical_of_padded canonicalInput5952 canonicalOutput5952 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5953 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5953 : ExponentCode := normalNode8938

theorem canonicalSound5953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5953.moment H = canonicalOutput5953.moment H :=
  canonical_of_padded canonicalInput5953 canonicalOutput5953 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5954 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput5954 : ExponentCode := normalNode10506

theorem canonicalSound5954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5954.moment H = canonicalOutput5954.moment H :=
  canonical_of_padded canonicalInput5954 canonicalOutput5954 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5955 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput5955 : ExponentCode := normalNode10550

theorem canonicalSound5955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5955.moment H = canonicalOutput5955.moment H :=
  canonical_of_padded canonicalInput5955 canonicalOutput5955 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5956 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5956 : ExponentCode := normalNode10565

theorem canonicalSound5956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5956.moment H = canonicalOutput5956.moment H :=
  canonical_of_padded canonicalInput5956 canonicalOutput5956 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5957 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5957 : ExponentCode := normalNode10248

theorem canonicalSound5957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5957.moment H = canonicalOutput5957.moment H :=
  canonical_of_padded canonicalInput5957 canonicalOutput5957 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5958 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5958 : ExponentCode := normalNode9875

theorem canonicalSound5958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5958.moment H = canonicalOutput5958.moment H :=
  canonical_of_padded canonicalInput5958 canonicalOutput5958 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5959 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput5959 : ExponentCode := normalNode3068

theorem canonicalSound5959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5959.moment H = canonicalOutput5959.moment H :=
  canonical_of_padded canonicalInput5959 canonicalOutput5959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5960 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput5960 : ExponentCode := normalNode3069

theorem canonicalSound5960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5960.moment H = canonicalOutput5960.moment H :=
  canonical_of_padded canonicalInput5960 canonicalOutput5960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5961 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput5961 : ExponentCode := normalNode7221

theorem canonicalSound5961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5961.moment H = canonicalOutput5961.moment H :=
  canonical_of_padded canonicalInput5961 canonicalOutput5961 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5962 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput5962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound5962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5962.moment H = canonicalOutput5962.moment H :=
  canonical_of_padded canonicalInput5962 canonicalOutput5962 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5963 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput5963 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code257

theorem canonicalSound5963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5963.moment H = canonicalOutput5963.moment H :=
  canonical_of_padded canonicalInput5963 canonicalOutput5963 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5964 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput5964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code414

theorem canonicalSound5964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5964.moment H = canonicalOutput5964.moment H :=
  canonical_of_padded canonicalInput5964 canonicalOutput5964 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5965 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound5965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5965.moment H = canonicalOutput5965.moment H :=
  canonical_of_padded canonicalInput5965 canonicalOutput5965 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5966 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5966 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound5966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5966.moment H = canonicalOutput5966.moment H :=
  canonical_of_padded canonicalInput5966 canonicalOutput5966 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5967 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5967 : ExponentCode := normalNode7189

theorem canonicalSound5967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5967.moment H = canonicalOutput5967.moment H :=
  canonical_of_padded canonicalInput5967 canonicalOutput5967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5968 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 2, -1], ![1, 2, 0, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput5968 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code414

theorem canonicalSound5968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5968.moment H = canonicalOutput5968.moment H :=
  canonical_of_padded canonicalInput5968 canonicalOutput5968 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5969 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5969 : ExponentCode := normalNode10586

theorem canonicalSound5969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5969.moment H = canonicalOutput5969.moment H :=
  canonical_of_padded canonicalInput5969 canonicalOutput5969 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5970 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5970 : ExponentCode := normalNode6332

theorem canonicalSound5970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5970.moment H = canonicalOutput5970.moment H :=
  canonical_of_padded canonicalInput5970 canonicalOutput5970 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5971 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5971 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code259

theorem canonicalSound5971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5971.moment H = canonicalOutput5971.moment H :=
  canonical_of_padded canonicalInput5971 canonicalOutput5971 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5972 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5972 : ExponentCode := normalNode9056

theorem canonicalSound5972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5972.moment H = canonicalOutput5972.moment H :=
  canonical_of_padded canonicalInput5972 canonicalOutput5972 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5973 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5973 : ExponentCode := normalNode6327

theorem canonicalSound5973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5973.moment H = canonicalOutput5973.moment H :=
  canonical_of_padded canonicalInput5973 canonicalOutput5973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5974 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5974 : ExponentCode := normalNode6327

theorem canonicalSound5974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5974.moment H = canonicalOutput5974.moment H :=
  canonical_of_padded canonicalInput5974 canonicalOutput5974 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5975 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5975 : ExponentCode := normalNode3070

theorem canonicalSound5975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5975.moment H = canonicalOutput5975.moment H :=
  canonical_of_padded canonicalInput5975 canonicalOutput5975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5976 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5976 : ExponentCode := normalNode10695

theorem canonicalSound5976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5976.moment H = canonicalOutput5976.moment H :=
  canonical_of_padded canonicalInput5976 canonicalOutput5976 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5977 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5977 : ExponentCode := normalNode10323

theorem canonicalSound5977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5977.moment H = canonicalOutput5977.moment H :=
  canonical_of_padded canonicalInput5977 canonicalOutput5977 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5978 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5978 : ExponentCode := normalNode7946

theorem canonicalSound5978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5978.moment H = canonicalOutput5978.moment H :=
  canonical_of_padded canonicalInput5978 canonicalOutput5978 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5979 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5979 : ExponentCode := normalNode9071

theorem canonicalSound5979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5979.moment H = canonicalOutput5979.moment H :=
  canonical_of_padded canonicalInput5979 canonicalOutput5979 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5980 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput5980 : ExponentCode := normalNode9057

theorem canonicalSound5980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5980.moment H = canonicalOutput5980.moment H :=
  canonical_of_padded canonicalInput5980 canonicalOutput5980 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5981 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5981 : ExponentCode := normalNode10695

theorem canonicalSound5981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5981.moment H = canonicalOutput5981.moment H :=
  canonical_of_padded canonicalInput5981 canonicalOutput5981 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5982 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5982 : ExponentCode := normalNode10684

theorem canonicalSound5982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5982.moment H = canonicalOutput5982.moment H :=
  canonical_of_padded canonicalInput5982 canonicalOutput5982 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5983 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5983 : ExponentCode := normalNode10573

theorem canonicalSound5983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5983.moment H = canonicalOutput5983.moment H :=
  canonical_of_padded canonicalInput5983 canonicalOutput5983 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5984 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5984 : ExponentCode := normalNode10598

theorem canonicalSound5984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5984.moment H = canonicalOutput5984.moment H :=
  canonical_of_padded canonicalInput5984 canonicalOutput5984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5985 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput5985 : ExponentCode := normalNode7217

theorem canonicalSound5985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5985.moment H = canonicalOutput5985.moment H :=
  canonical_of_padded canonicalInput5985 canonicalOutput5985 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5986 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput5986 : ExponentCode := normalNode3089

theorem canonicalSound5986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5986.moment H = canonicalOutput5986.moment H :=
  canonical_of_padded canonicalInput5986 canonicalOutput5986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5987 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5987 : ExponentCode := normalNode10254

theorem canonicalSound5987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5987.moment H = canonicalOutput5987.moment H :=
  canonical_of_padded canonicalInput5987 canonicalOutput5987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5988 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5988 : ExponentCode := normalNode10269

theorem canonicalSound5988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5988.moment H = canonicalOutput5988.moment H :=
  canonical_of_padded canonicalInput5988 canonicalOutput5988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5989 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput5989 : ExponentCode := normalNode6321

theorem canonicalSound5989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5989.moment H = canonicalOutput5989.moment H :=
  canonical_of_padded canonicalInput5989 canonicalOutput5989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5990 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5990 : ExponentCode := normalNode9888

theorem canonicalSound5990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5990.moment H = canonicalOutput5990.moment H :=
  canonical_of_padded canonicalInput5990 canonicalOutput5990 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5991 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput5991 : ExponentCode := normalNode6324

theorem canonicalSound5991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5991.moment H = canonicalOutput5991.moment H :=
  canonical_of_padded canonicalInput5991 canonicalOutput5991 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5992 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput5992 : ExponentCode := normalNode3098

theorem canonicalSound5992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5992.moment H = canonicalOutput5992.moment H :=
  canonical_of_padded canonicalInput5992 canonicalOutput5992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5993 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -2, 1, -1]]⟩

def canonicalOutput5993 : ExponentCode := normalNode5998

theorem canonicalSound5993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5993.moment H = canonicalOutput5993.moment H :=
  canonical_of_padded canonicalInput5993 canonicalOutput5993 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5994 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5994 : ExponentCode := normalNode6333

theorem canonicalSound5994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5994.moment H = canonicalOutput5994.moment H :=
  canonical_of_padded canonicalInput5994 canonicalOutput5994 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5995 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5995 : ExponentCode := normalNode10593

theorem canonicalSound5995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5995.moment H = canonicalOutput5995.moment H :=
  canonical_of_padded canonicalInput5995 canonicalOutput5995 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5996 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5996 : ExponentCode := normalNode6325

theorem canonicalSound5996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5996.moment H = canonicalOutput5996.moment H :=
  canonical_of_padded canonicalInput5996 canonicalOutput5996 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5997 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5997 : ExponentCode := normalNode10265

theorem canonicalSound5997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5997.moment H = canonicalOutput5997.moment H :=
  canonical_of_padded canonicalInput5997 canonicalOutput5997 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5998 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5998 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound5998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5998.moment H = canonicalOutput5998.moment H :=
  canonical_of_padded canonicalInput5998 canonicalOutput5998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5999 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput5999 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code110

theorem canonicalSound5999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5999.moment H = canonicalOutput5999.moment H :=
  canonical_of_padded canonicalInput5999 canonicalOutput5999 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6000 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![0, 2, 1, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput6000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code705

theorem canonicalSound6000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6000.moment H = canonicalOutput6000.moment H :=
  canonical_of_padded canonicalInput6000 canonicalOutput6000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6001 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput6001 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code410

theorem canonicalSound6001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6001.moment H = canonicalOutput6001.moment H :=
  canonical_of_padded canonicalInput6001 canonicalOutput6001 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6002 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6002 : ExponentCode := normalNode7940

theorem canonicalSound6002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6002.moment H = canonicalOutput6002.moment H :=
  canonical_of_padded canonicalInput6002 canonicalOutput6002 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6003 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6003 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound6003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6003.moment H = canonicalOutput6003.moment H :=
  canonical_of_padded canonicalInput6003 canonicalOutput6003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6004 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![1, 1, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6004 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound6004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6004.moment H = canonicalOutput6004.moment H :=
  canonical_of_padded canonicalInput6004 canonicalOutput6004 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6005 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 2, -2], ![1, 1, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput6005 : ExponentCode := normalNode7940

theorem canonicalSound6005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6005.moment H = canonicalOutput6005.moment H :=
  canonical_of_padded canonicalInput6005 canonicalOutput6005 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6006 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6006 : ExponentCode := normalNode10590

theorem canonicalSound6006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6006.moment H = canonicalOutput6006.moment H :=
  canonical_of_padded canonicalInput6006 canonicalOutput6006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6007 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6007 : ExponentCode := normalNode9055

theorem canonicalSound6007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6007.moment H = canonicalOutput6007.moment H :=
  canonical_of_padded canonicalInput6007 canonicalOutput6007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6008 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6008 : ExponentCode := normalNode10573

theorem canonicalSound6008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6008.moment H = canonicalOutput6008.moment H :=
  canonical_of_padded canonicalInput6008 canonicalOutput6008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6009 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6009 : ExponentCode := normalNode7217

theorem canonicalSound6009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6009.moment H = canonicalOutput6009.moment H :=
  canonical_of_padded canonicalInput6009 canonicalOutput6009 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6010 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6010 : ExponentCode := normalNode3108

theorem canonicalSound6010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6010.moment H = canonicalOutput6010.moment H :=
  canonical_of_padded canonicalInput6010 canonicalOutput6010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6011 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 3, -3]]⟩

def canonicalOutput6011 : ExponentCode := normalNode7216

theorem canonicalSound6011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6011.moment H = canonicalOutput6011.moment H :=
  canonical_of_padded canonicalInput6011 canonicalOutput6011 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6012 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput6012 : ExponentCode := normalNode6323

theorem canonicalSound6012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6012.moment H = canonicalOutput6012.moment H :=
  canonical_of_padded canonicalInput6012 canonicalOutput6012 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6013 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -2, 1, -1]]⟩

def canonicalOutput6013 : ExponentCode := normalNode5999

theorem canonicalSound6013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6013.moment H = canonicalOutput6013.moment H :=
  canonical_of_padded canonicalInput6013 canonicalOutput6013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6014 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6014 : ExponentCode := normalNode9601

theorem canonicalSound6014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6014.moment H = canonicalOutput6014.moment H :=
  canonical_of_padded canonicalInput6014 canonicalOutput6014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6015 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6015 : ExponentCode := normalNode6001

theorem canonicalSound6015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6015.moment H = canonicalOutput6015.moment H :=
  canonical_of_padded canonicalInput6015 canonicalOutput6015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
