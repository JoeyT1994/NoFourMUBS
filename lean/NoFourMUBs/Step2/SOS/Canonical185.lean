import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11840 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1025⟩

theorem canonicalSound11840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11840.moment H = canonicalOutput11840.moment H :=
  canonical_of_padded canonicalInput11840 canonicalOutput11840 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11841 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput11841 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1371

theorem canonicalSound11841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11841.moment H = canonicalOutput11841.moment H :=
  canonical_of_padded canonicalInput11841 canonicalOutput11841 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11842 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 4, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11842 : ExponentCode := normalNode9040

theorem canonicalSound11842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11842.moment H = canonicalOutput11842.moment H :=
  canonical_of_padded canonicalInput11842 canonicalOutput11842 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11843 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput11843 : ExponentCode := normalNode9036

theorem canonicalSound11843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11843.moment H = canonicalOutput11843.moment H :=
  canonical_of_padded canonicalInput11843 canonicalOutput11843 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11844 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11844 : ExponentCode := normalNode4086

theorem canonicalSound11844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11844.moment H = canonicalOutput11844.moment H :=
  canonical_of_padded canonicalInput11844 canonicalOutput11844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11845 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -2, 0, 2], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11845 : ExponentCode := normalNode4104

theorem canonicalSound11845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11845.moment H = canonicalOutput11845.moment H :=
  canonical_of_padded canonicalInput11845 canonicalOutput11845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11846 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -2, 0, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11846 : ExponentCode := normalNode4112

theorem canonicalSound11846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11846.moment H = canonicalOutput11846.moment H :=
  canonical_of_padded canonicalInput11846 canonicalOutput11846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11847 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11847 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound11847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11847.moment H = canonicalOutput11847.moment H :=
  canonical_of_padded canonicalInput11847 canonicalOutput11847 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11848 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -2, 0, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound11848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11848.moment H = canonicalOutput11848.moment H :=
  canonical_of_padded canonicalInput11848 canonicalOutput11848 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11849 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11849 : ExponentCode := normalNode4482

theorem canonicalSound11849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11849.moment H = canonicalOutput11849.moment H :=
  canonical_of_padded canonicalInput11849 canonicalOutput11849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11850 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11850 : ExponentCode := normalNode4459

theorem canonicalSound11850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11850.moment H = canonicalOutput11850.moment H :=
  canonical_of_padded canonicalInput11850 canonicalOutput11850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11851 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound11851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11851.moment H = canonicalOutput11851.moment H :=
  canonical_of_padded canonicalInput11851 canonicalOutput11851 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11852 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11852 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound11852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11852.moment H = canonicalOutput11852.moment H :=
  canonical_of_padded canonicalInput11852 canonicalOutput11852 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11853 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput11853 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code920

theorem canonicalSound11853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11853.moment H = canonicalOutput11853.moment H :=
  canonical_of_padded canonicalInput11853 canonicalOutput11853 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11854 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput11854 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node611⟩

theorem canonicalSound11854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11854.moment H = canonicalOutput11854.moment H :=
  canonical_of_padded canonicalInput11854 canonicalOutput11854 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11855 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput11855 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code719

theorem canonicalSound11855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11855.moment H = canonicalOutput11855.moment H :=
  canonical_of_padded canonicalInput11855 canonicalOutput11855 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11856 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput11856 : ExponentCode := normalNode7420

theorem canonicalSound11856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11856.moment H = canonicalOutput11856.moment H :=
  canonical_of_padded canonicalInput11856 canonicalOutput11856 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11857 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput11857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1274⟩

theorem canonicalSound11857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11857.moment H = canonicalOutput11857.moment H :=
  canonical_of_padded canonicalInput11857 canonicalOutput11857 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11858 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput11858 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩

theorem canonicalSound11858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11858.moment H = canonicalOutput11858.moment H :=
  canonical_of_padded canonicalInput11858 canonicalOutput11858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11859 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11859 : ExponentCode := normalNode5778

theorem canonicalSound11859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11859.moment H = canonicalOutput11859.moment H :=
  canonical_of_padded canonicalInput11859 canonicalOutput11859 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11860 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11860 : ExponentCode := normalNode5775

theorem canonicalSound11860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11860.moment H = canonicalOutput11860.moment H :=
  canonical_of_padded canonicalInput11860 canonicalOutput11860 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11861 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11861 : ExponentCode := normalNode5790

