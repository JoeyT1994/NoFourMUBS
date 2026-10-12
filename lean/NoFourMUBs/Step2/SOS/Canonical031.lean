import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1984 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput1984 : ExponentCode := normalNode886

theorem canonicalSound1984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1984.moment H = canonicalOutput1984.moment H :=
  canonical_of_padded canonicalInput1984 canonicalOutput1984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1985 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput1985 : ExponentCode := normalNode5778

theorem canonicalSound1985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1985.moment H = canonicalOutput1985.moment H :=
  canonical_of_padded canonicalInput1985 canonicalOutput1985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1986 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput1986 : ExponentCode := normalNode910

theorem canonicalSound1986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1986.moment H = canonicalOutput1986.moment H :=
  canonical_of_padded canonicalInput1986 canonicalOutput1986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1987 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1987 : ExponentCode := normalNode888

theorem canonicalSound1987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1987.moment H = canonicalOutput1987.moment H :=
  canonical_of_padded canonicalInput1987 canonicalOutput1987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1988 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1988 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound1988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1988.moment H = canonicalOutput1988.moment H :=
  canonical_of_padded canonicalInput1988 canonicalOutput1988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1989 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput1989 : ExponentCode := normalNode887

theorem canonicalSound1989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1989.moment H = canonicalOutput1989.moment H :=
  canonical_of_padded canonicalInput1989 canonicalOutput1989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1990 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1990 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound1990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1990.moment H = canonicalOutput1990.moment H :=
  canonical_of_padded canonicalInput1990 canonicalOutput1990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1991 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1991.moment H = canonicalOutput1991.moment H :=
  canonical_of_padded canonicalInput1991 canonicalOutput1991 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1992 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 1, -4, 1]]⟩

def canonicalOutput1992 : ExponentCode := normalNode7049

theorem canonicalSound1992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1992.moment H = canonicalOutput1992.moment H :=
  canonical_of_padded canonicalInput1992 canonicalOutput1992 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1993 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -4, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput1993 : ExponentCode := normalNode6219

theorem canonicalSound1993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1993.moment H = canonicalOutput1993.moment H :=
  canonical_of_padded canonicalInput1993 canonicalOutput1993 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1994 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1994 : ExponentCode := normalNode874

theorem canonicalSound1994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1994.moment H = canonicalOutput1994.moment H :=
  canonical_of_padded canonicalInput1994 canonicalOutput1994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1995 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput1995 : ExponentCode := normalNode7051

theorem canonicalSound1995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1995.moment H = canonicalOutput1995.moment H :=
  canonical_of_padded canonicalInput1995 canonicalOutput1995 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1996 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1996 : ExponentCode := normalNode902

theorem canonicalSound1996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1996.moment H = canonicalOutput1996.moment H :=
  canonical_of_padded canonicalInput1996 canonicalOutput1996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1997 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1997 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound1997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1997.moment H = canonicalOutput1997.moment H :=
  canonical_of_padded canonicalInput1997 canonicalOutput1997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1998 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput1998 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound1998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1998.moment H = canonicalOutput1998.moment H :=
  canonical_of_padded canonicalInput1998 canonicalOutput1998 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1999 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1999 : ExponentCode := normalNode901

theorem canonicalSound1999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1999.moment H = canonicalOutput1999.moment H :=
  canonical_of_padded canonicalInput1999 canonicalOutput1999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2000 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound2000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2000.moment H = canonicalOutput2000.moment H :=
  canonical_of_padded canonicalInput2000 canonicalOutput2000 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2001 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound2001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2001.moment H = canonicalOutput2001.moment H :=
  canonical_of_padded canonicalInput2001 canonicalOutput2001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2002 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput2002 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound2002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2002.moment H = canonicalOutput2002.moment H :=
  canonical_of_padded canonicalInput2002 canonicalOutput2002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2003 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput2003 : ExponentCode := normalNode900

theorem canonicalSound2003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2003.moment H = canonicalOutput2003.moment H :=
  canonical_of_padded canonicalInput2003 canonicalOutput2003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2004 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput2004 : ExponentCode := normalNode7051

theorem canonicalSound2004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2004.moment H = canonicalOutput2004.moment H :=
  canonical_of_padded canonicalInput2004 canonicalOutput2004 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2005 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2005 : ExponentCode := normalNode5793

theorem canonicalSound2005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2005.moment H = canonicalOutput2005.moment H :=
  canonical_of_padded canonicalInput2005 canonicalOutput2005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2006 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2006 : ExponentCode := normalNode905

