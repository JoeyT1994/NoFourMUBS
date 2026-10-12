import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20992 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput20992 : ExponentCode := normalNode10601

theorem canonicalSound20992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20992.moment H = canonicalOutput20992.moment H :=
  canonical_of_padded canonicalInput20992 canonicalOutput20992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20993 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, 3, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput20993 : ExponentCode := normalNode5772

theorem canonicalSound20993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20993.moment H = canonicalOutput20993.moment H :=
  canonical_of_padded canonicalInput20993 canonicalOutput20993 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20994 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput20994 : ExponentCode := normalNode10717

theorem canonicalSound20994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20994.moment H = canonicalOutput20994.moment H :=
  canonical_of_padded canonicalInput20994 canonicalOutput20994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20995 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -2, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput20995 : ExponentCode := normalNode7287

theorem canonicalSound20995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20995.moment H = canonicalOutput20995.moment H :=
  canonical_of_padded canonicalInput20995 canonicalOutput20995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20996 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput20996 : ExponentCode := normalNode10477

theorem canonicalSound20996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20996.moment H = canonicalOutput20996.moment H :=
  canonical_of_padded canonicalInput20996 canonicalOutput20996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20997 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput20997 : ExponentCode := normalNode10555

theorem canonicalSound20997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20997.moment H = canonicalOutput20997.moment H :=
  canonical_of_padded canonicalInput20997 canonicalOutput20997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20998 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput20998 : ExponentCode := normalNode10828

theorem canonicalSound20998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20998.moment H = canonicalOutput20998.moment H :=
  canonical_of_padded canonicalInput20998 canonicalOutput20998 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20999 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput20999 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1118⟩

theorem canonicalSound20999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20999.moment H = canonicalOutput20999.moment H :=
  canonical_of_padded canonicalInput20999 canonicalOutput20999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21000 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput21000 : ExponentCode := normalNode9960

theorem canonicalSound21000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21000.moment H = canonicalOutput21000.moment H :=
  canonical_of_padded canonicalInput21000 canonicalOutput21000 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21001 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput21001 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1252⟩

theorem canonicalSound21001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21001.moment H = canonicalOutput21001.moment H :=
  canonical_of_padded canonicalInput21001 canonicalOutput21001 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21002 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput21002 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound21002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21002.moment H = canonicalOutput21002.moment H :=
  canonical_of_padded canonicalInput21002 canonicalOutput21002 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21003 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput21003 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound21003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21003.moment H = canonicalOutput21003.moment H :=
  canonical_of_padded canonicalInput21003 canonicalOutput21003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21004 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput21004 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound21004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21004.moment H = canonicalOutput21004.moment H :=
  canonical_of_padded canonicalInput21004 canonicalOutput21004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput21005 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput21005 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1252⟩

theorem canonicalSound21005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21005.moment H = canonicalOutput21005.moment H :=
  canonical_of_padded canonicalInput21005 canonicalOutput21005 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21006 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 3, -3], ![0, 1, -4, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput21006 : ExponentCode := normalNode9748

theorem canonicalSound21006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21006.moment H = canonicalOutput21006.moment H :=
  canonical_of_padded canonicalInput21006 canonicalOutput21006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21007 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput21007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound21007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21007.moment H = canonicalOutput21007.moment H :=
  canonical_of_padded canonicalInput21007 canonicalOutput21007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21008 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput21008 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound21008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21008.moment H = canonicalOutput21008.moment H :=
  canonical_of_padded canonicalInput21008 canonicalOutput21008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21009 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput21009 : ExponentCode := normalNode10680

theorem canonicalSound21009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21009.moment H = canonicalOutput21009.moment H :=
  canonical_of_padded canonicalInput21009 canonicalOutput21009 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21010 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput21010 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound21010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21010.moment H = canonicalOutput21010.moment H :=
  canonical_of_padded canonicalInput21010 canonicalOutput21010 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21011 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput21011 : ExponentCode := normalNode9815

theorem canonicalSound21011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21011.moment H = canonicalOutput21011.moment H :=
  canonical_of_padded canonicalInput21011 canonicalOutput21011 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21012 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput21012 : ExponentCode := normalNode10617

theorem canonicalSound21012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21012.moment H = canonicalOutput21012.moment H :=
  canonical_of_padded canonicalInput21012 canonicalOutput21012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21013 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput21013 : ExponentCode := normalNode10350

theorem canonicalSound21013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21013.moment H = canonicalOutput21013.moment H :=
  canonical_of_padded canonicalInput21013 canonicalOutput21013 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21014 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput21014 : ExponentCode := normalNode10662

theorem canonicalSound21014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21014.moment H = canonicalOutput21014.moment H :=
  canonical_of_padded canonicalInput21014 canonicalOutput21014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21015 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput21015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound21015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21015.moment H = canonicalOutput21015.moment H :=
  canonical_of_padded canonicalInput21015 canonicalOutput21015 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21016 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput21016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound21016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21016.moment H = canonicalOutput21016.moment H :=
  canonical_of_padded canonicalInput21016 canonicalOutput21016 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21017 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput21017 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound21017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21017.moment H = canonicalOutput21017.moment H :=
  canonical_of_padded canonicalInput21017 canonicalOutput21017 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21018 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -3, 1, 1]]⟩

