import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30848 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30848 : ExponentCode := normalNode11165

theorem canonicalSound30848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30848.moment H = canonicalOutput30848.moment H :=
  canonical_of_padded canonicalInput30848 canonicalOutput30848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30849 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30849 : ExponentCode := normalNode8361

theorem canonicalSound30849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30849.moment H = canonicalOutput30849.moment H :=
  canonical_of_padded canonicalInput30849 canonicalOutput30849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30850 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30850 : ExponentCode := normalNode8361

theorem canonicalSound30850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30850.moment H = canonicalOutput30850.moment H :=
  canonical_of_padded canonicalInput30850 canonicalOutput30850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30851 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30851 : ExponentCode := normalNode11165

theorem canonicalSound30851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30851.moment H = canonicalOutput30851.moment H :=
  canonical_of_padded canonicalInput30851 canonicalOutput30851 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30852 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30852 : ExponentCode := normalNode10453

theorem canonicalSound30852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30852.moment H = canonicalOutput30852.moment H :=
  canonical_of_padded canonicalInput30852 canonicalOutput30852 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30853 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30853 : ExponentCode := normalNode8361

theorem canonicalSound30853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30853.moment H = canonicalOutput30853.moment H :=
  canonical_of_padded canonicalInput30853 canonicalOutput30853 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30854 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30854 : ExponentCode := normalNode10645

theorem canonicalSound30854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30854.moment H = canonicalOutput30854.moment H :=
  canonical_of_padded canonicalInput30854 canonicalOutput30854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30855 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30855 : ExponentCode := normalNode10645

theorem canonicalSound30855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30855.moment H = canonicalOutput30855.moment H :=
  canonical_of_padded canonicalInput30855 canonicalOutput30855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30856 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30856 : ExponentCode := normalNode8361

theorem canonicalSound30856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30856.moment H = canonicalOutput30856.moment H :=
  canonical_of_padded canonicalInput30856 canonicalOutput30856 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30857 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30857 : ExponentCode := normalNode10453

theorem canonicalSound30857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30857.moment H = canonicalOutput30857.moment H :=
  canonical_of_padded canonicalInput30857 canonicalOutput30857 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30858 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30858 : ExponentCode := normalNode10645

theorem canonicalSound30858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30858.moment H = canonicalOutput30858.moment H :=
  canonical_of_padded canonicalInput30858 canonicalOutput30858 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30859 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30859 : ExponentCode := normalNode10645

theorem canonicalSound30859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30859.moment H = canonicalOutput30859.moment H :=
  canonical_of_padded canonicalInput30859 canonicalOutput30859 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30860 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30860 : ExponentCode := normalNode10645

theorem canonicalSound30860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30860.moment H = canonicalOutput30860.moment H :=
  canonical_of_padded canonicalInput30860 canonicalOutput30860 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30861 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30861 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30861.moment H = canonicalOutput30861.moment H :=
  canonical_of_padded canonicalInput30861 canonicalOutput30861 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30862 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30862 : ExponentCode := normalNode10645

theorem canonicalSound30862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30862.moment H = canonicalOutput30862.moment H :=
  canonical_of_padded canonicalInput30862 canonicalOutput30862 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30863 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30863 : ExponentCode := normalNode10645

theorem canonicalSound30863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30863.moment H = canonicalOutput30863.moment H :=
  canonical_of_padded canonicalInput30863 canonicalOutput30863 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30864 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30864 : ExponentCode := normalNode10645

theorem canonicalSound30864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30864.moment H = canonicalOutput30864.moment H :=
  canonical_of_padded canonicalInput30864 canonicalOutput30864 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30865 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30865 : ExponentCode := normalNode8361

theorem canonicalSound30865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30865.moment H = canonicalOutput30865.moment H :=
  canonical_of_padded canonicalInput30865 canonicalOutput30865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30866 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30866 : ExponentCode := normalNode10453

theorem canonicalSound30866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30866.moment H = canonicalOutput30866.moment H :=
  canonical_of_padded canonicalInput30866 canonicalOutput30866 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30867 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30867 : ExponentCode := normalNode10645

theorem canonicalSound30867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30867.moment H = canonicalOutput30867.moment H :=
  canonical_of_padded canonicalInput30867 canonicalOutput30867 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30868 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30868 : ExponentCode := normalNode10645