theorem canonicalSound11861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11861.moment H = canonicalOutput11861.moment H :=
  canonical_of_padded canonicalInput11861 canonicalOutput11861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11862 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput11862 : ExponentCode := normalNode5793

theorem canonicalSound11862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11862.moment H = canonicalOutput11862.moment H :=
  canonical_of_padded canonicalInput11862 canonicalOutput11862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11863 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput11863 : ExponentCode := normalNode5794

theorem canonicalSound11863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11863.moment H = canonicalOutput11863.moment H :=
  canonical_of_padded canonicalInput11863 canonicalOutput11863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11864 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput11864 : ExponentCode := normalNode7419

theorem canonicalSound11864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11864.moment H = canonicalOutput11864.moment H :=
  canonical_of_padded canonicalInput11864 canonicalOutput11864 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11865 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput11865 : ExponentCode := normalNode9935

theorem canonicalSound11865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11865.moment H = canonicalOutput11865.moment H :=
  canonical_of_padded canonicalInput11865 canonicalOutput11865 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11866 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11866 : ExponentCode := normalNode9935

theorem canonicalSound11866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11866.moment H = canonicalOutput11866.moment H :=
  canonical_of_padded canonicalInput11866 canonicalOutput11866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11867 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11867 : ExponentCode := normalNode5762

theorem canonicalSound11867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11867.moment H = canonicalOutput11867.moment H :=
  canonical_of_padded canonicalInput11867 canonicalOutput11867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11868 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11868 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound11868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11868.moment H = canonicalOutput11868.moment H :=
  canonical_of_padded canonicalInput11868 canonicalOutput11868 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11869 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11869 : ExponentCode := normalNode892

theorem canonicalSound11869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11869.moment H = canonicalOutput11869.moment H :=
  canonical_of_padded canonicalInput11869 canonicalOutput11869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11870 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11870 : ExponentCode := normalNode5792

theorem canonicalSound11870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11870.moment H = canonicalOutput11870.moment H :=
  canonical_of_padded canonicalInput11870 canonicalOutput11870 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11871 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound11871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11871.moment H = canonicalOutput11871.moment H :=
  canonical_of_padded canonicalInput11871 canonicalOutput11871 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11872 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput11872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound11872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11872.moment H = canonicalOutput11872.moment H :=
  canonical_of_padded canonicalInput11872 canonicalOutput11872 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11873 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11873 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound11873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11873.moment H = canonicalOutput11873.moment H :=
  canonical_of_padded canonicalInput11873 canonicalOutput11873 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11874 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput11874 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩

theorem canonicalSound11874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11874.moment H = canonicalOutput11874.moment H :=
  canonical_of_padded canonicalInput11874 canonicalOutput11874 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11875 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11875 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound11875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11875.moment H = canonicalOutput11875.moment H :=
  canonical_of_padded canonicalInput11875 canonicalOutput11875 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11876 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 3, -2], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11876 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1253

theorem canonicalSound11876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11876.moment H = canonicalOutput11876.moment H :=
  canonical_of_padded canonicalInput11876 canonicalOutput11876 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11877 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput11877 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node714⟩

theorem canonicalSound11877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11877.moment H = canonicalOutput11877.moment H :=
  canonical_of_padded canonicalInput11877 canonicalOutput11877 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11878 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 4, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11878 : ExponentCode := normalNode9134

theorem canonicalSound11878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11878.moment H = canonicalOutput11878.moment H :=
  canonical_of_padded canonicalInput11878 canonicalOutput11878 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11879 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11879 : ExponentCode := normalNode7419

theorem canonicalSound11879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11879.moment H = canonicalOutput11879.moment H :=
  canonical_of_padded canonicalInput11879 canonicalOutput11879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput11880 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput11880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound11880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11880.moment H = canonicalOutput11880.moment H :=
  canonical_of_padded canonicalInput11880 canonicalOutput11880 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11881 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![2, -2, 3, -3]]⟩

def canonicalOutput11881 : ExponentCode := normalNode11222

theorem canonicalSound11881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11881.moment H = canonicalOutput11881.moment H :=
  canonical_of_padded canonicalInput11881 canonicalOutput11881 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11882 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11882 : ExponentCode := normalNode5448

theorem canonicalSound11882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11882.moment H = canonicalOutput11882.moment H :=
  canonical_of_padded canonicalInput11882 canonicalOutput11882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11883 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![0, 0, 4, -4], ![2, -2, 0, 0]]⟩

