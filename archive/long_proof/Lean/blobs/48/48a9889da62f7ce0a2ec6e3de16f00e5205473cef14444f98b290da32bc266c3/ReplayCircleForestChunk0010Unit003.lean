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
def state_57255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_57255 : String := "42434440414344420A434440070A404142070707410A050A42434041440A420543050A05050A4340414442430907094243424041440505050509424041440743404144050505050A070A4041440743090707410A050944074205094144420A0942050909404144074243420A40070707434207070707410A44074205074407420A400707434407420541434007050705074143440A42054043410A050A050A4305054041434244434041444205430505050505404144420A43440A0808080505084443404142444344420509420509444240080540084143054405050542080808444309424409400809094306064205440908414205440909054041424443444240080A40080A0808084443424440084106070844400709064208440706084208084142440A430540080544434042440906060940420A060A430606420544430507430505434008054008410605424440410A080A0844404143420808420706084143420A440A060A43420A4407080708434205444143054008050505424405054407084143420544404305414205440A05050505420A440A404106050505440A4041420A43440740060609420707410A054344404142434443090743094007090743090707414243444043090A0A400909440A40070A43094440090A0942434440070509074309444007410907074041424344430940414244430606060642440708074142440906060943400606400606444041060741064207074006064309064243444143094007090941430940080943050844070843090741424344404309410609094043060606444041064243440740060507064106420A06064306064243440905444007074041420543060605054309440709440740414243440706060607414243060A43440640064206060707"
theorem cover_57255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 23) (count := 659) (hex := hex_57255)
  decide +kernel
#print axioms cover_57255

def state_57920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_57920 : String := "44420A400A41430944420806090909"
theorem cover_57920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_57920)
  decide +kernel
#print axioms cover_57920

def state_57937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_57937 : String := "43400A4144420708080A404144420A43400541050A0505440A0A4144420743074041440705440743420505050742434005084005064308400544060544424307400A07430A4041440A430A420A0A0A41070A42430A400A414406060A430A404144430A05050A4144434207400A0606430805440A09"
theorem cover_57937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 117) (hex := hex_57937)
  decide +kernel
#print axioms cover_57937

def state_58055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_58055 : String := "40410844060841440808444243090A43060609"
theorem cover_58055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_58055)
  decide +kernel
#print axioms cover_58055

def state_58075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_58075 : String := "4144434240410544060541084443064240050A0608084240054105440905400541054409054308054443424140060A06064241404409054443420A0609430A050A41400644094306090643420A064241050A4105440605"
theorem cover_58075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 87) (hex := hex_58075)
  decide +kernel
#print axioms cover_58075

def state_58163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_58163 : String := "444342404108444308420708080808424041440905444342070909434205080541440708440743084206404105440905064041084409084108440A0843084240050808"
theorem cover_58163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 67) (hex := hex_58163)
  decide +kernel
#print axioms cover_58163

def state_58232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 8)))
def hex_58232 : String := "42404144430A420A40064107064308420A080A41440743084207080A40410806410844054305400605"
theorem cover_58232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_58232)
  decide +kernel
#print axioms cover_58232
end Mub6.Numerical.CircleFullPrototype.Forest
