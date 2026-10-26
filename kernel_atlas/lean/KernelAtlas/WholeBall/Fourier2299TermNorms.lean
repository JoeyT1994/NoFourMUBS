import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem term_norm_0 : ((data.fourier.coeff 0).normCheck (data.cn 0) && (data.fourier.S.reindex (fun _ : Fin 1 => 0) id).normCheck (data.sn 0) && (data.fourier.quadratic 0).normCheck (data.tn 0) && (data.fourier.D.reindex (fun _ : Fin 1 => 0) id).normCheck (data.dn 0)) = true := by decide +kernel

theorem term_norm_1 : ((data.fourier.coeff 1).normCheck (data.cn 1) && (data.fourier.S.reindex (fun _ : Fin 1 => 1) id).normCheck (data.sn 1) && (data.fourier.quadratic 1).normCheck (data.tn 1) && (data.fourier.D.reindex (fun _ : Fin 1 => 1) id).normCheck (data.dn 1)) = true := by decide +kernel

theorem term_norm_2 : ((data.fourier.coeff 2).normCheck (data.cn 2) && (data.fourier.S.reindex (fun _ : Fin 1 => 2) id).normCheck (data.sn 2) && (data.fourier.quadratic 2).normCheck (data.tn 2) && (data.fourier.D.reindex (fun _ : Fin 1 => 2) id).normCheck (data.dn 2)) = true := by decide +kernel

theorem term_norm_3 : ((data.fourier.coeff 3).normCheck (data.cn 3) && (data.fourier.S.reindex (fun _ : Fin 1 => 3) id).normCheck (data.sn 3) && (data.fourier.quadratic 3).normCheck (data.tn 3) && (data.fourier.D.reindex (fun _ : Fin 1 => 3) id).normCheck (data.dn 3)) = true := by decide +kernel

theorem term_norm_4 : ((data.fourier.coeff 4).normCheck (data.cn 4) && (data.fourier.S.reindex (fun _ : Fin 1 => 4) id).normCheck (data.sn 4) && (data.fourier.quadratic 4).normCheck (data.tn 4) && (data.fourier.D.reindex (fun _ : Fin 1 => 4) id).normCheck (data.dn 4)) = true := by decide +kernel

theorem term_norm_5 : ((data.fourier.coeff 5).normCheck (data.cn 5) && (data.fourier.S.reindex (fun _ : Fin 1 => 5) id).normCheck (data.sn 5) && (data.fourier.quadratic 5).normCheck (data.tn 5) && (data.fourier.D.reindex (fun _ : Fin 1 => 5) id).normCheck (data.dn 5)) = true := by decide +kernel

theorem term_norm_6 : ((data.fourier.coeff 6).normCheck (data.cn 6) && (data.fourier.S.reindex (fun _ : Fin 1 => 6) id).normCheck (data.sn 6) && (data.fourier.quadratic 6).normCheck (data.tn 6) && (data.fourier.D.reindex (fun _ : Fin 1 => 6) id).normCheck (data.dn 6)) = true := by decide +kernel

theorem term_norm_7 : ((data.fourier.coeff 7).normCheck (data.cn 7) && (data.fourier.S.reindex (fun _ : Fin 1 => 7) id).normCheck (data.sn 7) && (data.fourier.quadratic 7).normCheck (data.tn 7) && (data.fourier.D.reindex (fun _ : Fin 1 => 7) id).normCheck (data.dn 7)) = true := by decide +kernel

theorem term_norm_8 : ((data.fourier.coeff 8).normCheck (data.cn 8) && (data.fourier.S.reindex (fun _ : Fin 1 => 8) id).normCheck (data.sn 8) && (data.fourier.quadratic 8).normCheck (data.tn 8) && (data.fourier.D.reindex (fun _ : Fin 1 => 8) id).normCheck (data.dn 8)) = true := by decide +kernel

theorem term_norm_9 : ((data.fourier.coeff 9).normCheck (data.cn 9) && (data.fourier.S.reindex (fun _ : Fin 1 => 9) id).normCheck (data.sn 9) && (data.fourier.quadratic 9).normCheck (data.tn 9) && (data.fourier.D.reindex (fun _ : Fin 1 => 9) id).normCheck (data.dn 9)) = true := by decide +kernel

theorem term_norm_10 : ((data.fourier.coeff 10).normCheck (data.cn 10) && (data.fourier.S.reindex (fun _ : Fin 1 => 10) id).normCheck (data.sn 10) && (data.fourier.quadratic 10).normCheck (data.tn 10) && (data.fourier.D.reindex (fun _ : Fin 1 => 10) id).normCheck (data.dn 10)) = true := by decide +kernel

theorem term_norm_11 : ((data.fourier.coeff 11).normCheck (data.cn 11) && (data.fourier.S.reindex (fun _ : Fin 1 => 11) id).normCheck (data.sn 11) && (data.fourier.quadratic 11).normCheck (data.tn 11) && (data.fourier.D.reindex (fun _ : Fin 1 => 11) id).normCheck (data.dn 11)) = true := by decide +kernel

