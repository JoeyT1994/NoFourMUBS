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
def state_2588426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
def hex_2588426 : String := "43404408084441424308400844084109084308084243080808414243400809400844414243084008090808414243400709074308400507424308400707084308400844084108084243084008440809084044050544414342404408084406410643094240050605400506424005060543424008440841430842080508084240054441054308054105050541434240440505444143424044080544064106074005064240050605434240080908424005444105090705410707400544050542400544050505434240440808444143084240050905094143420708074308420705400544084105054240054441050541050505"
theorem cover_2588426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 241) (hex := hex_2588426)
  decide +kernel
#print axioms cover_2588426

def state_2588667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
def hex_2588667 : String := "4442434008414407424307400707070A4041080841440742434008414407424307400707070A404144070808414407DC4407DC43084008414407430742400707070844070A43084008414407080842434006414442064306400609060640414442060806064144424340064144424306400609430840080906064041444243064005DC080606DC43400841440842430640060908094041440805084144434240080908424008414409090940050943424008440909400809424044050544414309050941434240050705050A4005440505440A0A42430640064144DC060643400641444206090606404144050506414443424006440A06400509424005070507440A064442430640060A0A064340084144084206080A404108084144434208084240054144084308050805434240064144080808084240054144050544050505440A0A"
theorem cover_2588667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 323) (hex := hex_2588667)
  decide +kernel
#print axioms cover_2588667

def state_2588990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
def hex_2588990 : String := "43414409400809440809414443400809400542410505054340084244094143084208050809400542440505054443080843400809400542414405050805"
theorem cover_2588990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2588990)
  decide +kernel
#print axioms cover_2588990

def state_2589051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_2589051 : String := "434144094042430808050909414440054309054005434244094140050909050544400509400543094241050505"
theorem cover_2589051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2589051)
  decide +kernel
#print axioms cover_2589051

def state_2589098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_2589098 : String := "41440742050909"
theorem cover_2589098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2589098)
  decide +kernel
#print axioms cover_2589098
end Mub6.Numerical.CircleFullD0.Forest
