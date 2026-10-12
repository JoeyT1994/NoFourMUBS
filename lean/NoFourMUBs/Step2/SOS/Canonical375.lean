import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24000 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, 0, -1, 1]]⟩

def canonicalOutput24000 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node119⟩

theorem canonicalSound24000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24000.moment H = canonicalOutput24000.moment H :=
  canonical_of_padded canonicalInput24000 canonicalOutput24000 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24001 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2620⟩

theorem canonicalSound24001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24001.moment H = canonicalOutput24001.moment H :=
  canonical_of_padded canonicalInput24001 canonicalOutput24001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24002 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24002 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound24002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24002.moment H = canonicalOutput24002.moment H :=
  canonical_of_padded canonicalInput24002 canonicalOutput24002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24003 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24003 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound24003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24003.moment H = canonicalOutput24003.moment H :=
  canonical_of_padded canonicalInput24003 canonicalOutput24003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24004 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24004 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound24004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24004.moment H = canonicalOutput24004.moment H :=
  canonical_of_padded canonicalInput24004 canonicalOutput24004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24005 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24005 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node560⟩

theorem canonicalSound24005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24005.moment H = canonicalOutput24005.moment H :=
  canonical_of_padded canonicalInput24005 canonicalOutput24005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24006 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24006 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound24006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24006.moment H = canonicalOutput24006.moment H :=
  canonical_of_padded canonicalInput24006 canonicalOutput24006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24007 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound24007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24007.moment H = canonicalOutput24007.moment H :=
  canonical_of_padded canonicalInput24007 canonicalOutput24007 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput24008 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24008 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1301⟩

theorem canonicalSound24008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24008.moment H = canonicalOutput24008.moment H :=
  canonical_of_padded canonicalInput24008 canonicalOutput24008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24009 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput24009 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound24009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24009.moment H = canonicalOutput24009.moment H :=
  canonical_of_padded canonicalInput24009 canonicalOutput24009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24010 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24010 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24010.moment H = canonicalOutput24010.moment H :=
  canonical_of_padded canonicalInput24010 canonicalOutput24010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24011 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24011 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound24011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24011.moment H = canonicalOutput24011.moment H :=
  canonical_of_padded canonicalInput24011 canonicalOutput24011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24012 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput24012 : ExponentCode := normalNode10616

theorem canonicalSound24012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24012.moment H = canonicalOutput24012.moment H :=
  canonical_of_padded canonicalInput24012 canonicalOutput24012 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24013 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput24013 : ExponentCode := normalNode10616

theorem canonicalSound24013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24013.moment H = canonicalOutput24013.moment H :=
  canonical_of_padded canonicalInput24013 canonicalOutput24013 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24014 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, -1, 1]]⟩

def canonicalOutput24014 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound24014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24014.moment H = canonicalOutput24014.moment H :=
  canonical_of_padded canonicalInput24014 canonicalOutput24014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24015 : ExponentCode := ⟨3, 4, ![![0, -2, -1, 3], ![0, 0, 4, -4], ![0, 2, -3, 1]]⟩

def canonicalOutput24015 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩

theorem canonicalSound24015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24015.moment H = canonicalOutput24015.moment H :=
  canonical_of_padded canonicalInput24015 canonicalOutput24015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24016 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput24016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound24016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24016.moment H = canonicalOutput24016.moment H :=
  canonical_of_padded canonicalInput24016 canonicalOutput24016 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput24017 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, 0, -1, 1]]⟩

def canonicalOutput24017 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound24017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24017.moment H = canonicalOutput24017.moment H :=
  canonical_of_padded canonicalInput24017 canonicalOutput24017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24018 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, -1, 1]]⟩

def canonicalOutput24018 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node174⟩