theorem term_norm_12 : ((data.fourier.coeff 12).normCheck (data.cn 12) && (data.fourier.S.reindex (fun _ : Fin 1 => 12) id).normCheck (data.sn 12) && (data.fourier.quadratic 12).normCheck (data.tn 12) && (data.fourier.D.reindex (fun _ : Fin 1 => 12) id).normCheck (data.dn 12)) = true := by decide +kernel

theorem term_norm_13 : ((data.fourier.coeff 13).normCheck (data.cn 13) && (data.fourier.S.reindex (fun _ : Fin 1 => 13) id).normCheck (data.sn 13) && (data.fourier.quadratic 13).normCheck (data.tn 13) && (data.fourier.D.reindex (fun _ : Fin 1 => 13) id).normCheck (data.dn 13)) = true := by decide +kernel

theorem term_norm_14 : ((data.fourier.coeff 14).normCheck (data.cn 14) && (data.fourier.S.reindex (fun _ : Fin 1 => 14) id).normCheck (data.sn 14) && (data.fourier.quadratic 14).normCheck (data.tn 14) && (data.fourier.D.reindex (fun _ : Fin 1 => 14) id).normCheck (data.dn 14)) = true := by decide +kernel

theorem term_norm_15 : ((data.fourier.coeff 15).normCheck (data.cn 15) && (data.fourier.S.reindex (fun _ : Fin 1 => 15) id).normCheck (data.sn 15) && (data.fourier.quadratic 15).normCheck (data.tn 15) && (data.fourier.D.reindex (fun _ : Fin 1 => 15) id).normCheck (data.dn 15)) = true := by decide +kernel

theorem term_norm_16 : ((data.fourier.coeff 16).normCheck (data.cn 16) && (data.fourier.S.reindex (fun _ : Fin 1 => 16) id).normCheck (data.sn 16) && (data.fourier.quadratic 16).normCheck (data.tn 16) && (data.fourier.D.reindex (fun _ : Fin 1 => 16) id).normCheck (data.dn 16)) = true := by decide +kernel

theorem term_norm_17 : ((data.fourier.coeff 17).normCheck (data.cn 17) && (data.fourier.S.reindex (fun _ : Fin 1 => 17) id).normCheck (data.sn 17) && (data.fourier.quadratic 17).normCheck (data.tn 17) && (data.fourier.D.reindex (fun _ : Fin 1 => 17) id).normCheck (data.dn 17)) = true := by decide +kernel

theorem term_norm_18 : ((data.fourier.coeff 18).normCheck (data.cn 18) && (data.fourier.S.reindex (fun _ : Fin 1 => 18) id).normCheck (data.sn 18) && (data.fourier.quadratic 18).normCheck (data.tn 18) && (data.fourier.D.reindex (fun _ : Fin 1 => 18) id).normCheck (data.dn 18)) = true := by decide +kernel

theorem term_norm_19 : ((data.fourier.coeff 19).normCheck (data.cn 19) && (data.fourier.S.reindex (fun _ : Fin 1 => 19) id).normCheck (data.sn 19) && (data.fourier.quadratic 19).normCheck (data.tn 19) && (data.fourier.D.reindex (fun _ : Fin 1 => 19) id).normCheck (data.dn 19)) = true := by decide +kernel

theorem term_norm_20 : ((data.fourier.coeff 20).normCheck (data.cn 20) && (data.fourier.S.reindex (fun _ : Fin 1 => 20) id).normCheck (data.sn 20) && (data.fourier.quadratic 20).normCheck (data.tn 20) && (data.fourier.D.reindex (fun _ : Fin 1 => 20) id).normCheck (data.dn 20)) = true := by decide +kernel

theorem term_norm_21 : ((data.fourier.coeff 21).normCheck (data.cn 21) && (data.fourier.S.reindex (fun _ : Fin 1 => 21) id).normCheck (data.sn 21) && (data.fourier.quadratic 21).normCheck (data.tn 21) && (data.fourier.D.reindex (fun _ : Fin 1 => 21) id).normCheck (data.dn 21)) = true := by decide +kernel

theorem term_norm_22 : ((data.fourier.coeff 22).normCheck (data.cn 22) && (data.fourier.S.reindex (fun _ : Fin 1 => 22) id).normCheck (data.sn 22) && (data.fourier.quadratic 22).normCheck (data.tn 22) && (data.fourier.D.reindex (fun _ : Fin 1 => 22) id).normCheck (data.dn 22)) = true := by decide +kernel

theorem term_norm_23 : ((data.fourier.coeff 23).normCheck (data.cn 23) && (data.fourier.S.reindex (fun _ : Fin 1 => 23) id).normCheck (data.sn 23) && (data.fourier.quadratic 23).normCheck (data.tn 23) && (data.fourier.D.reindex (fun _ : Fin 1 => 23) id).normCheck (data.dn 23)) = true := by decide +kernel