def canonicalOutput21018 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound21018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21018.moment H = canonicalOutput21018.moment H :=
  canonical_of_padded canonicalInput21018 canonicalOutput21018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21019 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, -2, 1], ![0, 2, 2, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput21019 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound21019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21019.moment H = canonicalOutput21019.moment H :=
  canonical_of_padded canonicalInput21019 canonicalOutput21019 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21020 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput21020 : ExponentCode := normalNode10492

theorem canonicalSound21020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21020.moment H = canonicalOutput21020.moment H :=
  canonical_of_padded canonicalInput21020 canonicalOutput21020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21021 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput21021 : ExponentCode := normalNode10613

theorem canonicalSound21021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21021.moment H = canonicalOutput21021.moment H :=
  canonical_of_padded canonicalInput21021 canonicalOutput21021 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21022 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput21022 : ExponentCode := normalNode10539

theorem canonicalSound21022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21022.moment H = canonicalOutput21022.moment H :=
  canonical_of_padded canonicalInput21022 canonicalOutput21022 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation256, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21023 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput21023 : ExponentCode := normalNode10561

theorem canonicalSound21023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21023.moment H = canonicalOutput21023.moment H :=
  canonical_of_padded canonicalInput21023 canonicalOutput21023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21024 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput21024 : ExponentCode := normalNode10663

theorem canonicalSound21024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21024.moment H = canonicalOutput21024.moment H :=
  canonical_of_padded canonicalInput21024 canonicalOutput21024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21025 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput21025 : ExponentCode := normalNode10613

theorem canonicalSound21025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21025.moment H = canonicalOutput21025.moment H :=
  canonical_of_padded canonicalInput21025 canonicalOutput21025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21026 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput21026 : ExponentCode := normalNode10562

theorem canonicalSound21026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21026.moment H = canonicalOutput21026.moment H :=
  canonical_of_padded canonicalInput21026 canonicalOutput21026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21027 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -3, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput21027 : ExponentCode := normalNode10480

theorem canonicalSound21027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21027.moment H = canonicalOutput21027.moment H :=
  canonical_of_padded canonicalInput21027 canonicalOutput21027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21028 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput21028 : ExponentCode := normalNode9609

theorem canonicalSound21028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21028.moment H = canonicalOutput21028.moment H :=
  canonical_of_padded canonicalInput21028 canonicalOutput21028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21029 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput21029 : ExponentCode := normalNode7288

theorem canonicalSound21029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21029.moment H = canonicalOutput21029.moment H :=
  canonical_of_padded canonicalInput21029 canonicalOutput21029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21030 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput21030 : ExponentCode := normalNode9806

theorem canonicalSound21030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21030.moment H = canonicalOutput21030.moment H :=
  canonical_of_padded canonicalInput21030 canonicalOutput21030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21031 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput21031 : ExponentCode := normalNode10493

theorem canonicalSound21031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21031.moment H = canonicalOutput21031.moment H :=
  canonical_of_padded canonicalInput21031 canonicalOutput21031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21032 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, -3, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput21032 : ExponentCode := normalNode10544

theorem canonicalSound21032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21032.moment H = canonicalOutput21032.moment H :=
  canonical_of_padded canonicalInput21032 canonicalOutput21032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21033 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput21033 : ExponentCode := normalNode10664

theorem canonicalSound21033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21033.moment H = canonicalOutput21033.moment H :=
  canonical_of_padded canonicalInput21033 canonicalOutput21033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21034 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput21034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1252⟩

theorem canonicalSound21034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21034.moment H = canonicalOutput21034.moment H :=
  canonical_of_padded canonicalInput21034 canonicalOutput21034 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21035 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 1, 2, -3], ![0, 2, -1, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput21035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1282⟩

theorem canonicalSound21035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21035.moment H = canonicalOutput21035.moment H :=
  canonical_of_padded canonicalInput21035 canonicalOutput21035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21036 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![0, 1, 3, -4], ![1, -1, -3, 3]]⟩

def canonicalOutput21036 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound21036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21036.moment H = canonicalOutput21036.moment H :=
  canonical_of_padded canonicalInput21036 canonicalOutput21036 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21037 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![0, 2, 2, -4], ![1, -2, -2, 3]]⟩

def canonicalOutput21037 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound21037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21037.moment H = canonicalOutput21037.moment H :=
  canonical_of_padded canonicalInput21037 canonicalOutput21037 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21038 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![1, -4, 4, -1], ![0, 4, -4, 0]]⟩

def canonicalOutput21038 : ExponentCode := normalNode10777

