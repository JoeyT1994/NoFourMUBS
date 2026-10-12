import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25984 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -1, 3, 0]]⟩

def canonicalOutput25984 : ExponentCode := normalNode1769

theorem canonicalSound25984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25984.moment H = canonicalOutput25984.moment H :=
  canonical_of_padded canonicalInput25984 canonicalOutput25984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25985 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![0, 0, -2, 2]]⟩

def canonicalOutput25985 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound25985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25985.moment H = canonicalOutput25985.moment H :=
  canonical_of_padded canonicalInput25985 canonicalOutput25985 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25986 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 2, -3, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput25986 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound25986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25986.moment H = canonicalOutput25986.moment H :=
  canonical_of_padded canonicalInput25986 canonicalOutput25986 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25987 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -1, -2, 3]]⟩

def canonicalOutput25987 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound25987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25987.moment H = canonicalOutput25987.moment H :=
  canonical_of_padded canonicalInput25987 canonicalOutput25987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25988 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25988 : ExponentCode := normalNode10266

theorem canonicalSound25988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25988.moment H = canonicalOutput25988.moment H :=
  canonical_of_padded canonicalInput25988 canonicalOutput25988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25989 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25989 : ExponentCode := normalNode11143

theorem canonicalSound25989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25989.moment H = canonicalOutput25989.moment H :=
  canonical_of_padded canonicalInput25989 canonicalOutput25989 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25990 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25990 : ExponentCode := normalNode11029

theorem canonicalSound25990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25990.moment H = canonicalOutput25990.moment H :=
  canonical_of_padded canonicalInput25990 canonicalOutput25990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25991 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25991 : ExponentCode := normalNode9694

theorem canonicalSound25991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25991.moment H = canonicalOutput25991.moment H :=
  canonical_of_padded canonicalInput25991 canonicalOutput25991 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25992 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput25992 : ExponentCode := normalNode3059

theorem canonicalSound25992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25992.moment H = canonicalOutput25992.moment H :=
  canonical_of_padded canonicalInput25992 canonicalOutput25992 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25993 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 2, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput25993 : ExponentCode := normalNode5782

theorem canonicalSound25993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25993.moment H = canonicalOutput25993.moment H :=
  canonical_of_padded canonicalInput25993 canonicalOutput25993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25994 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput25994 : ExponentCode := normalNode4736

theorem canonicalSound25994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25994.moment H = canonicalOutput25994.moment H :=
  canonical_of_padded canonicalInput25994 canonicalOutput25994 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25995 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25995 : ExponentCode := normalNode5057

theorem canonicalSound25995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25995.moment H = canonicalOutput25995.moment H :=
  canonical_of_padded canonicalInput25995 canonicalOutput25995 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25996 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput25996 : ExponentCode := normalNode4839

theorem canonicalSound25996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25996.moment H = canonicalOutput25996.moment H :=
  canonical_of_padded canonicalInput25996 canonicalOutput25996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25997 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25997 : ExponentCode := normalNode10488

theorem canonicalSound25997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25997.moment H = canonicalOutput25997.moment H :=
  canonical_of_padded canonicalInput25997 canonicalOutput25997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25998 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25998 : ExponentCode := normalNode4878

theorem canonicalSound25998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25998.moment H = canonicalOutput25998.moment H :=
  canonical_of_padded canonicalInput25998 canonicalOutput25998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25999 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput25999 : ExponentCode := normalNode3208

theorem canonicalSound25999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25999.moment H = canonicalOutput25999.moment H :=
  canonical_of_padded canonicalInput25999 canonicalOutput25999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26000 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, -2, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput26000 : ExponentCode := normalNode7112

theorem canonicalSound26000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26000.moment H = canonicalOutput26000.moment H :=
  canonical_of_padded canonicalInput26000 canonicalOutput26000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26001 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 3, 1, -4]]⟩

def canonicalOutput26001 : ExponentCode := normalNode765

theorem canonicalSound26001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26001.moment H = canonicalOutput26001.moment H :=
  canonical_of_padded canonicalInput26001 canonicalOutput26001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26002 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput26002 : ExponentCode := normalNode6065

theorem canonicalSound26002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26002.moment H = canonicalOutput26002.moment H :=
  canonical_of_padded canonicalInput26002 canonicalOutput26002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26003 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26003 : ExponentCode := normalNode4898

theorem canonicalSound26003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26003.moment H = canonicalOutput26003.moment H :=
  canonical_of_padded canonicalInput26003 canonicalOutput26003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26004 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, -4, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput26004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2768⟩

theorem canonicalSound26004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26004.moment H = canonicalOutput26004.moment H :=
  canonical_of_padded canonicalInput26004 canonicalOutput26004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26005 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26005 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2815⟩

