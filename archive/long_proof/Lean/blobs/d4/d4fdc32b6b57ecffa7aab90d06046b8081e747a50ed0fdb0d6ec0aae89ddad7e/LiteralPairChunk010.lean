import LiteralPairChunk009
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert240 : PairCertificate (Fin 48) := .first cliqueCert67
theorem pairCheck240 : checkPairSized orthGraph ubGraph (labelSet 377957123328) (labelSet 93469057858174) 4 6 pairCert240=true := by
  exact cliqueCheck67
def pairCert241 : PairCertificate (Fin 48) := .cross cliqueCert68
theorem pairCheck241 : checkPairSized orthGraph ubGraph (labelSet 141081085739008) (labelSet 98561201580726) 3 6 pairCert241=true := by
  exact cliqueCheck68
def pairCert242 : PairCertificate (Fin 48) := .first cliqueCert69
theorem pairCheck242 : checkPairSized orthGraph ubGraph (labelSet 141081085740032) (labelSet 105159413508798) 4 6 pairCert242=true := by
  exact cliqueCheck69
def pairCert243 : PairCertificate (Fin 48) := .split 31 pairCert241 pairCert242
theorem pairCheck243 : checkPairSized orthGraph ubGraph (labelSet 141083233223680) (labelSet 105159413508798) 4 6 pairCert243=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 141083233223680) (labelSet 105159413508798) (labelSet 141081085739008)
    (labelSet 98561201580726) (labelSet 141081085740032) 31 3 6
    pairCert241 pairCert242 (by decide) (by decide) (by decide) (by decide)
    pairCheck241 pairCheck242
def pairCert244 : PairCertificate (Fin 48) := .first cliqueCert70
theorem pairCheck244 : checkPairSized orthGraph ubGraph (labelSet 141117592962304) (labelSet 105168548903678) 5 6 pairCert244=true := by
  exact cliqueCheck70
def pairCert245 : PairCertificate (Fin 48) := .split 45 pairCert243 pairCert244
theorem pairCheck245 : checkPairSized orthGraph ubGraph (labelSet 176301965051136) (labelSet 105168548903678) 5 6 pairCert245=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 176301965051136) (labelSet 105168548903678) (labelSet 141083233223680)
    (labelSet 105159413508798) (labelSet 141117592962304) 45 4 6
    pairCert243 pairCert244 (by decide) (by decide) (by decide) (by decide)
    pairCheck243 pairCheck244
def pairCert246 : PairCertificate (Fin 48) := .split 32 pairCert240 pairCert245
theorem pairCheck246 : checkPairSized orthGraph ubGraph (labelSet 176306260018432) (labelSet 105168548903678) 5 6 pairCert246=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 176306260018432) (labelSet 105168548903678) (labelSet 377957123328)
    (labelSet 93469057858174) (labelSet 176301965051136) 32 4 6
    pairCert240 pairCert245 (by decide) (by decide) (by decide) (by decide)
    pairCheck240 pairCheck245
def pairCert247 : PairCertificate (Fin 48) := .split 14 pairCert239 pairCert246
theorem pairCheck247 : checkPairSized orthGraph ubGraph (labelSet 176306260034816) (labelSet 105168548903678) 5 6 pairCert247=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 176306260034816) (labelSet 105168548903678) (labelSet 382252090624)
    (labelSet 104068963838716) (labelSet 176306260018432) 14 4 6
    pairCert239 pairCert246 (by decide) (by decide) (by decide) (by decide)
    pairCheck239 pairCheck246
def pairCert248 : PairCertificate (Fin 48) := .split 33 pairCert234 pairCert247
theorem pairCheck248 : checkPairSized orthGraph ubGraph (labelSet 176314849969408) (labelSet 105168548903678) 5 6 pairCert248=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 176314849969408) (labelSet 105168548903678) (labelSet 35184372089856)
    (labelSet 17199019174078) (labelSet 176306260034816) 33 4 6
    pairCert234 pairCert247 (by decide) (by decide) (by decide) (by decide)
    pairCheck234 pairCheck247
def pairCert249 : PairCertificate (Fin 48) := .split 40 pairCert233 pairCert248
theorem pairCheck249 : checkPairSized orthGraph ubGraph (labelSet 177414361597184) (labelSet 105168548903678) 5 6 pairCert249=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 177414361597184) (labelSet 105168548903678) (labelSet 277025407232)
    (labelSet 77680686861014) (labelSet 176314849969408) 40 4 6
    pairCert233 pairCert248 (by decide) (by decide) (by decide) (by decide)
    pairCheck233 pairCheck248
def pairCert250 : PairCertificate (Fin 48) := .split 34 pairCert232 pairCert249
theorem pairCheck250 : checkPairSized orthGraph ubGraph (labelSet 177431541466368) (labelSet 105168548903678) 5 6 pairCert250=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 177431541466368) (labelSet 105168548903678) (labelSet 140844862537728)
    (labelSet 23650068935406) (labelSet 177414361597184) 34 4 6
    pairCert232 pairCert249 (by decide) (by decide) (by decide) (by decide)
    pairCheck232 pairCheck249
def pairCert251 : PairCertificate (Fin 48) := .split 43 pairCert231 pairCert250
theorem pairCheck251 : checkPairSized orthGraph ubGraph (labelSet 186227634488576) (labelSet 105168548903678) 5 6 pairCert251=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 186227634488576) (labelSet 105168548903678) (labelSet 1432371593216)
    (labelSet 75327115729630) (labelSet 177431541466368) 43 4 6
    pairCert231 pairCert250 (by decide) (by decide) (by decide) (by decide)
    pairCheck231 pairCheck250
