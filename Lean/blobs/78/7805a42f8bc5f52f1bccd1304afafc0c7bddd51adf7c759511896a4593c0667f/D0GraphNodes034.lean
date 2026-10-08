import D0GraphStates
import D0GraphNodes033
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert1020 : PairCertificate (Fin 120) := .split 105 cert1018 cert1019
theorem checked1020 : checkPair O U c978 c994 1 cert1020 = true := by
  apply checkPair_split_literal O U c978 c994 c6 c995 c6 105 0 cert1018 cert1019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1018
  · exact checked1019
#print axioms checked1020
def cert1021 : PairCertificate (Fin 120) := .first .size
theorem checked1021 : checkPair O U c978 c975 2 cert1021 = true := by
  decide +kernel
#print axioms checked1021
def cert1022 : PairCertificate (Fin 120) := .split 97 cert1020 cert1021
theorem checked1022 : checkPair O U c976 c975 2 cert1022 = true := by
  apply checkPair_split_literal O U c976 c975 c978 c994 c978 97 1 cert1020 cert1021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1020
  · exact checked1021
#print axioms checked1022
def cert1023 : PairCertificate (Fin 120) := .split 71 cert1000 cert1022
theorem checked1023 : checkPair O U c974 c975 2 cert1023 = true := by
  apply checkPair_split_literal O U c974 c975 c976 c977 c976 71 1 cert1000 cert1022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1000
  · exact checked1022
#print axioms checked1023
def colors1024 (v : Fin 120) : Nat := if (83076749736632799920284362042509314 : Nat).testBit v.val then 0 else if (4835703278458516698824704 : Nat).testBit v.val then 1 else 0
def cert1024 : CliqueCertificate (Fin 120) := .color 2 colors1024
theorem checked1024 : checkClique O c1016 4 cert1024 = true := by
  decide +kernel
#print axioms checked1024
def colors1025 (v : Fin 120) : Nat := if (649039583196932024326930626510848 : Nat).testBit v.val then 0 else 0
def cert1025 : CliqueCertificate (Fin 120) := .color 1 colors1025
theorem checked1025 : checkClique O c1018 4 cert1025 = true := by
  decide +kernel
#print axioms checked1025
def colors1026 (v : Fin 120) : Nat := if (39614081257132239302955106304 : Nat).testBit v.val then 0 else if (5192296858553717094461974910074880 : Nat).testBit v.val then 1 else 0
def cert1026 : CliqueCertificate (Fin 120) := .color 2 colors1026
theorem checked1026 : checkClique O c1020 4 cert1026 = true := by
  decide +kernel
#print axioms checked1026
def colors1027 (v : Fin 120) : Nat := if (41538377345367625419745049581191168 : Nat).testBit v.val then 0 else if (81129638414606681695789005144064 : Nat).testBit v.val then 1 else 0
def cert1027 : CliqueCertificate (Fin 120) := .color 2 colors1027
theorem checked1027 : checkClique O c1022 4 cert1027 = true := by
  decide +kernel
#print axioms checked1027
def colors1028 (v : Fin 120) : Nat := if (83725786843892984976056100709728256 : Nat).testBit v.val then 0 else if (4951760157141521099596496896 : Nat).testBit v.val then 1 else 0
def cert1028 : CliqueCertificate (Fin 120) := .color 2 colors1028
theorem checked1028 : checkClique O c1024 4 cert1028 = true := by
  decide +kernel
#print axioms checked1028
def colors1029 (v : Fin 120) : Nat := if (88269046595167922696720037456117760 : Nat).testBit v.val then 0 else 0
def cert1029 : CliqueCertificate (Fin 120) := .color 1 colors1029
theorem checked1029 : checkClique O c1026 4 cert1029 = true := by
  decide +kernel
#print axioms checked1029
def colors1030 (v : Fin 120) : Nat := if (5192296878028756470942291678199808 : Nat).testBit v.val then 0 else 0
def cert1030 : CliqueCertificate (Fin 120) := .color 1 colors1030
theorem checked1030 : checkClique O c1028 4 cert1030 = true := by
  decide +kernel
#print axioms checked1030
def colors1031 (v : Fin 120) : Nat := if (137711583232 : Nat).testBit v.val then 0 else if (4951760157141521099596496896 : Nat).testBit v.val then 1 else if (81129638414606681695789005144064 : Nat).testBit v.val then 2 else 0
def cert1031 : CliqueCertificate (Fin 120) := .color 3 colors1031
theorem checked1031 : checkClique O c1030 4 cert1031 = true := by
  decide +kernel
#print axioms checked1031
def colors1032 (v : Fin 120) : Nat := if (4952987972427067207427555328 : Nat).testBit v.val then 0 else if (81129638414606681695789005144064 : Nat).testBit v.val then 1 else 0
def cert1032 : CliqueCertificate (Fin 120) := .color 2 colors1032
theorem checked1032 : checkClique O c1032 4 cert1032 = true := by
  decide +kernel
#print axioms checked1032
def colors1033 (v : Fin 120) : Nat := if (316912725615209306664919367680 : Nat).testBit v.val then 0 else if (41538374868278621172359158709616640 : Nat).testBit v.val then 1 else 0
def cert1033 : CliqueCertificate (Fin 120) := .color 2 colors1033
theorem checked1033 : checkClique O c1034 4 cert1033 = true := by
  decide +kernel
