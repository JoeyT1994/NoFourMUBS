import D0GraphStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors750 (v : Fin 120) : Nat := if (162259276830393955021228953829378 : Nat).testBit v.val then 0 else if (4835740171946664117927936 : Nat).testBit v.val then 1 else 0
def cert750 : CliqueCertificate (Fin 120) := .color 2 colors750
theorem checked750 : checkClique O c763 4 cert750 = true := by
  decide +kernel
#print axioms checked750
def colors751 (v : Fin 120) : Nat := if (325152379563003751291288753274880 : Nat).testBit v.val then 0 else 0
def cert751 : CliqueCertificate (Fin 120) := .color 1 colors751
theorem checked751 : checkClique O c765 4 cert751 = true := by
  decide +kernel
#print axioms checked751
def colors752 (v : Fin 120) : Nat := if (332631517499887394952735548155887624 : Nat).testBit v.val then 0 else if (1208925819614629174706176 : Nat).testBit v.val then 1 else 0
def cert752 : CliqueCertificate (Fin 120) := .color 2 colors752
theorem checked752 : checkClique O c767 4 cert752 = true := by
  decide +kernel
#print axioms checked752
def colors753 (v : Fin 120) : Nat := if (166153499473115664709101436524298240 : Nat).testBit v.val then 0 else if (18889465931478580854784 : Nat).testBit v.val then 1 else 0
def cert753 : CliqueCertificate (Fin 120) := .color 2 colors753
theorem checked753 : checkClique O c769 4 cert753 = true := by
  decide +kernel
#print axioms checked753
def colors754 (v : Fin 120) : Nat := if (182541686432901927304265390358656 : Nat).testBit v.val then 0 else 0
def cert754 : CliqueCertificate (Fin 120) := .color 1 colors754
theorem checked754 : checkClique O c771 4 cert754 = true := by
  decide +kernel
#print axioms checked754
def colors755 (v : Fin 120) : Nat := if (166153499473416715572955985022550016 : Nat).testBit v.val then 0 else if (19342813113834066795298816 : Nat).testBit v.val then 1 else 0
def cert755 : CliqueCertificate (Fin 120) := .color 2 colors755
theorem checked755 : checkClique O c773 4 cert755 = true := by
  decide +kernel
#print axioms checked755
def colors756 (v : Fin 120) : Nat := if (604462914319856336633856 : Nat).testBit v.val then 0 else if (332306998946228968225951765070086144 : Nat).testBit v.val then 1 else 0
def cert756 : CliqueCertificate (Fin 120) := .color 2 colors756
theorem checked756 : checkClique O c775 4 cert756 = true := by
  decide +kernel
#print axioms checked756
def colors757 (v : Fin 120) : Nat := if (302231456029626994262016 : Nat).testBit v.val then 0 else 0
def cert757 : CliqueCertificate (Fin 120) := .color 1 colors757
theorem checked757 : checkClique O c777 4 cert757 = true := by
  decide +kernel
#print axioms checked757
def colors758 (v : Fin 120) : Nat := if (9671406556917179430731776 : Nat).testBit v.val then 0 else 0
def cert758 : CliqueCertificate (Fin 120) := .color 1 colors758
theorem checked758 : checkClique O c779 4 cert758 = true := by
  decide +kernel
#print axioms checked758
def colors759 (v : Fin 120) : Nat := if (1227815285547208349319168 : Nat).testBit v.val then 0 else if (633825300114114700748351602688 : Nat).testBit v.val then 1 else 0
def cert759 : CliqueCertificate (Fin 120) := .color 2 colors759
theorem checked759 : checkClique O c781 4 cert759 = true := by
  decide +kernel
#print axioms checked759
def cert760 : CliqueCertificate (Fin 120) := .size
theorem checked760 : checkClique O c783 4 cert760 = true := by
  decide +kernel
#print axioms checked760
def cert761 : CliqueCertificate (Fin 120) := .size
theorem checked761 : checkClique O c785 4 cert761 = true := by
  decide +kernel
#print axioms checked761
def cert762 : CliqueCertificate (Fin 120) := .size
theorem checked762 : checkClique O c787 4 cert762 = true := by
  decide +kernel
#print axioms checked762
def colors763 (v : Fin 120) : Nat := if (605643501437927603306496 : Nat).testBit v.val then 0 else 0
def cert763 : CliqueCertificate (Fin 120) := .color 1 colors763
theorem checked763 : checkClique O c789 4 cert763 = true := by
  decide +kernel
