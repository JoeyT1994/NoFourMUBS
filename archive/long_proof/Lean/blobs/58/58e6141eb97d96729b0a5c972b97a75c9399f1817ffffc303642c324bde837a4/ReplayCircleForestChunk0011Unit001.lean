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
def state_59390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_59390 : String := "43424041080909084240414443420A08050544430A420A0A09414443424041080908084240410544430A05050640410544430842050505410844430806080844430942400A094041444309420A4041050A4144430906050909090909404108444341080641404406054442434108064105400544420505050608400644420A06074307074108444309404144424308404144420505054442430A41050A43060742050541444243084005080808444243094041420505090943084041084492070809080844424309404144420A060909094306400641420906060941444243084108090808444209090908"
theorem cover_59390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 235) (hex := hex_59390)
  decide +kernel
#print axioms cover_59390

def state_59625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_59625 : String := "42430844400541054243094440050905090543084440410543070541080907"
theorem cover_59625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_59625)
  decide +kernel
#print axioms cover_59625

def state_59656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_59656 : String := "43440644070744434006410842440606064041084244060706414244080808424443084041424406080606410A4244430540060543064006410842050506430840084108080807"
theorem cover_59656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 71) (hex := hex_59656)
  decide +kernel
#print axioms cover_59656

def state_59727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_59727 : String := "424309444142430A400A440A0A430A40444306410A0A0A444341420A4006050541420A4044430640064106054306400641420A0606440543054041420A0605050A43094142400A09404443064006440A0907444309404441420906090909090A420A430A400A0A41424309440A09090A4344410605074441430640424406060642444306414006424405430540060505400605434106064140064244430640064209060706400642090644060643064006424405414305070505410707"
theorem cover_59727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 189) (hex := hex_59727)
  decide +kernel
#print axioms cover_59727

def state_59916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_59916 : String := "414243094440424341440709094144074206430706440742430740410644060606430940410609064341444042070807090941444340420708074042070A07434008420708404244060608420608444340424107054108050540424107440543074207410705414443070A430841084042440708080A440543054140424405430541070544050805054207410705430940424144430806080941440808444309414440420908090809094241060941440808094207434144050905414407404307060644054043094206410609430506404243094441060906094243090643094441060906434440414243054405090505050944404341424440080540084308080842440509054142440A43080808424443404108050540410A424405430541080505410A054340080840410842440808084108420908440A084341424405404305080505054142440A404308084308060A42440540430541080505054043094441084208080743094441420808420908084243094440414243054405094305440509420A05414243050505424309050509430944404143054244054309404142094405080909440543054041070505050540410909410909"
theorem cover_59916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 441) (hex := hex_59916)
  decide +kernel
#print axioms cover_59916

def state_60357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_60357 : String := "4041424308440906084209430807414209430944090609"
theorem cover_60357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60357 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_60357)
  decide +kernel
#print axioms cover_60357

def state_60387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_60387 : String := "4340414442050505444208434140050908084243050543050541444206064206064442084340414408434206400506060841060806424340410544080506064340410544430A0805410644434206060606064041060806"
theorem cover_60387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 87) (hex := hex_60387)
  decide +kernel
#print axioms cover_60387

def state_60476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_60476 : String := "41440905444342410909090943420505420505"
theorem cover_60476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_60476)
  decide +kernel
#print axioms cover_60476

def state_60496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_60496 : String := "444342400906090943420505420505"
theorem cover_60496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_60496)
  decide +kernel
#print axioms cover_60496


end Mub6.Numerical.CircleFullPrototype.Forest