theorem term_norm_24 : ((data.fourier.coeff 24).normCheck (data.cn 24) && (data.fourier.S.reindex (fun _ : Fin 1 => 24) id).normCheck (data.sn 24) && (data.fourier.quadratic 24).normCheck (data.tn 24) && (data.fourier.D.reindex (fun _ : Fin 1 => 24) id).normCheck (data.dn 24)) = true := by decide +kernel

theorem term_norm_25 : ((data.fourier.coeff 25).normCheck (data.cn 25) && (data.fourier.S.reindex (fun _ : Fin 1 => 25) id).normCheck (data.sn 25) && (data.fourier.quadratic 25).normCheck (data.tn 25) && (data.fourier.D.reindex (fun _ : Fin 1 => 25) id).normCheck (data.dn 25)) = true := by decide +kernel

theorem term_norm_26 : ((data.fourier.coeff 26).normCheck (data.cn 26) && (data.fourier.S.reindex (fun _ : Fin 1 => 26) id).normCheck (data.sn 26) && (data.fourier.quadratic 26).normCheck (data.tn 26) && (data.fourier.D.reindex (fun _ : Fin 1 => 26) id).normCheck (data.dn 26)) = true := by decide +kernel

theorem term_norm_27 : ((data.fourier.coeff 27).normCheck (data.cn 27) && (data.fourier.S.reindex (fun _ : Fin 1 => 27) id).normCheck (data.sn 27) && (data.fourier.quadratic 27).normCheck (data.tn 27) && (data.fourier.D.reindex (fun _ : Fin 1 => 27) id).normCheck (data.dn 27)) = true := by decide +kernel

theorem term_norm_28 : ((data.fourier.coeff 28).normCheck (data.cn 28) && (data.fourier.S.reindex (fun _ : Fin 1 => 28) id).normCheck (data.sn 28) && (data.fourier.quadratic 28).normCheck (data.tn 28) && (data.fourier.D.reindex (fun _ : Fin 1 => 28) id).normCheck (data.dn 28)) = true := by decide +kernel

theorem term_norm_29 : ((data.fourier.coeff 29).normCheck (data.cn 29) && (data.fourier.S.reindex (fun _ : Fin 1 => 29) id).normCheck (data.sn 29) && (data.fourier.quadratic 29).normCheck (data.tn 29) && (data.fourier.D.reindex (fun _ : Fin 1 => 29) id).normCheck (data.dn 29)) = true := by decide +kernel

theorem term_norm_30 : ((data.fourier.coeff 30).normCheck (data.cn 30) && (data.fourier.S.reindex (fun _ : Fin 1 => 30) id).normCheck (data.sn 30) && (data.fourier.quadratic 30).normCheck (data.tn 30) && (data.fourier.D.reindex (fun _ : Fin 1 => 30) id).normCheck (data.dn 30)) = true := by decide +kernel

theorem term_norm_31 : ((data.fourier.coeff 31).normCheck (data.cn 31) && (data.fourier.S.reindex (fun _ : Fin 1 => 31) id).normCheck (data.sn 31) && (data.fourier.quadratic 31).normCheck (data.tn 31) && (data.fourier.D.reindex (fun _ : Fin 1 => 31) id).normCheck (data.dn 31)) = true := by decide +kernel

theorem term_norm_32 : ((data.fourier.coeff 32).normCheck (data.cn 32) && (data.fourier.S.reindex (fun _ : Fin 1 => 32) id).normCheck (data.sn 32) && (data.fourier.quadratic 32).normCheck (data.tn 32) && (data.fourier.D.reindex (fun _ : Fin 1 => 32) id).normCheck (data.dn 32)) = true := by decide +kernel

theorem term_norm_33 : ((data.fourier.coeff 33).normCheck (data.cn 33) && (data.fourier.S.reindex (fun _ : Fin 1 => 33) id).normCheck (data.sn 33) && (data.fourier.quadratic 33).normCheck (data.tn 33) && (data.fourier.D.reindex (fun _ : Fin 1 => 33) id).normCheck (data.dn 33)) = true := by decide +kernel

theorem term_norm_34 : ((data.fourier.coeff 34).normCheck (data.cn 34) && (data.fourier.S.reindex (fun _ : Fin 1 => 34) id).normCheck (data.sn 34) && (data.fourier.quadratic 34).normCheck (data.tn 34) && (data.fourier.D.reindex (fun _ : Fin 1 => 34) id).normCheck (data.dn 34)) = true := by decide +kernel

theorem term_norm_35 : ((data.fourier.coeff 35).normCheck (data.cn 35) && (data.fourier.S.reindex (fun _ : Fin 1 => 35) id).normCheck (data.sn 35) && (data.fourier.quadratic 35).normCheck (data.tn 35) && (data.fourier.D.reindex (fun _ : Fin 1 => 35) id).normCheck (data.dn 35)) = true := by decide +kernel

