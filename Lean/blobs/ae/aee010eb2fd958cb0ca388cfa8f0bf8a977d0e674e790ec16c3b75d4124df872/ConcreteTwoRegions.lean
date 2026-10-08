import TwoRegionSide

set_option autoImplicit false

set_option maxRecDepth 10000

set_option maxHeartbeats 1000000

namespace Mub6.Classification.SideColumns.ConcreteTwoRegions

open SharedSeedIntervals

def moments0 : SidePolynomialBoxes := ⟨⟨(-786725/524288),(-1569897/1048576),(453189/524288),(57033/65536)⟩,⟨(-485101/1048576),(-481461/1048576),(463269/524288),(932523/1048576)⟩,⟨(-566575/1048576),(-559623/1048576),(-445863/524288),(-875343/1048576)⟩⟩

def region0_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-251393/524288),(-462811/1048576),(230043/262144),(470457/524288)⟩⟩

theorem reject0_0 : anyCheck (pairChecks moments0 region0_0 region0_0) = true := by decide +kernel

def region0_1 : Label := ⟨⟨(-66347/131072),(-516841/1048576),(904317/1048576),(912353/1048576)⟩,⟨(112081/262144),(259819/524288),(455381/524288),(473951/524288)⟩⟩

theorem reject0_1 : anyCheck (pairChecks moments0 region0_1 region0_1) = true := by decide +kernel

theorem side0_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments0 s t r) (h : System s t r x y)

    (cover : ∀ j, region0_0.Mem (x j) (y j) ∨ region0_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments0 region0_0 region0_1 reject0_0 reject0_1 hm h cover

#print axioms side0_excluded

def moments1 : SidePolynomialBoxes := ⟨⟨(-786725/524288),(-1569897/1048576),(453189/524288),(57033/65536)⟩,⟨(-485109/1048576),(-481461/1048576),(465317/524288),(936619/1048576)⟩,⟨(-566595/1048576),(-139907/262144),(-443815/524288),(-871247/1048576)⟩⟩

def region1_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-251393/524288),(-462811/1048576),(230043/262144),(470457/524288)⟩⟩

theorem reject1_0 : anyCheck (pairChecks moments1 region1_0 region1_0) = true := by decide +kernel

def region1_1 : Label := ⟨⟨(-66347/131072),(-516841/1048576),(904317/1048576),(912353/1048576)⟩,⟨(445413/1048576),(261215/524288),(909163/1048576),(949273/1048576)⟩⟩

theorem reject1_1 : anyCheck (pairChecks moments1 region1_1 region1_1) = true := by decide +kernel

