import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCoefficients
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def primitive_m4_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-264))) 1) (.lit (456))) 1) (.lit (-216))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1440))) 1) (.lit (8496))) 1) (.lit (-12960))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-2376))) 1) (.lit (23784))) 1) (.lit (-96336))) 1) (.lit (127332))) 1) (.lit (-52488)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1704))) 1) (.lit (23256))) 1) (.lit (-149904))) 1) (.lit (443232))) 1) (.lit (-472392))) 1) (.lit (157464)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-528))) 1) (.lit (9180))) 1) (.lit (-79272))) 1) (.lit (347004))) 1) (.lit (-682344))) 1) (.lit (393660))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (912))) 1) (.lit (-13392))) 1) (.lit (93312))) 1) (.lit (-297432))) 1) (.lit (314928))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-432))) 1) (.lit (5832))) 1) (.lit (-34992))) 1) (.lit (78732))) 3))

def primitive_m4_p2_coefficient_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-84))) 1) (.lit (204))) 1) (.lit (-108))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (72))) 1) (.lit (2880))) 1) (.lit (-5832))) 1) (.lit (2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (420))) 1) (.lit (2208))) 1) (.lit (-33696))) 1) (.lit (57348))) 1) (.lit (-26244)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (288))) 1) (.lit (-924))) 1) (.lit (-20736))) 1) (.lit (152604))) 1) (.lit (-209952))) 1) (.lit (78732)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-468))) 1) (.lit (540))) 1) (.lit (35964))) 1) (.lit (-201204))) 1) (.lit (157464))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (216))) 2) (.lit (-17496))) 1) (.lit (78732))) 2)) 1)

def primitive_m4_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-792))) 1) (.lit (1368))) 1) (.lit (-648))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (168)) 1) (.lit (-3288))) 1) (.lit (18888))) 1) (.lit (-27432))) 1) (.lit (11664)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-3912))) 1) (.lit (37248))) 1) (.lit (-140400))) 1) (.lit (159408))) 1) (.lit (-52488)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1704))) 1) (.lit (22536))) 1) (.lit (-134136))) 1) (.lit (332424))) 1) (.lit (-209952))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (2856))) 1) (.lit (-30456))) 1) (.lit (134136))) 1) (.lit (-192456))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1296))) 1) (.lit (11664))) 1) (.lit (-34992))) 3))

def primitive_m4_p2_coefficient_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-252))) 1) (.lit (612))) 1) (.lit (-324))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (120))) 1) (.lit (6432))) 1) (.lit (-12312))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (396))) 1) (.lit (3960))) 1) (.lit (-49032))) 1) (.lit (70956))) 1) (.lit (-26244)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (648))) 1) (.lit (-19008))) 1) (.lit (110808))) 1) (.lit (-87480))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-972))) 1) (.lit (14580))) 1) (.lit (-61236))) 2)) 1)

def primitive_m4_p2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-864))) 1) (.lit (1500))) 1) (.lit (-1296))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-2616))) 1) (.lit (13848))) 1) (.lit (-19656))) 1) (.lit (17496)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1890))) 1) (.lit (16602))) 1) (.lit (-54702))) 1) (.lit (58806))) 1) (.lit (-52488)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-138)) 1) (.lit (2844))) 1) (.lit (-18144))) 1) (.lit (37908))) 1) (.lit (-39366))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (54)) 1) (.lit (-810))) 1) (.lit (1458))) 1) (.lit (13122))) 2))

def primitive_m4_p2_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-288))) 1) (.lit (720))) 1) (.lit (-1188))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-48))) 1) (.lit (5088))) 1) (.lit (-10800))) 1) (.lit (18468)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-60)) 1) (.lit (2562))) 1) (.lit (-22572))) 1) (.lit (47142))) 1) (.lit (-52488)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (78)) 1) (.lit (-2862))) 1) (.lit (28674))) 1) (.lit (-65610))) 1) (.lit (-157464)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1) (.lit (-972))) 1) (.lit (-4374))) 1) (.lit (39366))) 1))

def primitive_m4_p2_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-378))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-372))) 1) (.lit (-360))) 1) (.lit (5292)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-762))) 1) (.lit (2280))) 1) (.lit (8100))) 1) (.lit (16038)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-78)) 1) (.lit (372))) 1) (.lit (7506))) 1) (.lit (-5832))) 1) (.lit (-314928)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (1026))) 1) (.lit (-13122))) 1) (.lit (39366))) 1))

def primitive_m4_p2_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-54)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-156))) 1) (.lit (312))) 1) (.lit (-864)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (1440))) 1) (.lit (-2970))) 1) (.lit (38880)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-756))) 1) (.lit (33534))) 1) (.lit (-231822)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (486))) 1) (.lit (-3402))) 1) (.lit (4374))) 1))

def primitive_m4_p2_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (36)) 1) (.lit (-756))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-30))) 1) (.lit (-1272))) 1) (.lit (17010)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (-852))) 1) (.lit (18792))) 1) (.lit (-62694)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (1134))) 1) (.lit (-7290))) 1))

def primitive_m4_p2_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-108)) 1) (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-60))) 1) (.lit (2214)))) 1) (.add (.mulY (.add (.mulY (.lit (-102)) 1) (.lit (3024))) 1) (.lit (8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (486))) 1) (.lit (-2430))) 1))

def primitive_m4_p2_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-216))) 1) (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-162))) 1) (.lit (9396)))) 1) (.mulY (.add (.mulY (.lit (18)) 1) (.lit (162))) 1))

def primitive_m4_p2_coefficient_11_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-54)) 1) (.add (.mulY (.lit (-60)) 1) (.lit (2106)))) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1))

def primitive_m4_p2_coefficient_12_expr : HExpr := (.add (.mulX (.lit (162)) 1) (.mulY (.lit (18)) 1))

def primitive_m3_p0_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-6)) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (66))) 1) (.lit (-60)))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-114))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (54))) 1))

def primitive_m3_p0_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-6)) 1) (.lit (12))) 1) (.add (.mulY (.lit (12)) 1) (.lit (-12)))) 1) (.mulY (.lit (-6)) 1))

def primitive_m3_p1_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (34))) 1) (.lit (-30)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (34))) 1) (.lit (-156))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-30))) 1) (.lit (108))) 1))

def primitive_m3_p1_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-4)) 1) (.lit (10))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (42))) 1) (.lit (-66)))) 1) (.mulY (.add (.mulY (.lit (4)) 1) (.lit (-30))) 1))

def primitive_m3_p1_coefficient_03_expr : HExpr := (.add (.mulX (.lit (12)) 1) (.add (.mulY (.lit (6)) 1) (.lit (-54))))

def primitive_m3_p1_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (10))) 1) (.add (.mulY (.lit (4)) 1) (.lit (-18))))

def primitive_m3_p1_coefficient_05_expr : HExpr := (.lit (6))

def primitive_m3_p1_coefficient_06_expr : HExpr := (.lit (2))

def primitive_m3_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (2)) 1) (.lit (-2))) 1) (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-26))) 1) (.lit (24)))) 1) (.add (.mulY (.add (.mulY (.lit (-8)) 1) (.lit (78))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-54))) 1))

def primitive_m3_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (2)) 1) (.lit (4))) 1) (.add (.mulY (.lit (-2)) 1) (.lit (-66)))) 1) (.add (.mulY (.lit (-12)) 1) (.lit (162))))

def primitive_m3_p2_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-12)) 1) (.add (.mulY (.lit (-6)) 1) (.lit (54))))

def primitive_m3_p2_coefficient_04_expr : HExpr := (.add (.mulX (.lit (4)) 1) (.lit (-18)))

