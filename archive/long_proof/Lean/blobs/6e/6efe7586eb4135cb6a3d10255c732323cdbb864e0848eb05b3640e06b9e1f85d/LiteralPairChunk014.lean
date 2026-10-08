import LiteralPairChunk013
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert336 : PairCertificate (Fin 48) := .split 11 pairCert322 pairCert335
theorem pairCheck336 : checkPairSized orthGraph ubGraph (labelSet 13356342839296) (labelSet 265919071649791) 5 6 pairCert336=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13356342839296) (labelSet 265919071649791) (labelSet 4415226380288)
    (labelSet 195481582794447) (labelSet 13356342837248) 11 4 6
    pairCert322 pairCert335 (by decide) (by decide) (by decide) (by decide)
    pairCheck322 pairCheck335
def pairCert337 : PairCertificate (Fin 48) := .split 45 pairCert321 pairCert336
theorem pairCheck337 : checkPairSized orthGraph ubGraph (labelSet 48540714928128) (labelSet 265919071649791) 5 6 pairCert337=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 48540714928128) (labelSet 265919071649791) (labelSet 139653677056)
    (labelSet 89645015429054) (labelSet 13356342839296) 45 4 6
    pairCert321 pairCert336 (by decide) (by decide) (by decide) (by decide)
    pairCheck321 pairCheck336
def pairCert338 : PairCertificate (Fin 48) := .split 13 pairCert320 pairCert337
theorem pairCheck338 : checkPairSized orthGraph ubGraph (labelSet 48540714936320) (labelSet 265919071649791) 5 6 pairCert338=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 48540714936320) (labelSet 265919071649791) (labelSet 8801462779904)
    (labelSet 246917867888399) (labelSet 48540714928128) 13 4 6
    pairCert320 pairCert337 (by decide) (by decide) (by decide) (by decide)
    pairCheck320 pairCheck337
def pairCert339 : PairCertificate (Fin 48) := .split 38 pairCert319 pairCert338
theorem pairCheck339 : checkPairSized orthGraph ubGraph (labelSet 48815592843264) (labelSet 265919071649791) 5 6 pairCert339=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 48815592843264) (labelSet 265919071649791) (labelSet 43986974679040)
    (labelSet 70412160327646) (labelSet 48540714936320) 38 4 6
    pairCert319 pairCert338 (by decide) (by decide) (by decide) (by decide)
    pairCheck319 pairCheck338
def pairCert340 : PairCertificate (Fin 48) := .split 6 pairCert318 pairCert339
theorem pairCheck340 : checkPairSized orthGraph ubGraph (labelSet 48815592843328) (labelSet 265919071649791) 5 6 pairCert340=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 48815592843328) (labelSet 265919071649791) (labelSet 35322885971968)
    (labelSet 230691473051565) (labelSet 48815592843264) 6 4 6
    pairCert318 pairCert339 (by decide) (by decide) (by decide) (by decide)
    pairCheck318 pairCheck339
def pairCert341 : PairCertificate (Fin 48) := .first cliqueCert117
theorem pairCheck341 : checkPairSized orthGraph ubGraph (labelSet 8611956800) (labelSet 12498053750815) 4 6 pairCert341=true := by
  exact cliqueCheck117
def pairCert342 : PairCertificate (Fin 48) := .first cliqueCert118
theorem pairCheck342 : checkPairSized orthGraph ubGraph (labelSet 146298372096) (labelSet 16860666775981) 4 6 pairCert342=true := by
  exact cliqueCheck118
def pairCert343 : PairCertificate (Fin 48) := .first cliqueCert119
theorem pairCheck343 : checkPairSized orthGraph ubGraph (labelSet 70368765150208) (labelSet 47595989725391) 4 6 pairCert343=true := by
  exact cliqueCheck119
def pairCert344 : PairCertificate (Fin 48) := .first cliqueCert120
theorem pairCheck344 : checkPairSized orthGraph ubGraph (labelSet 158329674399744) (labelSet 6654759262686) 4 6 pairCert344=true := by
  exact cliqueCheck120