theorem canonicalSound24018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24018.moment H = canonicalOutput24018.moment H :=
  canonical_of_padded canonicalInput24018 canonicalOutput24018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24019 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24019 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound24019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24019.moment H = canonicalOutput24019.moment H :=
  canonical_of_padded canonicalInput24019 canonicalOutput24019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24020 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput24020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound24020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24020.moment H = canonicalOutput24020.moment H :=
  canonical_of_padded canonicalInput24020 canonicalOutput24020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24021 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24021 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound24021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24021.moment H = canonicalOutput24021.moment H :=
  canonical_of_padded canonicalInput24021 canonicalOutput24021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24022 : ExponentCode := ⟨4, 5, ![![0, -2, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput24022 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound24022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24022.moment H = canonicalOutput24022.moment H :=
  canonical_of_padded canonicalInput24022 canonicalOutput24022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24023 : ExponentCode := ⟨4, 5, ![![0, -2, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24023 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound24023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24023.moment H = canonicalOutput24023.moment H :=
  canonical_of_padded canonicalInput24023 canonicalOutput24023 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput24024 : ExponentCode := ⟨4, 5, ![![0, -2, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput24024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code762

theorem canonicalSound24024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24024.moment H = canonicalOutput24024.moment H :=
  canonical_of_padded canonicalInput24024 canonicalOutput24024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24025 : ExponentCode := ⟨5, 6, ![![0, -2, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput24025 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound24025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24025.moment H = canonicalOutput24025.moment H :=
  canonical_of_padded canonicalInput24025 canonicalOutput24025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24026 : ExponentCode := ⟨5, 6, ![![0, -2, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput24026 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound24026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24026.moment H = canonicalOutput24026.moment H :=
  canonical_of_padded canonicalInput24026 canonicalOutput24026 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24027 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput24027 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound24027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24027.moment H = canonicalOutput24027.moment H :=
  canonical_of_padded canonicalInput24027 canonicalOutput24027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24028 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 2, 1, 1, -4]]⟩

def canonicalOutput24028 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node449⟩

theorem canonicalSound24028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24028.moment H = canonicalOutput24028.moment H :=
  canonical_of_padded canonicalInput24028 canonicalOutput24028 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24029 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput24029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound24029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24029.moment H = canonicalOutput24029.moment H :=
  canonical_of_padded canonicalInput24029 canonicalOutput24029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24030 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput24030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound24030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24030.moment H = canonicalOutput24030.moment H :=
  canonical_of_padded canonicalInput24030 canonicalOutput24030 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24031 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput24031 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound24031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24031.moment H = canonicalOutput24031.moment H :=
  canonical_of_padded canonicalInput24031 canonicalOutput24031 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24032 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput24032 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound24032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24032.moment H = canonicalOutput24032.moment H :=
  canonical_of_padded canonicalInput24032 canonicalOutput24032 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24033 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput24033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node605⟩

theorem canonicalSound24033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24033.moment H = canonicalOutput24033.moment H :=
  canonical_of_padded canonicalInput24033 canonicalOutput24033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24034 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound24034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24034.moment H = canonicalOutput24034.moment H :=
  canonical_of_padded canonicalInput24034 canonicalOutput24034 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput24035 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput24035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound24035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24035.moment H = canonicalOutput24035.moment H :=
  canonical_of_padded canonicalInput24035 canonicalOutput24035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24036 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput24036 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound24036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24036.moment H = canonicalOutput24036.moment H :=
  canonical_of_padded canonicalInput24036 canonicalOutput24036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24037 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput24037 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound24037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24037.moment H = canonicalOutput24037.moment H :=
  canonical_of_padded canonicalInput24037 canonicalOutput24037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24038 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 1, -1, 2, -2], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput24038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound24038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24038.moment H = canonicalOutput24038.moment H :=
  canonical_of_padded canonicalInput24038 canonicalOutput24038 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24039 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput24039 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24039.moment H = canonicalOutput24039.moment H :=
  canonical_of_padded canonicalInput24039 canonicalOutput24039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24040 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput24040 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound24040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24040.moment H = canonicalOutput24040.moment H :=
  canonical_of_padded canonicalInput24040 canonicalOutput24040 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24041 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput24041 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24041.moment H = canonicalOutput24041.moment H :=
  canonical_of_padded canonicalInput24041 canonicalOutput24041 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput24042 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput24042 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound24042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24042.moment H = canonicalOutput24042.moment H :=
  canonical_of_padded canonicalInput24042 canonicalOutput24042 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24043 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![-1, 0, -1, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24043 : ExponentCode := normalNode8301

theorem canonicalSound24043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24043.moment H = canonicalOutput24043.moment H :=
  canonical_of_padded canonicalInput24043 canonicalOutput24043 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, canonicalPermutation68⟩ (by decide +kernel) hH

def canonicalInput24044 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![-1, 0, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24044 : ExponentCode := normalNode8490

theorem canonicalSound24044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24044.moment H = canonicalOutput24044.moment H :=
  canonical_of_padded canonicalInput24044 canonicalOutput24044 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput24045 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![-1, 0, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24045 : ExponentCode := normalNode8490

theorem canonicalSound24045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24045.moment H = canonicalOutput24045.moment H :=
  canonical_of_padded canonicalInput24045 canonicalOutput24045 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput24046 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![-1, 0, 2, -2, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24046 : ExponentCode := normalNode8594

theorem canonicalSound24046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24046.moment H = canonicalOutput24046.moment H :=
  canonical_of_padded canonicalInput24046 canonicalOutput24046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput24047 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![-1, 0, 2, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24047 : ExponentCode := normalNode10759

theorem canonicalSound24047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24047.moment H = canonicalOutput24047.moment H :=
  canonical_of_padded canonicalInput24047 canonicalOutput24047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24048 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24048 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound24048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24048.moment H = canonicalOutput24048.moment H :=
  canonical_of_padded canonicalInput24048 canonicalOutput24048 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24049 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24049 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node613⟩

theorem canonicalSound24049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24049.moment H = canonicalOutput24049.moment H :=
  canonical_of_padded canonicalInput24049 canonicalOutput24049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24050 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, -2, 1], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24050 : ExponentCode := normalNode8259

theorem canonicalSound24050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24050.moment H = canonicalOutput24050.moment H :=
  canonical_of_padded canonicalInput24050 canonicalOutput24050 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput24051 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24051 : ExponentCode := normalNode10056

theorem canonicalSound24051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24051.moment H = canonicalOutput24051.moment H :=
  canonical_of_padded canonicalInput24051 canonicalOutput24051 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput24052 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24052 : ExponentCode := normalNode10077

theorem canonicalSound24052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24052.moment H = canonicalOutput24052.moment H :=
  canonical_of_padded canonicalInput24052 canonicalOutput24052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24053 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![-1, 2, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24053 : ExponentCode := normalNode8287

theorem canonicalSound24053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24053.moment H = canonicalOutput24053.moment H :=
  canonical_of_padded canonicalInput24053 canonicalOutput24053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput24054 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![0, 0, -1, 0, 1]]⟩

def canonicalOutput24054 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound24054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24054.moment H = canonicalOutput24054.moment H :=
  canonical_of_padded canonicalInput24054 canonicalOutput24054 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24055 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![-1, 2, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24055 : ExponentCode := normalNode10152

theorem canonicalSound24055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24055.moment H = canonicalOutput24055.moment H :=
  canonical_of_padded canonicalInput24055 canonicalOutput24055 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation175⟩ (by decide +kernel) hH

def canonicalInput24056 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![-1, 2, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24056 : ExponentCode := normalNode10076

theorem canonicalSound24056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24056.moment H = canonicalOutput24056.moment H :=
  canonical_of_padded canonicalInput24056 canonicalOutput24056 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput24057 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![0, 0, 0, 0, 0]]⟩

def canonicalOutput24057 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound24057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24057.moment H = canonicalOutput24057.moment H :=
  canonical_of_padded canonicalInput24057 canonicalOutput24057 (by decide) (by decide)
    ⟨false, true, canonicalPermutation31, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput24058 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, 0, -1], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24058 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound24058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24058.moment H = canonicalOutput24058.moment H :=
  canonical_of_padded canonicalInput24058 canonicalOutput24058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24059 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput24059 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24059.moment H = canonicalOutput24059.moment H :=
  canonical_of_padded canonicalInput24059 canonicalOutput24059 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24060 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 1, -2, 1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24060 : ExponentCode := normalNode8631

theorem canonicalSound24060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24060.moment H = canonicalOutput24060.moment H :=
  canonical_of_padded canonicalInput24060 canonicalOutput24060 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation74⟩ (by decide +kernel) hH

def canonicalInput24061 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput24061 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24061.moment H = canonicalOutput24061.moment H :=
  canonical_of_padded canonicalInput24061 canonicalOutput24061 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24062 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![-1, 1, 0, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput24062 : ExponentCode := normalNode10119

theorem canonicalSound24062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24062.moment H = canonicalOutput24062.moment H :=
  canonical_of_padded canonicalInput24062 canonicalOutput24062 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput24063 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![0, 0, 0, 0, 0]]⟩

def canonicalOutput24063 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound24063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24063.moment H = canonicalOutput24063.moment H :=
  canonical_of_padded canonicalInput24063 canonicalOutput24063 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
