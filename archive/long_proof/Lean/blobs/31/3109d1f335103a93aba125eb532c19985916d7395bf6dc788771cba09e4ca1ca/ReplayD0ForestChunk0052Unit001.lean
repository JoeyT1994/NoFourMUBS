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
def state_2580356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2580356 : String := "4041050541444243404109094106440642084340050605400506434005060542434009410844420843090508094340054144054208054405050544424340410505414442434041090541064406084005064340050605424340090808434005414405080A05440A0A400541050543400541050505424340410909414442084340050805084442430A080A4208430A05400541084405054340054144050544050505"
theorem cover_2580356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 161) (hex := hex_2580356)
  decide +kernel
#print axioms cover_2580356

def state_2580517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
def hex_2580517 : String := "42434006414443064206400607060640094144080744420643060706434041444206430605060641444243400641444342064006084207400908060640094108444207434006070707434041444209434005DC090606DC404109440505414442434009080843400941084408074005080744424340094107074007074340410505414442080507444243400507050507400541050507420743400607074442430640064441420643060706064340064441DC06064044410505064441424340064107064005074340050A050A410706064041094405054144424309084340054109444208050705074442434006444107070709434005444105054105050507"
theorem cover_2580517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 255) (hex := hex_2580517)
  decide +kernel
#print axioms cover_2580517

def state_2580772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2580772 : String := "414442400908400543410505054209094442400943410844420843090508084005434105050542400908400543410944050505"
theorem cover_2580772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2580772)
  decide +kernel
#print axioms cover_2580772

def state_2580823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2580823 : String := "414440054208054005084440054243410844400508080505400542084341050505"
theorem cover_2580823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2580823)
  decide +kernel
#print axioms cover_2580823

def state_2580857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2580857 : String := "434108444305080808"
theorem cover_2580857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2580857)
  decide +kernel
#print axioms cover_2580857

def state_2580868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2580868 : String := "44420A0642084340440A080608"
theorem cover_2580868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2580868)
  decide +kernel
#print axioms cover_2580868

def state_2580882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
def hex_2580882 : String := "42434041440A0A444342054041054405050542404105080540410A444342050642080643420540410644430506430508054208404106080606434205404105050542084041084408080841050540410844420843404106440608060608084340414406424340410644060A050606444243404106440743074240070506060606424340414443050643054205404106440643050605444342050742404105440743054205050540070643420540410505054240410544050505404144074342050742084007064443074240070507434205074208400A4106074105440505410505404144064208064442434041064443070643420840070608064041060806430606420843404144060844424340410607060806420843400A080841060840410644060806410644060843404106440742434007074041060706430706064041064406424340410644064243400706060606060606064041064406424340410644060806060606"
theorem cover_2580882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 359) (hex := hex_2580882)
  decide +kernel
#print axioms cover_2580882


end Mub6.Numerical.CircleFullD0.Forest