def primitive_m3_p2_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_m3_p3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-114))) 1) (.lit (102)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-114))) 1) (.lit (588))) 1) (.lit (-432)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (102))) 1) (.lit (-432))) 1))

def primitive_m3_p3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-6))) 1) (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-108))) 1)) 1) (.add (.mulY (.lit (-6)) 2) (.lit (432))))

def primitive_m3_p3_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (6))) 1) (.add (.mulY (.lit (6)) 1) (.lit (-102))))

def primitive_m3_p3_coefficient_06_expr : HExpr := (.lit (6))

def primitive_m2_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-396))) 1) (.lit (684))) 1) (.lit (-324)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-984))) 1) (.lit (4932))) 1) (.lit (-6912))) 1) (.lit (2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1224))) 1) (.lit (9924))) 1) (.lit (-28188))) 1) (.lit (28188))) 1) (.lit (-8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-984))) 1) (.lit (9924))) 1) (.lit (-43200))) 1) (.lit (69984))) 1) (.lit (-34992))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-396))) 1) (.lit (4932))) 1) (.lit (-28188))) 1) (.lit (69984))) 1) (.lit (-52488))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (684))) 1) (.lit (-6912))) 1) (.lit (28188))) 1) (.lit (-34992))) 3)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-324))) 1) (.lit (2916))) 1) (.lit (-8748))) 4))

def primitive_m2_m2_coefficient_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-504))) 1) (.lit (900))) 1) (.lit (-432))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-960))) 1) (.lit (6864))) 1) (.lit (-10800))) 1) (.lit (4860))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-504))) 1) (.lit (6864))) 1) (.lit (-34560))) 1) (.lit (45684))) 1) (.lit (-17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (900))) 1) (.lit (-10800))) 1) (.lit (45684))) 1) (.lit (-34992))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-432))) 1) (.lit (4860))) 1) (.lit (-17496))) 3)) 1)

def primitive_m2_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-72))) 1) (.lit (36))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-912))) 1) (.lit (1488))) 1) (.lit (-648)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1608))) 1) (.lit (8124))) 1) (.lit (-9504))) 1) (.lit (2916)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1608))) 1) (.lit (11808))) 1) (.lit (-28728))) 1) (.lit (17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-912))) 1) (.lit (8124))) 1) (.lit (-28728))) 1) (.lit (29160))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (1488))) 1) (.lit (-9504))) 1) (.lit (17496))) 3)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-648))) 1) (.lit (2916))) 4))

def primitive_m2_m2_coefficient_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-120))) 1) (.lit (84))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1176))) 1) (.lit (2832))) 1) (.lit (-1728))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-1176))) 1) (.lit (9720))) 1) (.lit (-17712))) 1) (.lit (8748))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-120)) 1) (.lit (2832))) 1) (.lit (-17712))) 1) (.lit (17496))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-1728))) 1) (.lit (8748))) 3)) 1)

def primitive_m2_m2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-66))) 1) (.lit (18))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-660))) 1) (.lit (816))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-804))) 1) (.lit (4062))) 1) (.lit (-2916))) 1) (.lit (-1458)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-660))) 1) (.lit (4062))) 1) (.lit (-9288))) 1) (.lit (7290))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-66)) 1) (.lit (816))) 1) (.lit (-2916))) 1) (.lit (7290))) 2)) 1) (.mulY (.add (.mulY (.lit (18)) 2) (.lit (-1458))) 3))

def primitive_m2_m2_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-180))) 1) (.lit (132))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-768))) 1) (.lit (2358))) 1) (.lit (-2214))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-180)) 1) (.lit (2358))) 1) (.lit (-5292))) 1) (.lit (7776))) 1) (.lit (-4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (132)) 1) (.lit (-2214))) 1) (.lit (7776))) 1) (.lit (26244))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (108))) 2) (.lit (-4374))) 2))

def primitive_m2_m2_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.lit (-24))) 1) (.add (.mulY (.add (.mulY (.lit (-162)) 1) (.lit (-348))) 1) (.lit (810)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-162))) 1) (.lit (456))) 1) (.lit (1944))) 1) (.lit (-4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-348))) 1) (.lit (1944))) 1) (.lit (43740))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (810))) 1) (.lit (-4374))) 2))

def primitive_m2_m2_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-12)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-96))) 1) (.lit (12))) 1) (.lit (270)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (378))) 1) (.lit (-648))) 1) (.lit (-972)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-648))) 1) (.lit (29646))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (270))) 1) (.lit (-972))) 2))

def primitive_m2_m2_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.lit (6)) 1) 1) (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (-378))) 1) (.lit (324)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-378))) 1) (.lit (10206))) 1)) 1) (.mulY (.lit (324)) 2))

def primitive_m2_m2_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-48))) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-48)) 1) (.lit (1782))) 1)) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 2))

def primitive_m2_m2_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (18)) 1) (.mulY (.lit (126)) 1)) 1) (.mulY (.lit (18)) 2))

def primitive_m2_m1_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (8))) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (26))) 1) (.lit (-78))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-24))) 1) (.lit (54))) 1))

def primitive_m2_m1_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (14))) 1) (.lit (-24))) 1) (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-6))) 1))

def primitive_m2_m1_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.mulY (.lit (6)) 1))

def primitive_m2_m1_coefficient_04_expr : HExpr := (.mulY (.lit (2)) 1)

def primitive_m2_p0_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-120))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (108))) 1))

def primitive_m2_p0_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-30))) 1) (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-66))) 1))

def primitive_m2_p0_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.lit (-54)))

def primitive_m2_p0_coefficient_04_expr : HExpr := (.add (.mulY (.lit (6)) 1) (.lit (-36)))

def primitive_m2_p0_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_m2_p1_coefficient_00_expr : HExpr := (.lit (-12))

def primitive_m2_p1_coefficient_01_expr : HExpr := (.lit (-6))

def primitive_m2_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-12)) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (240))) 1) (.lit (-216)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (240))) 1) (.lit (-1296))) 1) (.lit (972)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-216))) 1) (.lit (972))) 1))

def primitive_m2_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-18)) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (162))) 1) (.lit (108)))) 1) (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (108))) 1) (.lit (-1458))))

def primitive_m2_p2_coefficient_03_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-12)) 1) (.lit (162)))) 1) (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1) (.lit (-972))))

def primitive_m2_p2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-6)) 1) (.lit (12))) 1) (.mulY (.lit (12)) 1))

def primitive_m2_p2_coefficient_05_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-6)) 1) (.lit (108))))

def primitive_m2_p2_coefficient_06_expr : HExpr := (.lit (18))

def primitive_m2_p3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-8))) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-26))) 1) (.lit (78))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (24))) 1) (.lit (-54))) 1))

def primitive_m2_p3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-2))) 1) (.lit (-12))) 1) (.add (.mulY (.add (.mulY (.lit (4)) 1) (.lit (-66))) 1) (.lit (162))))

def primitive_m2_p3_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-12)) 1) (.lit (54))))

def primitive_m2_p3_coefficient_04_expr : HExpr := (.add (.mulY (.lit (4)) 1) (.lit (-18)))

def primitive_m2_p3_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_m2_p4_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-528))) 1) (.lit (912))) 1) (.lit (-432)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-1704))) 1) (.lit (9180))) 1) (.lit (-13392))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-2376))) 1) (.lit (23256))) 1) (.lit (-79272))) 1) (.lit (93312))) 1) (.lit (-34992)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-1440))) 1) (.lit (23784))) 1) (.lit (-149904))) 1) (.lit (347004))) 1) (.lit (-297432))) 1) (.lit (78732)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-264)) 1) (.lit (8496))) 1) (.lit (-96336))) 1) (.lit (443232))) 1) (.lit (-682344))) 1) (.lit (314928))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (456)) 1) (.lit (-12960))) 1) (.lit (127332))) 1) (.lit (-472392))) 1) (.lit (393660))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-216)) 1) (.lit (5832))) 1) (.lit (-52488))) 1) (.lit (157464))) 3))

