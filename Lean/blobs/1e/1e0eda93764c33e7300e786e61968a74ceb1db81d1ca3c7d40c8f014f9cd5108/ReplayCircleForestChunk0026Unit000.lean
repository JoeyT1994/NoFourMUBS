import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_168835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_168835 : String := "4142434405400705444042434405414205050544084142430808434008050A4243080843050A4305440A414340420505050A43050A4243054405410A050540424341444240070505054405424005050541444243404408074408064044084106420843070608434007054044410A0A070A4243070606444243404144084208054405050540414408420843410808410808440842084305410808410808430540414443050A430542410A44084043050A054107054405430542414405050505054243404107440909054041444243410608064307060644420943094140440906060942094309094106094305404144430506064443054241404443054205050605050543054241060505054305414443074007420505074443054042050505054243054144060644404205050540420605050543054440434408410705444108084142434007050A430740440807084243050A430540440841420505050543050A404305410742054443054041070505050542434405404142430505050541050544404142430544054208050505054041424305444243054041440709050805420943054005050542430544050905414243054405090505434405054440050505"
theorem cover_168835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 449) (hex := hex_168835)
  decide +kernel
#print axioms cover_168835

def state_169285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_169285 : String := "404142430944070943444309094344400909404109060A0A440A0742434405060943440541430607060741424344050A094344050A0A424344054007050743440540050505"
theorem cover_169285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 69) (hex := hex_169285)
  decide +kernel
#print axioms cover_169285

def state_169359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_169359 : String := "424344400907404109424307070941420A09420743440640060A07440740090A434409400941094342440640060A090909"
theorem cover_169359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_169359)
  decide +kernel
#print axioms cover_169359

def state_169411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_169411 : String := "4144090944424341054407400542054341050605054341094406090942054341090805"
theorem cover_169411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_169411)
  decide +kernel
#print axioms cover_169411

def state_169447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_169447 : String := "4442434005440A4105420543400506050543400944090909420506"
theorem cover_169447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_169447)
  decide +kernel
#print axioms cover_169447

def state_169475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_169475 : String := "4243404144420543440705050544074205434140054407050705414442070A420543404105444342050A0505410A0A0544074207434041440743420540410507414407050705074144074342074108070707074005410507434041440909444306074342414009440943424109400644060909094006440643060741090642070941440A43424041094409434240090A09090A40090A420A09444342070A074342404144434240060A0A074342404144090944064342414005440609064109060741440A43420A0A0A44074342404144078F06410A074041440609060A42070A40094109440A434240090A090A42404105070A094406434207060741440A43420A0A0A440743424007410A074041440543050A0505074041440909440643064240094109060941440A43420A050A440643050A4240410A070A4041094407090A4041094407070A"
theorem cover_169475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 327) (hex := hex_169475)
  decide +kernel
#print axioms cover_169475


end Mub6.Numerical.CircleFullPrototype.Forest
