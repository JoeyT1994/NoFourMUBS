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
def state_2586191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
def hex_2586191 : String := "434441404208084207094008094140424308440805430805424344090944414206064243080608414243400844060940050643400509054243084008440641090843080543094409054042080842430944094142430808080809444106434005420605054143400542440641054342400506050505054340054244414342060505430842060541434240054406410505050543420805050505"
theorem cover_2586191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 153) (hex := hex_2586191)
  decide +kernel
#print axioms cover_2586191

def state_2586345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2586345 : String := "404207074243074107074307410707"
theorem cover_2586345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2586345)
  decide +kernel
#print axioms cover_2586345

def state_2586361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_2586361 : String := "4243414408060641444008420808400842430644050508440840064206084308410505"
theorem cover_2586361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2586361)
  decide +kernel
#print axioms cover_2586361

def state_2586398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
def hex_2586398 : String := "414442400707400707424006430644414243054006050909064008430944094109084442400607074206400609"
theorem cover_2586398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2586398)
  decide +kernel
#print axioms cover_2586398

def state_2586445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
def hex_2586445 : String := "4243404108084144074243074007070744074243074007070740414407424308400544070A0844074243084005410808084144074243404407410A4243070A07440641064243070A074044060A06434044074107070606440742434041440708084144074243074007070744074243074007070740414407424340084407410A084044050544070A430840050644074243084008DC0841440642434044074107070606064407DC43400841070740414406080841064406430706434008414407420707074041050541440643424007060606440743084240050605"
theorem cover_2586445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 219) (hex := hex_2586445)
  decide +kernel
#print axioms cover_2586445

def state_2586666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2586666 : String := "404441424306080808064441424340440806054044414243080A0808414243060A430808420608444142054305400A0542054305400805414205430540440A0A0542054305404408410806054340080940440808444142430740070607094142434008054044080844094109094308400809424309400809094243400609404408064441420509094142054305400605064340080940084409410908414243400644050640064441424305054340060540440A07054206430640060541070643400644410909414206060640444108080644414243404408064405054044410A0841070744410A09410A42050943400809404408084409410909424340060940440806440909430840080941424340060707434006090742064306074206430640064441424306400609080606"
theorem cover_2586666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 301) (hex := hex_2586666)
  decide +kernel
#print axioms cover_2586666

def state_2586968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2586968 : String := "444142434008444108084109084005440909430805424340064408064005444105054105054308054142430609434005440505054206430605"
theorem cover_2586968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2586968)
  decide +kernel
#print axioms cover_2586968

def state_2587027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
def hex_2587027 : String := "42434044410A4243400844080A0A43084008440808410A42434006440A060A4340084408084008440A0A44410A42434044050A05400A0A43404407410A08440541050540440A0A44060A410A424340440A0A05400A0A434044410A4243050808410A4243060A0844410505410A42050940440A0A440A0A40440A0A440A410A420A43400A0A0A434044414243080A0808414243080A430805424308400544080808444106424340080940440641060806430906414243400A0A0A4340440608060642434044084108084409414243090A09094044410A08410A4243080A084406410A4243400A090A430906434008094044084108084406410609404441050541050544064106434240440A0A06400506420605"
theorem cover_2587027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 275) (hex := hex_2587027)
  decide +kernel
#print axioms cover_2587027


end Mub6.Numerical.CircleFullD0.Forest