def primitive_m2_p4_coefficient_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (24))) 1) (.lit (-12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (288))) 1) (.lit (-468))) 1) (.lit (216))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (420))) 1) (.lit (-924))) 1) (.lit (540))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (72))) 1) (.lit (2208))) 1) (.lit (-20736))) 1) (.lit (35964))) 1) (.lit (-17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-84)) 1) (.lit (2880))) 1) (.lit (-33696))) 1) (.lit (152604))) 1) (.lit (-201204))) 1) (.lit (78732))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (204)) 1) (.lit (-5832))) 1) (.lit (57348))) 1) (.lit (-209952))) 1) (.lit (157464))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-108)) 1) (.lit (2916))) 1) (.lit (-26244))) 1) (.lit (78732))) 3))

def primitive_m2_p4_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-96))) 1) (.lit (48))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-1704))) 1) (.lit (2856))) 1) (.lit (-1296)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (168)) 1) (.lit (-3912))) 1) (.lit (22536))) 1) (.lit (-30456))) 1) (.lit (11664)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-3288))) 1) (.lit (37248))) 1) (.lit (-134136))) 1) (.lit (134136))) 1) (.lit (-34992)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-792)) 1) (.lit (18888))) 1) (.lit (-140400))) 1) (.lit (332424))) 1) (.lit (-192456))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (1368)) 1) (.lit (-27432))) 1) (.lit (159408))) 1) (.lit (-209952))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-648)) 1) (.lit (11664))) 1) (.lit (-52488))) 3))

def primitive_m2_p4_coefficient_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (24))) 1) (.lit (12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (396))) 1) (.lit (648))) 1) (.lit (-972))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (120))) 1) (.lit (3960))) 1) (.lit (-19008))) 1) (.lit (14580))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-252)) 1) (.lit (6432))) 1) (.lit (-49032))) 1) (.lit (110808))) 1) (.lit (-61236))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (612)) 1) (.lit (-12312))) 1) (.lit (70956))) 1) (.lit (-87480))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-324)) 1) (.lit (5832))) 1) (.lit (-26244))) 3))

def primitive_m2_p4_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-138))) 1) (.lit (54))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-1890))) 1) (.lit (2844))) 1) (.lit (-810)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-2616))) 1) (.lit (16602))) 1) (.lit (-18144))) 1) (.lit (1458)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-864)) 1) (.lit (13848))) 1) (.lit (-54702))) 1) (.lit (37908))) 1) (.lit (13122)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (1500)) 1) (.lit (-19656))) 1) (.lit (58806))) 1) (.lit (-39366))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-1296)) 1) (.lit (17496))) 1) (.lit (-52488))) 2))

def primitive_m2_p4_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-60))) 1) (.lit (78))) 1) (.lit (162)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-48))) 1) (.lit (2562))) 1) (.lit (-2862))) 1) (.lit (-972)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-288)) 1) (.lit (5088))) 1) (.lit (-22572))) 1) (.lit (28674))) 1) (.lit (-4374)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (720)) 1) (.lit (-10800))) 1) (.lit (47142))) 1) (.lit (-65610))) 1) (.lit (39366)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-1188)) 1) (.lit (18468))) 1) (.lit (-52488))) 1) (.lit (-157464))) 1))

def primitive_m2_p4_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-78))) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-762))) 1) (.lit (372))) 1) (.lit (1026)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-372)) 1) (.lit (2280))) 1) (.lit (7506))) 1) (.lit (-13122)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (18)) 1) (.lit (-360))) 1) (.lit (8100))) 1) (.lit (-5832))) 1) (.lit (39366)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-378)) 1) (.lit (5292))) 1) (.lit (16038))) 1) (.lit (-314928))) 1))

def primitive_m2_p4_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-18)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-96))) 1) (.lit (12))) 1) (.lit (486)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-156)) 1) (.lit (1440))) 1) (.lit (-756))) 1) (.lit (-3402)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (312)) 1) (.lit (-2970))) 1) (.lit (33534))) 1) (.lit (4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-54)) 1) (.lit (-864))) 1) (.lit (38880))) 1) (.lit (-231822))) 1))

def primitive_m2_p4_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-6))) 1) (.lit (-24))) 1) (.add (.mulY (.add (.mulY (.lit (-30)) 1) (.lit (-852))) 1) (.lit (1134)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-1272))) 1) (.lit (18792))) 1) (.lit (-7290)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-756)) 1) (.lit (17010))) 1) (.lit (-62694))) 1))

def primitive_m2_p4_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-18)) 1) (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-102))) 1) (.lit (486)))) 1) (.add (.mulY (.add (.mulY (.lit (-60)) 1) (.lit (3024))) 1) (.lit (-2430)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-108)) 1) (.lit (2214))) 1) (.lit (8748))) 1))

def primitive_m2_p4_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (18))) 1) (.add (.mulY (.add (.mulY (.lit (18)) 1) (.lit (-162))) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-216)) 1) (.lit (9396))) 1))

def primitive_m2_p4_coefficient_11_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-60)) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-54)) 1) (.lit (2106))) 1))

def primitive_m2_p4_coefficient_12_expr : HExpr := (.add (.mulX (.lit (18)) 1) (.mulY (.lit (162)) 1))

def primitive_m1_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (2)) 1) (.lit (-2))) 1) (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-26))) 1) (.lit (24)))) 1) (.add (.mulY (.add (.mulY (.lit (-8)) 1) (.lit (78))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-54))) 1))

def primitive_m1_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (2)) 1) (.lit (-2))) 1) (.add (.mulY (.lit (-14)) 1) (.lit (6)))) 1) (.mulY (.lit (24)) 1))

def primitive_m1_m2_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.mulY (.lit (6)) 1))

def primitive_m1_m2_coefficient_04_expr : HExpr := (.mulX (.lit (-2)) 1)

def primitive_m1_m1_coefficient_00_expr : HExpr := (.lit (12))

def primitive_m1_m1_coefficient_01_expr : HExpr := (.lit (6))

def primitive_m1_p2_coefficient_00_expr : HExpr := (.lit (-12))

def primitive_m1_p2_coefficient_01_expr : HExpr := (.lit (-6))

def primitive_m1_p3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (34))) 1) (.lit (-30)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (34))) 1) (.lit (-156))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-30))) 1) (.lit (108))) 1))

def primitive_m1_p3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-4)) 1) (.lit (4))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (42))) 1) (.lit (-30)))) 1) (.mulY (.add (.mulY (.lit (10)) 1) (.lit (-66))) 1))

def primitive_m1_p3_coefficient_03_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.add (.mulY (.lit (12)) 1) (.lit (-54))))

def primitive_m1_p3_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (4))) 1) (.add (.mulY (.lit (10)) 1) (.lit (-18))))

def primitive_m1_p3_coefficient_05_expr : HExpr := (.lit (6))

def primitive_m1_p3_coefficient_06_expr : HExpr := (.lit (2))

def primitive_p0_m3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-12))) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-66))) 1) (.lit (114))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (60))) 1) (.lit (-54))) 1))

def primitive_p0_m3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-12))) 1) (.lit (6))) 1) (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (12))) 1))

