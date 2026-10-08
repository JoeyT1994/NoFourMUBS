import D0GraphStates
import D0GraphNodes030
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors930 (v : Fin 120) : Nat := if (498460498419645757581371649202061312 : Nat).testBit v.val then 0 else 0
def cert930 : CliqueCertificate (Fin 120) := .color 1 colors930
theorem checked930 : checkClique O c938 4 cert930 = true := by
  decide +kernel
#print axioms checked930
def colors931 (v : Fin 120) : Nat := if (316912952288656369220082728960 : Nat).testBit v.val then 0 else if (41538374868278621316474346785472512 : Nat).testBit v.val then 1 else 0
def cert931 : CliqueCertificate (Fin 120) := .color 2 colors931
theorem checked931 : checkClique O c940 4 cert931 = true := by
  decide +kernel
#print axioms checked931
def colors932 (v : Fin 120) : Nat := if (332307318490408303276376683423727616 : Nat).testBit v.val then 0 else if (162318712467727705192733683482624 : Nat).testBit v.val then 1 else if (166153504736777502715072408717361152 : Nat).testBit v.val then 2 else if (41619504506693227709939759638904832 : Nat).testBit v.val then 3 else 0
def cert932 : CliqueCertificate (Fin 120) := .color 4 colors932
theorem checked932 : checkClique O c941 5 cert932 = true := by
  decide +kernel
#print axioms checked932
def cert933 : CliqueCertificate (Fin 120) := .split 18 cert931 cert932
theorem checked933 : checkClique O c939 5 cert933 = true := by
  apply checkClique_split_literal O c939 c940 c941 18 4 cert931 cert932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked931
  · exact checked932
#print axioms checked933
def cert934 : CliqueCertificate (Fin 120) := .split 17 cert930 cert933
theorem checked934 : checkClique O c937 5 cert934 = true := by
  apply checkClique_split_literal O c937 c938 c939 17 4 cert930 cert933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked930
  · exact checked933
#print axioms checked934
def cert935 : CliqueCertificate (Fin 120) := .split 16 cert929 cert934
theorem checked935 : checkClique O c935 5 cert935 = true := by
  apply checkClique_split_literal O c935 c936 c937 16 4 cert929 cert934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked929
  · exact checked934
#print axioms checked935
def cert936 : CliqueCertificate (Fin 120) := .split 13 cert928 cert935
theorem checked936 : checkClique O c933 5 cert936 = true := by
  apply checkClique_split_literal O c933 c934 c935 13 4 cert928 cert935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked928
  · exact checked935
#print axioms checked936
def cert937 : CliqueCertificate (Fin 120) := .split 10 cert927 cert936
theorem checked937 : checkClique O c931 5 cert937 = true := by
  apply checkClique_split_literal O c931 c932 c933 10 4 cert927 cert936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked927
  · exact checked936
#print axioms checked937
def cert938 : CliqueCertificate (Fin 120) := .split 7 cert926 cert937
theorem checked938 : checkClique O c929 5 cert938 = true := by
  apply checkClique_split_literal O c929 c930 c931 7 4 cert926 cert937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked926
  · exact checked937
#print axioms checked938
def cert939 : CliqueCertificate (Fin 120) := .split 6 cert925 cert938
theorem checked939 : checkClique O c927 5 cert939 = true := by
  apply checkClique_split_literal O c927 c928 c929 6 4 cert925 cert938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked925
  · exact checked938
#print axioms checked939
def cert940 : CliqueCertificate (Fin 120) := .split 4 cert924 cert939
theorem checked940 : checkClique O c925 5 cert940 = true := by
  apply checkClique_split_literal O c925 c926 c927 4 4 cert924 cert939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked924
  · exact checked939
#print axioms checked940
def cert941 : PairCertificate (Fin 120) := .cross cert940
theorem checked941 : checkPair O U c6 c925 0 cert941 = true := by
  exact checked940
#print axioms checked941
def cert942 : PairCertificate (Fin 120) := .first .size
theorem checked942 : checkPair O U c6 c924 1 cert942 = true := by
  decide +kernel
#print axioms checked942
def cert943 : PairCertificate (Fin 120) := .split 111 cert941 cert942
theorem checked943 : checkPair O U c889 c924 1 cert943 = true := by
  apply checkPair_split_literal O U c889 c924 c6 c925 c6 111 0 cert941 cert942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked941
  · exact checked942
#print axioms checked943
def cert944 : PairCertificate (Fin 120) := .first .size
theorem checked944 : checkPair O U c889 c923 2 cert944 = true := by
  decide +kernel
