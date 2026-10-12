import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30912 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30912 : ExponentCode := normalNode10453

theorem canonicalSound30912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30912.moment H = canonicalOutput30912.moment H :=
  canonical_of_padded canonicalInput30912 canonicalOutput30912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30913 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30913 : ExponentCode := normalNode10645

theorem canonicalSound30913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30913.moment H = canonicalOutput30913.moment H :=
  canonical_of_padded canonicalInput30913 canonicalOutput30913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30914 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30914 : ExponentCode := normalNode10645

theorem canonicalSound30914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30914.moment H = canonicalOutput30914.moment H :=
  canonical_of_padded canonicalInput30914 canonicalOutput30914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30915 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30915 : ExponentCode := normalNode10453

theorem canonicalSound30915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30915.moment H = canonicalOutput30915.moment H :=
  canonical_of_padded canonicalInput30915 canonicalOutput30915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30916 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30916 : ExponentCode := normalNode8361

theorem canonicalSound30916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30916.moment H = canonicalOutput30916.moment H :=
  canonical_of_padded canonicalInput30916 canonicalOutput30916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30917 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30917 : ExponentCode := normalNode11165

theorem canonicalSound30917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30917.moment H = canonicalOutput30917.moment H :=
  canonical_of_padded canonicalInput30917 canonicalOutput30917 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30918 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30918 : ExponentCode := normalNode8361

theorem canonicalSound30918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30918.moment H = canonicalOutput30918.moment H :=
  canonical_of_padded canonicalInput30918 canonicalOutput30918 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30919 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30919 : ExponentCode := normalNode8361

theorem canonicalSound30919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30919.moment H = canonicalOutput30919.moment H :=
  canonical_of_padded canonicalInput30919 canonicalOutput30919 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30920 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30920 : ExponentCode := normalNode11165

theorem canonicalSound30920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30920.moment H = canonicalOutput30920.moment H :=
  canonical_of_padded canonicalInput30920 canonicalOutput30920 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30921 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30921 : ExponentCode := normalNode10453

theorem canonicalSound30921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30921.moment H = canonicalOutput30921.moment H :=
  canonical_of_padded canonicalInput30921 canonicalOutput30921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30922 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30922 : ExponentCode := normalNode8361

theorem canonicalSound30922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30922.moment H = canonicalOutput30922.moment H :=
  canonical_of_padded canonicalInput30922 canonicalOutput30922 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30923 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30923 : ExponentCode := normalNode10645

theorem canonicalSound30923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30923.moment H = canonicalOutput30923.moment H :=
  canonical_of_padded canonicalInput30923 canonicalOutput30923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30924 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30924 : ExponentCode := normalNode10645

theorem canonicalSound30924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30924.moment H = canonicalOutput30924.moment H :=
  canonical_of_padded canonicalInput30924 canonicalOutput30924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30925 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30925 : ExponentCode := normalNode8361

theorem canonicalSound30925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30925.moment H = canonicalOutput30925.moment H :=
  canonical_of_padded canonicalInput30925 canonicalOutput30925 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30926 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30926 : ExponentCode := normalNode10453

theorem canonicalSound30926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30926.moment H = canonicalOutput30926.moment H :=
  canonical_of_padded canonicalInput30926 canonicalOutput30926 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30927 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30927 : ExponentCode := normalNode10645

theorem canonicalSound30927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30927.moment H = canonicalOutput30927.moment H :=
  canonical_of_padded canonicalInput30927 canonicalOutput30927 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30928 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30928 : ExponentCode := normalNode10645

theorem canonicalSound30928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30928.moment H = canonicalOutput30928.moment H :=
  canonical_of_padded canonicalInput30928 canonicalOutput30928 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30929 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30929 : ExponentCode := normalNode10645

theorem canonicalSound30929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30929.moment H = canonicalOutput30929.moment H :=
  canonical_of_padded canonicalInput30929 canonicalOutput30929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30930 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30930 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30930.moment H = canonicalOutput30930.moment H :=
  canonical_of_padded canonicalInput30930 canonicalOutput30930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput30931 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30931 : ExponentCode := normalNode10645

theorem canonicalSound30931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30931.moment H = canonicalOutput30931.moment H :=
  canonical_of_padded canonicalInput30931 canonicalOutput30931 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30932 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30932 : ExponentCode := normalNode10645

theorem canonicalSound30932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30932.moment H = canonicalOutput30932.moment H :=
  canonical_of_padded canonicalInput30932 canonicalOutput30932 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30933 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30933 : ExponentCode := normalNode10645