theorem term_norm_36 : ((data.fourier.coeff 36).normCheck (data.cn 36) && (data.fourier.S.reindex (fun _ : Fin 1 => 36) id).normCheck (data.sn 36) && (data.fourier.quadratic 36).normCheck (data.tn 36) && (data.fourier.D.reindex (fun _ : Fin 1 => 36) id).normCheck (data.dn 36)) = true := by decide +kernel

theorem term_norm_37 : ((data.fourier.coeff 37).normCheck (data.cn 37) && (data.fourier.S.reindex (fun _ : Fin 1 => 37) id).normCheck (data.sn 37) && (data.fourier.quadratic 37).normCheck (data.tn 37) && (data.fourier.D.reindex (fun _ : Fin 1 => 37) id).normCheck (data.dn 37)) = true := by decide +kernel

theorem term_norm_38 : ((data.fourier.coeff 38).normCheck (data.cn 38) && (data.fourier.S.reindex (fun _ : Fin 1 => 38) id).normCheck (data.sn 38) && (data.fourier.quadratic 38).normCheck (data.tn 38) && (data.fourier.D.reindex (fun _ : Fin 1 => 38) id).normCheck (data.dn 38)) = true := by decide +kernel

theorem term_norm_39 : ((data.fourier.coeff 39).normCheck (data.cn 39) && (data.fourier.S.reindex (fun _ : Fin 1 => 39) id).normCheck (data.sn 39) && (data.fourier.quadratic 39).normCheck (data.tn 39) && (data.fourier.D.reindex (fun _ : Fin 1 => 39) id).normCheck (data.dn 39)) = true := by decide +kernel

theorem term_norm_40 : ((data.fourier.coeff 40).normCheck (data.cn 40) && (data.fourier.S.reindex (fun _ : Fin 1 => 40) id).normCheck (data.sn 40) && (data.fourier.quadratic 40).normCheck (data.tn 40) && (data.fourier.D.reindex (fun _ : Fin 1 => 40) id).normCheck (data.dn 40)) = true := by decide +kernel

theorem term_norm_41 : ((data.fourier.coeff 41).normCheck (data.cn 41) && (data.fourier.S.reindex (fun _ : Fin 1 => 41) id).normCheck (data.sn 41) && (data.fourier.quadratic 41).normCheck (data.tn 41) && (data.fourier.D.reindex (fun _ : Fin 1 => 41) id).normCheck (data.dn 41)) = true := by decide +kernel

theorem term_norm_42 : ((data.fourier.coeff 42).normCheck (data.cn 42) && (data.fourier.S.reindex (fun _ : Fin 1 => 42) id).normCheck (data.sn 42) && (data.fourier.quadratic 42).normCheck (data.tn 42) && (data.fourier.D.reindex (fun _ : Fin 1 => 42) id).normCheck (data.dn 42)) = true := by decide +kernel

theorem term_norm_43 : ((data.fourier.coeff 43).normCheck (data.cn 43) && (data.fourier.S.reindex (fun _ : Fin 1 => 43) id).normCheck (data.sn 43) && (data.fourier.quadratic 43).normCheck (data.tn 43) && (data.fourier.D.reindex (fun _ : Fin 1 => 43) id).normCheck (data.dn 43)) = true := by decide +kernel

theorem term_norm_44 : ((data.fourier.coeff 44).normCheck (data.cn 44) && (data.fourier.S.reindex (fun _ : Fin 1 => 44) id).normCheck (data.sn 44) && (data.fourier.quadratic 44).normCheck (data.tn 44) && (data.fourier.D.reindex (fun _ : Fin 1 => 44) id).normCheck (data.dn 44)) = true := by decide +kernel

theorem term_norm_45 : ((data.fourier.coeff 45).normCheck (data.cn 45) && (data.fourier.S.reindex (fun _ : Fin 1 => 45) id).normCheck (data.sn 45) && (data.fourier.quadratic 45).normCheck (data.tn 45) && (data.fourier.D.reindex (fun _ : Fin 1 => 45) id).normCheck (data.dn 45)) = true := by decide +kernel

theorem term_norm_46 : ((data.fourier.coeff 46).normCheck (data.cn 46) && (data.fourier.S.reindex (fun _ : Fin 1 => 46) id).normCheck (data.sn 46) && (data.fourier.quadratic 46).normCheck (data.tn 46) && (data.fourier.D.reindex (fun _ : Fin 1 => 46) id).normCheck (data.dn 46)) = true := by decide +kernel

theorem term_norm_47 : ((data.fourier.coeff 47).normCheck (data.cn 47) && (data.fourier.S.reindex (fun _ : Fin 1 => 47) id).normCheck (data.sn 47) && (data.fourier.quadratic 47).normCheck (data.tn 47) && (data.fourier.D.reindex (fun _ : Fin 1 => 47) id).normCheck (data.dn 47)) = true := by decide +kernel