def primitive_p0_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-120))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (108))) 1))

def primitive_p0_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (6)) 1) (.add (.mulY (.lit (18)) 1) (.lit (-66)))) 1) (.mulY (.lit (-30)) 1))

def primitive_p0_m2_coefficient_03_expr : HExpr := (.add (.mulY (.lit (-6)) 1) (.lit (-54)))

def primitive_p0_m2_coefficient_04_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.lit (-36)))

def primitive_p0_m2_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_p0_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-120))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (108))) 1))

def primitive_p0_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (6)) 1) (.add (.mulY (.lit (18)) 1) (.lit (-66)))) 1) (.mulY (.lit (-30)) 1))

def primitive_p0_p2_coefficient_03_expr : HExpr := (.add (.mulY (.lit (-6)) 1) (.lit (-54)))

def primitive_p0_p2_coefficient_04_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.lit (-36)))

def primitive_p0_p2_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_p0_p3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (12))) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (66))) 1) (.lit (-114))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-60))) 1) (.lit (54))) 1))

def primitive_p0_p3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (12))) 1) (.lit (-6))) 1) (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1))

def primitive_p1_m3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (34))) 1) (.lit (-30)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (34))) 1) (.lit (-156))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-30))) 1) (.lit (108))) 1))

def primitive_p1_m3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-4)) 1) (.lit (4))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (42))) 1) (.lit (-30)))) 1) (.mulY (.add (.mulY (.lit (10)) 1) (.lit (-66))) 1))

def primitive_p1_m3_coefficient_03_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.add (.mulY (.lit (12)) 1) (.lit (-54))))

def primitive_p1_m3_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (4))) 1) (.add (.mulY (.lit (10)) 1) (.lit (-18))))

def primitive_p1_m3_coefficient_05_expr : HExpr := (.lit (6))

def primitive_p1_m3_coefficient_06_expr : HExpr := (.lit (2))

def primitive_p1_m2_coefficient_00_expr : HExpr := (.lit (12))

def primitive_p1_m2_coefficient_01_expr : HExpr := (.lit (6))

def primitive_p1_p1_coefficient_00_expr : HExpr := (.lit (12))

def primitive_p1_p1_coefficient_01_expr : HExpr := (.lit (6))

def primitive_p1_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (26))) 1) (.lit (-24)))) 1) (.add (.mulY (.add (.mulY (.lit (8)) 1) (.lit (-78))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (54))) 1))

def primitive_p1_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.lit (14)) 1) (.lit (-6)))) 1) (.mulY (.lit (-24)) 1))

def primitive_p1_p2_coefficient_03_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.mulY (.lit (-6)) 1))

def primitive_p1_p2_coefficient_04_expr : HExpr := (.mulX (.lit (2)) 1)

def primitive_p2_m4_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-528))) 1) (.lit (912))) 1) (.lit (-432)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-1704))) 1) (.lit (9180))) 1) (.lit (-13392))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-2376))) 1) (.lit (23256))) 1) (.lit (-79272))) 1) (.lit (93312))) 1) (.lit (-34992)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-1440))) 1) (.lit (23784))) 1) (.lit (-149904))) 1) (.lit (347004))) 1) (.lit (-297432))) 1) (.lit (78732)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-264)) 1) (.lit (8496))) 1) (.lit (-96336))) 1) (.lit (443232))) 1) (.lit (-682344))) 1) (.lit (314928))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (456)) 1) (.lit (-12960))) 1) (.lit (127332))) 1) (.lit (-472392))) 1) (.lit (393660))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-216)) 1) (.lit (5832))) 1) (.lit (-52488))) 1) (.lit (157464))) 3))

def primitive_p2_m4_coefficient_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (24))) 1) (.lit (-12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (288))) 1) (.lit (-468))) 1) (.lit (216))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (420))) 1) (.lit (-924))) 1) (.lit (540))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (72))) 1) (.lit (2208))) 1) (.lit (-20736))) 1) (.lit (35964))) 1) (.lit (-17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-84)) 1) (.lit (2880))) 1) (.lit (-33696))) 1) (.lit (152604))) 1) (.lit (-201204))) 1) (.lit (78732))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (204)) 1) (.lit (-5832))) 1) (.lit (57348))) 1) (.lit (-209952))) 1) (.lit (157464))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-108)) 1) (.lit (2916))) 1) (.lit (-26244))) 1) (.lit (78732))) 3))

def primitive_p2_m4_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-96))) 1) (.lit (48))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-1704))) 1) (.lit (2856))) 1) (.lit (-1296)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (168)) 1) (.lit (-3912))) 1) (.lit (22536))) 1) (.lit (-30456))) 1) (.lit (11664)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-3288))) 1) (.lit (37248))) 1) (.lit (-134136))) 1) (.lit (134136))) 1) (.lit (-34992)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-792)) 1) (.lit (18888))) 1) (.lit (-140400))) 1) (.lit (332424))) 1) (.lit (-192456))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (1368)) 1) (.lit (-27432))) 1) (.lit (159408))) 1) (.lit (-209952))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-648)) 1) (.lit (11664))) 1) (.lit (-52488))) 3))

def primitive_p2_m4_coefficient_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (24))) 1) (.lit (12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (396))) 1) (.lit (648))) 1) (.lit (-972))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (120))) 1) (.lit (3960))) 1) (.lit (-19008))) 1) (.lit (14580))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-252)) 1) (.lit (6432))) 1) (.lit (-49032))) 1) (.lit (110808))) 1) (.lit (-61236))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (612)) 1) (.lit (-12312))) 1) (.lit (70956))) 1) (.lit (-87480))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-324)) 1) (.lit (5832))) 1) (.lit (-26244))) 3))

def primitive_p2_m4_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-138))) 1) (.lit (54))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-1890))) 1) (.lit (2844))) 1) (.lit (-810)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-2616))) 1) (.lit (16602))) 1) (.lit (-18144))) 1) (.lit (1458)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-864)) 1) (.lit (13848))) 1) (.lit (-54702))) 1) (.lit (37908))) 1) (.lit (13122)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (1500)) 1) (.lit (-19656))) 1) (.lit (58806))) 1) (.lit (-39366))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-1296)) 1) (.lit (17496))) 1) (.lit (-52488))) 2))

def primitive_p2_m4_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-60))) 1) (.lit (78))) 1) (.lit (162)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-48))) 1) (.lit (2562))) 1) (.lit (-2862))) 1) (.lit (-972)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-288)) 1) (.lit (5088))) 1) (.lit (-22572))) 1) (.lit (28674))) 1) (.lit (-4374)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (720)) 1) (.lit (-10800))) 1) (.lit (47142))) 1) (.lit (-65610))) 1) (.lit (39366)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-1188)) 1) (.lit (18468))) 1) (.lit (-52488))) 1) (.lit (-157464))) 1))

def primitive_p2_m4_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-78))) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-762))) 1) (.lit (372))) 1) (.lit (1026)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-372)) 1) (.lit (2280))) 1) (.lit (7506))) 1) (.lit (-13122)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (18)) 1) (.lit (-360))) 1) (.lit (8100))) 1) (.lit (-5832))) 1) (.lit (39366)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-378)) 1) (.lit (5292))) 1) (.lit (16038))) 1) (.lit (-314928))) 1))

def primitive_p2_m4_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-18)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-96))) 1) (.lit (12))) 1) (.lit (486)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-156)) 1) (.lit (1440))) 1) (.lit (-756))) 1) (.lit (-3402)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (312)) 1) (.lit (-2970))) 1) (.lit (33534))) 1) (.lit (4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-54)) 1) (.lit (-864))) 1) (.lit (38880))) 1) (.lit (-231822))) 1))