theorem side1_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments1 s t r) (h : System s t r x y)

    (cover : ∀ j, region1_0.Mem (x j) (y j) ∨ region1_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments1 region1_0 region1_1 reject1_0 reject1_1 hm h cover

#print axioms side1_excluded

def moments4 : SidePolynomialBoxes := ⟨⟨(-786725/524288),(-1569897/1048576),(451141/524288),(56777/65536)⟩,⟨(-485109/1048576),(-481461/1048576),(465317/524288),(936619/1048576)⟩,⟨(-566583/1048576),(-1093/2048),(-445863/524288),(-875343/1048576)⟩⟩

def region4_0 : Label := ⟨⟨(-527999/1048576),(-516841/1048576),(-912353/1048576),(-905941/1048576)⟩,⟨(-505607/1048576),(-465695/1048576),(459313/524288),(939489/1048576)⟩⟩

theorem reject4_0 : anyCheck (pairChecks moments4 region4_0 region4_0) = true := by decide +kernel

def region4_1 : Label := ⟨⟨(-66347/131072),(-516841/1048576),(904317/1048576),(912353/1048576)⟩,⟨(445413/1048576),(261215/524288),(909163/1048576),(949273/1048576)⟩⟩

theorem reject4_1 : anyCheck (pairChecks moments4 region4_1 region4_1) = true := by decide +kernel

theorem side4_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments4 s t r) (h : System s t r x y)

    (cover : ∀ j, region4_0.Mem (x j) (y j) ∨ region4_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments4 region4_0 region4_1 reject4_0 reject4_1 hm h cover

#print axioms side4_excluded

def moments24 : SidePolynomialBoxes := ⟨⟨(-1577003/1048576),(-1573441/1048576),(908431/1048576),(914567/1048576)⟩,⟨(-485101/1048576),(-481461/1048576),(463269/524288),(932523/1048576)⟩,⟨(-285009/524288),(-563083/1048576),(-889521/1048576),(-54571/65536)⟩⟩

def region24_0 : Label := ⟨⟨(-133387/262144),(-522429/1048576),(-227291/262144),(-225671/262144)⟩,⟨(-499961/1048576),(-229961/524288),(921711/1048576),(942329/1048576)⟩⟩

theorem reject24_0 : anyCheck (pairChecks moments24 region24_0 region24_0) = true := by decide +kernel

def region24_1 : Label := ⟨⟨(-133387/262144),(-519637/1048576),(225671/262144),(910763/1048576)⟩,⟨(442499/1048576),(259819/524288),(455381/524288),(950635/1048576)⟩⟩

theorem reject24_1 : anyCheck (pairChecks moments24 region24_1 region24_1) = true := by decide +kernel

theorem side24_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments24 s t r) (h : System s t r x y)

    (cover : ∀ j, region24_0.Mem (x j) (y j) ∨ region24_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments24 region24_0 region24_1 reject24_0 reject24_1 hm h cover

#print axioms side24_excluded

def moments27 : SidePolynomialBoxes := ⟨⟨(-1577003/1048576),(-1573441/1048576),(904335/1048576),(910471/1048576)⟩,⟨(-485101/1048576),(-481461/1048576),(463269/524288),(932523/1048576)⟩,⟨(-285011/524288),(-563087/1048576),(-55851/65536),(-54827/65536)⟩⟩

def region27_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-499961/1048576),(-462811/1048576),(921711/1048576),(470457/524288)⟩⟩

theorem reject27_0 : anyCheck (pairChecks moments27 region27_0 region27_0) = true := by decide +kernel

def region27_1 : Label := ⟨⟨(-133387/262144),(-519637/1048576),(225671/262144),(910763/1048576)⟩,⟨(442499/1048576),(258421/524288),(28511/32768),(950635/1048576)⟩⟩

theorem reject27_1 : anyCheck (pairChecks moments27 region27_1 region27_1) = true := by decide +kernel

theorem side27_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments27 s t r) (h : System s t r x y)

    (cover : ∀ j, region27_0.Mem (x j) (y j) ∨ region27_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments27 region27_0 region27_1 reject27_0 reject27_1 hm h cover

#print axioms side27_excluded

def moments28 : SidePolynomialBoxes := ⟨⟨(-1577003/1048576),(-1573441/1048576),(904335/1048576),(910471/1048576)⟩,⟨(-485109/1048576),(-481461/1048576),(465317/524288),(936619/1048576)⟩,⟨(-570025/1048576),(-563075/1048576),(-889521/1048576),(-54571/65536)⟩⟩

def region28_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-251393/524288),(-229961/524288),(230043/262144),(942329/1048576)⟩⟩

theorem reject28_0 : anyCheck (pairChecks moments28 region28_0 region28_0) = true := by decide +kernel

def region28_1 : Label := ⟨⟨(-133387/262144),(-519637/1048576),(225671/262144),(910763/1048576)⟩,⟨(442499/1048576),(259819/524288),(455381/524288),(950635/1048576)⟩⟩

theorem reject28_1 : anyCheck (pairChecks moments28 region28_1 region28_1) = true := by decide +kernel