theorem term_norm_48 : ((data.fourier.coeff 48).normCheck (data.cn 48) && (data.fourier.S.reindex (fun _ : Fin 1 => 48) id).normCheck (data.sn 48) && (data.fourier.quadratic 48).normCheck (data.tn 48) && (data.fourier.D.reindex (fun _ : Fin 1 => 48) id).normCheck (data.dn 48)) = true := by decide +kernel

theorem term_norm_49 : ((data.fourier.coeff 49).normCheck (data.cn 49) && (data.fourier.S.reindex (fun _ : Fin 1 => 49) id).normCheck (data.sn 49) && (data.fourier.quadratic 49).normCheck (data.tn 49) && (data.fourier.D.reindex (fun _ : Fin 1 => 49) id).normCheck (data.dn 49)) = true := by decide +kernel

theorem term_norm_50 : ((data.fourier.coeff 50).normCheck (data.cn 50) && (data.fourier.S.reindex (fun _ : Fin 1 => 50) id).normCheck (data.sn 50) && (data.fourier.quadratic 50).normCheck (data.tn 50) && (data.fourier.D.reindex (fun _ : Fin 1 => 50) id).normCheck (data.dn 50)) = true := by decide +kernel

theorem term_norm_51 : ((data.fourier.coeff 51).normCheck (data.cn 51) && (data.fourier.S.reindex (fun _ : Fin 1 => 51) id).normCheck (data.sn 51) && (data.fourier.quadratic 51).normCheck (data.tn 51) && (data.fourier.D.reindex (fun _ : Fin 1 => 51) id).normCheck (data.dn 51)) = true := by decide +kernel

theorem term_norm_52 : ((data.fourier.coeff 52).normCheck (data.cn 52) && (data.fourier.S.reindex (fun _ : Fin 1 => 52) id).normCheck (data.sn 52) && (data.fourier.quadratic 52).normCheck (data.tn 52) && (data.fourier.D.reindex (fun _ : Fin 1 => 52) id).normCheck (data.dn 52)) = true := by decide +kernel

theorem term_norm_53 : ((data.fourier.coeff 53).normCheck (data.cn 53) && (data.fourier.S.reindex (fun _ : Fin 1 => 53) id).normCheck (data.sn 53) && (data.fourier.quadratic 53).normCheck (data.tn 53) && (data.fourier.D.reindex (fun _ : Fin 1 => 53) id).normCheck (data.dn 53)) = true := by decide +kernel

theorem term_norm_54 : ((data.fourier.coeff 54).normCheck (data.cn 54) && (data.fourier.S.reindex (fun _ : Fin 1 => 54) id).normCheck (data.sn 54) && (data.fourier.quadratic 54).normCheck (data.tn 54) && (data.fourier.D.reindex (fun _ : Fin 1 => 54) id).normCheck (data.dn 54)) = true := by decide +kernel

theorem term_norm_55 : ((data.fourier.coeff 55).normCheck (data.cn 55) && (data.fourier.S.reindex (fun _ : Fin 1 => 55) id).normCheck (data.sn 55) && (data.fourier.quadratic 55).normCheck (data.tn 55) && (data.fourier.D.reindex (fun _ : Fin 1 => 55) id).normCheck (data.dn 55)) = true := by decide +kernel

theorem term_norm_56 : ((data.fourier.coeff 56).normCheck (data.cn 56) && (data.fourier.S.reindex (fun _ : Fin 1 => 56) id).normCheck (data.sn 56) && (data.fourier.quadratic 56).normCheck (data.tn 56) && (data.fourier.D.reindex (fun _ : Fin 1 => 56) id).normCheck (data.dn 56)) = true := by decide +kernel

theorem term_norm_57 : ((data.fourier.coeff 57).normCheck (data.cn 57) && (data.fourier.S.reindex (fun _ : Fin 1 => 57) id).normCheck (data.sn 57) && (data.fourier.quadratic 57).normCheck (data.tn 57) && (data.fourier.D.reindex (fun _ : Fin 1 => 57) id).normCheck (data.dn 57)) = true := by decide +kernel

theorem term_norm_58 : ((data.fourier.coeff 58).normCheck (data.cn 58) && (data.fourier.S.reindex (fun _ : Fin 1 => 58) id).normCheck (data.sn 58) && (data.fourier.quadratic 58).normCheck (data.tn 58) && (data.fourier.D.reindex (fun _ : Fin 1 => 58) id).normCheck (data.dn 58)) = true := by decide +kernel

theorem term_norm_59 : ((data.fourier.coeff 59).normCheck (data.cn 59) && (data.fourier.S.reindex (fun _ : Fin 1 => 59) id).normCheck (data.sn 59) && (data.fourier.quadratic 59).normCheck (data.tn 59) && (data.fourier.D.reindex (fun _ : Fin 1 => 59) id).normCheck (data.dn 59)) = true := by decide +kernel

theorem term_norm_60 : ((data.fourier.coeff 60).normCheck (data.cn 60) && (data.fourier.S.reindex (fun _ : Fin 1 => 60) id).normCheck (data.sn 60) && (data.fourier.quadratic 60).normCheck (data.tn 60) && (data.fourier.D.reindex (fun _ : Fin 1 => 60) id).normCheck (data.dn 60)) = true := by decide +kernel

