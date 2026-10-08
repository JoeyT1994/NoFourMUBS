import D0GraphStates
import D0GraphNodes031
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert960 : CliqueCertificate (Fin 120) := .split 28 cert958 cert959
theorem checked960 : checkClique O c965 5 cert960 = true := by
  apply checkClique_split_literal O c965 c966 c967 28 4 cert958 cert959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked958
  · exact checked959
#print axioms checked960
def cert961 : CliqueCertificate (Fin 120) := .split 22 cert957 cert960
theorem checked961 : checkClique O c963 5 cert961 = true := by
  apply checkClique_split_literal O c963 c964 c965 22 4 cert957 cert960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked957
  · exact checked960
#print axioms checked961
def cert962 : CliqueCertificate (Fin 120) := .split 18 cert956 cert961
theorem checked962 : checkClique O c961 5 cert962 = true := by
  apply checkClique_split_literal O c961 c962 c963 18 4 cert956 cert961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked956
  · exact checked961
#print axioms checked962
def cert963 : CliqueCertificate (Fin 120) := .split 7 cert955 cert962
theorem checked963 : checkClique O c959 5 cert963 = true := by
  apply checkClique_split_literal O c959 c960 c961 7 4 cert955 cert962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked955
  · exact checked962
#print axioms checked963
def cert964 : CliqueCertificate (Fin 120) := .split 6 cert954 cert963
theorem checked964 : checkClique O c957 5 cert964 = true := by
  apply checkClique_split_literal O c957 c958 c959 6 4 cert954 cert963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked954
  · exact checked963
#print axioms checked964
def cert965 : CliqueCertificate (Fin 120) := .split 4 cert953 cert964
theorem checked965 : checkClique O c955 5 cert965 = true := by
  apply checkClique_split_literal O c955 c956 c957 4 4 cert953 cert964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked953
  · exact checked964
#print axioms checked965
def cert966 : PairCertificate (Fin 120) := .cross cert965
theorem checked966 : checkPair O U c6 c955 0 cert966 = true := by
  exact checked965
#print axioms checked966
def cert967 : PairCertificate (Fin 120) := .first .size
theorem checked967 : checkPair O U c6 c954 1 cert967 = true := by
  decide +kernel
#print axioms checked967
def cert968 : PairCertificate (Fin 120) := .split 111 cert966 cert967
theorem checked968 : checkPair O U c889 c954 1 cert968 = true := by
  apply checkPair_split_literal O U c889 c954 c6 c955 c6 111 0 cert966 cert967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked966
  · exact checked967
#print axioms checked968
def cert969 : PairCertificate (Fin 120) := .first .size
theorem checked969 : checkPair O U c889 c953 2 cert969 = true := by
  decide +kernel
#print axioms checked969
def cert970 : PairCertificate (Fin 120) := .split 103 cert968 cert969
theorem checked970 : checkPair O U c887 c953 2 cert970 = true := by
  apply checkPair_split_literal O U c887 c953 c889 c954 c889 103 1 cert968 cert969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked968
  · exact checked969
#print axioms checked970
def cert971 : PairCertificate (Fin 120) := .first .size
theorem checked971 : checkPair O U c887 c952 3 cert971 = true := by
  decide +kernel
#print axioms checked971
def cert972 : PairCertificate (Fin 120) := .split 70 cert970 cert971
theorem checked972 : checkPair O U c885 c952 3 cert972 = true := by
  apply checkPair_split_literal O U c885 c952 c887 c953 c887 70 2 cert970 cert971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked970
  · exact checked971
#print axioms checked972
def colors973 (v : Fin 120) : Nat := if (3169378185032129633217897562112 : Nat).testBit v.val then 0 else if (10220432964340099549567169593344 : Nat).testBit v.val then 1 else if (2596148429267413814265248164610048 : Nat).testBit v.val then 2 else 0
def cert973 : PairCertificate (Fin 120) := .first (.color 3 colors973)
theorem checked973 : checkPair O U c968 c882 4 cert973 = true := by
  decide +kernel
#print axioms checked973
def cert974 : PairCertificate (Fin 120) := .split 63 cert972 cert973
theorem checked974 : checkPair O U c951 c882 4 cert974 = true := by
  apply checkPair_split_literal O U c951 c882 c885 c952 c968 63 3 cert972 cert973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked972
  · exact checked973
#print axioms checked974
def cert975 : PairCertificate (Fin 120) := .split 62 cert952 cert974
theorem checked975 : checkPair O U c949 c882 4 cert975 = true := by
  apply checkPair_split_literal O U c949 c882 c6 c950 c951 62 3 cert952 cert974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked952
  · exact checked974