def primitive_p2_m4_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-6))) 1) (.lit (-24))) 1) (.add (.mulY (.add (.mulY (.lit (-30)) 1) (.lit (-852))) 1) (.lit (1134)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-1272))) 1) (.lit (18792))) 1) (.lit (-7290)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-756)) 1) (.lit (17010))) 1) (.lit (-62694))) 1))

def primitive_p2_m4_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-18)) 1) (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-102))) 1) (.lit (486)))) 1) (.add (.mulY (.add (.mulY (.lit (-60)) 1) (.lit (3024))) 1) (.lit (-2430)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-108)) 1) (.lit (2214))) 1) (.lit (8748))) 1))

def primitive_p2_m4_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (18))) 1) (.add (.mulY (.add (.mulY (.lit (18)) 1) (.lit (-162))) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-216)) 1) (.lit (9396))) 1))

def primitive_p2_m4_coefficient_11_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-60)) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-54)) 1) (.lit (2106))) 1))

def primitive_p2_m4_coefficient_12_expr : HExpr := (.add (.mulX (.lit (18)) 1) (.mulY (.lit (162)) 1))

def primitive_p2_m3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (8))) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (26))) 1) (.lit (-78))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-24))) 1) (.lit (54))) 1))

def primitive_p2_m3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (66))) 1) (.lit (-162))))

def primitive_p2_m3_coefficient_03_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.add (.mulY (.lit (12)) 1) (.lit (-54))))

def primitive_p2_m3_coefficient_04_expr : HExpr := (.add (.mulY (.lit (-4)) 1) (.lit (18)))

def primitive_p2_m3_coefficient_05_expr : HExpr := (.lit (6))

def primitive_p2_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-12)) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (240))) 1) (.lit (-216)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (240))) 1) (.lit (-1296))) 1) (.lit (972)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-216))) 1) (.lit (972))) 1))

def primitive_p2_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-18)) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (162))) 1) (.lit (108)))) 1) (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (108))) 1) (.lit (-1458))))

def primitive_p2_m2_coefficient_03_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-12)) 1) (.lit (162)))) 1) (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1) (.lit (-972))))

def primitive_p2_m2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-6)) 1) (.lit (12))) 1) (.mulY (.lit (12)) 1))

def primitive_p2_m2_coefficient_05_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.lit (-6)) 1) (.lit (108))))

def primitive_p2_m2_coefficient_06_expr : HExpr := (.lit (18))

def primitive_p2_m1_coefficient_00_expr : HExpr := (.lit (12))

def primitive_p2_m1_coefficient_01_expr : HExpr := (.lit (6))

def primitive_p2_p0_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-120))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (108))) 1))

def primitive_p2_p0_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-30))) 1) (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-66))) 1))

def primitive_p2_p0_coefficient_03_expr : HExpr := (.add (.mulX (.lit (-6)) 1) (.lit (-54)))

def primitive_p2_p0_coefficient_04_expr : HExpr := (.add (.mulY (.lit (6)) 1) (.lit (-36)))

def primitive_p2_p0_coefficient_05_expr : HExpr := (.lit (-6))

def primitive_p2_p1_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-8))) 1) (.lit (6))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-26))) 1) (.lit (78))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (24))) 1) (.lit (-54))) 1))

def primitive_p2_p1_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-14))) 1) (.lit (24))) 1) (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (6))) 1))

def primitive_p2_p1_coefficient_03_expr : HExpr := (.add (.mulX (.lit (6)) 1) (.mulY (.lit (-6)) 1))

def primitive_p2_p1_coefficient_04_expr : HExpr := (.mulY (.lit (-2)) 1)

def primitive_p2_p2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-396))) 1) (.lit (684))) 1) (.lit (-324)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-984))) 1) (.lit (4932))) 1) (.lit (-6912))) 1) (.lit (2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1224))) 1) (.lit (9924))) 1) (.lit (-28188))) 1) (.lit (28188))) 1) (.lit (-8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-984))) 1) (.lit (9924))) 1) (.lit (-43200))) 1) (.lit (69984))) 1) (.lit (-34992))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-396))) 1) (.lit (4932))) 1) (.lit (-28188))) 1) (.lit (69984))) 1) (.lit (-52488))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (684))) 1) (.lit (-6912))) 1) (.lit (28188))) 1) (.lit (-34992))) 3)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-324))) 1) (.lit (2916))) 1) (.lit (-8748))) 4))

def primitive_p2_p2_coefficient_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-24))) 1) (.lit (12))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-504))) 1) (.lit (900))) 1) (.lit (-432))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-960))) 1) (.lit (6864))) 1) (.lit (-10800))) 1) (.lit (4860))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-504))) 1) (.lit (6864))) 1) (.lit (-34560))) 1) (.lit (45684))) 1) (.lit (-17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (900))) 1) (.lit (-10800))) 1) (.lit (45684))) 1) (.lit (-34992))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-432))) 1) (.lit (4860))) 1) (.lit (-17496))) 3)) 1)

def primitive_p2_p2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-72))) 1) (.lit (36))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-912))) 1) (.lit (1488))) 1) (.lit (-648)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1608))) 1) (.lit (8124))) 1) (.lit (-9504))) 1) (.lit (2916)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1608))) 1) (.lit (11808))) 1) (.lit (-28728))) 1) (.lit (17496))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-912))) 1) (.lit (8124))) 1) (.lit (-28728))) 1) (.lit (29160))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (1488))) 1) (.lit (-9504))) 1) (.lit (17496))) 3)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-648))) 1) (.lit (2916))) 4))

def primitive_p2_p2_coefficient_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-120))) 1) (.lit (84))) 1) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1176))) 1) (.lit (2832))) 1) (.lit (-1728))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-1176))) 1) (.lit (9720))) 1) (.lit (-17712))) 1) (.lit (8748))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-120)) 1) (.lit (2832))) 1) (.lit (-17712))) 1) (.lit (17496))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-1728))) 1) (.lit (8748))) 3)) 1)

def primitive_p2_p2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-66))) 1) (.lit (18))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-660))) 1) (.lit (816))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-804))) 1) (.lit (4062))) 1) (.lit (-2916))) 1) (.lit (-1458)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-660))) 1) (.lit (4062))) 1) (.lit (-9288))) 1) (.lit (7290))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-66)) 1) (.lit (816))) 1) (.lit (-2916))) 1) (.lit (7290))) 2)) 1) (.mulY (.add (.mulY (.lit (18)) 2) (.lit (-1458))) 3))

def primitive_p2_p2_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-180))) 1) (.lit (132))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (36)) 1) (.lit (-768))) 1) (.lit (2358))) 1) (.lit (-2214))) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-180)) 1) (.lit (2358))) 1) (.lit (-5292))) 1) (.lit (7776))) 1) (.lit (-4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (132)) 1) (.lit (-2214))) 1) (.lit (7776))) 1) (.lit (26244))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (108))) 2) (.lit (-4374))) 2))

def primitive_p2_p2_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-12))) 1) (.lit (-24))) 1) (.add (.mulY (.add (.mulY (.lit (-162)) 1) (.lit (-348))) 1) (.lit (810)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-162))) 1) (.lit (456))) 1) (.lit (1944))) 1) (.lit (-4374)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-348))) 1) (.lit (1944))) 1) (.lit (43740))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (810))) 1) (.lit (-4374))) 2))

def primitive_p2_p2_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-12)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-96))) 1) (.lit (12))) 1) (.lit (270)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (378))) 1) (.lit (-648))) 1) (.lit (-972)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-648))) 1) (.lit (29646))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (270))) 1) (.lit (-972))) 2))

