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
def state_2285611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2285611 : String := "4442434041440A420743070A0A0A4041440605054106064340414408424340070A4041440805050A080841440842430A400A0A4308080840414408424340050505080841440842434006060608084243400741444206430A064205430505050643404144424307400505430740074109080707414442434041440A07070A40414442050A050541440A060543404144084207080841440842430A0A430808084041440842434005050508084144084243400A0A0643080808424340054144420543070507054005054340074144424340070A40070A434007414408E50740414408E507414408E508E544420708074041444205430905050541444243400505054340414408E505414408E508400506420543E505444205050544420A08420543070540414442054340054106050505054144420643404144060605414406060606420543400506054442050805"
theorem cover_2285611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 333) (hex := hex_2285611)
  decide +kernel
#print axioms cover_2285611

def state_2285944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2285944 : String := "4041444243410605054341400944420607064006440606064205434106060544420543410905050541444243400606064340410744060607064206434006060644420643404106054106060606"
theorem cover_2285944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 77) (hex := hex_2285944)
  decide +kernel
#print axioms cover_2285944

def state_2286021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2286021 : String := "444243400A0A40050643400808084243400541440A050505434041444205080707414442430A05084205434005414408050505440805400541444205050505"
theorem cover_2286021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2286021)
  decide +kernel
#print axioms cover_2286021

def state_2286085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2286085 : String := "43414409090909"
theorem cover_2286085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2286085)
  decide +kernel
#print axioms cover_2286085

def state_2286093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2286093 : String := "41444042430A0A434144054209050A41440542400A09404305050544080A420943090A40424341090741090943414442400A09400606424041430609070940410606410606440A420740060641444240430941090909404341054405420906414405424005050544420905420A40430541050A054305094240434109094144090809094043414442400505054240430608094005054442400A0906424007094006064144424043054105090905424008084043054105440508430505444240430A41090909404341050641440542404305050505440A420A40430541050A0A4309410509424043414409080741440908440942094007090940434144424006050542404306084305080644420A06420706414442404341054405E541054409E509400505E5444240430A414409E50A09404306414405E5440AE5430641050AE543414405420905440942090641440942094005054409420940E5094341090941090944420A40430A0A0A424043070A09404341440A07074144420A40430A0A0A424043070A094043074144420A400A0AE50A430A4144090A0A0A4309410909420943410909410909440A404209430A41440A420A0A0A09"
theorem cover_2286093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 23) (count := 439) (hex := hex_2286093)
  decide +kernel
#print axioms cover_2286093


end Mub6.Numerical.CircleFullD0.Forest