theorem canonicalSound30868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30868.moment H = canonicalOutput30868.moment H :=
  canonical_of_padded canonicalInput30868 canonicalOutput30868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30869 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30869 : ExponentCode := normalNode10453

theorem canonicalSound30869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30869.moment H = canonicalOutput30869.moment H :=
  canonical_of_padded canonicalInput30869 canonicalOutput30869 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30870 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30870 : ExponentCode := normalNode8361

theorem canonicalSound30870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30870.moment H = canonicalOutput30870.moment H :=
  canonical_of_padded canonicalInput30870 canonicalOutput30870 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30871 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30871 : ExponentCode := normalNode10453

theorem canonicalSound30871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30871.moment H = canonicalOutput30871.moment H :=
  canonical_of_padded canonicalInput30871 canonicalOutput30871 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30872 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30872 : ExponentCode := normalNode10645

theorem canonicalSound30872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30872.moment H = canonicalOutput30872.moment H :=
  canonical_of_padded canonicalInput30872 canonicalOutput30872 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30873 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30873 : ExponentCode := normalNode8361

theorem canonicalSound30873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30873.moment H = canonicalOutput30873.moment H :=
  canonical_of_padded canonicalInput30873 canonicalOutput30873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30874 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30874 : ExponentCode := normalNode8361

theorem canonicalSound30874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30874.moment H = canonicalOutput30874.moment H :=
  canonical_of_padded canonicalInput30874 canonicalOutput30874 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30875 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30875 : ExponentCode := normalNode10645

theorem canonicalSound30875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30875.moment H = canonicalOutput30875.moment H :=
  canonical_of_padded canonicalInput30875 canonicalOutput30875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30876 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30876 : ExponentCode := normalNode10453

theorem canonicalSound30876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30876.moment H = canonicalOutput30876.moment H :=
  canonical_of_padded canonicalInput30876 canonicalOutput30876 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30877 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30877 : ExponentCode := normalNode8361

theorem canonicalSound30877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30877.moment H = canonicalOutput30877.moment H :=
  canonical_of_padded canonicalInput30877 canonicalOutput30877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30878 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30878 : ExponentCode := normalNode10645

theorem canonicalSound30878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30878.moment H = canonicalOutput30878.moment H :=
  canonical_of_padded canonicalInput30878 canonicalOutput30878 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30879 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30879 : ExponentCode := normalNode10453

theorem canonicalSound30879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30879.moment H = canonicalOutput30879.moment H :=
  canonical_of_padded canonicalInput30879 canonicalOutput30879 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30880 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30880 : ExponentCode := normalNode10453

theorem canonicalSound30880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30880.moment H = canonicalOutput30880.moment H :=
  canonical_of_padded canonicalInput30880 canonicalOutput30880 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30881 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30881 : ExponentCode := normalNode10645

theorem canonicalSound30881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30881.moment H = canonicalOutput30881.moment H :=
  canonical_of_padded canonicalInput30881 canonicalOutput30881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30882 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30882 : ExponentCode := normalNode8361

theorem canonicalSound30882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30882.moment H = canonicalOutput30882.moment H :=
  canonical_of_padded canonicalInput30882 canonicalOutput30882 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30883 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30883 : ExponentCode := normalNode11165

theorem canonicalSound30883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30883.moment H = canonicalOutput30883.moment H :=
  canonical_of_padded canonicalInput30883 canonicalOutput30883 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30884 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30884 : ExponentCode := normalNode8361

theorem canonicalSound30884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30884.moment H = canonicalOutput30884.moment H :=
  canonical_of_padded canonicalInput30884 canonicalOutput30884 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30885 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30885 : ExponentCode := normalNode8361

theorem canonicalSound30885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30885.moment H = canonicalOutput30885.moment H :=
  canonical_of_padded canonicalInput30885 canonicalOutput30885 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30886 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30886 : ExponentCode := normalNode11165

theorem canonicalSound30886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30886.moment H = canonicalOutput30886.moment H :=
  canonical_of_padded canonicalInput30886 canonicalOutput30886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30887 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30887 : ExponentCode := normalNode10415

theorem canonicalSound30887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30887.moment H = canonicalOutput30887.moment H :=
  canonical_of_padded canonicalInput30887 canonicalOutput30887 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput30888 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30888 : ExponentCode := normalNode10371

theorem canonicalSound30888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30888.moment H = canonicalOutput30888.moment H :=
  canonical_of_padded canonicalInput30888 canonicalOutput30888 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput30889 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30889 : ExponentCode := normalNode10415

