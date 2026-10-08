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
def state_2261335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
def hex_2261335 : String := "4043414240444341090505054409064044434142404443414209BE4209BE414209074205444043BE05070543410906410605444341074209BE41070909404443BE4107424407070743BE4107424005064044070707440743BE0742404443414205BE420544050505054443414206BE0641420544060505064044434241BE440840050641BE0842414408050508434241BE0541BE40440805440806420541404405054407050544434241BE444008070641070842410744080507434241060641BE404406060642064107064142404443410905050544070540440743410742050705074205404443420508050544434241070507070643414206444043BE41060643BE060642054440060605414205440605054443414209074240444341090606064406064044074342060742060707410742060743414206404407060706410606420540444342414005060541404408054443424144080606080806400544080505054443424106064140444342410606084206080644434206070706404406050642054140440605060506414205404443414205070505054443410742050707050543414209404407430906074206404443420641074006064206410606064443420607060641420640440706074205400606"
theorem cover_2261335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 469) (hex := hex_2261335)
  decide +kernel
#print axioms cover_2261335

def state_2261804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
def hex_2261804 : String := "4244400606054440434244080508420508434244400A0606440840414342060808064143420608060642064408400606404342054005414443420540050605050505434206404144060505414406060605"
theorem cover_2261804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 81) (hex := hex_2261804)
  decide +kernel
#print axioms cover_2261804

def state_2261886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
def hex_2261886 : String := "4405404241430544054042070542410507054307440807410505424143054405400505434405400705444005054042430740070A43054041050741050842430A404144050A0A0A43054005054105430505"
theorem cover_2261886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 81) (hex := hex_2261886)
  decide +kernel
#print axioms cover_2261886

def state_2261968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 12)))
def hex_2261968 : String := "4008424344054105084408414008070808"
theorem cover_2261968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2261968)
  decide +kernel
#print axioms cover_2261968


end Mub6.Numerical.CircleFullD0.Forest