theorem canonicalSound30933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30933.moment H = canonicalOutput30933.moment H :=
  canonical_of_padded canonicalInput30933 canonicalOutput30933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30934 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30934 : ExponentCode := normalNode8361

theorem canonicalSound30934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30934.moment H = canonicalOutput30934.moment H :=
  canonical_of_padded canonicalInput30934 canonicalOutput30934 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30935 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30935 : ExponentCode := normalNode10453

theorem canonicalSound30935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30935.moment H = canonicalOutput30935.moment H :=
  canonical_of_padded canonicalInput30935 canonicalOutput30935 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30936 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30936 : ExponentCode := normalNode10645

theorem canonicalSound30936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30936.moment H = canonicalOutput30936.moment H :=
  canonical_of_padded canonicalInput30936 canonicalOutput30936 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30937 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30937 : ExponentCode := normalNode10645

theorem canonicalSound30937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30937.moment H = canonicalOutput30937.moment H :=
  canonical_of_padded canonicalInput30937 canonicalOutput30937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30938 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30938 : ExponentCode := normalNode10453

theorem canonicalSound30938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30938.moment H = canonicalOutput30938.moment H :=
  canonical_of_padded canonicalInput30938 canonicalOutput30938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30939 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30939 : ExponentCode := normalNode8361

theorem canonicalSound30939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30939.moment H = canonicalOutput30939.moment H :=
  canonical_of_padded canonicalInput30939 canonicalOutput30939 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30940 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30940 : ExponentCode := normalNode10453

theorem canonicalSound30940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30940.moment H = canonicalOutput30940.moment H :=
  canonical_of_padded canonicalInput30940 canonicalOutput30940 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30941 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30941 : ExponentCode := normalNode10645

theorem canonicalSound30941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30941.moment H = canonicalOutput30941.moment H :=
  canonical_of_padded canonicalInput30941 canonicalOutput30941 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30942 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30942 : ExponentCode := normalNode8361

theorem canonicalSound30942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30942.moment H = canonicalOutput30942.moment H :=
  canonical_of_padded canonicalInput30942 canonicalOutput30942 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30943 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30943 : ExponentCode := normalNode8361

theorem canonicalSound30943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30943.moment H = canonicalOutput30943.moment H :=
  canonical_of_padded canonicalInput30943 canonicalOutput30943 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30944 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30944 : ExponentCode := normalNode10645

theorem canonicalSound30944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30944.moment H = canonicalOutput30944.moment H :=
  canonical_of_padded canonicalInput30944 canonicalOutput30944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30945 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30945 : ExponentCode := normalNode10453

theorem canonicalSound30945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30945.moment H = canonicalOutput30945.moment H :=
  canonical_of_padded canonicalInput30945 canonicalOutput30945 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30946 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30946 : ExponentCode := normalNode8361

theorem canonicalSound30946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30946.moment H = canonicalOutput30946.moment H :=
  canonical_of_padded canonicalInput30946 canonicalOutput30946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30947 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30947 : ExponentCode := normalNode10645

theorem canonicalSound30947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30947.moment H = canonicalOutput30947.moment H :=
  canonical_of_padded canonicalInput30947 canonicalOutput30947 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30948 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30948 : ExponentCode := normalNode10453

theorem canonicalSound30948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30948.moment H = canonicalOutput30948.moment H :=
  canonical_of_padded canonicalInput30948 canonicalOutput30948 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30949 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30949 : ExponentCode := normalNode10453

theorem canonicalSound30949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30949.moment H = canonicalOutput30949.moment H :=
  canonical_of_padded canonicalInput30949 canonicalOutput30949 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30950 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30950 : ExponentCode := normalNode10645

theorem canonicalSound30950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30950.moment H = canonicalOutput30950.moment H :=
  canonical_of_padded canonicalInput30950 canonicalOutput30950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30951 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30951 : ExponentCode := normalNode8361

theorem canonicalSound30951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30951.moment H = canonicalOutput30951.moment H :=
  canonical_of_padded canonicalInput30951 canonicalOutput30951 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30952 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30952 : ExponentCode := normalNode11165

theorem canonicalSound30952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30952.moment H = canonicalOutput30952.moment H :=
  canonical_of_padded canonicalInput30952 canonicalOutput30952 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30953 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30953 : ExponentCode := normalNode8361

theorem canonicalSound30953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30953.moment H = canonicalOutput30953.moment H :=
  canonical_of_padded canonicalInput30953 canonicalOutput30953 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30954 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30954 : ExponentCode := normalNode8361

