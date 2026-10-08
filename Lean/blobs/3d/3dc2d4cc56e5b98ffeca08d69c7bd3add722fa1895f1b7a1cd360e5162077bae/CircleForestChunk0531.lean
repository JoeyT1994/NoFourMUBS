import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1316100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 58) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 48)))
def hex_1316100 : String := "4440094341050909404341424409400805050909434105424440094307090705414244094008050509"
theorem cover_1316100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1316100)
  decide +kernel
#print axioms cover_1316100

def state_1316141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 59) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1316141 : String := "42444009434142054406070509400843070844094009434142440607060609"
theorem cover_1316141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1316141)
  decide +kernel
#print axioms cover_1316141

def state_1316173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
def hex_1316173 : String := "43410A42060608"
theorem cover_1316173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1316173)
  decide +kernel
#print axioms cover_1316173

def state_1316181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 49)))
def hex_1316181 : String := "414207444007050742074440060707"
theorem cover_1316181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1316181)
  decide +kernel
#print axioms cover_1316181

def state_1316196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 49)))
def hex_1316196 : String := "414244400843070808444043410508084341054207054142080542080940084341050708420844400843414207444006430509074207060808"
theorem cover_1316196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1316196)
  decide +kernel
#print axioms cover_1316196

def state_1316253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
def hex_1316253 : String := "414240070740430A0843054441054206050542074008430708"
theorem cover_1316253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1316253)
  decide +kernel
#print axioms cover_1316253

def state_1316279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 12)))
def hex_1316279 : String := "4441420705420740070707"
theorem cover_1316279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1316279)
  decide +kernel
#print axioms cover_1316279

def state_1316292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
def hex_1316292 : String := "4240444307060706404443054105424440430A0606404305060605430541054206054443050605"
theorem cover_1316292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1316292)
  decide +kernel
#print axioms cover_1316292

def state_1316332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1316332 : String := "40444307410A050707"
theorem cover_1316332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1316332)
  decide +kernel
#print axioms cover_1316332

def state_1316344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 48)))
def hex_1316344 : String := "4142070542074440060840430641070607"
theorem cover_1316344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1316344)
  decide +kernel
#print axioms cover_1316344
end Mub6.Numerical.CircleFullD0.Forest