def canonicalOutput11883 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code715

theorem canonicalSound11883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11883.moment H = canonicalOutput11883.moment H :=
  canonical_of_padded canonicalInput11883 canonicalOutput11883 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11884 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11884 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1127

theorem canonicalSound11884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11884.moment H = canonicalOutput11884.moment H :=
  canonical_of_padded canonicalInput11884 canonicalOutput11884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11885 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput11885 : ExponentCode := normalNode10877

theorem canonicalSound11885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11885.moment H = canonicalOutput11885.moment H :=
  canonical_of_padded canonicalInput11885 canonicalOutput11885 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11886 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput11886 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1085

theorem canonicalSound11886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11886.moment H = canonicalOutput11886.moment H :=
  canonical_of_padded canonicalInput11886 canonicalOutput11886 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11887 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -2, 2], ![1, -1, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput11887 : ExponentCode := normalNode10877

theorem canonicalSound11887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11887.moment H = canonicalOutput11887.moment H :=
  canonical_of_padded canonicalInput11887 canonicalOutput11887 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11888 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11888 : ExponentCode := normalNode5783

theorem canonicalSound11888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11888.moment H = canonicalOutput11888.moment H :=
  canonical_of_padded canonicalInput11888 canonicalOutput11888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11889 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11889 : ExponentCode := normalNode5784

theorem canonicalSound11889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11889.moment H = canonicalOutput11889.moment H :=
  canonical_of_padded canonicalInput11889 canonicalOutput11889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11890 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput11890 : ExponentCode := normalNode5785

theorem canonicalSound11890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11890.moment H = canonicalOutput11890.moment H :=
  canonical_of_padded canonicalInput11890 canonicalOutput11890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11891 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11891 : ExponentCode := normalNode5786

theorem canonicalSound11891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11891.moment H = canonicalOutput11891.moment H :=
  canonical_of_padded canonicalInput11891 canonicalOutput11891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11892 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput11892 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2338⟩

theorem canonicalSound11892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11892.moment H = canonicalOutput11892.moment H :=
  canonical_of_padded canonicalInput11892 canonicalOutput11892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11893 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11893 : ExponentCode := normalNode5803

theorem canonicalSound11893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11893.moment H = canonicalOutput11893.moment H :=
  canonical_of_padded canonicalInput11893 canonicalOutput11893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11894 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2336⟩

theorem canonicalSound11894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11894.moment H = canonicalOutput11894.moment H :=
  canonical_of_padded canonicalInput11894 canonicalOutput11894 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11895 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11895 : ExponentCode := normalNode5783

theorem canonicalSound11895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11895.moment H = canonicalOutput11895.moment H :=
  canonical_of_padded canonicalInput11895 canonicalOutput11895 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11896 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11896 : ExponentCode := normalNode5514

theorem canonicalSound11896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11896.moment H = canonicalOutput11896.moment H :=
  canonical_of_padded canonicalInput11896 canonicalOutput11896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11897 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11897 : ExponentCode := normalNode5229

theorem canonicalSound11897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11897.moment H = canonicalOutput11897.moment H :=
  canonical_of_padded canonicalInput11897 canonicalOutput11897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11898 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput11898 : ExponentCode := normalNode4967

theorem canonicalSound11898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11898.moment H = canonicalOutput11898.moment H :=
  canonical_of_padded canonicalInput11898 canonicalOutput11898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11899 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11899 : ExponentCode := normalNode4764

theorem canonicalSound11899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11899.moment H = canonicalOutput11899.moment H :=
  canonical_of_padded canonicalInput11899 canonicalOutput11899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11900 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput11900 : ExponentCode := normalNode5813

theorem canonicalSound11900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11900.moment H = canonicalOutput11900.moment H :=
  canonical_of_padded canonicalInput11900 canonicalOutput11900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11901 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput11901 : ExponentCode := normalNode11047

theorem canonicalSound11901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11901.moment H = canonicalOutput11901.moment H :=
  canonical_of_padded canonicalInput11901 canonicalOutput11901 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput11902 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput11902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1377⟩

theorem canonicalSound11902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11902.moment H = canonicalOutput11902.moment H :=
  canonical_of_padded canonicalInput11902 canonicalOutput11902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput11903 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput11903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1368⟩

theorem canonicalSound11903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11903.moment H = canonicalOutput11903.moment H :=
  canonical_of_padded canonicalInput11903 canonicalOutput11903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation28⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