def pairCert345 : PairCertificate (Fin 48) := .cross cliqueCert121
theorem pairCheck345 : checkPairSized orthGraph ubGraph (labelSet 140874927308800) (labelSet 46546708791303) 2 6 pairCert345=true := by
  exact cliqueCheck121
def pairCert346 : PairCertificate (Fin 48) := .first cliqueCert122
theorem pairCheck346 : checkPairSized orthGraph ubGraph (labelSet 211252261421056) (labelSet 47646824452231) 3 6 pairCert346=true := by
  exact cliqueCheck122
def pairCert347 : PairCertificate (Fin 48) := .split 22 pairCert345 pairCert346
theorem pairCheck347 : checkPairSized orthGraph ubGraph (labelSet 211252265615360) (labelSet 47646824452231) 3 6 pairCert347=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 211252265615360) (labelSet 47646824452231) (labelSet 140874927308800)
    (labelSet 46546708791303) (labelSet 211252261421056) 22 2 6
    pairCert345 pairCert346 (by decide) (by decide) (by decide) (by decide)
    pairCheck345 pairCheck346
def pairCert348 : PairCertificate (Fin 48) := .first cliqueCert123
theorem pairCheck348 : checkPairSized orthGraph ubGraph (labelSet 211252265615360) (labelSet 47682392158431) 4 6 pairCert348=true := by
  exact cliqueCheck123
def pairCert349 : PairCertificate (Fin 48) := .split 28 pairCert347 pairCert348
theorem pairCheck349 : checkPairSized orthGraph ubGraph (labelSet 211252534050816) (labelSet 47682392158431) 4 6 pairCert349=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 211252534050816) (labelSet 47682392158431) (labelSet 211252265615360)
    (labelSet 47646824452231) (labelSet 211252265615360) 28 3 6
    pairCert347 pairCert348 (by decide) (by decide) (by decide) (by decide)
    pairCheck347 pairCheck348
def pairCert350 : PairCertificate (Fin 48) := .first cliqueCert123
theorem pairCheck350 : checkPairSized orthGraph ubGraph (labelSet 211252265615360) (labelSet 52044913170855) 4 6 pairCert350=true := by
  exact cliqueCheck123
def pairCert351 : PairCertificate (Fin 48) := .cross cliqueCert124
theorem pairCheck351 : checkPairSized orthGraph ubGraph (labelSet 70377335160832) (labelSet 41870806128858) 3 6 pairCert351=true := by
  exact cliqueCheck124
def pairCert352 : PairCertificate (Fin 48) := .first cliqueCert125
theorem pairCheck352 : checkPairSized orthGraph ubGraph (labelSet 211114823516160) (labelSet 41909997787611) 4 6 pairCert352=true := by
  exact cliqueCheck125
def pairCert353 : PairCertificate (Fin 48) := .split 10 pairCert351 pairCert352
theorem pairCheck353 : checkPairSized orthGraph ubGraph (labelSet 211114823517184) (labelSet 41909997787611) 4 6 pairCert353=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 211114823517184) (labelSet 41909997787611) (labelSet 70377335160832)
    (labelSet 41870806128858) (labelSet 211114823516160) 10 3 6
    pairCert351 pairCert352 (by decide) (by decide) (by decide) (by decide)
    pairCheck351 pairCheck352
def pairCert354 : PairCertificate (Fin 48) := .first cliqueCert126
theorem pairCheck354 : checkPairSized orthGraph ubGraph (labelSet 211252266664960) (labelSet 52080480877055) 5 6 pairCert354=true := by
  exact cliqueCheck126
def pairCert355 : PairCertificate (Fin 48) := .split 44 pairCert353 pairCert354
theorem pairCheck355 : checkPairSized orthGraph ubGraph (labelSet 228844452709376) (labelSet 52080480877055) 5 6 pairCert355=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 228844452709376) (labelSet 52080480877055) (labelSet 211114823517184)
    (labelSet 41909997787611) (labelSet 211252266664960) 44 4 6
    pairCert353 pairCert354 (by decide) (by decide) (by decide) (by decide)
    pairCheck353 pairCheck354
