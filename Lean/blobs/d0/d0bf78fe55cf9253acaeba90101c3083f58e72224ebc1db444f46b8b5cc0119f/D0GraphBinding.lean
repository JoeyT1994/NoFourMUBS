import D0GraphSplitChecks
import PhysicalGraph
import D0GraphRows000
import D0GraphRows010
import D0GraphRows020
import D0GraphRows030
import D0GraphRows040
import D0GraphRows050
import D0GraphRows060
import D0GraphRows070
import D0GraphRows080
import D0GraphRows090
import D0GraphRows100
import D0GraphRows110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype
theorem all_orth_rows : ∀ i j : Fin 120,
    IntegerIntervals.orthPossible 16 (zBoxes i) (zBoxes j) = O i j := by
  intro i j
  fin_cases i
  · exact orth_row_0 j
  · exact orth_row_1 j
  · exact orth_row_2 j
  · exact orth_row_3 j
  · exact orth_row_4 j
  · exact orth_row_5 j
  · exact orth_row_6 j
  · exact orth_row_7 j
  · exact orth_row_8 j
  · exact orth_row_9 j
  · exact orth_row_10 j
  · exact orth_row_11 j
  · exact orth_row_12 j
  · exact orth_row_13 j
  · exact orth_row_14 j
  · exact orth_row_15 j
  · exact orth_row_16 j
  · exact orth_row_17 j
  · exact orth_row_18 j
  · exact orth_row_19 j
  · exact orth_row_20 j
  · exact orth_row_21 j
  · exact orth_row_22 j
  · exact orth_row_23 j
  · exact orth_row_24 j
  · exact orth_row_25 j
  · exact orth_row_26 j
  · exact orth_row_27 j
  · exact orth_row_28 j
  · exact orth_row_29 j
  · exact orth_row_30 j
  · exact orth_row_31 j
  · exact orth_row_32 j
  · exact orth_row_33 j
  · exact orth_row_34 j
  · exact orth_row_35 j
  · exact orth_row_36 j
  · exact orth_row_37 j
  · exact orth_row_38 j
  · exact orth_row_39 j
  · exact orth_row_40 j
  · exact orth_row_41 j
  · exact orth_row_42 j
  · exact orth_row_43 j
  · exact orth_row_44 j
  · exact orth_row_45 j
  · exact orth_row_46 j
  · exact orth_row_47 j
  · exact orth_row_48 j
  · exact orth_row_49 j
  · exact orth_row_50 j
  · exact orth_row_51 j
  · exact orth_row_52 j
  · exact orth_row_53 j
  · exact orth_row_54 j
  · exact orth_row_55 j
  · exact orth_row_56 j
  · exact orth_row_57 j
  · exact orth_row_58 j
  · exact orth_row_59 j
  · exact orth_row_60 j
  · exact orth_row_61 j
  · exact orth_row_62 j
  · exact orth_row_63 j
  · exact orth_row_64 j
  · exact orth_row_65 j
  · exact orth_row_66 j
  · exact orth_row_67 j
  · exact orth_row_68 j
  · exact orth_row_69 j
  · exact orth_row_70 j
  · exact orth_row_71 j
  · exact orth_row_72 j
  · exact orth_row_73 j
  · exact orth_row_74 j
  · exact orth_row_75 j
  · exact orth_row_76 j
  · exact orth_row_77 j
  · exact orth_row_78 j
  · exact orth_row_79 j
  · exact orth_row_80 j
  · exact orth_row_81 j
  · exact orth_row_82 j
  · exact orth_row_83 j
  · exact orth_row_84 j
  · exact orth_row_85 j
  · exact orth_row_86 j
  · exact orth_row_87 j
  · exact orth_row_88 j
  · exact orth_row_89 j
  · exact orth_row_90 j
  · exact orth_row_91 j
  · exact orth_row_92 j
  · exact orth_row_93 j
  · exact orth_row_94 j
  · exact orth_row_95 j
  · exact orth_row_96 j
  · exact orth_row_97 j
  · exact orth_row_98 j
  · exact orth_row_99 j
  · exact orth_row_100 j
  · exact orth_row_101 j
  · exact orth_row_102 j
  · exact orth_row_103 j
  · exact orth_row_104 j
  · exact orth_row_105 j
  · exact orth_row_106 j
  · exact orth_row_107 j
  · exact orth_row_108 j
  · exact orth_row_109 j
  · exact orth_row_110 j
  · exact orth_row_111 j
  · exact orth_row_112 j
  · exact orth_row_113 j
  · exact orth_row_114 j
  · exact orth_row_115 j
  · exact orth_row_116 j
  · exact orth_row_117 j
  · exact orth_row_118 j
  · exact orth_row_119 j
