import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1660724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
def hex_1660724 : String := "43404144434241404405434241054405400507050507404407434241440740060744074006070606074140054405074006440743080642070643424144404342414440050508444043080508080842410506054308074043080608444043424144404308060840430806084440060840060806064308420708404308060841444006080844400608084241444005074006430806444006074006434244074108080606064443424041440743424144074006070A0606064144070744070740064144060606064342444041434244414006080A414006080A06060A414308420706430542070640414308060A414308080544400641080640060842444006074006414342440740060706060A064144074308420740410707074443420740410707070743424044410705050808420740440641060607400607"
theorem cover_1660724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 313) (hex := hex_1660724)
  decide +kernel
#print axioms cover_1660724

def state_1661037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_1661037 : String := "4442434041070707074340414406060609064243404441420743400A07070A0A440705400A07434044414342400644070A0606060A4441434207404406080707094143054207400607054006440707"
theorem cover_1661037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 79) (hex := hex_1661037)
  decide +kernel
#print axioms cover_1661037

def state_1661116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1661116 : String := "42434440424341444243400705074340414443084207080808410505404107064107074207434041050505400705444207430807420743080741070743414443404241444308060806064241050841444305060506400642410944060606434042080805404241444342050606054406074144064305060642410505410505440643084006084144400609404207064207434144060506060642434105444007050507434144404305090505444043084209060905414409404207090544090740424344410505050A4344414305400A0508050A4205430505444042070607400A4205440705434440434142440643400605400641420505060606064341424440430509050505424440060505054142440940434105050605440640060542440640060506404344414243054044060505050805444142400643050606060A4305444105050544400609400A4441420706060A"
theorem cover_1661116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 339) (hex := hex_1661116)
  decide +kernel
#print axioms cover_1661116

def state_1661456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1661456 : String := "414243444142434405050843074440074144080505074243050A43090A4107420807444142084408070A410708434441074305440905074441070A07424344420A43090A424340410709414405074409060A43074041070941050A0A434443090A07440A400705"
theorem cover_1661456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 103) (hex := hex_1661456)
  decide +kernel
#print axioms cover_1661456

def state_1661561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1661561 : String := "4344404142054305444144404205070505050505054005054440414244080544434144400842054341440A050508400A050A0A0505414205444340414442054305414409050505050540414409050509050505"
theorem cover_1661561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 83) (hex := hex_1661561)
  decide +kernel
#print axioms cover_1661561

def state_1661645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_1661645 : String := "444041430744424144400743054241070507074440070505070505414305444240414443054205414408050505050540414408050508050505"
theorem cover_1661645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 57) (hex := hex_1661645)
  decide +kernel
#print axioms cover_1661645

def state_1661704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1661704 : String := "41444243414440074243414440074243050A430741444007EA070A070A41440A4007420A070A43410744400743070A07414406070A07440A40070541444006420A06070A434144400643070607440A0741060A07440A420507"
theorem cover_1661704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 89) (hex := hex_1661704)
  decide +kernel
#print axioms cover_1661704


end Mub6.Numerical.CircleFullD0.Forest