#print axioms checked763
def colors764 (v : Fin 120) : Nat := if (20282410529235506142361862275072 : Nat).testBit v.val then 0 else if (166315758764452024796853112422793216 : Nat).testBit v.val then 1 else if (332306998966780707160526360946933760 : Nat).testBit v.val then 2 else if (325152378958540841483904372178944 : Nat).testBit v.val then 3 else 0
def cert764 : CliqueCertificate (Fin 120) := .color 4 colors764
theorem checked764 : checkClique O c790 5 cert764 = true := by
  decide +kernel
#print axioms checked764
def cert765 : CliqueCertificate (Fin 120) := .split 35 cert763 cert764
theorem checked765 : checkClique O c788 5 cert765 = true := by
  apply checkClique_split_literal O c788 c789 c790 35 4 cert763 cert764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked763
  · exact checked764
#print axioms checked765
def cert766 : CliqueCertificate (Fin 120) := .split 33 cert762 cert765
theorem checked766 : checkClique O c786 5 cert766 = true := by
  apply checkClique_split_literal O c786 c787 c788 33 4 cert762 cert765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked762
  · exact checked765
#print axioms checked766
def cert767 : CliqueCertificate (Fin 120) := .split 30 cert761 cert766
theorem checked767 : checkClique O c784 5 cert767 = true := by
  apply checkClique_split_literal O c784 c785 c786 30 4 cert761 cert766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked761
  · exact checked766
#print axioms checked767
def cert768 : CliqueCertificate (Fin 120) := .split 23 cert760 cert767
theorem checked768 : checkClique O c782 5 cert768 = true := by
  apply checkClique_split_literal O c782 c783 c784 23 4 cert760 cert767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked760
  · exact checked767
#print axioms checked768
def cert769 : CliqueCertificate (Fin 120) := .split 22 cert759 cert768
theorem checked769 : checkClique O c780 5 cert769 = true := by
  apply checkClique_split_literal O c780 c781 c782 22 4 cert759 cert768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked759
  · exact checked768
#print axioms checked769
def cert770 : CliqueCertificate (Fin 120) := .split 19 cert758 cert769
theorem checked770 : checkClique O c778 5 cert770 = true := by
  apply checkClique_split_literal O c778 c779 c780 19 4 cert758 cert769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked758
  · exact checked769
#print axioms checked770
def cert771 : CliqueCertificate (Fin 120) := .split 18 cert757 cert770
theorem checked771 : checkClique O c776 5 cert771 = true := by
  apply checkClique_split_literal O c776 c777 c778 18 4 cert757 cert770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked757
  · exact checked770
#print axioms checked771
def cert772 : CliqueCertificate (Fin 120) := .split 16 cert756 cert771
theorem checked772 : checkClique O c774 5 cert772 = true := by
  apply checkClique_split_literal O c774 c775 c776 16 4 cert756 cert771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked756
  · exact checked771
#print axioms checked772
def cert773 : CliqueCertificate (Fin 120) := .split 7 cert755 cert772
theorem checked773 : checkClique O c772 5 cert773 = true := by
  apply checkClique_split_literal O c772 c773 c774 7 4 cert755 cert772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked755
  · exact checked772
#print axioms checked773
def cert774 : CliqueCertificate (Fin 120) := .split 4 cert754 cert773
theorem checked774 : checkClique O c770 5 cert774 = true := by
  apply checkClique_split_literal O c770 c771 c772 4 4 cert754 cert773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked754
  · exact checked773
#print axioms checked774
def cert775 : CliqueCertificate (Fin 120) := .split 3 cert753 cert774
theorem checked775 : checkClique O c768 5 cert775 = true := by
  apply checkClique_split_literal O c768 c769 c770 3 4 cert753 cert774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked753
  · exact checked774
#print axioms checked775
def cert776 : CliqueCertificate (Fin 120) := .split 2 cert752 cert775
theorem checked776 : checkClique O c766 5 cert776 = true := by
  apply checkClique_split_literal O c766 c767 c768 2 4 cert752 cert775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked752
  · exact checked775
#print axioms checked776
def cert777 : CliqueCertificate (Fin 120) := .split 1 cert751 cert776
theorem checked777 : checkClique O c764 5 cert777 = true := by
  apply checkClique_split_literal O c764 c765 c766 1 4 cert751 cert776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked751
  · exact checked776
#print axioms checked777
def cert778 : CliqueCertificate (Fin 120) := .split 0 cert750 cert777
theorem checked778 : checkClique O c762 5 cert778 = true := by
  apply checkClique_split_literal O c762 c763 c764 0 4 cert750 cert777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked750
  · exact checked777
#print axioms checked778
def cert779 : PairCertificate (Fin 120) := .cross cert778
theorem checked779 : checkPair O U c761 c762 0 cert779 = true := by
  exact checked778
#print axioms checked779
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