theorem term_norm_61 : ((data.fourier.coeff 61).normCheck (data.cn 61) && (data.fourier.S.reindex (fun _ : Fin 1 => 61) id).normCheck (data.sn 61) && (data.fourier.quadratic 61).normCheck (data.tn 61) && (data.fourier.D.reindex (fun _ : Fin 1 => 61) id).normCheck (data.dn 61)) = true := by decide +kernel

theorem term_norm_62 : ((data.fourier.coeff 62).normCheck (data.cn 62) && (data.fourier.S.reindex (fun _ : Fin 1 => 62) id).normCheck (data.sn 62) && (data.fourier.quadratic 62).normCheck (data.tn 62) && (data.fourier.D.reindex (fun _ : Fin 1 => 62) id).normCheck (data.dn 62)) = true := by decide +kernel

theorem term_norm_63 : ((data.fourier.coeff 63).normCheck (data.cn 63) && (data.fourier.S.reindex (fun _ : Fin 1 => 63) id).normCheck (data.sn 63) && (data.fourier.quadratic 63).normCheck (data.tn 63) && (data.fourier.D.reindex (fun _ : Fin 1 => 63) id).normCheck (data.dn 63)) = true := by decide +kernel

theorem term_norm_64 : ((data.fourier.coeff 64).normCheck (data.cn 64) && (data.fourier.S.reindex (fun _ : Fin 1 => 64) id).normCheck (data.sn 64) && (data.fourier.quadratic 64).normCheck (data.tn 64) && (data.fourier.D.reindex (fun _ : Fin 1 => 64) id).normCheck (data.dn 64)) = true := by decide +kernel

theorem term_norm_65 : ((data.fourier.coeff 65).normCheck (data.cn 65) && (data.fourier.S.reindex (fun _ : Fin 1 => 65) id).normCheck (data.sn 65) && (data.fourier.quadratic 65).normCheck (data.tn 65) && (data.fourier.D.reindex (fun _ : Fin 1 => 65) id).normCheck (data.dn 65)) = true := by decide +kernel

theorem term_norm_66 : ((data.fourier.coeff 66).normCheck (data.cn 66) && (data.fourier.S.reindex (fun _ : Fin 1 => 66) id).normCheck (data.sn 66) && (data.fourier.quadratic 66).normCheck (data.tn 66) && (data.fourier.D.reindex (fun _ : Fin 1 => 66) id).normCheck (data.dn 66)) = true := by decide +kernel

theorem term_norm_67 : ((data.fourier.coeff 67).normCheck (data.cn 67) && (data.fourier.S.reindex (fun _ : Fin 1 => 67) id).normCheck (data.sn 67) && (data.fourier.quadratic 67).normCheck (data.tn 67) && (data.fourier.D.reindex (fun _ : Fin 1 => 67) id).normCheck (data.dn 67)) = true := by decide +kernel

theorem term_norm_68 : ((data.fourier.coeff 68).normCheck (data.cn 68) && (data.fourier.S.reindex (fun _ : Fin 1 => 68) id).normCheck (data.sn 68) && (data.fourier.quadratic 68).normCheck (data.tn 68) && (data.fourier.D.reindex (fun _ : Fin 1 => 68) id).normCheck (data.dn 68)) = true := by decide +kernel

theorem term_norm_69 : ((data.fourier.coeff 69).normCheck (data.cn 69) && (data.fourier.S.reindex (fun _ : Fin 1 => 69) id).normCheck (data.sn 69) && (data.fourier.quadratic 69).normCheck (data.tn 69) && (data.fourier.D.reindex (fun _ : Fin 1 => 69) id).normCheck (data.dn 69)) = true := by decide +kernel

theorem term_norm_70 : ((data.fourier.coeff 70).normCheck (data.cn 70) && (data.fourier.S.reindex (fun _ : Fin 1 => 70) id).normCheck (data.sn 70) && (data.fourier.quadratic 70).normCheck (data.tn 70) && (data.fourier.D.reindex (fun _ : Fin 1 => 70) id).normCheck (data.dn 70)) = true := by decide +kernel

theorem term_norm_71 : ((data.fourier.coeff 71).normCheck (data.cn 71) && (data.fourier.S.reindex (fun _ : Fin 1 => 71) id).normCheck (data.sn 71) && (data.fourier.quadratic 71).normCheck (data.tn 71) && (data.fourier.D.reindex (fun _ : Fin 1 => 71) id).normCheck (data.dn 71)) = true := by decide +kernel

theorem term_norm_72 : ((data.fourier.coeff 72).normCheck (data.cn 72) && (data.fourier.S.reindex (fun _ : Fin 1 => 72) id).normCheck (data.sn 72) && (data.fourier.quadratic 72).normCheck (data.tn 72) && (data.fourier.D.reindex (fun _ : Fin 1 => 72) id).normCheck (data.dn 72)) = true := by decide +kernel

