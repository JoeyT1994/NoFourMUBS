import KernelAtlas.WholeBall.Fourier2299QuarticRealData
import KernelAtlas.WholeBall.Fourier2299QuarticImagData
import KernelAtlas.WholeBall.MatrixColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def quarticPick : Fin 35 → Fin 256 := fun j => (#[0, 1, 2, 3, 5, 6, 7, 10, 11, 15, 21, 22, 23, 26, 27, 31, 42, 43, 47, 63, 85, 86, 87, 90, 91, 95, 106, 107, 111, 127, 170, 171, 175, 191, 255] : Array (Fin 256))[j.val]!
def quarticExpand : Fin 256 → Fin 35 := fun j => (#[0, 1, 2, 3, 1, 4, 5, 6, 2, 5, 7, 8, 3, 6, 8, 9, 1, 4, 5, 6, 4, 10, 11, 12, 5, 11, 13, 14, 6, 12, 14, 15, 2, 5, 7, 8, 5, 11, 13, 14, 7, 13, 16, 17, 8, 14, 17, 18, 3, 6, 8, 9, 6, 12, 14, 15, 8, 14, 17, 18, 9, 15, 18, 19, 1, 4, 5, 6, 4, 10, 11, 12, 5, 11, 13, 14, 6, 12, 14, 15, 4, 10, 11, 12, 10, 20, 21, 22, 11, 21, 23, 24, 12, 22, 24, 25, 5, 11, 13, 14, 11, 21, 23, 24, 13, 23, 26, 27, 14, 24, 27, 28, 6, 12, 14, 15, 12, 22, 24, 25, 14, 24, 27, 28, 15, 25, 28, 29, 2, 5, 7, 8, 5, 11, 13, 14, 7, 13, 16, 17, 8, 14, 17, 18, 5, 11, 13, 14, 11, 21, 23, 24, 13, 23, 26, 27, 14, 24, 27, 28, 7, 13, 16, 17, 13, 23, 26, 27, 16, 26, 30, 31, 17, 27, 31, 32, 8, 14, 17, 18, 14, 24, 27, 28, 17, 27, 31, 32, 18, 28, 32, 33, 3, 6, 8, 9, 6, 12, 14, 15, 8, 14, 17, 18, 9, 15, 18, 19, 6, 12, 14, 15, 12, 22, 24, 25, 14, 24, 27, 28, 15, 25, 28, 29, 8, 14, 17, 18, 14, 24, 27, 28, 17, 27, 31, 32, 18, 28, 32, 33, 9, 15, 18, 19, 15, 25, 28, 29, 18, 28, 32, 33, 19, 29, 33, 34] : Array (Fin 35))[j.val]!

theorem quarticReal_columns_0 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 0 = true := by decide +kernel

theorem quarticReal_columns_1 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 1 = true := by decide +kernel

theorem quarticReal_columns_2 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 2 = true := by decide +kernel

theorem quarticReal_columns_3 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 3 = true := by decide +kernel

theorem quarticReal_columns_4 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 4 = true := by decide +kernel

theorem quarticReal_columns_5 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 5 = true := by decide +kernel

theorem quarticReal_columns_6 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 6 = true := by decide +kernel

theorem quarticReal_columns_7 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 7 = true := by decide +kernel

theorem quarticReal_columns_8 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 8 = true := by decide +kernel

theorem quarticReal_columns_9 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 9 = true := by decide +kernel

theorem quarticReal_columns_10 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 10 = true := by decide +kernel

theorem quarticReal_columns_11 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 11 = true := by decide +kernel

theorem quarticReal_columns_12 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 12 = true := by decide +kernel

theorem quarticReal_columns_13 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 13 = true := by decide +kernel

theorem quarticReal_columns_14 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 14 = true := by decide +kernel

theorem quarticReal_columns_15 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 15 = true := by decide +kernel

theorem quarticReal_columns_16 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 16 = true := by decide +kernel

theorem quarticReal_columns_17 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 17 = true := by decide +kernel

theorem quarticReal_columns_18 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 18 = true := by decide +kernel

theorem quarticReal_columns_19 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 19 = true := by decide +kernel

theorem quarticReal_columns_20 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 20 = true := by decide +kernel

theorem quarticReal_columns_21 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 21 = true := by decide +kernel

theorem quarticReal_columns_22 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 22 = true := by decide +kernel

theorem quarticReal_columns_23 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 23 = true := by decide +kernel

theorem quarticReal_columns_24 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 24 = true := by decide +kernel

theorem quarticReal_columns_25 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 25 = true := by decide +kernel

theorem quarticReal_columns_26 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 26 = true := by decide +kernel

theorem quarticReal_columns_27 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 27 = true := by decide +kernel

theorem quarticReal_columns_28 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 28 = true := by decide +kernel

theorem quarticReal_columns_29 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 29 = true := by decide +kernel

theorem quarticReal_columns_30 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 30 = true := by decide +kernel

theorem quarticReal_columns_31 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 31 = true := by decide +kernel

theorem quarticReal_columns_32 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 32 = true := by decide +kernel

theorem quarticReal_columns_33 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 33 = true := by decide +kernel

theorem quarticReal_columns_34 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 34 = true := by decide +kernel

theorem quarticReal_columns_35 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 35 = true := by decide +kernel

theorem quarticReal_columns_36 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 36 = true := by decide +kernel

theorem quarticReal_columns_37 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 37 = true := by decide +kernel

theorem quarticReal_columns_38 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 38 = true := by decide +kernel

theorem quarticReal_columns_39 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 39 = true := by decide +kernel

theorem quarticReal_columns_40 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 40 = true := by decide +kernel

theorem quarticReal_columns_41 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 41 = true := by decide +kernel

theorem quarticReal_columns_42 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 42 = true := by decide +kernel

theorem quarticReal_columns_43 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 43 = true := by decide +kernel

theorem quarticReal_columns_44 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 44 = true := by decide +kernel

theorem quarticReal_columns_45 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 45 = true := by decide +kernel

theorem quarticReal_columns_46 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 46 = true := by decide +kernel

theorem quarticReal_columns_47 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 47 = true := by decide +kernel

theorem quarticReal_columns_48 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 48 = true := by decide +kernel

theorem quarticReal_columns_49 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 49 = true := by decide +kernel

theorem quarticReal_columns_50 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 50 = true := by decide +kernel

theorem quarticReal_columns_51 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 51 = true := by decide +kernel

theorem quarticReal_columns_52 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 52 = true := by decide +kernel

theorem quarticReal_columns_53 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 53 = true := by decide +kernel

theorem quarticReal_columns_54 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 54 = true := by decide +kernel

theorem quarticReal_columns_55 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 55 = true := by decide +kernel

theorem quarticReal_columns_56 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 56 = true := by decide +kernel

theorem quarticReal_columns_57 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 57 = true := by decide +kernel

theorem quarticReal_columns_58 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 58 = true := by decide +kernel

theorem quarticReal_columns_59 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 59 = true := by decide +kernel

theorem quarticReal_columns_60 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 60 = true := by decide +kernel

theorem quarticReal_columns_61 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 61 = true := by decide +kernel

theorem quarticReal_columns_62 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 62 = true := by decide +kernel

theorem quarticReal_columns_63 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 63 = true := by decide +kernel

theorem quarticReal_columns_64 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 64 = true := by decide +kernel

theorem quarticReal_columns_65 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 65 = true := by decide +kernel

theorem quarticReal_columns_66 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 66 = true := by decide +kernel

theorem quarticReal_columns_67 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 67 = true := by decide +kernel

theorem quarticReal_columns_68 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 68 = true := by decide +kernel

theorem quarticReal_columns_69 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 69 = true := by decide +kernel

theorem quarticReal_columns_70 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 70 = true := by decide +kernel

theorem quarticReal_columns_71 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 71 = true := by decide +kernel

theorem quarticReal_columns_72 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 72 = true := by decide +kernel

theorem quarticReal_columns_73 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 73 = true := by decide +kernel

theorem quarticReal_columns_74 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 74 = true := by decide +kernel

theorem quarticReal_columns_75 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 75 = true := by decide +kernel

theorem quarticReal_columns_76 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 76 = true := by decide +kernel

theorem quarticReal_columns_77 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 77 = true := by decide +kernel

theorem quarticReal_columns_78 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 78 = true := by decide +kernel

theorem quarticReal_columns_79 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 79 = true := by decide +kernel

theorem quarticReal_columns_80 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 80 = true := by decide +kernel

theorem quarticReal_columns_81 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 81 = true := by decide +kernel

theorem quarticReal_columns_82 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 82 = true := by decide +kernel

theorem quarticReal_columns_83 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 83 = true := by decide +kernel

theorem quarticReal_columns_84 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 84 = true := by decide +kernel

theorem quarticReal_columns_85 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 85 = true := by decide +kernel

theorem quarticReal_columns_86 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 86 = true := by decide +kernel

theorem quarticReal_columns_87 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 87 = true := by decide +kernel

theorem quarticReal_columns_88 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 88 = true := by decide +kernel

theorem quarticReal_columns_89 : ((polyQuarticReal.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticReal 89 = true := by decide +kernel

theorem quarticReal_columns : ((polyQuarticReal.columns quarticPick).columns quarticExpand) = polyQuarticReal := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact quarticReal_columns_0
  · exact quarticReal_columns_1
  · exact quarticReal_columns_2
  · exact quarticReal_columns_3
  · exact quarticReal_columns_4
  · exact quarticReal_columns_5
  · exact quarticReal_columns_6
  · exact quarticReal_columns_7
  · exact quarticReal_columns_8
  · exact quarticReal_columns_9
  · exact quarticReal_columns_10
  · exact quarticReal_columns_11
  · exact quarticReal_columns_12
  · exact quarticReal_columns_13
  · exact quarticReal_columns_14
  · exact quarticReal_columns_15
  · exact quarticReal_columns_16
  · exact quarticReal_columns_17
  · exact quarticReal_columns_18
  · exact quarticReal_columns_19
  · exact quarticReal_columns_20
  · exact quarticReal_columns_21
  · exact quarticReal_columns_22
  · exact quarticReal_columns_23
  · exact quarticReal_columns_24
  · exact quarticReal_columns_25
  · exact quarticReal_columns_26
  · exact quarticReal_columns_27
  · exact quarticReal_columns_28
  · exact quarticReal_columns_29
  · exact quarticReal_columns_30
  · exact quarticReal_columns_31
  · exact quarticReal_columns_32
  · exact quarticReal_columns_33
  · exact quarticReal_columns_34
  · exact quarticReal_columns_35
  · exact quarticReal_columns_36
  · exact quarticReal_columns_37
  · exact quarticReal_columns_38
  · exact quarticReal_columns_39
  · exact quarticReal_columns_40
  · exact quarticReal_columns_41
  · exact quarticReal_columns_42
  · exact quarticReal_columns_43
  · exact quarticReal_columns_44
  · exact quarticReal_columns_45
  · exact quarticReal_columns_46
  · exact quarticReal_columns_47
  · exact quarticReal_columns_48
  · exact quarticReal_columns_49
  · exact quarticReal_columns_50
  · exact quarticReal_columns_51
  · exact quarticReal_columns_52
  · exact quarticReal_columns_53
  · exact quarticReal_columns_54
  · exact quarticReal_columns_55
  · exact quarticReal_columns_56
  · exact quarticReal_columns_57
  · exact quarticReal_columns_58
  · exact quarticReal_columns_59
  · exact quarticReal_columns_60
  · exact quarticReal_columns_61
  · exact quarticReal_columns_62
  · exact quarticReal_columns_63
  · exact quarticReal_columns_64
  · exact quarticReal_columns_65
  · exact quarticReal_columns_66
  · exact quarticReal_columns_67
  · exact quarticReal_columns_68
  · exact quarticReal_columns_69
  · exact quarticReal_columns_70
  · exact quarticReal_columns_71
  · exact quarticReal_columns_72
  · exact quarticReal_columns_73
  · exact quarticReal_columns_74
  · exact quarticReal_columns_75
  · exact quarticReal_columns_76
  · exact quarticReal_columns_77
  · exact quarticReal_columns_78
  · exact quarticReal_columns_79
  · exact quarticReal_columns_80
  · exact quarticReal_columns_81
  · exact quarticReal_columns_82
  · exact quarticReal_columns_83
  · exact quarticReal_columns_84
  · exact quarticReal_columns_85
  · exact quarticReal_columns_86
  · exact quarticReal_columns_87
  · exact quarticReal_columns_88
  · exact quarticReal_columns_89

theorem quarticImag_columns_0 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 0 = true := by decide +kernel

theorem quarticImag_columns_1 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 1 = true := by decide +kernel

theorem quarticImag_columns_2 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 2 = true := by decide +kernel

theorem quarticImag_columns_3 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 3 = true := by decide +kernel

theorem quarticImag_columns_4 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 4 = true := by decide +kernel

theorem quarticImag_columns_5 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 5 = true := by decide +kernel

theorem quarticImag_columns_6 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 6 = true := by decide +kernel

theorem quarticImag_columns_7 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 7 = true := by decide +kernel

theorem quarticImag_columns_8 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 8 = true := by decide +kernel

theorem quarticImag_columns_9 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 9 = true := by decide +kernel

theorem quarticImag_columns_10 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 10 = true := by decide +kernel

theorem quarticImag_columns_11 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 11 = true := by decide +kernel

theorem quarticImag_columns_12 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 12 = true := by decide +kernel

theorem quarticImag_columns_13 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 13 = true := by decide +kernel

theorem quarticImag_columns_14 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 14 = true := by decide +kernel

theorem quarticImag_columns_15 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 15 = true := by decide +kernel

theorem quarticImag_columns_16 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 16 = true := by decide +kernel

theorem quarticImag_columns_17 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 17 = true := by decide +kernel

theorem quarticImag_columns_18 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 18 = true := by decide +kernel

theorem quarticImag_columns_19 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 19 = true := by decide +kernel

theorem quarticImag_columns_20 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 20 = true := by decide +kernel

theorem quarticImag_columns_21 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 21 = true := by decide +kernel

theorem quarticImag_columns_22 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 22 = true := by decide +kernel

theorem quarticImag_columns_23 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 23 = true := by decide +kernel

theorem quarticImag_columns_24 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 24 = true := by decide +kernel

theorem quarticImag_columns_25 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 25 = true := by decide +kernel

theorem quarticImag_columns_26 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 26 = true := by decide +kernel

theorem quarticImag_columns_27 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 27 = true := by decide +kernel

theorem quarticImag_columns_28 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 28 = true := by decide +kernel

theorem quarticImag_columns_29 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 29 = true := by decide +kernel

theorem quarticImag_columns_30 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 30 = true := by decide +kernel

theorem quarticImag_columns_31 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 31 = true := by decide +kernel

theorem quarticImag_columns_32 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 32 = true := by decide +kernel

theorem quarticImag_columns_33 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 33 = true := by decide +kernel

theorem quarticImag_columns_34 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 34 = true := by decide +kernel

theorem quarticImag_columns_35 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 35 = true := by decide +kernel

theorem quarticImag_columns_36 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 36 = true := by decide +kernel

theorem quarticImag_columns_37 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 37 = true := by decide +kernel

theorem quarticImag_columns_38 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 38 = true := by decide +kernel

theorem quarticImag_columns_39 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 39 = true := by decide +kernel

theorem quarticImag_columns_40 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 40 = true := by decide +kernel

theorem quarticImag_columns_41 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 41 = true := by decide +kernel

theorem quarticImag_columns_42 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 42 = true := by decide +kernel

theorem quarticImag_columns_43 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 43 = true := by decide +kernel

theorem quarticImag_columns_44 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 44 = true := by decide +kernel

theorem quarticImag_columns_45 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 45 = true := by decide +kernel

theorem quarticImag_columns_46 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 46 = true := by decide +kernel

theorem quarticImag_columns_47 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 47 = true := by decide +kernel

theorem quarticImag_columns_48 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 48 = true := by decide +kernel

theorem quarticImag_columns_49 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 49 = true := by decide +kernel

theorem quarticImag_columns_50 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 50 = true := by decide +kernel

theorem quarticImag_columns_51 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 51 = true := by decide +kernel

theorem quarticImag_columns_52 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 52 = true := by decide +kernel

theorem quarticImag_columns_53 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 53 = true := by decide +kernel

theorem quarticImag_columns_54 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 54 = true := by decide +kernel

theorem quarticImag_columns_55 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 55 = true := by decide +kernel

theorem quarticImag_columns_56 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 56 = true := by decide +kernel

theorem quarticImag_columns_57 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 57 = true := by decide +kernel

theorem quarticImag_columns_58 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 58 = true := by decide +kernel

theorem quarticImag_columns_59 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 59 = true := by decide +kernel

theorem quarticImag_columns_60 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 60 = true := by decide +kernel

theorem quarticImag_columns_61 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 61 = true := by decide +kernel

theorem quarticImag_columns_62 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 62 = true := by decide +kernel

theorem quarticImag_columns_63 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 63 = true := by decide +kernel

theorem quarticImag_columns_64 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 64 = true := by decide +kernel

theorem quarticImag_columns_65 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 65 = true := by decide +kernel

theorem quarticImag_columns_66 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 66 = true := by decide +kernel

theorem quarticImag_columns_67 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 67 = true := by decide +kernel

theorem quarticImag_columns_68 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 68 = true := by decide +kernel

theorem quarticImag_columns_69 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 69 = true := by decide +kernel

theorem quarticImag_columns_70 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 70 = true := by decide +kernel

theorem quarticImag_columns_71 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 71 = true := by decide +kernel

theorem quarticImag_columns_72 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 72 = true := by decide +kernel

theorem quarticImag_columns_73 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 73 = true := by decide +kernel

theorem quarticImag_columns_74 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 74 = true := by decide +kernel

theorem quarticImag_columns_75 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 75 = true := by decide +kernel

theorem quarticImag_columns_76 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 76 = true := by decide +kernel

theorem quarticImag_columns_77 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 77 = true := by decide +kernel

theorem quarticImag_columns_78 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 78 = true := by decide +kernel

theorem quarticImag_columns_79 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 79 = true := by decide +kernel

theorem quarticImag_columns_80 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 80 = true := by decide +kernel

theorem quarticImag_columns_81 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 81 = true := by decide +kernel

theorem quarticImag_columns_82 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 82 = true := by decide +kernel

theorem quarticImag_columns_83 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 83 = true := by decide +kernel

theorem quarticImag_columns_84 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 84 = true := by decide +kernel

theorem quarticImag_columns_85 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 85 = true := by decide +kernel

theorem quarticImag_columns_86 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 86 = true := by decide +kernel

theorem quarticImag_columns_87 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 87 = true := by decide +kernel

theorem quarticImag_columns_88 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 88 = true := by decide +kernel

theorem quarticImag_columns_89 : ((polyQuarticImag.columns quarticPick).columns quarticExpand).exactRowCheck polyQuarticImag 89 = true := by decide +kernel

theorem quarticImag_columns : ((polyQuarticImag.columns quarticPick).columns quarticExpand) = polyQuarticImag := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact quarticImag_columns_0
  · exact quarticImag_columns_1
  · exact quarticImag_columns_2
  · exact quarticImag_columns_3
  · exact quarticImag_columns_4
  · exact quarticImag_columns_5
  · exact quarticImag_columns_6
  · exact quarticImag_columns_7
  · exact quarticImag_columns_8
  · exact quarticImag_columns_9
  · exact quarticImag_columns_10
  · exact quarticImag_columns_11
  · exact quarticImag_columns_12
  · exact quarticImag_columns_13
  · exact quarticImag_columns_14
  · exact quarticImag_columns_15
  · exact quarticImag_columns_16
  · exact quarticImag_columns_17
  · exact quarticImag_columns_18
  · exact quarticImag_columns_19
  · exact quarticImag_columns_20
  · exact quarticImag_columns_21
  · exact quarticImag_columns_22
  · exact quarticImag_columns_23
  · exact quarticImag_columns_24
  · exact quarticImag_columns_25
  · exact quarticImag_columns_26
  · exact quarticImag_columns_27
  · exact quarticImag_columns_28
  · exact quarticImag_columns_29
  · exact quarticImag_columns_30
  · exact quarticImag_columns_31
  · exact quarticImag_columns_32
  · exact quarticImag_columns_33
  · exact quarticImag_columns_34
  · exact quarticImag_columns_35
  · exact quarticImag_columns_36
  · exact quarticImag_columns_37
  · exact quarticImag_columns_38
  · exact quarticImag_columns_39
  · exact quarticImag_columns_40
  · exact quarticImag_columns_41
  · exact quarticImag_columns_42
  · exact quarticImag_columns_43
  · exact quarticImag_columns_44
  · exact quarticImag_columns_45
  · exact quarticImag_columns_46
  · exact quarticImag_columns_47
  · exact quarticImag_columns_48
  · exact quarticImag_columns_49
  · exact quarticImag_columns_50
  · exact quarticImag_columns_51
  · exact quarticImag_columns_52
  · exact quarticImag_columns_53
  · exact quarticImag_columns_54
  · exact quarticImag_columns_55
  · exact quarticImag_columns_56
  · exact quarticImag_columns_57
  · exact quarticImag_columns_58
  · exact quarticImag_columns_59
  · exact quarticImag_columns_60
  · exact quarticImag_columns_61
  · exact quarticImag_columns_62
  · exact quarticImag_columns_63
  · exact quarticImag_columns_64
  · exact quarticImag_columns_65
  · exact quarticImag_columns_66
  · exact quarticImag_columns_67
  · exact quarticImag_columns_68
  · exact quarticImag_columns_69
  · exact quarticImag_columns_70
  · exact quarticImag_columns_71
  · exact quarticImag_columns_72
  · exact quarticImag_columns_73
  · exact quarticImag_columns_74
  · exact quarticImag_columns_75
  · exact quarticImag_columns_76
  · exact quarticImag_columns_77
  · exact quarticImag_columns_78
  · exact quarticImag_columns_79
  · exact quarticImag_columns_80
  · exact quarticImag_columns_81
  · exact quarticImag_columns_82
  · exact quarticImag_columns_83
  · exact quarticImag_columns_84
  · exact quarticImag_columns_85
  · exact quarticImag_columns_86
  · exact quarticImag_columns_87
  · exact quarticImag_columns_88
  · exact quarticImag_columns_89

theorem quarticTarget_columns_0 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 0 = true := by decide +kernel

theorem quarticTarget_columns_1 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 1 = true := by decide +kernel

theorem quarticTarget_columns_2 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 2 = true := by decide +kernel

theorem quarticTarget_columns_3 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 3 = true := by decide +kernel

theorem quarticTarget_columns_4 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 4 = true := by decide +kernel

theorem quarticTarget_columns_5 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 5 = true := by decide +kernel

theorem quarticTarget_columns_6 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 6 = true := by decide +kernel

theorem quarticTarget_columns_7 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 7 = true := by decide +kernel

theorem quarticTarget_columns_8 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 8 = true := by decide +kernel

theorem quarticTarget_columns_9 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 9 = true := by decide +kernel

theorem quarticTarget_columns_10 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 10 = true := by decide +kernel

theorem quarticTarget_columns_11 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 11 = true := by decide +kernel

theorem quarticTarget_columns_12 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 12 = true := by decide +kernel

theorem quarticTarget_columns_13 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 13 = true := by decide +kernel

theorem quarticTarget_columns_14 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 14 = true := by decide +kernel

theorem quarticTarget_columns_15 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 15 = true := by decide +kernel

theorem quarticTarget_columns_16 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 16 = true := by decide +kernel

theorem quarticTarget_columns_17 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 17 = true := by decide +kernel

theorem quarticTarget_columns_18 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 18 = true := by decide +kernel

theorem quarticTarget_columns_19 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 19 = true := by decide +kernel

theorem quarticTarget_columns_20 : ((data.quartic.columns quarticPick).columns quarticExpand).exactRowCheck data.quartic 20 = true := by decide +kernel

theorem quarticTarget_columns : ((data.quartic.columns quarticPick).columns quarticExpand) = data.quartic := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact quarticTarget_columns_0
  · exact quarticTarget_columns_1
  · exact quarticTarget_columns_2
  · exact quarticTarget_columns_3
  · exact quarticTarget_columns_4
  · exact quarticTarget_columns_5
  · exact quarticTarget_columns_6
  · exact quarticTarget_columns_7
  · exact quarticTarget_columns_8
  · exact quarticTarget_columns_9
  · exact quarticTarget_columns_10
  · exact quarticTarget_columns_11
  · exact quarticTarget_columns_12
  · exact quarticTarget_columns_13
  · exact quarticTarget_columns_14
  · exact quarticTarget_columns_15
  · exact quarticTarget_columns_16
  · exact quarticTarget_columns_17
  · exact quarticTarget_columns_18
  · exact quarticTarget_columns_19
  · exact quarticTarget_columns_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
