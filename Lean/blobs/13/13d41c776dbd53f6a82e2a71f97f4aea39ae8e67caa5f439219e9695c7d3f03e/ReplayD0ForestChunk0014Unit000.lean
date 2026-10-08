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
def state_1315252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1315252 : String := "42434440414344424105430544400505050505444241064440090606410544094009054206054344424344400A4105424307444007070705400A4105074440414244430A080844430509050A4142444305404105080543050605424443400A410542074443050807400841080843400807084443400A05400941054244090505430540080540410808410542084305084305444041050905400A05424307400841050705444244404109084143420644400905060643420844090808400841060844400941090940094143050643424409050509420840084105084143050643444240430544410542444043410542070541064206444008050643050640430706060541054206050505054442404441064342064440434105420605060606060606404441054305094105430506444105430506050640410543050805444041064409080606434440410542430544090505050544400941094244090609400905"
theorem cover_1315252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 353) (hex := hex_1315252)
  decide +kernel
#print axioms cover_1315252

def state_1315609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1315609 : String := "4344414243444006410A060A4440084142444340084142070808080844430A4008410909430A08420844060808430A444006410A090A4243440607444006414205060508430644060A410A0A4441420844094008434109080842080908"
theorem cover_1315609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 93) (hex := hex_1315609)
  decide +kernel
#print axioms cover_1315609


end Mub6.Numerical.CircleFullD0.Forest