#print axioms checked944
def cert945 : PairCertificate (Fin 120) := .split 103 cert943 cert944
theorem checked945 : checkPair O U c887 c923 2 cert945 = true := by
  apply checkPair_split_literal O U c887 c923 c889 c924 c889 103 1 cert943 cert944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked943
  · exact checked944
#print axioms checked945
def colors946 (v : Fin 120) : Nat := if (2596782332089896111754092344246272 : Nat).testBit v.val then 0 else if (10220432964340099549567169593344 : Nat).testBit v.val then 1 else 0
def cert946 : PairCertificate (Fin 120) := .first (.color 2 colors946)
theorem checked946 : checkPair O U c942 c884 3 cert946 = true := by
  decide +kernel
#print axioms checked946
def cert947 : PairCertificate (Fin 120) := .split 70 cert945 cert946
theorem checked947 : checkPair O U c922 c884 3 cert947 = true := by
  apply checkPair_split_literal O U c922 c884 c887 c923 c942 70 2 cert945 cert946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked945
  · exact checked946
#print axioms checked947
def cert948 : PairCertificate (Fin 120) := .split 63 cert923 cert947
theorem checked948 : checkPair O U c883 c884 3 cert948 = true := by
  apply checkPair_split_literal O U c883 c884 c885 c886 c922 63 2 cert923 cert947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked923
  · exact checked947
#print axioms checked948
def cert949 : PairCertificate (Fin 120) := .first .size
theorem checked949 : checkPair O U c6 c944 3 cert949 = true := by
  decide +kernel
#print axioms checked949
def cert950 : PairCertificate (Fin 120) := .first .size
theorem checked950 : checkPair O U c6 c946 3 cert950 = true := by
  decide +kernel
#print axioms checked950
def cert951 : PairCertificate (Fin 120) := .first .size
theorem checked951 : checkPair O U c6 c948 3 cert951 = true := by
  decide +kernel
#print axioms checked951
def cert952 : PairCertificate (Fin 120) := .first .size
theorem checked952 : checkPair O U c6 c950 3 cert952 = true := by
  decide +kernel
#print axioms checked952
def colors953 (v : Fin 120) : Nat := if (19807040628566084961030897792 : Nat).testBit v.val then 0 else 0
def cert953 : CliqueCertificate (Fin 120) := .color 1 colors953
theorem checked953 : checkClique O c956 4 cert953 = true := by
  decide +kernel
#print axioms checked953
def colors954 (v : Fin 120) : Nat := if (2361183418593633632256 : Nat).testBit v.val then 0 else if (309494454554310808015208448 : Nat).testBit v.val then 1 else if (332306998946228968225951765070086144 : Nat).testBit v.val then 2 else 0
def cert954 : CliqueCertificate (Fin 120) := .color 3 colors954
theorem checked954 : checkClique O c958 4 cert954 = true := by
  decide +kernel
#print axioms checked954
def colors955 (v : Fin 120) : Nat := if (166153499473419076751139666348998656 : Nat).testBit v.val then 0 else 0
def cert955 : CliqueCertificate (Fin 120) := .color 1 colors955
theorem checked955 : checkClique O c960 4 cert955 = true := by
  decide +kernel
#print axioms checked955
def colors956 (v : Fin 120) : Nat := if (41538374906964247545268380282912768 : Nat).testBit v.val then 0 else if (302231599018845369532416 : Nat).testBit v.val then 1 else 0
def cert956 : CliqueCertificate (Fin 120) := .color 2 colors956
theorem checked956 : checkClique O c962 4 cert956 = true := by
  decide +kernel
#print axioms checked956
def cert957 : CliqueCertificate (Fin 120) := .size
theorem checked957 : checkClique O c964 4 cert957 = true := by
  decide +kernel
#print axioms checked957
def colors958 (v : Fin 120) : Nat := if (906694508966897445240832 : Nat).testBit v.val then 0 else 0
def cert958 : CliqueCertificate (Fin 120) := .color 1 colors958
theorem checked958 : checkClique O c966 4 cert958 = true := by
  decide +kernel
#print axioms checked958
def colors959 (v : Fin 120) : Nat := if (41538374868892529103539210679222272 : Nat).testBit v.val then 0 else if (332308271587579572463832178681184256 : Nat).testBit v.val then 1 else if (81191859408838181382742459023360 : Nat).testBit v.val then 2 else if (171345796486391816652178913226653696 : Nat).testBit v.val then 3 else 0
def cert959 : CliqueCertificate (Fin 120) := .color 4 colors959
theorem checked959 : checkClique O c967 5 cert959 = true := by
  decide +kernel
#print axioms checked959
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