theorem canonicalSound2006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2006.moment H = canonicalOutput2006.moment H :=
  canonical_of_padded canonicalInput2006 canonicalOutput2006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2007 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2007 : ExponentCode := normalNode5778

theorem canonicalSound2007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2007.moment H = canonicalOutput2007.moment H :=
  canonical_of_padded canonicalInput2007 canonicalOutput2007 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput2008 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput2008 : ExponentCode := normalNode5778

theorem canonicalSound2008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2008.moment H = canonicalOutput2008.moment H :=
  canonical_of_padded canonicalInput2008 canonicalOutput2008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput2009 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2009 : ExponentCode := normalNode904

theorem canonicalSound2009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2009.moment H = canonicalOutput2009.moment H :=
  canonical_of_padded canonicalInput2009 canonicalOutput2009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2010 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2010 : ExponentCode := normalNode903

theorem canonicalSound2010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2010.moment H = canonicalOutput2010.moment H :=
  canonical_of_padded canonicalInput2010 canonicalOutput2010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2011 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput2011 : ExponentCode := normalNode904

theorem canonicalSound2011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2011.moment H = canonicalOutput2011.moment H :=
  canonical_of_padded canonicalInput2011 canonicalOutput2011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2012 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput2012 : ExponentCode := normalNode7053

theorem canonicalSound2012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2012.moment H = canonicalOutput2012.moment H :=
  canonical_of_padded canonicalInput2012 canonicalOutput2012 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2013 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput2013 : ExponentCode := normalNode11204

theorem canonicalSound2013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2013.moment H = canonicalOutput2013.moment H :=
  canonical_of_padded canonicalInput2013 canonicalOutput2013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2014 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput2014 : ExponentCode := normalNode11041

theorem canonicalSound2014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2014.moment H = canonicalOutput2014.moment H :=
  canonical_of_padded canonicalInput2014 canonicalOutput2014 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2015 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput2015 : ExponentCode := normalNode9935

theorem canonicalSound2015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2015.moment H = canonicalOutput2015.moment H :=
  canonical_of_padded canonicalInput2015 canonicalOutput2015 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2016 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput2016 : ExponentCode := normalNode11072

theorem canonicalSound2016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2016.moment H = canonicalOutput2016.moment H :=
  canonical_of_padded canonicalInput2016 canonicalOutput2016 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2017 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput2017 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound2017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2017.moment H = canonicalOutput2017.moment H :=
  canonical_of_padded canonicalInput2017 canonicalOutput2017 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2018 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput2018 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound2018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2018.moment H = canonicalOutput2018.moment H :=
  canonical_of_padded canonicalInput2018 canonicalOutput2018 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2019 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 1, -4, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput2019 : ExponentCode := normalNode6247

theorem canonicalSound2019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2019.moment H = canonicalOutput2019.moment H :=
  canonical_of_padded canonicalInput2019 canonicalOutput2019 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2020 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2020 : ExponentCode := normalNode7077

theorem canonicalSound2020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2020.moment H = canonicalOutput2020.moment H :=
  canonical_of_padded canonicalInput2020 canonicalOutput2020 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2021 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput2021 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound2021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2021.moment H = canonicalOutput2021.moment H :=
  canonical_of_padded canonicalInput2021 canonicalOutput2021 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2022 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -4, 1]]⟩

def canonicalOutput2022 : ExponentCode := normalNode7050

theorem canonicalSound2022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2022.moment H = canonicalOutput2022.moment H :=
  canonical_of_padded canonicalInput2022 canonicalOutput2022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2023 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![0, 0, 3, -3], ![2, 2, -5, 1]]⟩

def canonicalOutput2023 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code22

theorem canonicalSound2023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2023.moment H = canonicalOutput2023.moment H :=
  canonical_of_padded canonicalInput2023 canonicalOutput2023 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2024 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput2024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code198

theorem canonicalSound2024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2024.moment H = canonicalOutput2024.moment H :=
  canonical_of_padded canonicalInput2024 canonicalOutput2024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2025 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput2025 : ExponentCode := normalNode6222

theorem canonicalSound2025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2025.moment H = canonicalOutput2025.moment H :=
  canonical_of_padded canonicalInput2025 canonicalOutput2025 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2026 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2026 : ExponentCode := normalNode919

