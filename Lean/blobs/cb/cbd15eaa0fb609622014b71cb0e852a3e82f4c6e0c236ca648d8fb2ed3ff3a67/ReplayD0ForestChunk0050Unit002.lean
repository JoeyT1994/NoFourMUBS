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
def state_2561346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_2561346 : String := "41440542070744424340410544054207070540410508054340410544050705084243074041074407060743074041070707"
theorem cover_2561346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2561346)
  decide +kernel
#print axioms cover_2561346

def state_2561395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_2561395 : String := "434041444307070744430909094107094041440609094144050709"
theorem cover_2561395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2561395)
  decide +kernel
#print axioms cover_2561395

def state_2561422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_2561422 : String := "424340410A444206090641070640414442430A0A0A0A444243410A0641400A07400506090A414407074407064309400A410707"
theorem cover_2561422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2561422)
  decide +kernel
#print axioms cover_2561422

def state_2561473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_2561473 : String := "400A410A4243060A0A"
theorem cover_2561473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2561473)
  decide +kernel
#print axioms cover_2561473

def state_2561483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
def hex_2561483 : String := "43444041420943074406414209060709414243440940414409420543050905414442430809430709424340054144080505400541440805054340050A404144090505414442430A06064205054405054408054409400941434409420940094106090909434407400741424407430A4041440605050A0707440640414209060941064209064209430744054007054041424344414440050505050544410A090A43444108070844414243444007410809080A43080642094307064108420A08424305094344070844420907420908414243444005050544404105094143050505054344404105420507414205050505444041424305444106090A43444106420506080642434405050943440708440642434006410609060641424344400505050543050642430544050543440505440640424305060642054305064041084243050A08414205084205430544400842050808424305440505434405054440420943070942054305440941400942054305090940424305094307414442090708074205430541444042430509430741080942054305410505400805444009054042050705444041420943440941420943090909440941420844084008090809414243440640094106050543444009064041420606060644054041420844080908414205440506064209430906404142430A4441070A07434441420A064209060A44414244400A4306080744400A43410A0641420909080A4244080A44090606420A4344090A44060641424344400A41054305070A44404107080707434440414243060606424309060641064243440640094305060606400A41420706420A4344400642430A06060A06444041424406060642440607064106064041060606424344090A084344404209064209430906400A420A434144404209064209434144060A09060A44090A0A444009064006420706"
theorem cover_2561483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 687) (hex := hex_2561483)
  decide +kernel
#print axioms cover_2561483


end Mub6.Numerical.CircleFullD0.Forest