#print axioms checked975
def cert976 : PairCertificate (Fin 120) := .split 53 cert951 cert975
theorem checked976 : checkPair O U c947 c882 4 cert976 = true := by
  apply checkPair_split_literal O U c947 c882 c6 c948 c949 53 3 cert951 cert975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked951
  · exact checked975
#print axioms checked976
def cert977 : PairCertificate (Fin 120) := .split 52 cert950 cert976
theorem checked977 : checkPair O U c945 c882 4 cert977 = true := by
  apply checkPair_split_literal O U c945 c882 c6 c946 c947 52 3 cert950 cert976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked950
  · exact checked976
#print axioms checked977
def cert978 : PairCertificate (Fin 120) := .split 48 cert949 cert977
theorem checked978 : checkPair O U c943 c882 4 cert978 = true := by
  apply checkPair_split_literal O U c943 c882 c6 c944 c945 48 3 cert949 cert977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked949
  · exact checked977
#print axioms checked978
def cert979 : PairCertificate (Fin 120) := .split 34 cert948 cert978
theorem checked979 : checkPair O U c881 c882 4 cert979 = true := by
  apply checkPair_split_literal O U c881 c882 c883 c884 c943 34 3 cert948 cert978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked948
  · exact checked978
#print axioms checked979
def colors980 (v : Fin 120) : Nat := if (83076749736632799920214267907801090 : Nat).testBit v.val then 0 else if (1237940039285380274899124224 : Nat).testBit v.val then 1 else if (10384593717069655257060992658440192 : Nat).testBit v.val then 2 else 0
def cert980 : CliqueCertificate (Fin 120) := .color 3 colors980
theorem checked980 : checkClique O c980 4 cert980 = true := by
  decide +kernel
#print axioms checked980
def cert981 : CliqueCertificate (Fin 120) := .size
theorem checked981 : checkClique O c982 4 cert981 = true := by
  decide +kernel
#print axioms checked981
def colors982 (v : Fin 120) : Nat := if (664614037506539193584072739229007872 : Nat).testBit v.val then 0 else if (5192296858553717094461974910074880 : Nat).testBit v.val then 1 else 0
def cert982 : CliqueCertificate (Fin 120) := .color 2 colors982
theorem checked982 : checkClique O c984 4 cert982 = true := by
  decide +kernel
#print axioms checked982
def colors983 (v : Fin 120) : Nat := if (4951760157159535635544932352 : Nat).testBit v.val then 0 else if (81129638414606681695789005144064 : Nat).testBit v.val then 1 else 0
def cert983 : CliqueCertificate (Fin 120) := .color 2 colors983
theorem checked983 : checkClique O c986 4 cert983 = true := by
  decide +kernel
#print axioms checked983
def colors984 (v : Fin 120) : Nat := if (41538374868278621460589534861328384 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else 0
def cert984 : CliqueCertificate (Fin 120) := .color 2 colors984
theorem checked984 : checkClique O c988 4 cert984 = true := by
  decide +kernel
#print axioms checked984
def cert985 : CliqueCertificate (Fin 120) := .size
theorem checked985 : checkClique O c432 4 cert985 = true := by
  decide +kernel
#print axioms checked985
def cert986 : CliqueCertificate (Fin 120) := .size
theorem checked986 : checkClique O c991 4 cert986 = true := by
  decide +kernel
#print axioms checked986
def colors987 (v : Fin 120) : Nat := if (41538414482586552057835697354047488 : Nat).testBit v.val then 0 else if (10394737710882236553269138987941888 : Nat).testBit v.val then 1 else if (88269052804135079225753878887661568 : Nat).testBit v.val then 2 else if (664695147337913171699683717531303936 : Nat).testBit v.val then 3 else 0
def cert987 : CliqueCertificate (Fin 120) := .color 4 colors987
theorem checked987 : checkClique O c992 5 cert987 = true := by
  decide +kernel
#print axioms checked987
def cert988 : CliqueCertificate (Fin 120) := .split 36 cert986 cert987
theorem checked988 : checkClique O c990 5 cert988 = true := by
  apply checkClique_split_literal O c990 c991 c992 36 4 cert986 cert987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked986
  · exact checked987
#print axioms checked988
def cert989 : CliqueCertificate (Fin 120) := .split 24 cert985 cert988
theorem checked989 : checkClique O c989 5 cert989 = true := by
  apply checkClique_split_literal O c989 c432 c990 24 4 cert985 cert988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked985
  · exact checked988
#print axioms checked989
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
