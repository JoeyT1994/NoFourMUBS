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
def state_1530564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
def hex_1530564 : String := "44404142434407090A4344404142074307070741420743090707400909444041420A430A0A070A40410A080A420A434407404207430907090A41420A434441420743400907070741420A4309080A0A0A4041424344400A0A40414342440A40070A4440090A4041430907094143420A44084143050A050A0A4207440A40070A094143420A44084143080A080A0A0A4344404142090608084041424344400908404143090909414308424408414043050A080808084440090A4041424309074309090941420A434408414042430509080808440A41400A0A0A0A43084409400941424308440841400908080808424308090841424308440A41400A0A0A08084440090A40414243440A4041420909090A440540090A43440940094142434409414009420A0909440541050943080909090941420A43440841420A080A4405050A420A434408080A41420A434408080A0A"
theorem cover_1530564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 335) (hex := hex_1530564)
  decide +kernel
#print axioms cover_1530564

def state_1530908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1530908 : String := "4243444041054243054405050541074205050544404142094344090509424344094042060505094344404142430509430544404105420705070542430A444042084109080840420605094305444041424305090742430844404208870840420A0508430544870541074208070541094208074005410505444041094209434440414209434440410987094041054206050709424344404209870940420641064344870606090943448740414243050643050A424344870544870643054487404105054105420505414209074243448705094305448740410542090507440A0A094041420643050642434440060905064344400541050505444006090641094209430709090940410942094344404105054105420505050909410942094344090709404142054305064243050643054440060905410942094305094344400707054440414243070A07424344404107424305444041054243054487050507050507054440410A42434440410A424344874041054243050A0541074207050A0A41074243070A0740410A4243050A0841074207070A0A4142070742430709074041084243050A084107424307090743070A410742070740410742430544400507050507"
theorem cover_1530908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 27) (count := 449) (hex := hex_1530908)
  decide +kernel
#print axioms cover_1530908

def state_1531359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1531359 : String := "44404208414305440805080840424105440843054042080505410544430540090505420805"
theorem cover_1531359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1531359)
  decide +kernel
#print axioms cover_1531359

def state_1531399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 8)))
def hex_1531399 : String := "4143440840420841080808444042074109070840420941094308070943084405400708"
theorem cover_1531399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1531399)
  decide +kernel
#print axioms cover_1531399

def state_1531436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
def hex_1531436 : String := "44404241080841430A44404241080841430A448740420A410509420841050608084042414305440A050841050A420841050843084408400A08084042414305444042080508050841054305444042080908054208410508"
theorem cover_1531436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 87) (hex := hex_1531436)
  decide +kernel
#print axioms cover_1531436

def state_1531526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 16)))
def hex_1531526 : String := "4143444042074143080505084042094143440806064308070909430805"
theorem cover_1531526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1531526)
  decide +kernel
#print axioms cover_1531526


end Mub6.Numerical.CircleFullD0.Forest