def pairCert356 : PairCertificate (Fin 48) := .split 28 pairCert350 pairCert355
theorem pairCheck356 : checkPairSized orthGraph ubGraph (labelSet 228844721144832) (labelSet 52080480877055) 5 6 pairCert356=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 228844721144832) (labelSet 52080480877055) (labelSet 211252265615360)
    (labelSet 52044913170855) (labelSet 228844452709376) 28 4 6
    pairCert350 pairCert355 (by decide) (by decide) (by decide) (by decide)
    pairCheck350 pairCheck355
def pairCert357 : PairCertificate (Fin 48) := .split 24 pairCert349 pairCert356
theorem pairCheck357 : checkPairSized orthGraph ubGraph (labelSet 228844737922048) (labelSet 52080480877055) 5 6 pairCert357=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 228844737922048) (labelSet 52080480877055) (labelSet 211252534050816)
    (labelSet 47682392158431) (labelSet 228844721144832) 24 4 6
    pairCert349 pairCert356 (by decide) (by decide) (by decide) (by decide)
    pairCheck349 pairCheck356
def pairCert358 : PairCertificate (Fin 48) := .split 38 pairCert344 pairCert357
theorem pairCheck358 : checkPairSized orthGraph ubGraph (labelSet 229119615828992) (labelSet 52080480877055) 5 6 pairCert358=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 229119615828992) (labelSet 52080480877055) (labelSet 158329674399744)
    (labelSet 6654759262686) (labelSet 228844737922048) 38 4 6
    pairCert344 pairCert357 (by decide) (by decide) (by decide) (by decide)
    pairCheck344 pairCheck357
def pairCert359 : PairCertificate (Fin 48) := .split 11 pairCert343 pairCert358
theorem pairCheck359 : checkPairSized orthGraph ubGraph (labelSet 229119615831040) (labelSet 52080480877055) 5 6 pairCert359=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 229119615831040) (labelSet 52080480877055) (labelSet 70368765150208)
    (labelSet 47595989725391) (labelSet 229119615828992) 11 4 6
    pairCert343 pairCert358 (by decide) (by decide) (by decide) (by decide)
    pairCheck343 pairCheck358
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck336
#print axioms Mub6.Numerical.ClusterTube48.pairCheck337
#print axioms Mub6.Numerical.ClusterTube48.pairCheck338
#print axioms Mub6.Numerical.ClusterTube48.pairCheck339
#print axioms Mub6.Numerical.ClusterTube48.pairCheck340
#print axioms Mub6.Numerical.ClusterTube48.pairCheck341
#print axioms Mub6.Numerical.ClusterTube48.pairCheck342
#print axioms Mub6.Numerical.ClusterTube48.pairCheck343
#print axioms Mub6.Numerical.ClusterTube48.pairCheck344
#print axioms Mub6.Numerical.ClusterTube48.pairCheck345
#print axioms Mub6.Numerical.ClusterTube48.pairCheck346
#print axioms Mub6.Numerical.ClusterTube48.pairCheck347
#print axioms Mub6.Numerical.ClusterTube48.pairCheck348
#print axioms Mub6.Numerical.ClusterTube48.pairCheck349
#print axioms Mub6.Numerical.ClusterTube48.pairCheck350
#print axioms Mub6.Numerical.ClusterTube48.pairCheck351
#print axioms Mub6.Numerical.ClusterTube48.pairCheck352
#print axioms Mub6.Numerical.ClusterTube48.pairCheck353
#print axioms Mub6.Numerical.ClusterTube48.pairCheck354
#print axioms Mub6.Numerical.ClusterTube48.pairCheck355
#print axioms Mub6.Numerical.ClusterTube48.pairCheck356
#print axioms Mub6.Numerical.ClusterTube48.pairCheck357
#print axioms Mub6.Numerical.ClusterTube48.pairCheck358
#print axioms Mub6.Numerical.ClusterTube48.pairCheck359