theorem canonicalSound21038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21038.moment H = canonicalOutput21038.moment H :=
  canonical_of_padded canonicalInput21038 canonicalOutput21038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21039 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-3, -1, 1, 1, 2], ![1, 2, -2, -1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput21039 : ExponentCode := normalNode10955

theorem canonicalSound21039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21039.moment H = canonicalOutput21039.moment H :=
  canonical_of_padded canonicalInput21039 canonicalOutput21039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21040 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-3, 1, 1, -1, 2], ![1, -2, 1, 1, -1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput21040 : ExponentCode := normalNode9395

theorem canonicalSound21040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21040.moment H = canonicalOutput21040.moment H :=
  canonical_of_padded canonicalInput21040 canonicalOutput21040 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21041 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-3, 1, 1, -1, 2], ![2, -2, 1, -1, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21041 : ExponentCode := normalNode11101

theorem canonicalSound21041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21041.moment H = canonicalOutput21041.moment H :=
  canonical_of_padded canonicalInput21041 canonicalOutput21041 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21042 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-3, 1, 2, -1, 1], ![1, -2, -1, 1, 1], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput21042 : ExponentCode := normalNode9395

theorem canonicalSound21042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21042.moment H = canonicalOutput21042.moment H :=
  canonical_of_padded canonicalInput21042 canonicalOutput21042 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21043 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-3, 1, 2, -1, 1], ![2, -2, 0, -1, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21043 : ExponentCode := normalNode11101

theorem canonicalSound21043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21043.moment H = canonicalOutput21043.moment H :=
  canonical_of_padded canonicalInput21043 canonicalOutput21043 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21044 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -2, 2, 0, 2], ![1, 1, -2, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput21044 : ExponentCode := normalNode9551

theorem canonicalSound21044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21044.moment H = canonicalOutput21044.moment H :=
  canonical_of_padded canonicalInput21044 canonicalOutput21044 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21045 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 0, 1, 2], ![0, 2, -2, 0, 0], ![3, -1, 2, -2, -2]]⟩

def canonicalOutput21045 : ExponentCode := normalNode9843

theorem canonicalSound21045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21045.moment H = canonicalOutput21045.moment H :=
  canonical_of_padded canonicalInput21045 canonicalOutput21045 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21046 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 0, 1, 2], ![1, 2, -2, -1, 0], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput21046 : ExponentCode := normalNode6942

theorem canonicalSound21046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21046.moment H = canonicalOutput21046.moment H :=
  canonical_of_padded canonicalInput21046 canonicalOutput21046 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21047 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 1, 1, 1], ![0, 2, -2, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput21047 : ExponentCode := normalNode6699

theorem canonicalSound21047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21047.moment H = canonicalOutput21047.moment H :=
  canonical_of_padded canonicalInput21047 canonicalOutput21047 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21048 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 1, 1, 1], ![1, 2, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput21048 : ExponentCode := normalNode6944

theorem canonicalSound21048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21048.moment H = canonicalOutput21048.moment H :=
  canonical_of_padded canonicalInput21048 canonicalOutput21048 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21049 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 2, 1, 0], ![1, -1, -1, -1, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput21049 : ExponentCode := normalNode6930

theorem canonicalSound21049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21049.moment H = canonicalOutput21049.moment H :=
  canonical_of_padded canonicalInput21049 canonicalOutput21049 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21050 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, -1, 2, 1, 0], ![1, 2, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput21050 : ExponentCode := normalNode6943

theorem canonicalSound21050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21050.moment H = canonicalOutput21050.moment H :=
  canonical_of_padded canonicalInput21050 canonicalOutput21050 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21051 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 0, 1, -1, 2], ![0, 2, -2, 1, -1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput21051 : ExponentCode := normalNode6782

theorem canonicalSound21051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21051.moment H = canonicalOutput21051.moment H :=
  canonical_of_padded canonicalInput21051 canonicalOutput21051 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21052 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 0, 1, -1, 2], ![1, -2, 1, 1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21052 : ExponentCode := normalNode6977

theorem canonicalSound21052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21052.moment H = canonicalOutput21052.moment H :=
  canonical_of_padded canonicalInput21052 canonicalOutput21052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21053 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 0, 1, -1, 2], ![1, 2, -2, -1, 0], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput21053 : ExponentCode := normalNode7045

theorem canonicalSound21053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21053.moment H = canonicalOutput21053.moment H :=
  canonical_of_padded canonicalInput21053 canonicalOutput21053 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21054 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 0, 2, -1, 1], ![1, -2, -1, 1, 1], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput21054 : ExponentCode := normalNode6977

theorem canonicalSound21054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21054.moment H = canonicalOutput21054.moment H :=
  canonical_of_padded canonicalInput21054 canonicalOutput21054 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21055 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 1, -2, 2], ![1, -2, 1, 1, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21055 : ExponentCode := normalNode9007

theorem canonicalSound21055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21055.moment H = canonicalOutput21055.moment H :=
  canonical_of_padded canonicalInput21055 canonicalOutput21055 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