theorem term_norm_73 : ((data.fourier.coeff 73).normCheck (data.cn 73) && (data.fourier.S.reindex (fun _ : Fin 1 => 73) id).normCheck (data.sn 73) && (data.fourier.quadratic 73).normCheck (data.tn 73) && (data.fourier.D.reindex (fun _ : Fin 1 => 73) id).normCheck (data.dn 73)) = true := by decide +kernel

theorem term_norm_74 : ((data.fourier.coeff 74).normCheck (data.cn 74) && (data.fourier.S.reindex (fun _ : Fin 1 => 74) id).normCheck (data.sn 74) && (data.fourier.quadratic 74).normCheck (data.tn 74) && (data.fourier.D.reindex (fun _ : Fin 1 => 74) id).normCheck (data.dn 74)) = true := by decide +kernel

theorem term_norm_75 : ((data.fourier.coeff 75).normCheck (data.cn 75) && (data.fourier.S.reindex (fun _ : Fin 1 => 75) id).normCheck (data.sn 75) && (data.fourier.quadratic 75).normCheck (data.tn 75) && (data.fourier.D.reindex (fun _ : Fin 1 => 75) id).normCheck (data.dn 75)) = true := by decide +kernel

theorem term_norm_76 : ((data.fourier.coeff 76).normCheck (data.cn 76) && (data.fourier.S.reindex (fun _ : Fin 1 => 76) id).normCheck (data.sn 76) && (data.fourier.quadratic 76).normCheck (data.tn 76) && (data.fourier.D.reindex (fun _ : Fin 1 => 76) id).normCheck (data.dn 76)) = true := by decide +kernel

theorem term_norm_77 : ((data.fourier.coeff 77).normCheck (data.cn 77) && (data.fourier.S.reindex (fun _ : Fin 1 => 77) id).normCheck (data.sn 77) && (data.fourier.quadratic 77).normCheck (data.tn 77) && (data.fourier.D.reindex (fun _ : Fin 1 => 77) id).normCheck (data.dn 77)) = true := by decide +kernel

theorem term_norm_78 : ((data.fourier.coeff 78).normCheck (data.cn 78) && (data.fourier.S.reindex (fun _ : Fin 1 => 78) id).normCheck (data.sn 78) && (data.fourier.quadratic 78).normCheck (data.tn 78) && (data.fourier.D.reindex (fun _ : Fin 1 => 78) id).normCheck (data.dn 78)) = true := by decide +kernel

theorem term_norm_79 : ((data.fourier.coeff 79).normCheck (data.cn 79) && (data.fourier.S.reindex (fun _ : Fin 1 => 79) id).normCheck (data.sn 79) && (data.fourier.quadratic 79).normCheck (data.tn 79) && (data.fourier.D.reindex (fun _ : Fin 1 => 79) id).normCheck (data.dn 79)) = true := by decide +kernel

theorem term_norm_80 : ((data.fourier.coeff 80).normCheck (data.cn 80) && (data.fourier.S.reindex (fun _ : Fin 1 => 80) id).normCheck (data.sn 80) && (data.fourier.quadratic 80).normCheck (data.tn 80) && (data.fourier.D.reindex (fun _ : Fin 1 => 80) id).normCheck (data.dn 80)) = true := by decide +kernel

theorem term_norm_81 : ((data.fourier.coeff 81).normCheck (data.cn 81) && (data.fourier.S.reindex (fun _ : Fin 1 => 81) id).normCheck (data.sn 81) && (data.fourier.quadratic 81).normCheck (data.tn 81) && (data.fourier.D.reindex (fun _ : Fin 1 => 81) id).normCheck (data.dn 81)) = true := by decide +kernel

theorem term_norm_82 : ((data.fourier.coeff 82).normCheck (data.cn 82) && (data.fourier.S.reindex (fun _ : Fin 1 => 82) id).normCheck (data.sn 82) && (data.fourier.quadratic 82).normCheck (data.tn 82) && (data.fourier.D.reindex (fun _ : Fin 1 => 82) id).normCheck (data.dn 82)) = true := by decide +kernel

theorem term_norm_83 : ((data.fourier.coeff 83).normCheck (data.cn 83) && (data.fourier.S.reindex (fun _ : Fin 1 => 83) id).normCheck (data.sn 83) && (data.fourier.quadratic 83).normCheck (data.tn 83) && (data.fourier.D.reindex (fun _ : Fin 1 => 83) id).normCheck (data.dn 83)) = true := by decide +kernel

theorem term_norm_84 : ((data.fourier.coeff 84).normCheck (data.cn 84) && (data.fourier.S.reindex (fun _ : Fin 1 => 84) id).normCheck (data.sn 84) && (data.fourier.quadratic 84).normCheck (data.tn 84) && (data.fourier.D.reindex (fun _ : Fin 1 => 84) id).normCheck (data.dn 84)) = true := by decide +kernel

