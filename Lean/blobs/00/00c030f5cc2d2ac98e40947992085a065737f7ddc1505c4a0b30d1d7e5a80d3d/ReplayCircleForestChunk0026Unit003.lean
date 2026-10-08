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
def state_171640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_171640 : String := "4142434440420A0A0A4042434144420A0A0644424340410A440742074341080707080A4340410A440A43420A0A0A0A0A4243404106444243090643410609410607060606434041064443424140440606064044434209050A4342090506094140440A060505420A0A064106440A06404106440A06064106440A064341444340420A090A0A43060644434042410A0A410A050A0A4340424106444305420A0543050641070542050540424106440A064106440A060A410A0A42434106440A060A43410A0A0A440A404206090643440A40434142444340070A0907444340070709074244434041420A09420505050A434041070505404109080A4443404144420943070907440505050A4340070540084106054109420A4409094341420A440A054205050A0A424344404142070A4243060707410A0740414243444207434041440743420705070541050507424340414409090709074340414443424041440909050505424007074041440A43050A0505434209054240410607094041444305060644050841060544090941440909054041440742074340410607060607410A074407074344434041420505050540410A070A434005054041424443420A050A434240080A05420A0808424407080541420A0505440740410A070A4243440741420743050707440707430507414243444042070A0840420943050A090743050A42430907430507440A40414243440706060A42434441074207074107420707440A410642060A434407070A410A4243070A074344404143440A420A43050A074305070A4041434244430540410A050505444305404144050505050542440A40080A440A0843054205054143050A05440740410A420A070A"
theorem cover_171640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 629) (hex := hex_171640)
  decide +kernel
#print axioms cover_171640

def state_172271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
def hex_172271 : String := "44404142430506064243444006054440064105420505400A410542050544070643440606064142430744054006054344074006410742050644070642434407404405054407050743444042410505064207410743440A400607074006424407054441064306064106430A064407400642070640414243440A08440A09430844060A424344440A0A09444344400A090844404106420906090808430544424306080608414243090943440508444008050842430509430A4440050505"
theorem cover_172271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172271 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 187) (hex := hex_172271)
  decide +kernel
#print axioms cover_172271

def state_172463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_172463 : String := "4441430540424405410605050543050541430644404241060606424143064407074306080640424144060A0A0642414443064042070607430740420741070A0744430640064207064306400A42070941440643064006070643064440424106080642080540420A064244414306080A0A06"
theorem cover_172463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 113) (hex := hex_172463)
  decide +kernel
#print axioms cover_172463

def state_172577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_172577 : String := "08"
theorem cover_172577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_172577)
  decide +kernel
#print axioms cover_172577

def state_172580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_172580 : String := "40424341440843400608080808434106060942084341440540424306080642430505050508"
theorem cover_172580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_172580)
  decide +kernel
#print axioms cover_172580

def state_172618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
def hex_172618 : String := "4243414443400A420A41060640094208410908430A4005420541050A440A0A414408400542054341050505084341444243060906424340064106064041050941444205060544420A06054306400641060644064243060A064144094240094341050909094409420A09"
theorem cover_172618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 105) (hex := hex_172618)
  decide +kernel
#print axioms cover_172618
end Mub6.Numerical.CircleFullPrototype.Forest