theorem canonicalSound2026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2026.moment H = canonicalOutput2026.moment H :=
  canonical_of_padded canonicalInput2026 canonicalOutput2026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2027 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2027 : ExponentCode := normalNode6245

theorem canonicalSound2027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2027.moment H = canonicalOutput2027.moment H :=
  canonical_of_padded canonicalInput2027 canonicalOutput2027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2028 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2028 : ExponentCode := normalNode10240

theorem canonicalSound2028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2028.moment H = canonicalOutput2028.moment H :=
  canonical_of_padded canonicalInput2028 canonicalOutput2028 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2029 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2029 : ExponentCode := normalNode6250

theorem canonicalSound2029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2029.moment H = canonicalOutput2029.moment H :=
  canonical_of_padded canonicalInput2029 canonicalOutput2029 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2030 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2030 : ExponentCode := normalNode6243

theorem canonicalSound2030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2030.moment H = canonicalOutput2030.moment H :=
  canonical_of_padded canonicalInput2030 canonicalOutput2030 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2031 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2031 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code212

theorem canonicalSound2031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2031.moment H = canonicalOutput2031.moment H :=
  canonical_of_padded canonicalInput2031 canonicalOutput2031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2032 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2032 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code211

theorem canonicalSound2032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2032.moment H = canonicalOutput2032.moment H :=
  canonical_of_padded canonicalInput2032 canonicalOutput2032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2033 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2033 : ExponentCode := normalNode6243

theorem canonicalSound2033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2033.moment H = canonicalOutput2033.moment H :=
  canonical_of_padded canonicalInput2033 canonicalOutput2033 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2034 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![-1, 2, -1, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2034 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code187

theorem canonicalSound2034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2034.moment H = canonicalOutput2034.moment H :=
  canonical_of_padded canonicalInput2034 canonicalOutput2034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2035 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2035 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code188

theorem canonicalSound2035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2035.moment H = canonicalOutput2035.moment H :=
  canonical_of_padded canonicalInput2035 canonicalOutput2035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2036 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![-1, 2, 1, -2], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput2036 : ExponentCode := normalNode743

theorem canonicalSound2036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2036.moment H = canonicalOutput2036.moment H :=
  canonical_of_padded canonicalInput2036 canonicalOutput2036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2037 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2037 : ExponentCode := normalNode915

theorem canonicalSound2037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2037.moment H = canonicalOutput2037.moment H :=
  canonical_of_padded canonicalInput2037 canonicalOutput2037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2038 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput2038 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code203

theorem canonicalSound2038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2038.moment H = canonicalOutput2038.moment H :=
  canonical_of_padded canonicalInput2038 canonicalOutput2038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2039 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2039 : ExponentCode := normalNode919

theorem canonicalSound2039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2039.moment H = canonicalOutput2039.moment H :=
  canonical_of_padded canonicalInput2039 canonicalOutput2039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2040 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2040 : ExponentCode := normalNode927

theorem canonicalSound2040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2040.moment H = canonicalOutput2040.moment H :=
  canonical_of_padded canonicalInput2040 canonicalOutput2040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2041 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2041 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2041.moment H = canonicalOutput2041.moment H :=
  canonical_of_padded canonicalInput2041 canonicalOutput2041 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2042 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2042 : ExponentCode := normalNode924

theorem canonicalSound2042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2042.moment H = canonicalOutput2042.moment H :=
  canonical_of_padded canonicalInput2042 canonicalOutput2042 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2043 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput2043 : ExponentCode := normalNode920

theorem canonicalSound2043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2043.moment H = canonicalOutput2043.moment H :=
  canonical_of_padded canonicalInput2043 canonicalOutput2043 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2044 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2044 : ExponentCode := normalNode930

theorem canonicalSound2044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2044.moment H = canonicalOutput2044.moment H :=
  canonical_of_padded canonicalInput2044 canonicalOutput2044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2045 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput2045 : ExponentCode := normalNode924

theorem canonicalSound2045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2045.moment H = canonicalOutput2045.moment H :=
  canonical_of_padded canonicalInput2045 canonicalOutput2045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2046 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2046 : ExponentCode := normalNode920

theorem canonicalSound2046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2046.moment H = canonicalOutput2046.moment H :=
  canonical_of_padded canonicalInput2046 canonicalOutput2046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2047 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2047 : ExponentCode := normalNode921

theorem canonicalSound2047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2047.moment H = canonicalOutput2047.moment H :=
  canonical_of_padded canonicalInput2047 canonicalOutput2047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