def pairCert252 : PairCertificate (Fin 48) := .split 15 pairCert230 pairCert251
theorem pairCheck252 : checkPairSized orthGraph ubGraph (labelSet 186227634521344) (labelSet 105168548903678) 5 6 pairCert252=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 186227634521344) (labelSet 105168548903678) (labelSet 141922899345664)
    (labelSet 33683041886954) (labelSet 186227634488576) 15 4 6
    pairCert230 pairCert251 (by decide) (by decide) (by decide) (by decide)
    pairCheck230 pairCheck251
def pairCert253 : PairCertificate (Fin 48) := .first cliqueCert71
theorem pairCheck253 : checkPairSized orthGraph ubGraph (labelSet 70506451569728) (labelSet 51959147942319) 4 6 pairCert253=true := by
  exact cliqueCheck71
def pairCert254 : PairCertificate (Fin 48) := .first cliqueCert72
theorem pairCheck254 : checkPairSized orthGraph ubGraph (labelSet 257698046976) (labelSet 199298025001518) 4 6 pairCert254=true := by
  exact cliqueCheck72
def pairCert255 : PairCertificate (Fin 48) := .first cliqueCert73
theorem pairCheck255 : checkPairSized orthGraph ubGraph (labelSet 70403103926272) (labelSet 192829266464942) 4 6 pairCert255=true := by
  exact cliqueCheck73
def pairCert256 : PairCertificate (Fin 48) := .first cliqueCert74
theorem pairCheck256 : checkPairSized orthGraph ubGraph (labelSet 86167781440) (labelSet 58560515691949) 4 6 pairCert256=true := by
  exact cliqueCheck74
def pairCert257 : PairCertificate (Fin 48) := .first cliqueCert75
theorem pairCheck257 : checkPairSized orthGraph ubGraph (labelSet 1073774592) (labelSet 202736074098607) 4 6 pairCert257=true := by
  exact cliqueCheck75
def pairCert258 : PairCertificate (Fin 48) := .cross cliqueCert76
theorem pairCheck258 : checkPairSized orthGraph ubGraph (labelSet 1073750016) (labelSet 34362524434596) 2 6 pairCert258=true := by
  exact cliqueCheck76
def pairCert259 : PairCertificate (Fin 48) := .first cliqueCert77
theorem pairCheck259 : checkPairSized orthGraph ubGraph (labelSet 70386997796864) (labelSet 69555497078950) 3 6 pairCert259=true := by
  exact cliqueCheck77
def pairCert260 : PairCertificate (Fin 48) := .split 6 pairCert258 pairCert259
theorem pairCheck260 : checkPairSized orthGraph ubGraph (labelSet 70386997796928) (labelSet 69555497078950) 3 6 pairCert260=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70386997796928) (labelSet 69555497078950) (labelSet 1073750016)
    (labelSet 34362524434596) (labelSet 70386997796864) 6 2 6
    pairCert258 pairCert259 (by decide) (by decide) (by decide) (by decide)
    pairCheck258 pairCheck259
def pairCert261 : PairCertificate (Fin 48) := .first cliqueCert78
theorem pairCheck261 : checkPairSized orthGraph ubGraph (labelSet 70386997796928) (labelSet 69559792850343) 4 6 pairCert261=true := by
  exact cliqueCheck78
def pairCert262 : PairCertificate (Fin 48) := .split 35 pairCert260 pairCert261
theorem pairCheck262 : checkPairSized orthGraph ubGraph (labelSet 70421357535296) (labelSet 69559792850343) 4 6 pairCert262=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70421357535296) (labelSet 69559792850343) (labelSet 70386997796928)
    (labelSet 69555497078950) (labelSet 70386997796928) 35 3 6
    pairCert260 pairCert261 (by decide) (by decide) (by decide) (by decide)
    pairCheck260 pairCheck261
def pairCert263 : PairCertificate (Fin 48) := .cross cliqueCert79
theorem pairCheck263 : checkPairSized orthGraph ubGraph (labelSet 70454643523584) (labelSet 204936648197771) 3 6 pairCert263=true := by
  exact cliqueCheck79
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck240
#print axioms Mub6.Numerical.ClusterTube48.pairCheck241
#print axioms Mub6.Numerical.ClusterTube48.pairCheck242
#print axioms Mub6.Numerical.ClusterTube48.pairCheck243
#print axioms Mub6.Numerical.ClusterTube48.pairCheck244
#print axioms Mub6.Numerical.ClusterTube48.pairCheck245
#print axioms Mub6.Numerical.ClusterTube48.pairCheck246
#print axioms Mub6.Numerical.ClusterTube48.pairCheck247
#print axioms Mub6.Numerical.ClusterTube48.pairCheck248
#print axioms Mub6.Numerical.ClusterTube48.pairCheck249
#print axioms Mub6.Numerical.ClusterTube48.pairCheck250
#print axioms Mub6.Numerical.ClusterTube48.pairCheck251
#print axioms Mub6.Numerical.ClusterTube48.pairCheck252
#print axioms Mub6.Numerical.ClusterTube48.pairCheck253
#print axioms Mub6.Numerical.ClusterTube48.pairCheck254
#print axioms Mub6.Numerical.ClusterTube48.pairCheck255
#print axioms Mub6.Numerical.ClusterTube48.pairCheck256
#print axioms Mub6.Numerical.ClusterTube48.pairCheck257
#print axioms Mub6.Numerical.ClusterTube48.pairCheck258
#print axioms Mub6.Numerical.ClusterTube48.pairCheck259
#print axioms Mub6.Numerical.ClusterTube48.pairCheck260
#print axioms Mub6.Numerical.ClusterTube48.pairCheck261
#print axioms Mub6.Numerical.ClusterTube48.pairCheck262
#print axioms Mub6.Numerical.ClusterTube48.pairCheck263