def primitive_p2_p2_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.mulY (.lit (6)) 1) 1) (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (-378))) 1) (.lit (324)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-378))) 1) (.lit (10206))) 1)) 1) (.mulY (.lit (324)) 2))

def primitive_p2_p2_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-6)) 1) (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-48))) 1) (.lit (162)))) 1) (.mulY (.add (.mulY (.lit (-48)) 1) (.lit (1782))) 1)) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 2))

def primitive_p2_p2_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (18)) 1) (.mulY (.lit (126)) 1)) 1) (.mulY (.lit (18)) 2))

def primitive_p3_m3_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-114))) 1) (.lit (102)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-114))) 1) (.lit (588))) 1) (.lit (-432)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (102))) 1) (.lit (-432))) 1))

def primitive_p3_m3_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (12)) 1) (.lit (-6))) 1) (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-108))) 1)) 1) (.add (.mulY (.lit (-6)) 2) (.lit (432))))

def primitive_p3_m3_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (6))) 1) (.add (.mulY (.lit (6)) 1) (.lit (-102))))

def primitive_p3_m3_coefficient_06_expr : HExpr := (.lit (6))

def primitive_p3_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (26))) 1) (.lit (-24)))) 1) (.add (.mulY (.add (.mulY (.lit (8)) 1) (.lit (-78))) 1) (.lit (54)))) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (54))) 1))

def primitive_p3_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (-4))) 1) (.add (.mulY (.lit (2)) 1) (.lit (66)))) 1) (.add (.mulY (.lit (12)) 1) (.lit (-162))))

def primitive_p3_m2_coefficient_03_expr : HExpr := (.add (.mulX (.lit (12)) 1) (.add (.mulY (.lit (6)) 1) (.lit (-54))))

def primitive_p3_m2_coefficient_04_expr : HExpr := (.add (.mulX (.lit (-4)) 1) (.lit (18)))

def primitive_p3_m2_coefficient_05_expr : HExpr := (.lit (6))

def primitive_p3_m1_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (2))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (34))) 1) (.lit (-30)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-2)) 1) (.lit (34))) 1) (.lit (-156))) 1) (.lit (108)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (2)) 1) (.lit (-30))) 1) (.lit (108))) 1))

def primitive_p3_m1_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (-4)) 1) (.lit (10))) 1) (.add (.mulY (.add (.mulY (.lit (-4)) 1) (.lit (42))) 1) (.lit (-66)))) 1) (.mulY (.add (.mulY (.lit (4)) 1) (.lit (-30))) 1))

def primitive_p3_m1_coefficient_03_expr : HExpr := (.add (.mulX (.lit (12)) 1) (.add (.mulY (.lit (6)) 1) (.lit (-54))))

def primitive_p3_m1_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit (-2)) 1) (.lit (10))) 1) (.add (.mulY (.lit (4)) 1) (.lit (-18))))

def primitive_p3_m1_coefficient_05_expr : HExpr := (.lit (6))

def primitive_p3_m1_coefficient_06_expr : HExpr := (.lit (2))

def primitive_p3_p0_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (-6))) 1) (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-66))) 1) (.lit (60)))) 1) (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (114))) 1) (.lit (-54)))) 1) (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-54))) 1))

def primitive_p3_p0_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (6)) 1) (.lit (-12))) 1) (.add (.mulY (.lit (-12)) 1) (.lit (12)))) 1) (.mulY (.lit (6)) 1))

def primitive_p4_m2_coefficient_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-264))) 1) (.lit (456))) 1) (.lit (-216))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1440))) 1) (.lit (8496))) 1) (.lit (-12960))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-2376))) 1) (.lit (23784))) 1) (.lit (-96336))) 1) (.lit (127332))) 1) (.lit (-52488)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1704))) 1) (.lit (23256))) 1) (.lit (-149904))) 1) (.lit (443232))) 1) (.lit (-472392))) 1) (.lit (157464)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-528))) 1) (.lit (9180))) 1) (.lit (-79272))) 1) (.lit (347004))) 1) (.lit (-682344))) 1) (.lit (393660))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (912))) 1) (.lit (-13392))) 1) (.lit (93312))) 1) (.lit (-297432))) 1) (.lit (314928))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-432))) 1) (.lit (5832))) 1) (.lit (-34992))) 1) (.lit (78732))) 3))

def primitive_p4_m2_coefficient_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-84))) 1) (.lit (204))) 1) (.lit (-108))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (72))) 1) (.lit (2880))) 1) (.lit (-5832))) 1) (.lit (2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (420))) 1) (.lit (2208))) 1) (.lit (-33696))) 1) (.lit (57348))) 1) (.lit (-26244)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (288))) 1) (.lit (-924))) 1) (.lit (-20736))) 1) (.lit (152604))) 1) (.lit (-209952))) 1) (.lit (78732)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (-468))) 1) (.lit (540))) 1) (.lit (35964))) 1) (.lit (-201204))) 1) (.lit (157464))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (216))) 2) (.lit (-17496))) 1) (.lit (78732))) 2)) 1)

def primitive_p4_m2_coefficient_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-792))) 1) (.lit (1368))) 1) (.lit (-648))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (168)) 1) (.lit (-3288))) 1) (.lit (18888))) 1) (.lit (-27432))) 1) (.lit (11664)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-3912))) 1) (.lit (37248))) 1) (.lit (-140400))) 1) (.lit (159408))) 1) (.lit (-52488)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1704))) 1) (.lit (22536))) 1) (.lit (-134136))) 1) (.lit (332424))) 1) (.lit (-209952))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (2856))) 1) (.lit (-30456))) 1) (.lit (134136))) 1) (.lit (-192456))) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-1296))) 1) (.lit (11664))) 1) (.lit (-34992))) 3))

def primitive_p4_m2_coefficient_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-252))) 1) (.lit (612))) 1) (.lit (-324))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-72)) 1) (.lit (120))) 1) (.lit (6432))) 1) (.lit (-12312))) 1) (.lit (5832)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (396))) 1) (.lit (3960))) 1) (.lit (-49032))) 1) (.lit (70956))) 1) (.lit (-26244)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (24)) 1) (.lit (648))) 1) (.lit (-19008))) 1) (.lit (110808))) 1) (.lit (-87480))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-972))) 1) (.lit (14580))) 1) (.lit (-61236))) 2)) 1)

def primitive_p4_m2_coefficient_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (84)) 1) (.lit (-864))) 1) (.lit (1500))) 1) (.lit (-1296))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (144)) 1) (.lit (-2616))) 1) (.lit (13848))) 1) (.lit (-19656))) 1) (.lit (17496)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (72)) 1) (.lit (-1890))) 1) (.lit (16602))) 1) (.lit (-54702))) 1) (.lit (58806))) 1) (.lit (-52488)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-138)) 1) (.lit (2844))) 1) (.lit (-18144))) 1) (.lit (37908))) 1) (.lit (-39366))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (54)) 1) (.lit (-810))) 1) (.lit (1458))) 1) (.lit (13122))) 2))

def primitive_p4_m2_coefficient_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-288))) 1) (.lit (720))) 1) (.lit (-1188))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-48))) 1) (.lit (5088))) 1) (.lit (-10800))) 1) (.lit (18468)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-60)) 1) (.lit (2562))) 1) (.lit (-22572))) 1) (.lit (47142))) 1) (.lit (-52488)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (78)) 1) (.lit (-2862))) 1) (.lit (28674))) 1) (.lit (-65610))) 1) (.lit (-157464)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1) (.lit (-972))) 1) (.lit (-4374))) 1) (.lit (39366))) 1))