#print axioms checked1033
def colors1034 (v : Fin 120) : Nat := if (83726103762587671420835965796614144 : Nat).testBit v.val then 0 else if (2476031489590232883312721920 : Nat).testBit v.val then 1 else if (5192301829713355747611577044434944 : Nat).testBit v.val then 2 else if (41619564239717974868767281871060992 : Nat).testBit v.val then 3 else 0
def cert1034 : CliqueCertificate (Fin 120) := .color 4 colors1034
theorem checked1034 : checkClique O c1035 5 cert1034 = true := by
  decide +kernel
#print axioms checked1034
def cert1035 : CliqueCertificate (Fin 120) := .split 23 cert1033 cert1034
theorem checked1035 : checkClique O c1033 5 cert1035 = true := by
  apply checkClique_split_literal O c1033 c1034 c1035 23 4 cert1033 cert1034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1033
  · exact checked1034
#print axioms checked1035
def cert1036 : CliqueCertificate (Fin 120) := .split 22 cert1032 cert1035
theorem checked1036 : checkClique O c1031 5 cert1036 = true := by
  apply checkClique_split_literal O c1031 c1032 c1033 22 4 cert1032 cert1035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1032
  · exact checked1035
#print axioms checked1036
def cert1037 : CliqueCertificate (Fin 120) := .split 19 cert1031 cert1036
theorem checked1037 : checkClique O c1029 5 cert1037 = true := by
  apply checkClique_split_literal O c1029 c1030 c1031 19 4 cert1031 cert1036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1031
  · exact checked1036
#print axioms checked1037
def cert1038 : CliqueCertificate (Fin 120) := .split 17 cert1030 cert1037
theorem checked1038 : checkClique O c1027 5 cert1038 = true := by
  apply checkClique_split_literal O c1027 c1028 c1029 17 4 cert1030 cert1037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1030
  · exact checked1037
#print axioms checked1038
def cert1039 : CliqueCertificate (Fin 120) := .split 16 cert1029 cert1038
theorem checked1039 : checkClique O c1025 5 cert1039 = true := by
  apply checkClique_split_literal O c1025 c1026 c1027 16 4 cert1029 cert1038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1029
  · exact checked1038
#print axioms checked1039
def cert1040 : CliqueCertificate (Fin 120) := .split 12 cert1028 cert1039
theorem checked1040 : checkClique O c1023 5 cert1040 = true := by
  apply checkClique_split_literal O c1023 c1024 c1025 12 4 cert1028 cert1039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1028
  · exact checked1039
#print axioms checked1040
def cert1041 : CliqueCertificate (Fin 120) := .split 11 cert1027 cert1040
theorem checked1041 : checkClique O c1021 5 cert1041 = true := by
  apply checkClique_split_literal O c1021 c1022 c1023 11 4 cert1027 cert1040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1027
  · exact checked1040
#print axioms checked1041
def cert1042 : CliqueCertificate (Fin 120) := .split 3 cert1026 cert1041
theorem checked1042 : checkClique O c1019 5 cert1042 = true := by
  apply checkClique_split_literal O c1019 c1020 c1021 3 4 cert1026 cert1041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1026
  · exact checked1041
#print axioms checked1042
def cert1043 : CliqueCertificate (Fin 120) := .split 1 cert1025 cert1042
theorem checked1043 : checkClique O c1017 5 cert1043 = true := by
  apply checkClique_split_literal O c1017 c1018 c1019 1 4 cert1025 cert1042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1025
  · exact checked1042
#print axioms checked1043
def cert1044 : CliqueCertificate (Fin 120) := .split 0 cert1024 cert1043
theorem checked1044 : checkClique O c1015 5 cert1044 = true := by
  apply checkClique_split_literal O c1015 c1016 c1017 0 4 cert1024 cert1043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1024
  · exact checked1043
#print axioms checked1044
def cert1045 : PairCertificate (Fin 120) := .cross cert1044
theorem checked1045 : checkPair O U c6 c1015 0 cert1045 = true := by
  exact checked1044
#print axioms checked1045
def cert1046 : PairCertificate (Fin 120) := .first .size
theorem checked1046 : checkPair O U c6 c1014 1 cert1046 = true := by
  decide +kernel
#print axioms checked1046
def cert1047 : PairCertificate (Fin 120) := .split 105 cert1045 cert1046
theorem checked1047 : checkPair O U c978 c1014 1 cert1047 = true := by
  apply checkPair_split_literal O U c978 c1014 c6 c1015 c6 105 0 cert1045 cert1046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1045
  · exact checked1046
#print axioms checked1047
def cert1048 : PairCertificate (Fin 120) := .first .size
theorem checked1048 : checkPair O U c978 c1013 2 cert1048 = true := by
  decide +kernel
#print axioms checked1048
def cert1049 : PairCertificate (Fin 120) := .split 97 cert1047 cert1048
theorem checked1049 : checkPair O U c976 c1013 2 cert1049 = true := by
  apply checkPair_split_literal O U c976 c1013 c978 c1014 c978 97 1 cert1047 cert1048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1047
  · exact checked1048
#print axioms checked1049
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