theorem canonicalSound30889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30889.moment H = canonicalOutput30889.moment H :=
  canonical_of_padded canonicalInput30889 canonicalOutput30889 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput30890 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30890 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30890.moment H = canonicalOutput30890.moment H :=
  canonical_of_padded canonicalInput30890 canonicalOutput30890 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30891 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30891 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound30891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30891.moment H = canonicalOutput30891.moment H :=
  canonical_of_padded canonicalInput30891 canonicalOutput30891 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30892 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30892 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30892.moment H = canonicalOutput30892.moment H :=
  canonical_of_padded canonicalInput30892 canonicalOutput30892 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30893 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30893 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30893.moment H = canonicalOutput30893.moment H :=
  canonical_of_padded canonicalInput30893 canonicalOutput30893 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30894 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30894 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30894.moment H = canonicalOutput30894.moment H :=
  canonical_of_padded canonicalInput30894 canonicalOutput30894 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput30895 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30895 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30895.moment H = canonicalOutput30895.moment H :=
  canonical_of_padded canonicalInput30895 canonicalOutput30895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput30896 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30896 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30896.moment H = canonicalOutput30896.moment H :=
  canonical_of_padded canonicalInput30896 canonicalOutput30896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput30897 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30897 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30897.moment H = canonicalOutput30897.moment H :=
  canonical_of_padded canonicalInput30897 canonicalOutput30897 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput30898 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30898 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound30898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30898.moment H = canonicalOutput30898.moment H :=
  canonical_of_padded canonicalInput30898 canonicalOutput30898 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput30899 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30899 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound30899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30899.moment H = canonicalOutput30899.moment H :=
  canonical_of_padded canonicalInput30899 canonicalOutput30899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput30900 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30900 : ExponentCode := normalNode9917

theorem canonicalSound30900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30900.moment H = canonicalOutput30900.moment H :=
  canonical_of_padded canonicalInput30900 canonicalOutput30900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput30901 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30901 : ExponentCode := normalNode11165

theorem canonicalSound30901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30901.moment H = canonicalOutput30901.moment H :=
  canonical_of_padded canonicalInput30901 canonicalOutput30901 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30902 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30902 : ExponentCode := normalNode8361

theorem canonicalSound30902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30902.moment H = canonicalOutput30902.moment H :=
  canonical_of_padded canonicalInput30902 canonicalOutput30902 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30903 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30903 : ExponentCode := normalNode8361

theorem canonicalSound30903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30903.moment H = canonicalOutput30903.moment H :=
  canonical_of_padded canonicalInput30903 canonicalOutput30903 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30904 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30904 : ExponentCode := normalNode11165

theorem canonicalSound30904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30904.moment H = canonicalOutput30904.moment H :=
  canonical_of_padded canonicalInput30904 canonicalOutput30904 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30905 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30905 : ExponentCode := normalNode8361

theorem canonicalSound30905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30905.moment H = canonicalOutput30905.moment H :=
  canonical_of_padded canonicalInput30905 canonicalOutput30905 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30906 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30906 : ExponentCode := normalNode10645

theorem canonicalSound30906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30906.moment H = canonicalOutput30906.moment H :=
  canonical_of_padded canonicalInput30906 canonicalOutput30906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30907 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30907 : ExponentCode := normalNode10453

theorem canonicalSound30907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30907.moment H = canonicalOutput30907.moment H :=
  canonical_of_padded canonicalInput30907 canonicalOutput30907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30908 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30908 : ExponentCode := normalNode10453

theorem canonicalSound30908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30908.moment H = canonicalOutput30908.moment H :=
  canonical_of_padded canonicalInput30908 canonicalOutput30908 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30909 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30909 : ExponentCode := normalNode10645

theorem canonicalSound30909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30909.moment H = canonicalOutput30909.moment H :=
  canonical_of_padded canonicalInput30909 canonicalOutput30909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30910 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30910 : ExponentCode := normalNode8361

theorem canonicalSound30910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30910.moment H = canonicalOutput30910.moment H :=
  canonical_of_padded canonicalInput30910 canonicalOutput30910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30911 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30911 : ExponentCode := normalNode8361

theorem canonicalSound30911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30911.moment H = canonicalOutput30911.moment H :=
  canonical_of_padded canonicalInput30911 canonicalOutput30911 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation180⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
