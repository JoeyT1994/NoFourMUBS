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
def state_1658614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_1658614 : String := "41444243414005440507404406084407420743410806060843410506064243414440084243414407400807440740080708434144054005434241054405400507050544400507400A43424144070A0A4144054006430A050A42070606400A424341444008424341080808434144400807404208430908420643064144074043060506440740080644400807400A420643060A414407400842070708400A424306084341444042430608094206430641444009060944400A06400906400742060944400A420643060A4007420543050A41444008420843414440084307074008434206410944400806094208414405400505080A08400AEA0A0A4144080A0843414440434241090A06064342414440054342410544054009070505400943420909424144054005430905444005074009430907410544050944400A4342414407400A070A4144054005430905444007070A4207410507400A434241444009420609090A094241440A0A0A414440054342070505400943090A0A41440509444005434241054405090505400643094241090606424144054005434241054405050505444005074006430A060640430706434241444009430942410944400943094209090909074440094309420A410909400743074209070942414440064342414405400943094241050A0544400A43420A41050A0A4009434209090A41054405094241050A0540064342EA0942EA06440A0A0644400A4342410A0A41444006430A064006430A060A0A400A43420A444140064309060A070A0644400A420A430A060A41440840064206060A434144400543424105060605400643060644060A0644424340064144060A0606060A"
theorem cover_1658614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 28) (count := 619) (hex := hex_1658614)
  decide +kernel
#print axioms cover_1658614

def state_1659235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1659235 : String := "42434041070707074340414405074409434207060641070707"
theorem cover_1659235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1659235)
  decide +kernel
#print axioms cover_1659235

def state_1659265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_1659265 : String := "4207434107404407070707"
theorem cover_1659265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1659265)
  decide +kernel
#print axioms cover_1659265

def state_1659277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
def hex_1659277 : String := "434144404206430607064042064306414440420743414407404306070644074043060706070640EA064440420743414407400A060A070740420A434441400A0505050A420543050706444042074341440706440705070640420543054441400A0705050541440740420943414407404243EA0743EA09074407400A0709074407400A07"
theorem cover_1659277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 131) (hex := hex_1659277)
  decide +kernel
#print axioms cover_1659277


end Mub6.Numerical.CircleFullD0.Forest