theorem canonicalSound26005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26005.moment H = canonicalOutput26005.moment H :=
  canonical_of_padded canonicalInput26005 canonicalOutput26005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26006 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput26006 : ExponentCode := normalNode10963

theorem canonicalSound26006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26006.moment H = canonicalOutput26006.moment H :=
  canonical_of_padded canonicalInput26006 canonicalOutput26006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26007 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput26007 : ExponentCode := normalNode10964

theorem canonicalSound26007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26007.moment H = canonicalOutput26007.moment H :=
  canonical_of_padded canonicalInput26007 canonicalOutput26007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26008 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput26008 : ExponentCode := normalNode4883

theorem canonicalSound26008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26008.moment H = canonicalOutput26008.moment H :=
  canonical_of_padded canonicalInput26008 canonicalOutput26008 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26009 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26009 : ExponentCode := normalNode7350

theorem canonicalSound26009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26009.moment H = canonicalOutput26009.moment H :=
  canonical_of_padded canonicalInput26009 canonicalOutput26009 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26010 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput26010 : ExponentCode := normalNode9812

theorem canonicalSound26010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26010.moment H = canonicalOutput26010.moment H :=
  canonical_of_padded canonicalInput26010 canonicalOutput26010 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26011 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput26011 : ExponentCode := normalNode3205

theorem canonicalSound26011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26011.moment H = canonicalOutput26011.moment H :=
  canonical_of_padded canonicalInput26011 canonicalOutput26011 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26012 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26012 : ExponentCode := normalNode11140

theorem canonicalSound26012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26012.moment H = canonicalOutput26012.moment H :=
  canonical_of_padded canonicalInput26012 canonicalOutput26012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26013 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 2, -4, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput26013 : ExponentCode := normalNode9730

theorem canonicalSound26013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26013.moment H = canonicalOutput26013.moment H :=
  canonical_of_padded canonicalInput26013 canonicalOutput26013 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26014 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput26014 : ExponentCode := normalNode7825

theorem canonicalSound26014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26014.moment H = canonicalOutput26014.moment H :=
  canonical_of_padded canonicalInput26014 canonicalOutput26014 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26015 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput26015 : ExponentCode := normalNode9873

theorem canonicalSound26015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26015.moment H = canonicalOutput26015.moment H :=
  canonical_of_padded canonicalInput26015 canonicalOutput26015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26016 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput26016 : ExponentCode := normalNode10554

theorem canonicalSound26016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26016.moment H = canonicalOutput26016.moment H :=
  canonical_of_padded canonicalInput26016 canonicalOutput26016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26017 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput26017 : ExponentCode := normalNode9909

theorem canonicalSound26017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26017.moment H = canonicalOutput26017.moment H :=
  canonical_of_padded canonicalInput26017 canonicalOutput26017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26018 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput26018 : ExponentCode := normalNode10700

theorem canonicalSound26018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26018.moment H = canonicalOutput26018.moment H :=
  canonical_of_padded canonicalInput26018 canonicalOutput26018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation319, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26019 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput26019 : ExponentCode := normalNode10553

theorem canonicalSound26019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26019.moment H = canonicalOutput26019.moment H :=
  canonical_of_padded canonicalInput26019 canonicalOutput26019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26020 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, -4, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput26020 : ExponentCode := normalNode11058

theorem canonicalSound26020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26020.moment H = canonicalOutput26020.moment H :=
  canonical_of_padded canonicalInput26020 canonicalOutput26020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26021 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26021 : ExponentCode := normalNode11196

theorem canonicalSound26021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26021.moment H = canonicalOutput26021.moment H :=
  canonical_of_padded canonicalInput26021 canonicalOutput26021 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26022 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput26022 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node440⟩

theorem canonicalSound26022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26022.moment H = canonicalOutput26022.moment H :=
  canonical_of_padded canonicalInput26022 canonicalOutput26022 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26023 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput26023 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node553⟩

theorem canonicalSound26023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26023.moment H = canonicalOutput26023.moment H :=
  canonical_of_padded canonicalInput26023 canonicalOutput26023 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26024 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput26024 : ExponentCode := normalNode10985

theorem canonicalSound26024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26024.moment H = canonicalOutput26024.moment H :=
  canonical_of_padded canonicalInput26024 canonicalOutput26024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26025 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput26025 : ExponentCode := normalNode11043

theorem canonicalSound26025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26025.moment H = canonicalOutput26025.moment H :=
  canonical_of_padded canonicalInput26025 canonicalOutput26025 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26026 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput26026 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node862⟩

theorem canonicalSound26026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26026.moment H = canonicalOutput26026.moment H :=
  canonical_of_padded canonicalInput26026 canonicalOutput26026 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26027 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput26027 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node868⟩