theorem all_unbiased_rows : ∀ i j : Fin 120,
    IntegerIntervals.unbiasedPossible 16 (zBoxes i) (zBoxes j) = U i j := by
  intro i j
  fin_cases i
  · exact unbiased_row_0 j
  · exact unbiased_row_1 j
  · exact unbiased_row_2 j
  · exact unbiased_row_3 j
  · exact unbiased_row_4 j
  · exact unbiased_row_5 j
  · exact unbiased_row_6 j
  · exact unbiased_row_7 j
  · exact unbiased_row_8 j
  · exact unbiased_row_9 j
  · exact unbiased_row_10 j
  · exact unbiased_row_11 j
  · exact unbiased_row_12 j
  · exact unbiased_row_13 j
  · exact unbiased_row_14 j
  · exact unbiased_row_15 j
  · exact unbiased_row_16 j
  · exact unbiased_row_17 j
  · exact unbiased_row_18 j
  · exact unbiased_row_19 j
  · exact unbiased_row_20 j
  · exact unbiased_row_21 j
  · exact unbiased_row_22 j
  · exact unbiased_row_23 j
  · exact unbiased_row_24 j
  · exact unbiased_row_25 j
  · exact unbiased_row_26 j
  · exact unbiased_row_27 j
  · exact unbiased_row_28 j
  · exact unbiased_row_29 j
  · exact unbiased_row_30 j
  · exact unbiased_row_31 j
  · exact unbiased_row_32 j
  · exact unbiased_row_33 j
  · exact unbiased_row_34 j
  · exact unbiased_row_35 j
  · exact unbiased_row_36 j
  · exact unbiased_row_37 j
  · exact unbiased_row_38 j
  · exact unbiased_row_39 j
  · exact unbiased_row_40 j
  · exact unbiased_row_41 j
  · exact unbiased_row_42 j
  · exact unbiased_row_43 j
  · exact unbiased_row_44 j
  · exact unbiased_row_45 j
  · exact unbiased_row_46 j
  · exact unbiased_row_47 j
  · exact unbiased_row_48 j
  · exact unbiased_row_49 j
  · exact unbiased_row_50 j
  · exact unbiased_row_51 j
  · exact unbiased_row_52 j
  · exact unbiased_row_53 j
  · exact unbiased_row_54 j
  · exact unbiased_row_55 j
  · exact unbiased_row_56 j
  · exact unbiased_row_57 j
  · exact unbiased_row_58 j
  · exact unbiased_row_59 j
  · exact unbiased_row_60 j
  · exact unbiased_row_61 j
  · exact unbiased_row_62 j
  · exact unbiased_row_63 j
  · exact unbiased_row_64 j
  · exact unbiased_row_65 j
  · exact unbiased_row_66 j
  · exact unbiased_row_67 j
  · exact unbiased_row_68 j
  · exact unbiased_row_69 j
  · exact unbiased_row_70 j
  · exact unbiased_row_71 j
  · exact unbiased_row_72 j
  · exact unbiased_row_73 j
  · exact unbiased_row_74 j
  · exact unbiased_row_75 j
  · exact unbiased_row_76 j
  · exact unbiased_row_77 j
  · exact unbiased_row_78 j
  · exact unbiased_row_79 j
  · exact unbiased_row_80 j
  · exact unbiased_row_81 j
  · exact unbiased_row_82 j
  · exact unbiased_row_83 j
  · exact unbiased_row_84 j
  · exact unbiased_row_85 j
  · exact unbiased_row_86 j
  · exact unbiased_row_87 j
  · exact unbiased_row_88 j
  · exact unbiased_row_89 j
  · exact unbiased_row_90 j
  · exact unbiased_row_91 j
  · exact unbiased_row_92 j
  · exact unbiased_row_93 j
  · exact unbiased_row_94 j
  · exact unbiased_row_95 j
  · exact unbiased_row_96 j
  · exact unbiased_row_97 j
  · exact unbiased_row_98 j
  · exact unbiased_row_99 j
  · exact unbiased_row_100 j
  · exact unbiased_row_101 j
  · exact unbiased_row_102 j
  · exact unbiased_row_103 j
  · exact unbiased_row_104 j
  · exact unbiased_row_105 j
  · exact unbiased_row_106 j
  · exact unbiased_row_107 j
  · exact unbiased_row_108 j
  · exact unbiased_row_109 j
  · exact unbiased_row_110 j
  · exact unbiased_row_111 j
  · exact unbiased_row_112 j
  · exact unbiased_row_113 j
  · exact unbiased_row_114 j
  · exact unbiased_row_115 j
  · exact unbiased_row_116 j
  · exact unbiased_row_117 j
  · exact unbiased_row_118 j
  · exact unbiased_row_119 j
theorem all_boxes_small : ∀ v : Fin 120,
    IntervalKernel.smallBoxCheck (boxes v) = true := by
  decide +kernel
theorem sound_stored_graph : SoundRayGraph boxes O U := by
  constructor
  · intro i j z w _ _ hz hw ho
    have h := IntegerIntervals.orthPossible_sound (S := 16) (by decide) hz hw ho
    rwa [all_orth_rows i j] at h
  · intro i j z w _ _ hz hw ho
    have h := IntegerIntervals.unbiasedPossible_sound (S := 16) (by decide) hz hw ho
    rwa [all_unbiased_rows i j] at h
theorem no_raw_five_pair_of_cover {H : BasisMatrix}
    (hcover : CompleteRayCover H boxes) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  apply checked_pair_excludes_raw_five_pair hcover
    (fun v => IntervalKernel.smallBoxCheck_sound (all_boxes_small v))
    sound_stored_graph LiteralGraph.rootCert LiteralGraph.pair_refutation_checks
#print axioms all_orth_rows
#print axioms all_unbiased_rows
#print axioms all_boxes_small
#print axioms sound_stored_graph
#print axioms no_raw_five_pair_of_cover
end Mub6.Numerical.GraphKernel.D0Prototype