def primitive_p4_m2_coefficient_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-378))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-372))) 1) (.lit (-360))) 1) (.lit (5292)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (48)) 1) (.lit (-762))) 1) (.lit (2280))) 1) (.lit (8100))) 1) (.lit (16038)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-78)) 1) (.lit (372))) 1) (.lit (7506))) 1) (.lit (-5832))) 1) (.lit (-314928)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (1026))) 1) (.lit (-13122))) 1) (.lit (39366))) 1))

def primitive_p4_m2_coefficient_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-54)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-12)) 1) (.lit (-156))) 1) (.lit (312))) 1) (.lit (-864)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-96)) 1) (.lit (1440))) 1) (.lit (-2970))) 1) (.lit (38880)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-756))) 1) (.lit (33534))) 1) (.lit (-231822)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (486))) 1) (.lit (-3402))) 1) (.lit (4374))) 1))

def primitive_p4_m2_coefficient_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulY (.lit (36)) 1) (.lit (-756))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (12)) 1) (.lit (-30))) 1) (.lit (-1272))) 1) (.lit (17010)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (-852))) 1) (.lit (18792))) 1) (.lit (-62694)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-24)) 1) (.lit (1134))) 1) (.lit (-7290))) 1))

def primitive_p4_m2_coefficient_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit (-108)) 1) (.add (.mulY (.add (.mulY (.lit (-36)) 1) (.lit (-60))) 1) (.lit (2214)))) 1) (.add (.mulY (.add (.mulY (.lit (-102)) 1) (.lit (3024))) 1) (.lit (8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit (-18)) 1) (.lit (486))) 1) (.lit (-2430))) 1))

def primitive_p4_m2_coefficient_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulY (.lit (18)) 1) (.lit (-216))) 1) (.add (.mulY (.add (.mulY (.lit (6)) 1) (.lit (-162))) 1) (.lit (9396)))) 1) (.mulY (.add (.mulY (.lit (18)) 1) (.lit (162))) 1))

def primitive_p4_m2_coefficient_11_expr : HExpr := (.add (.mulX (.add (.mulX (.lit (-54)) 1) (.add (.mulY (.lit (-60)) 1) (.lit (2106)))) 1) (.mulY (.add (.mulY (.lit (-6)) 1) (.lit (162))) 1))

def primitive_p4_m2_coefficient_12_expr : HExpr := (.add (.mulX (.lit (162)) 1) (.mulY (.lit (18)) 1))

def primitiveExprCoefficients_m1_m1 : List HExpr := [primitive_m1_m1_coefficient_00_expr,primitive_m1_m1_coefficient_01_expr]

def primitiveExprCoefficients_m1_m2 : List HExpr := [primitive_m1_m2_coefficient_00_expr,(.lit 0),primitive_m1_m2_coefficient_02_expr,primitive_m1_m2_coefficient_03_expr,primitive_m1_m2_coefficient_04_expr]

def primitiveExprCoefficients_m1_p2 : List HExpr := [primitive_m1_p2_coefficient_00_expr,primitive_m1_p2_coefficient_01_expr]

def primitiveExprCoefficients_m1_p3 : List HExpr := [primitive_m1_p3_coefficient_00_expr,(.lit 0),primitive_m1_p3_coefficient_02_expr,primitive_m1_p3_coefficient_03_expr,primitive_m1_p3_coefficient_04_expr,primitive_m1_p3_coefficient_05_expr,primitive_m1_p3_coefficient_06_expr]

def primitiveExprCoefficients_m2_m1 : List HExpr := [primitive_m2_m1_coefficient_00_expr,(.lit 0),primitive_m2_m1_coefficient_02_expr,primitive_m2_m1_coefficient_03_expr,primitive_m2_m1_coefficient_04_expr]

def primitiveExprCoefficients_m2_m2 : List HExpr := [primitive_m2_m2_coefficient_00_expr,primitive_m2_m2_coefficient_01_expr,primitive_m2_m2_coefficient_02_expr,primitive_m2_m2_coefficient_03_expr,primitive_m2_m2_coefficient_04_expr,primitive_m2_m2_coefficient_05_expr,primitive_m2_m2_coefficient_06_expr,primitive_m2_m2_coefficient_07_expr,primitive_m2_m2_coefficient_08_expr,primitive_m2_m2_coefficient_09_expr,primitive_m2_m2_coefficient_10_expr]

def primitiveExprCoefficients_m2_p0 : List HExpr := [primitive_m2_p0_coefficient_00_expr,(.lit 0),primitive_m2_p0_coefficient_02_expr,primitive_m2_p0_coefficient_03_expr,primitive_m2_p0_coefficient_04_expr,primitive_m2_p0_coefficient_05_expr]

def primitiveExprCoefficients_m2_p1 : List HExpr := [primitive_m2_p1_coefficient_00_expr,primitive_m2_p1_coefficient_01_expr]

def primitiveExprCoefficients_m2_p2 : List HExpr := [primitive_m2_p2_coefficient_00_expr,(.lit 0),primitive_m2_p2_coefficient_02_expr,primitive_m2_p2_coefficient_03_expr,primitive_m2_p2_coefficient_04_expr,primitive_m2_p2_coefficient_05_expr,primitive_m2_p2_coefficient_06_expr]

def primitiveExprCoefficients_m2_p3 : List HExpr := [primitive_m2_p3_coefficient_00_expr,(.lit 0),primitive_m2_p3_coefficient_02_expr,primitive_m2_p3_coefficient_03_expr,primitive_m2_p3_coefficient_04_expr,primitive_m2_p3_coefficient_05_expr]

def primitiveExprCoefficients_m2_p4 : List HExpr := [primitive_m2_p4_coefficient_00_expr,primitive_m2_p4_coefficient_01_expr,primitive_m2_p4_coefficient_02_expr,primitive_m2_p4_coefficient_03_expr,primitive_m2_p4_coefficient_04_expr,primitive_m2_p4_coefficient_05_expr,primitive_m2_p4_coefficient_06_expr,primitive_m2_p4_coefficient_07_expr,primitive_m2_p4_coefficient_08_expr,primitive_m2_p4_coefficient_09_expr,primitive_m2_p4_coefficient_10_expr,primitive_m2_p4_coefficient_11_expr,primitive_m2_p4_coefficient_12_expr]

def primitiveExprCoefficients_m3_p0 : List HExpr := [primitive_m3_p0_coefficient_00_expr,(.lit 0),primitive_m3_p0_coefficient_02_expr]

def primitiveExprCoefficients_m3_p1 : List HExpr := [primitive_m3_p1_coefficient_00_expr,(.lit 0),primitive_m3_p1_coefficient_02_expr,primitive_m3_p1_coefficient_03_expr,primitive_m3_p1_coefficient_04_expr,primitive_m3_p1_coefficient_05_expr,primitive_m3_p1_coefficient_06_expr]

def primitiveExprCoefficients_m3_p2 : List HExpr := [primitive_m3_p2_coefficient_00_expr,(.lit 0),primitive_m3_p2_coefficient_02_expr,primitive_m3_p2_coefficient_03_expr,primitive_m3_p2_coefficient_04_expr,primitive_m3_p2_coefficient_05_expr]

def primitiveExprCoefficients_m3_p3 : List HExpr := [primitive_m3_p3_coefficient_00_expr,(.lit 0),primitive_m3_p3_coefficient_02_expr,(.lit 0),primitive_m3_p3_coefficient_04_expr,(.lit 0),primitive_m3_p3_coefficient_06_expr]