theorem canonicalSound30954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30954.moment H = canonicalOutput30954.moment H :=
  canonical_of_padded canonicalInput30954 canonicalOutput30954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30955 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30955 : ExponentCode := normalNode11165

theorem canonicalSound30955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30955.moment H = canonicalOutput30955.moment H :=
  canonical_of_padded canonicalInput30955 canonicalOutput30955 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30956 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30956 : ExponentCode := normalNode10415

theorem canonicalSound30956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30956.moment H = canonicalOutput30956.moment H :=
  canonical_of_padded canonicalInput30956 canonicalOutput30956 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput30957 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30957 : ExponentCode := normalNode10371

theorem canonicalSound30957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30957.moment H = canonicalOutput30957.moment H :=
  canonical_of_padded canonicalInput30957 canonicalOutput30957 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput30958 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30958 : ExponentCode := normalNode10274

theorem canonicalSound30958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30958.moment H = canonicalOutput30958.moment H :=
  canonical_of_padded canonicalInput30958 canonicalOutput30958 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput30959 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30959 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound30959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30959.moment H = canonicalOutput30959.moment H :=
  canonical_of_padded canonicalInput30959 canonicalOutput30959 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput30960 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30960 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound30960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30960.moment H = canonicalOutput30960.moment H :=
  canonical_of_padded canonicalInput30960 canonicalOutput30960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput30961 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30961 : ExponentCode := normalNode9917

theorem canonicalSound30961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30961.moment H = canonicalOutput30961.moment H :=
  canonical_of_padded canonicalInput30961 canonicalOutput30961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput30962 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30962 : ExponentCode := normalNode11165

theorem canonicalSound30962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30962.moment H = canonicalOutput30962.moment H :=
  canonical_of_padded canonicalInput30962 canonicalOutput30962 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30963 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30963 : ExponentCode := normalNode8361

theorem canonicalSound30963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30963.moment H = canonicalOutput30963.moment H :=
  canonical_of_padded canonicalInput30963 canonicalOutput30963 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30964 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30964 : ExponentCode := normalNode8361

theorem canonicalSound30964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30964.moment H = canonicalOutput30964.moment H :=
  canonical_of_padded canonicalInput30964 canonicalOutput30964 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30965 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30965 : ExponentCode := normalNode11165

theorem canonicalSound30965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30965.moment H = canonicalOutput30965.moment H :=
  canonical_of_padded canonicalInput30965 canonicalOutput30965 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30966 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30966 : ExponentCode := normalNode8361

theorem canonicalSound30966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30966.moment H = canonicalOutput30966.moment H :=
  canonical_of_padded canonicalInput30966 canonicalOutput30966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30967 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30967 : ExponentCode := normalNode10645

theorem canonicalSound30967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30967.moment H = canonicalOutput30967.moment H :=
  canonical_of_padded canonicalInput30967 canonicalOutput30967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30968 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30968 : ExponentCode := normalNode10453

theorem canonicalSound30968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30968.moment H = canonicalOutput30968.moment H :=
  canonical_of_padded canonicalInput30968 canonicalOutput30968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30969 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30969 : ExponentCode := normalNode10453

theorem canonicalSound30969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30969.moment H = canonicalOutput30969.moment H :=
  canonical_of_padded canonicalInput30969 canonicalOutput30969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30970 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30970 : ExponentCode := normalNode10645

theorem canonicalSound30970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30970.moment H = canonicalOutput30970.moment H :=
  canonical_of_padded canonicalInput30970 canonicalOutput30970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30971 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30971 : ExponentCode := normalNode8361

theorem canonicalSound30971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30971.moment H = canonicalOutput30971.moment H :=
  canonical_of_padded canonicalInput30971 canonicalOutput30971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30972 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30972 : ExponentCode := normalNode8361

theorem canonicalSound30972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30972.moment H = canonicalOutput30972.moment H :=
  canonical_of_padded canonicalInput30972 canonicalOutput30972 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30973 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30973 : ExponentCode := normalNode10453

theorem canonicalSound30973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30973.moment H = canonicalOutput30973.moment H :=
  canonical_of_padded canonicalInput30973 canonicalOutput30973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30974 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30974 : ExponentCode := normalNode10645

theorem canonicalSound30974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30974.moment H = canonicalOutput30974.moment H :=
  canonical_of_padded canonicalInput30974 canonicalOutput30974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30975 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30975 : ExponentCode := normalNode10645

theorem canonicalSound30975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30975.moment H = canonicalOutput30975.moment H :=
  canonical_of_padded canonicalInput30975 canonicalOutput30975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation230⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