theorem side28_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments28 s t r) (h : System s t r x y)

    (cover : ∀ j, region28_0.Mem (x j) (y j) ∨ region28_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments28 region28_0 region28_1 reject28_0 reject28_1 hm h cover

#print axioms side28_excluded

def moments29 : SidePolynomialBoxes := ⟨⟨(-1577003/1048576),(-1573441/1048576),(904335/1048576),(910471/1048576)⟩,⟨(-485137/1048576),(-481473/1048576),(467365/524288),(940715/1048576)⟩,⟨(-570053/1048576),(-563071/1048576),(-885425/1048576),(-54315/65536)⟩⟩

def region29_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-251393/524288),(-229961/524288),(230043/262144),(942329/1048576)⟩⟩

theorem reject29_0 : anyCheck (pairChecks moments29 region29_0 region29_0) = true := by decide +kernel

def region29_1 : Label := ⟨⟨(-133387/262144),(-519637/1048576),(225671/262144),(910763/1048576)⟩,⟨(218329/524288),(261215/524288),(909163/1048576),(238333/262144)⟩⟩

theorem reject29_1 : anyCheck (pairChecks moments29 region29_1 region29_1) = true := by decide +kernel

theorem side29_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments29 s t r) (h : System s t r x y)

    (cover : ∀ j, region29_0.Mem (x j) (y j) ∨ region29_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments29 region29_0 region29_1 reject29_0 reject29_1 hm h cover

#print axioms side29_excluded

def moments30 : SidePolynomialBoxes := ⟨⟨(-1576995/1048576),(-1573417/1048576),(900239/1048576),(906375/1048576)⟩,⟨(-485137/1048576),(-481473/1048576),(467365/524288),(940715/1048576)⟩,⟨(-570057/1048576),(-563043/1048576),(-889521/1048576),(-54571/65536)⟩⟩

def region30_0 : Label := ⟨⟨(-527999/1048576),(-516841/1048576),(-912353/1048576),(-905941/1048576)⟩,⟨(-251393/524288),(-462811/1048576),(230043/262144),(470457/524288)⟩⟩

theorem reject30_0 : anyCheck (pairChecks moments30 region30_0 region30_0) = true := by decide +kernel

def region30_1 : Label := ⟨⟨(-133387/262144),(-519637/1048576),(225671/262144),(910763/1048576)⟩,⟨(442499/1048576),(259819/524288),(455381/524288),(950635/1048576)⟩⟩

theorem reject30_1 : anyCheck (pairChecks moments30 region30_1 region30_1) = true := by decide +kernel

theorem side30_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments30 s t r) (h : System s t r x y)

    (cover : ∀ j, region30_0.Mem (x j) (y j) ∨ region30_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments30 region30_0 region30_1 reject30_0 reject30_1 hm h cover

#print axioms side30_excluded

def moments57 : SidePolynomialBoxes := ⟨⟨(-1580555/1048576),(-788485/524288),(451139/524288),(56775/65536)⟩,⟨(-485137/1048576),(-481473/1048576),(467365/524288),(940715/1048576)⟩,⟨(-573491/1048576),(-283247/524288),(-887301/1048576),(-217729/262144)⟩⟩

def region57_0 : Label := ⟨⟨(-66347/131072),(-519637/1048576),(-910763/1048576),(-904317/1048576)⟩,⟨(-251393/524288),(-457029/1048576),(230043/262144),(117967/131072)⟩⟩

theorem reject57_0 : anyCheck (pairChecks moments57 region57_0 region57_0) = true := by decide +kernel

def region57_1 : Label := ⟨⟨(-268157/524288),(-522429/1048576),(901043/1048576),(227291/262144)⟩,⟨(218329/524288),(259819/524288),(455381/524288),(238333/262144)⟩⟩

theorem reject57_1 : anyCheck (pairChecks moments57 region57_1 region57_1) = true := by decide +kernel

theorem side57_excluded {s t r : ℂ} {x y : Fin 3 → ℂ}

    (hm : CoversSidePolynomials moments57 s t r) (h : System s t r x y)

    (cover : ∀ j, region57_0.Mem (x j) (y j) ∨ region57_1.Mem (x j) (y j)) : False :=

  two_regions_exclude moments57 region57_0 region57_1 reject57_0 reject57_1 hm h cover

#print axioms side57_excluded

end Mub6.Classification.SideColumns.ConcreteTwoRegions