theorem canonicalSound26027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26027.moment H = canonicalOutput26027.moment H :=
  canonical_of_padded canonicalInput26027 canonicalOutput26027 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26028 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, 0, 3, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput26028 : ExponentCode := normalNode4842

theorem canonicalSound26028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26028.moment H = canonicalOutput26028.moment H :=
  canonical_of_padded canonicalInput26028 canonicalOutput26028 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26029 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26029 : ExponentCode := normalNode7388

theorem canonicalSound26029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26029.moment H = canonicalOutput26029.moment H :=
  canonical_of_padded canonicalInput26029 canonicalOutput26029 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26030 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput26030 : ExponentCode := normalNode9889

theorem canonicalSound26030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26030.moment H = canonicalOutput26030.moment H :=
  canonical_of_padded canonicalInput26030 canonicalOutput26030 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26031 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput26031 : ExponentCode := normalNode3461

theorem canonicalSound26031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26031.moment H = canonicalOutput26031.moment H :=
  canonical_of_padded canonicalInput26031 canonicalOutput26031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26032 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26032 : ExponentCode := normalNode9913

theorem canonicalSound26032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26032.moment H = canonicalOutput26032.moment H :=
  canonical_of_padded canonicalInput26032 canonicalOutput26032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26033 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, -2, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput26033 : ExponentCode := normalNode3170

theorem canonicalSound26033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26033.moment H = canonicalOutput26033.moment H :=
  canonical_of_padded canonicalInput26033 canonicalOutput26033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26034 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput26034 : ExponentCode := normalNode9891

theorem canonicalSound26034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26034.moment H = canonicalOutput26034.moment H :=
  canonical_of_padded canonicalInput26034 canonicalOutput26034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26035 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput26035 : ExponentCode := normalNode10973

theorem canonicalSound26035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26035.moment H = canonicalOutput26035.moment H :=
  canonical_of_padded canonicalInput26035 canonicalOutput26035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26036 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput26036 : ExponentCode := normalNode4873

theorem canonicalSound26036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26036.moment H = canonicalOutput26036.moment H :=
  canonical_of_padded canonicalInput26036 canonicalOutput26036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26037 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![-1, -1, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput26037 : ExponentCode := normalNode3205

theorem canonicalSound26037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26037.moment H = canonicalOutput26037.moment H :=
  canonical_of_padded canonicalInput26037 canonicalOutput26037 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26038 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26038 : ExponentCode := normalNode11181

theorem canonicalSound26038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26038.moment H = canonicalOutput26038.moment H :=
  canonical_of_padded canonicalInput26038 canonicalOutput26038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26039 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 3, 0], ![2, 0, -4, 2]]⟩

def canonicalOutput26039 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2960⟩

theorem canonicalSound26039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26039.moment H = canonicalOutput26039.moment H :=
  canonical_of_padded canonicalInput26039 canonicalOutput26039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26040 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![1, 0, -4, 3]]⟩

def canonicalOutput26040 : ExponentCode := normalNode7880

theorem canonicalSound26040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26040.moment H = canonicalOutput26040.moment H :=
  canonical_of_padded canonicalInput26040 canonicalOutput26040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26041 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput26041 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node732⟩

theorem canonicalSound26041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26041.moment H = canonicalOutput26041.moment H :=
  canonical_of_padded canonicalInput26041 canonicalOutput26041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26042 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, 0, -3, 3]]⟩

def canonicalOutput26042 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound26042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26042.moment H = canonicalOutput26042.moment H :=
  canonical_of_padded canonicalInput26042 canonicalOutput26042 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26043 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput26043 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound26043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26043.moment H = canonicalOutput26043.moment H :=
  canonical_of_padded canonicalInput26043 canonicalOutput26043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26044 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -1, -3, 4]]⟩

def canonicalOutput26044 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound26044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26044.moment H = canonicalOutput26044.moment H :=
  canonical_of_padded canonicalInput26044 canonicalOutput26044 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26045 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput26045 : ExponentCode := normalNode4372

theorem canonicalSound26045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26045.moment H = canonicalOutput26045.moment H :=
  canonical_of_padded canonicalInput26045 canonicalOutput26045 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26046 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26046 : ExponentCode := normalNode5610

theorem canonicalSound26046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26046.moment H = canonicalOutput26046.moment H :=
  canonical_of_padded canonicalInput26046 canonicalOutput26046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26047 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26047 : ExponentCode := normalNode6195

theorem canonicalSound26047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26047.moment H = canonicalOutput26047.moment H :=
  canonical_of_padded canonicalInput26047 canonicalOutput26047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