def primitiveExprCoefficients_m4_p2 : List HExpr := [primitive_m4_p2_coefficient_00_expr,primitive_m4_p2_coefficient_01_expr,primitive_m4_p2_coefficient_02_expr,primitive_m4_p2_coefficient_03_expr,primitive_m4_p2_coefficient_04_expr,primitive_m4_p2_coefficient_05_expr,primitive_m4_p2_coefficient_06_expr,primitive_m4_p2_coefficient_07_expr,primitive_m4_p2_coefficient_08_expr,primitive_m4_p2_coefficient_09_expr,primitive_m4_p2_coefficient_10_expr,primitive_m4_p2_coefficient_11_expr,primitive_m4_p2_coefficient_12_expr]

def primitiveExprCoefficients_p0_m2 : List HExpr := [primitive_p0_m2_coefficient_00_expr,(.lit 0),primitive_p0_m2_coefficient_02_expr,primitive_p0_m2_coefficient_03_expr,primitive_p0_m2_coefficient_04_expr,primitive_p0_m2_coefficient_05_expr]

def primitiveExprCoefficients_p0_m3 : List HExpr := [primitive_p0_m3_coefficient_00_expr,(.lit 0),primitive_p0_m3_coefficient_02_expr]

def primitiveExprCoefficients_p0_p2 : List HExpr := [primitive_p0_p2_coefficient_00_expr,(.lit 0),primitive_p0_p2_coefficient_02_expr,primitive_p0_p2_coefficient_03_expr,primitive_p0_p2_coefficient_04_expr,primitive_p0_p2_coefficient_05_expr]

def primitiveExprCoefficients_p0_p3 : List HExpr := [primitive_p0_p3_coefficient_00_expr,(.lit 0),primitive_p0_p3_coefficient_02_expr]

def primitiveExprCoefficients_p1_m2 : List HExpr := [primitive_p1_m2_coefficient_00_expr,primitive_p1_m2_coefficient_01_expr]

def primitiveExprCoefficients_p1_m3 : List HExpr := [primitive_p1_m3_coefficient_00_expr,(.lit 0),primitive_p1_m3_coefficient_02_expr,primitive_p1_m3_coefficient_03_expr,primitive_p1_m3_coefficient_04_expr,primitive_p1_m3_coefficient_05_expr,primitive_p1_m3_coefficient_06_expr]

def primitiveExprCoefficients_p1_p1 : List HExpr := [primitive_p1_p1_coefficient_00_expr,primitive_p1_p1_coefficient_01_expr]

def primitiveExprCoefficients_p1_p2 : List HExpr := [primitive_p1_p2_coefficient_00_expr,(.lit 0),primitive_p1_p2_coefficient_02_expr,primitive_p1_p2_coefficient_03_expr,primitive_p1_p2_coefficient_04_expr]

def primitiveExprCoefficients_p2_m1 : List HExpr := [primitive_p2_m1_coefficient_00_expr,primitive_p2_m1_coefficient_01_expr]

def primitiveExprCoefficients_p2_m2 : List HExpr := [primitive_p2_m2_coefficient_00_expr,(.lit 0),primitive_p2_m2_coefficient_02_expr,primitive_p2_m2_coefficient_03_expr,primitive_p2_m2_coefficient_04_expr,primitive_p2_m2_coefficient_05_expr,primitive_p2_m2_coefficient_06_expr]

def primitiveExprCoefficients_p2_m3 : List HExpr := [primitive_p2_m3_coefficient_00_expr,(.lit 0),primitive_p2_m3_coefficient_02_expr,primitive_p2_m3_coefficient_03_expr,primitive_p2_m3_coefficient_04_expr,primitive_p2_m3_coefficient_05_expr]

def primitiveExprCoefficients_p2_m4 : List HExpr := [primitive_p2_m4_coefficient_00_expr,primitive_p2_m4_coefficient_01_expr,primitive_p2_m4_coefficient_02_expr,primitive_p2_m4_coefficient_03_expr,primitive_p2_m4_coefficient_04_expr,primitive_p2_m4_coefficient_05_expr,primitive_p2_m4_coefficient_06_expr,primitive_p2_m4_coefficient_07_expr,primitive_p2_m4_coefficient_08_expr,primitive_p2_m4_coefficient_09_expr,primitive_p2_m4_coefficient_10_expr,primitive_p2_m4_coefficient_11_expr,primitive_p2_m4_coefficient_12_expr]

def primitiveExprCoefficients_p2_p0 : List HExpr := [primitive_p2_p0_coefficient_00_expr,(.lit 0),primitive_p2_p0_coefficient_02_expr,primitive_p2_p0_coefficient_03_expr,primitive_p2_p0_coefficient_04_expr,primitive_p2_p0_coefficient_05_expr]

def primitiveExprCoefficients_p2_p1 : List HExpr := [primitive_p2_p1_coefficient_00_expr,(.lit 0),primitive_p2_p1_coefficient_02_expr,primitive_p2_p1_coefficient_03_expr,primitive_p2_p1_coefficient_04_expr]

def primitiveExprCoefficients_p2_p2 : List HExpr := [primitive_p2_p2_coefficient_00_expr,primitive_p2_p2_coefficient_01_expr,primitive_p2_p2_coefficient_02_expr,primitive_p2_p2_coefficient_03_expr,primitive_p2_p2_coefficient_04_expr,primitive_p2_p2_coefficient_05_expr,primitive_p2_p2_coefficient_06_expr,primitive_p2_p2_coefficient_07_expr,primitive_p2_p2_coefficient_08_expr,primitive_p2_p2_coefficient_09_expr,primitive_p2_p2_coefficient_10_expr]

def primitiveExprCoefficients_p3_m1 : List HExpr := [primitive_p3_m1_coefficient_00_expr,(.lit 0),primitive_p3_m1_coefficient_02_expr,primitive_p3_m1_coefficient_03_expr,primitive_p3_m1_coefficient_04_expr,primitive_p3_m1_coefficient_05_expr,primitive_p3_m1_coefficient_06_expr]

def primitiveExprCoefficients_p3_m2 : List HExpr := [primitive_p3_m2_coefficient_00_expr,(.lit 0),primitive_p3_m2_coefficient_02_expr,primitive_p3_m2_coefficient_03_expr,primitive_p3_m2_coefficient_04_expr,primitive_p3_m2_coefficient_05_expr]

def primitiveExprCoefficients_p3_m3 : List HExpr := [primitive_p3_m3_coefficient_00_expr,(.lit 0),primitive_p3_m3_coefficient_02_expr,(.lit 0),primitive_p3_m3_coefficient_04_expr,(.lit 0),primitive_p3_m3_coefficient_06_expr]

def primitiveExprCoefficients_p3_p0 : List HExpr := [primitive_p3_p0_coefficient_00_expr,(.lit 0),primitive_p3_p0_coefficient_02_expr]

def primitiveExprCoefficients_p4_m2 : List HExpr := [primitive_p4_m2_coefficient_00_expr,primitive_p4_m2_coefficient_01_expr,primitive_p4_m2_coefficient_02_expr,primitive_p4_m2_coefficient_03_expr,primitive_p4_m2_coefficient_04_expr,primitive_p4_m2_coefficient_05_expr,primitive_p4_m2_coefficient_06_expr,primitive_p4_m2_coefficient_07_expr,primitive_p4_m2_coefficient_08_expr,primitive_p4_m2_coefficient_09_expr,primitive_p4_m2_coefficient_10_expr,primitive_p4_m2_coefficient_11_expr,primitive_p4_m2_coefficient_12_expr]
end
end CriticalZeroSumAssembly20261003