theorem term_norm_85 : ((data.fourier.coeff 85).normCheck (data.cn 85) && (data.fourier.S.reindex (fun _ : Fin 1 => 85) id).normCheck (data.sn 85) && (data.fourier.quadratic 85).normCheck (data.tn 85) && (data.fourier.D.reindex (fun _ : Fin 1 => 85) id).normCheck (data.dn 85)) = true := by decide +kernel

theorem term_norm_86 : ((data.fourier.coeff 86).normCheck (data.cn 86) && (data.fourier.S.reindex (fun _ : Fin 1 => 86) id).normCheck (data.sn 86) && (data.fourier.quadratic 86).normCheck (data.tn 86) && (data.fourier.D.reindex (fun _ : Fin 1 => 86) id).normCheck (data.dn 86)) = true := by decide +kernel

theorem term_norm_87 : ((data.fourier.coeff 87).normCheck (data.cn 87) && (data.fourier.S.reindex (fun _ : Fin 1 => 87) id).normCheck (data.sn 87) && (data.fourier.quadratic 87).normCheck (data.tn 87) && (data.fourier.D.reindex (fun _ : Fin 1 => 87) id).normCheck (data.dn 87)) = true := by decide +kernel

theorem term_norm_88 : ((data.fourier.coeff 88).normCheck (data.cn 88) && (data.fourier.S.reindex (fun _ : Fin 1 => 88) id).normCheck (data.sn 88) && (data.fourier.quadratic 88).normCheck (data.tn 88) && (data.fourier.D.reindex (fun _ : Fin 1 => 88) id).normCheck (data.dn 88)) = true := by decide +kernel

theorem term_norm_89 : ((data.fourier.coeff 89).normCheck (data.cn 89) && (data.fourier.S.reindex (fun _ : Fin 1 => 89) id).normCheck (data.sn 89) && (data.fourier.quadratic 89).normCheck (data.tn 89) && (data.fourier.D.reindex (fun _ : Fin 1 => 89) id).normCheck (data.dn 89)) = true := by decide +kernel

theorem term_norms_checked : ((List.finRange 90).all fun i => (data.fourier.coeff i).normCheck (data.cn i) && (data.fourier.S.reindex (fun _ : Fin 1 => i) id).normCheck (data.sn i) && (data.fourier.quadratic i).normCheck (data.tn i) && (data.fourier.D.reindex (fun _ : Fin 1 => i) id).normCheck (data.dn i)) = true := by
  simp only [List.all_eq_true, List.mem_finRange, forall_const]
  intro i
  fin_cases i
  · exact term_norm_0
  · exact term_norm_1
  · exact term_norm_2
  · exact term_norm_3
  · exact term_norm_4
  · exact term_norm_5
  · exact term_norm_6
  · exact term_norm_7
  · exact term_norm_8
  · exact term_norm_9
  · exact term_norm_10
  · exact term_norm_11
  · exact term_norm_12
  · exact term_norm_13
  · exact term_norm_14
  · exact term_norm_15
  · exact term_norm_16
  · exact term_norm_17
  · exact term_norm_18
  · exact term_norm_19
  · exact term_norm_20
  · exact term_norm_21
  · exact term_norm_22
  · exact term_norm_23
  · exact term_norm_24
  · exact term_norm_25
  · exact term_norm_26
  · exact term_norm_27
  · exact term_norm_28
  · exact term_norm_29
  · exact term_norm_30
  · exact term_norm_31
  · exact term_norm_32
  · exact term_norm_33
  · exact term_norm_34
  · exact term_norm_35
  · exact term_norm_36
  · exact term_norm_37
  · exact term_norm_38
  · exact term_norm_39
  · exact term_norm_40
  · exact term_norm_41
  · exact term_norm_42
  · exact term_norm_43
  · exact term_norm_44
  · exact term_norm_45
  · exact term_norm_46
  · exact term_norm_47
  · exact term_norm_48
  · exact term_norm_49
  · exact term_norm_50
  · exact term_norm_51
  · exact term_norm_52
  · exact term_norm_53
  · exact term_norm_54
  · exact term_norm_55
  · exact term_norm_56
  · exact term_norm_57
  · exact term_norm_58
  · exact term_norm_59
  · exact term_norm_60
  · exact term_norm_61
  · exact term_norm_62
  · exact term_norm_63
  · exact term_norm_64
  · exact term_norm_65
  · exact term_norm_66
  · exact term_norm_67
  · exact term_norm_68
  · exact term_norm_69
  · exact term_norm_70
  · exact term_norm_71
  · exact term_norm_72
  · exact term_norm_73
  · exact term_norm_74
  · exact term_norm_75
  · exact term_norm_76
  · exact term_norm_77
  · exact term_norm_78
  · exact term_norm_79
  · exact term_norm_80
  · exact term_norm_81
  · exact term_norm_82
  · exact term_norm_83
  · exact term_norm_84
  · exact term_norm_85
  · exact term_norm_86
  · exact term_norm_87
  · exact term_norm_88
  · exact term_norm_89

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
