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
def state_2276818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
def hex_2276818 : String := "42404341440A07074144420A430A0A4243070A4307414440070A40070A0A440A07430A41440A420A40430A0A0A0A40434144424144050607054207410606440707414442434144050A08414408400A0A084305084243414440070A0707414440420A430A410508420A4305410508400742430A41440A0A0A4341050A4144054042070505440A0A440A40070A4341440540050544080741444005054009424305410544054005050544084007424307080844084243070A430708434144420A05424041440506070A40060644080A4144424043050A0A4005054240434144050A0A4144420A05420A43054041050A050A430A4144054209050A4043410544050641054408420A08430541054405420A054408420A400808"
theorem cover_2276818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 279) (hex := hex_2276818)
  decide +kernel
#print axioms cover_2276818

def state_2277098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 15)))
def hex_2277098 : String := "4007430741444240070940430741444209430A0A42074307080743094109094207400743074108074442070A07"
theorem cover_2277098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_2277098)
  decide +kernel
#print axioms cover_2277098

def state_2277144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
def hex_2277144 : String := "4307414442430741400744424307414007440707074307414007444243050A054207430541050707070743414007444207050707414009444243410507414009054007444243050505420709430509424307414007444243050905070709400744420709074207430741400744420709070707"
theorem cover_2277144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 115) (hex := hex_2277144)
  decide +kernel
#print axioms cover_2277144

def state_2277260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2277260 : String := "4144424007414306440A07074006064207400741060607"
theorem cover_2277260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2277260)
  decide +kernel
#print axioms cover_2277260

def state_2277285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
def hex_2277285 : String := "4240434144420A4007430505070741444243400A0A4041440A080A0A434041050741050A40414405424305404105070505440A0A4144054205050A424307400741080A434007414405080740414442084305400805080741444208050844420A430A0A4207430740070844420A0A4207430740070A43414442090A4209404307410507090A4144420940430541050A09424043080809404341050A414442050508440A4208430A400808430909440A420A400A0A4043414405424007430505054442070607414442434005054041054405424305400505050505424340410507410544054207054041440542430540050505444243074007410507430540050542074307094105444243054005050542434007054041440507074105440A0743054005054305404105090544424340070A404144080A080A4340060540080842430740074144420A430A0A420743074007414405070707434007410606404109074144424305050542434005054009410544050709440842070843414405424005050544420A0542400606064144424005050542404305410544054243054041050A05054305054005054442400A0A40430505054240430A41440A420A430A400A0A0A430A0A404306414405424305400505054408420A08430641050A"
theorem cover_2277285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 477) (hex := hex_2277285)
  decide +kernel
#print axioms cover_2277285


end Mub6.Numerical.CircleFullD0.Forest
