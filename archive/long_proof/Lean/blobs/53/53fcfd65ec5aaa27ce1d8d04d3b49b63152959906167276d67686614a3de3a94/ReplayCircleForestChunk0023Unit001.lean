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
def state_158491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
def hex_158491 : String := "424440434244050705420A0543070A4043420741444006070607420A414440050A400643060A44050643074207410A074440050940434142440506050541424405060505430941424409404307410A0507094244050705"
theorem cover_158491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 87) (hex := hex_158491)
  decide +kernel
#print axioms cover_158491

def state_158578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_158578 : String := "4142444043414244060A4440050640074341060A08420A440540050A41420A4407070A430A0A404341420A08420A4440430A0A0A0A41080A0A44404341440507054107054309410905404341084244400543050508440506080842440A0A4405404305054341420A05050A"
theorem cover_158578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 107) (hex := hex_158578)
  decide +kernel
#print axioms cover_158578

def state_158685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_158685 : String := "43414244064043070A06440909424409070941420A44094309080A"
theorem cover_158685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_158685)
  decide +kernel
#print axioms cover_158685

def state_158712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_158712 : String := "41420643440641054042054305440605050642434406420507064344440608074406434041420644064307060A0A0A"
theorem cover_158712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_158712)
  decide +kernel
#print axioms cover_158712

def state_158762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_158762 : String := "42434440410606060644404105420543444041050A054041064206430644050506050540414205440505424405054443060543060506434440410707064041094306440609064440414243440540070505084243440740414243060807424307440740424406060706074106084408404142050842440543404205080505080843070841080840414442090909444243404109444243064042064306410644060606430640424306090806420609064041094442434042054105440809050543404241084408090808404241050808080941054442050809430940410909084243090909410909"
theorem cover_158762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 231) (hex := hex_158762)
  decide +kernel
#print axioms cover_158762

def state_158994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_158994 : String := "43444042430641440A06440A0A430641440A060A0640424306444106080843064406410608064440424143440540420541050905054344094009420A0A094143440A40424143064405050941430A44090A0A42060A440940424105094144054340410509050509420541050A43440940090A094241054344054205400A050541434405060543440A400A064405400A05404244414340420744410608070605434008070707444143404244410643060A41060844414306404106430642064406060643060A410643064008060640424441050707444143404105420544430A0543404105070505050543404142094409430A07090A400907414340444105070706050742054441050A410507434042440A08440A43080842440A060A4042074409074207440A074143404442084106084207414306070706074340080707424441054306050744410643064042070A064106430607"
theorem cover_158994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 341) (hex := hex_158994)
  decide +kernel
#print axioms cover_158994

def state_159336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_159336 : String := "44074043440705444142064005060A4142404406430541060506050506"
theorem cover_159336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_159336)
  decide +kernel
#print axioms cover_159336

def state_159366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_159366 : String := "4041424344074041420A070A0A4408404142440843404142440505080A0840410509050842094408430A080A43070842430A0A0A4142430808080A"
theorem cover_159366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_159366)
  decide +kernel
#print axioms cover_159366

def state_159430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_159430 : String := "40444142430640414243064406064306444042410644070607064042064106430644080906424306440A4041060A06430A440A404142430644404142064306800A064041064206440505064344050544400708404109050942430A440A40420A050A43054405050A064340070640414243074407090842430A44074041424305440505050541080A43050841080A0A41424306404441064206430640444109424305400806050906410642060906430640440909094243064044424143064008060A414305404405050A05420841430540050905440A420641060A43054005440A09440A41060A"
theorem cover_159430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 231) (hex := hex_159430)
  decide +kernel
#print axioms cover_159430


end Mub6.Numerical.CircleFullPrototype.Forest
