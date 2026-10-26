import KernelAtlas.WholeBall.Fourier2299SecondRealData
import KernelAtlas.WholeBall.Fourier2299SecondImagData
import KernelAtlas.WholeBall.Fourier2299SecondCompactData
import KernelAtlas.WholeBall.MatrixColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def secondPick : Fin 210 → Fin 336 := fun j => (if j.val < 105 then (if j.val < 52 then (if j.val < 26 then (if j.val < 13 then (if j.val < 6 then (if j.val < 3 then (if j.val < 1 then (0 : Fin 336) else (if j.val < 2 then (1 : Fin 336) else (2 : Fin 336))) else (if j.val < 4 then (3 : Fin 336) else (if j.val < 5 then (4 : Fin 336) else (5 : Fin 336)))) else (if j.val < 9 then (if j.val < 7 then (6 : Fin 336) else (if j.val < 8 then (7 : Fin 336) else (8 : Fin 336))) else (if j.val < 11 then (if j.val < 10 then (9 : Fin 336) else (10 : Fin 336)) else (if j.val < 12 then (11 : Fin 336) else (12 : Fin 336))))) else (if j.val < 19 then (if j.val < 16 then (if j.val < 14 then (13 : Fin 336) else (if j.val < 15 then (14 : Fin 336) else (15 : Fin 336))) else (if j.val < 17 then (16 : Fin 336) else (if j.val < 18 then (17 : Fin 336) else (18 : Fin 336)))) else (if j.val < 22 then (if j.val < 20 then (19 : Fin 336) else (if j.val < 21 then (20 : Fin 336) else (21 : Fin 336))) else (if j.val < 24 then (if j.val < 23 then (22 : Fin 336) else (23 : Fin 336)) else (if j.val < 25 then (24 : Fin 336) else (25 : Fin 336)))))) else (if j.val < 39 then (if j.val < 32 then (if j.val < 29 then (if j.val < 27 then (26 : Fin 336) else (if j.val < 28 then (27 : Fin 336) else (28 : Fin 336))) else (if j.val < 30 then (29 : Fin 336) else (if j.val < 31 then (30 : Fin 336) else (31 : Fin 336)))) else (if j.val < 35 then (if j.val < 33 then (32 : Fin 336) else (if j.val < 34 then (33 : Fin 336) else (34 : Fin 336))) else (if j.val < 37 then (if j.val < 36 then (35 : Fin 336) else (36 : Fin 336)) else (if j.val < 38 then (37 : Fin 336) else (38 : Fin 336))))) else (if j.val < 45 then (if j.val < 42 then (if j.val < 40 then (39 : Fin 336) else (if j.val < 41 then (40 : Fin 336) else (41 : Fin 336))) else (if j.val < 43 then (42 : Fin 336) else (if j.val < 44 then (43 : Fin 336) else (44 : Fin 336)))) else (if j.val < 48 then (if j.val < 46 then (45 : Fin 336) else (if j.val < 47 then (46 : Fin 336) else (47 : Fin 336))) else (if j.val < 50 then (if j.val < 49 then (48 : Fin 336) else (49 : Fin 336)) else (if j.val < 51 then (50 : Fin 336) else (51 : Fin 336))))))) else (if j.val < 78 then (if j.val < 65 then (if j.val < 58 then (if j.val < 55 then (if j.val < 53 then (52 : Fin 336) else (if j.val < 54 then (53 : Fin 336) else (54 : Fin 336))) else (if j.val < 56 then (55 : Fin 336) else (if j.val < 57 then (56 : Fin 336) else (57 : Fin 336)))) else (if j.val < 61 then (if j.val < 59 then (58 : Fin 336) else (if j.val < 60 then (59 : Fin 336) else (60 : Fin 336))) else (if j.val < 63 then (if j.val < 62 then (61 : Fin 336) else (62 : Fin 336)) else (if j.val < 64 then (63 : Fin 336) else (64 : Fin 336))))) else (if j.val < 71 then (if j.val < 68 then (if j.val < 66 then (65 : Fin 336) else (if j.val < 67 then (66 : Fin 336) else (67 : Fin 336))) else (if j.val < 69 then (68 : Fin 336) else (if j.val < 70 then (69 : Fin 336) else (70 : Fin 336)))) else (if j.val < 74 then (if j.val < 72 then (71 : Fin 336) else (if j.val < 73 then (72 : Fin 336) else (73 : Fin 336))) else (if j.val < 76 then (if j.val < 75 then (74 : Fin 336) else (75 : Fin 336)) else (if j.val < 77 then (76 : Fin 336) else (77 : Fin 336)))))) else (if j.val < 91 then (if j.val < 84 then (if j.val < 81 then (if j.val < 79 then (78 : Fin 336) else (if j.val < 80 then (79 : Fin 336) else (80 : Fin 336))) else (if j.val < 82 then (81 : Fin 336) else (if j.val < 83 then (82 : Fin 336) else (83 : Fin 336)))) else (if j.val < 87 then (if j.val < 85 then (105 : Fin 336) else (if j.val < 86 then (106 : Fin 336) else (107 : Fin 336))) else (if j.val < 89 then (if j.val < 88 then (108 : Fin 336) else (109 : Fin 336)) else (if j.val < 90 then (110 : Fin 336) else (111 : Fin 336))))) else (if j.val < 98 then (if j.val < 94 then (if j.val < 92 then (112 : Fin 336) else (if j.val < 93 then (113 : Fin 336) else (114 : Fin 336))) else (if j.val < 96 then (if j.val < 95 then (115 : Fin 336) else (116 : Fin 336)) else (if j.val < 97 then (117 : Fin 336) else (118 : Fin 336)))) else (if j.val < 101 then (if j.val < 99 then (119 : Fin 336) else (if j.val < 100 then (120 : Fin 336) else (121 : Fin 336))) else (if j.val < 103 then (if j.val < 102 then (122 : Fin 336) else (123 : Fin 336)) else (if j.val < 104 then (124 : Fin 336) else (125 : Fin 336)))))))) else (if j.val < 157 then (if j.val < 131 then (if j.val < 118 then (if j.val < 111 then (if j.val < 108 then (if j.val < 106 then (126 : Fin 336) else (if j.val < 107 then (127 : Fin 336) else (128 : Fin 336))) else (if j.val < 109 then (129 : Fin 336) else (if j.val < 110 then (130 : Fin 336) else (131 : Fin 336)))) else (if j.val < 114 then (if j.val < 112 then (132 : Fin 336) else (if j.val < 113 then (133 : Fin 336) else (134 : Fin 336))) else (if j.val < 116 then (if j.val < 115 then (135 : Fin 336) else (136 : Fin 336)) else (if j.val < 117 then (137 : Fin 336) else (138 : Fin 336))))) else (if j.val < 124 then (if j.val < 121 then (if j.val < 119 then (139 : Fin 336) else (if j.val < 120 then (140 : Fin 336) else (141 : Fin 336))) else (if j.val < 122 then (142 : Fin 336) else (if j.val < 123 then (143 : Fin 336) else (144 : Fin 336)))) else (if j.val < 127 then (if j.val < 125 then (145 : Fin 336) else (if j.val < 126 then (146 : Fin 336) else (147 : Fin 336))) else (if j.val < 129 then (if j.val < 128 then (148 : Fin 336) else (149 : Fin 336)) else (if j.val < 130 then (150 : Fin 336) else (151 : Fin 336)))))) else (if j.val < 144 then (if j.val < 137 then (if j.val < 134 then (if j.val < 132 then (152 : Fin 336) else (if j.val < 133 then (153 : Fin 336) else (154 : Fin 336))) else (if j.val < 135 then (155 : Fin 336) else (if j.val < 136 then (156 : Fin 336) else (157 : Fin 336)))) else (if j.val < 140 then (if j.val < 138 then (158 : Fin 336) else (if j.val < 139 then (159 : Fin 336) else (160 : Fin 336))) else (if j.val < 142 then (if j.val < 141 then (161 : Fin 336) else (162 : Fin 336)) else (if j.val < 143 then (163 : Fin 336) else (164 : Fin 336))))) else (if j.val < 150 then (if j.val < 147 then (if j.val < 145 then (165 : Fin 336) else (if j.val < 146 then (166 : Fin 336) else (167 : Fin 336))) else (if j.val < 148 then (210 : Fin 336) else (if j.val < 149 then (211 : Fin 336) else (212 : Fin 336)))) else (if j.val < 153 then (if j.val < 151 then (213 : Fin 336) else (if j.val < 152 then (214 : Fin 336) else (215 : Fin 336))) else (if j.val < 155 then (if j.val < 154 then (216 : Fin 336) else (217 : Fin 336)) else (if j.val < 156 then (218 : Fin 336) else (219 : Fin 336))))))) else (if j.val < 183 then (if j.val < 170 then (if j.val < 163 then (if j.val < 160 then (if j.val < 158 then (220 : Fin 336) else (if j.val < 159 then (221 : Fin 336) else (222 : Fin 336))) else (if j.val < 161 then (223 : Fin 336) else (if j.val < 162 then (224 : Fin 336) else (225 : Fin 336)))) else (if j.val < 166 then (if j.val < 164 then (226 : Fin 336) else (if j.val < 165 then (227 : Fin 336) else (228 : Fin 336))) else (if j.val < 168 then (if j.val < 167 then (229 : Fin 336) else (230 : Fin 336)) else (if j.val < 169 then (231 : Fin 336) else (232 : Fin 336))))) else (if j.val < 176 then (if j.val < 173 then (if j.val < 171 then (233 : Fin 336) else (if j.val < 172 then (234 : Fin 336) else (235 : Fin 336))) else (if j.val < 174 then (236 : Fin 336) else (if j.val < 175 then (237 : Fin 336) else (238 : Fin 336)))) else (if j.val < 179 then (if j.val < 177 then (239 : Fin 336) else (if j.val < 178 then (240 : Fin 336) else (241 : Fin 336))) else (if j.val < 181 then (if j.val < 180 then (242 : Fin 336) else (243 : Fin 336)) else (if j.val < 182 then (244 : Fin 336) else (245 : Fin 336)))))) else (if j.val < 196 then (if j.val < 189 then (if j.val < 186 then (if j.val < 184 then (246 : Fin 336) else (if j.val < 185 then (247 : Fin 336) else (248 : Fin 336))) else (if j.val < 187 then (249 : Fin 336) else (if j.val < 188 then (250 : Fin 336) else (251 : Fin 336)))) else (if j.val < 192 then (if j.val < 190 then (315 : Fin 336) else (if j.val < 191 then (316 : Fin 336) else (317 : Fin 336))) else (if j.val < 194 then (if j.val < 193 then (318 : Fin 336) else (319 : Fin 336)) else (if j.val < 195 then (320 : Fin 336) else (321 : Fin 336))))) else (if j.val < 203 then (if j.val < 199 then (if j.val < 197 then (322 : Fin 336) else (if j.val < 198 then (323 : Fin 336) else (324 : Fin 336))) else (if j.val < 201 then (if j.val < 200 then (325 : Fin 336) else (326 : Fin 336)) else (if j.val < 202 then (327 : Fin 336) else (328 : Fin 336)))) else (if j.val < 206 then (if j.val < 204 then (329 : Fin 336) else (if j.val < 205 then (330 : Fin 336) else (331 : Fin 336))) else (if j.val < 208 then (if j.val < 207 then (332 : Fin 336) else (333 : Fin 336)) else (if j.val < 209 then (334 : Fin 336) else (335 : Fin 336)))))))))
def secondExpand : Fin 336 → Fin 210 := fun j => (if j.val < 168 then (if j.val < 84 then (if j.val < 42 then (if j.val < 21 then (if j.val < 10 then (if j.val < 5 then (if j.val < 2 then (if j.val < 1 then (0 : Fin 210) else (1 : Fin 210)) else (if j.val < 3 then (2 : Fin 210) else (if j.val < 4 then (3 : Fin 210) else (4 : Fin 210)))) else (if j.val < 7 then (if j.val < 6 then (5 : Fin 210) else (6 : Fin 210)) else (if j.val < 8 then (7 : Fin 210) else (if j.val < 9 then (8 : Fin 210) else (9 : Fin 210))))) else (if j.val < 15 then (if j.val < 12 then (if j.val < 11 then (10 : Fin 210) else (11 : Fin 210)) else (if j.val < 13 then (12 : Fin 210) else (if j.val < 14 then (13 : Fin 210) else (14 : Fin 210)))) else (if j.val < 18 then (if j.val < 16 then (15 : Fin 210) else (if j.val < 17 then (16 : Fin 210) else (17 : Fin 210))) else (if j.val < 19 then (18 : Fin 210) else (if j.val < 20 then (19 : Fin 210) else (20 : Fin 210)))))) else (if j.val < 31 then (if j.val < 26 then (if j.val < 23 then (if j.val < 22 then (21 : Fin 210) else (22 : Fin 210)) else (if j.val < 24 then (23 : Fin 210) else (if j.val < 25 then (24 : Fin 210) else (25 : Fin 210)))) else (if j.val < 28 then (if j.val < 27 then (26 : Fin 210) else (27 : Fin 210)) else (if j.val < 29 then (28 : Fin 210) else (if j.val < 30 then (29 : Fin 210) else (30 : Fin 210))))) else (if j.val < 36 then (if j.val < 33 then (if j.val < 32 then (31 : Fin 210) else (32 : Fin 210)) else (if j.val < 34 then (33 : Fin 210) else (if j.val < 35 then (34 : Fin 210) else (35 : Fin 210)))) else (if j.val < 39 then (if j.val < 37 then (36 : Fin 210) else (if j.val < 38 then (37 : Fin 210) else (38 : Fin 210))) else (if j.val < 40 then (39 : Fin 210) else (if j.val < 41 then (40 : Fin 210) else (41 : Fin 210))))))) else (if j.val < 63 then (if j.val < 52 then (if j.val < 47 then (if j.val < 44 then (if j.val < 43 then (42 : Fin 210) else (43 : Fin 210)) else (if j.val < 45 then (44 : Fin 210) else (if j.val < 46 then (45 : Fin 210) else (46 : Fin 210)))) else (if j.val < 49 then (if j.val < 48 then (47 : Fin 210) else (48 : Fin 210)) else (if j.val < 50 then (49 : Fin 210) else (if j.val < 51 then (50 : Fin 210) else (51 : Fin 210))))) else (if j.val < 57 then (if j.val < 54 then (if j.val < 53 then (52 : Fin 210) else (53 : Fin 210)) else (if j.val < 55 then (54 : Fin 210) else (if j.val < 56 then (55 : Fin 210) else (56 : Fin 210)))) else (if j.val < 60 then (if j.val < 58 then (57 : Fin 210) else (if j.val < 59 then (58 : Fin 210) else (59 : Fin 210))) else (if j.val < 61 then (60 : Fin 210) else (if j.val < 62 then (61 : Fin 210) else (62 : Fin 210)))))) else (if j.val < 73 then (if j.val < 68 then (if j.val < 65 then (if j.val < 64 then (63 : Fin 210) else (64 : Fin 210)) else (if j.val < 66 then (65 : Fin 210) else (if j.val < 67 then (66 : Fin 210) else (67 : Fin 210)))) else (if j.val < 70 then (if j.val < 69 then (68 : Fin 210) else (69 : Fin 210)) else (if j.val < 71 then (70 : Fin 210) else (if j.val < 72 then (71 : Fin 210) else (72 : Fin 210))))) else (if j.val < 78 then (if j.val < 75 then (if j.val < 74 then (73 : Fin 210) else (74 : Fin 210)) else (if j.val < 76 then (75 : Fin 210) else (if j.val < 77 then (76 : Fin 210) else (77 : Fin 210)))) else (if j.val < 81 then (if j.val < 79 then (78 : Fin 210) else (if j.val < 80 then (79 : Fin 210) else (80 : Fin 210))) else (if j.val < 82 then (81 : Fin 210) else (if j.val < 83 then (82 : Fin 210) else (83 : Fin 210)))))))) else (if j.val < 126 then (if j.val < 105 then (if j.val < 94 then (if j.val < 89 then (if j.val < 86 then (if j.val < 85 then (21 : Fin 210) else (22 : Fin 210)) else (if j.val < 87 then (23 : Fin 210) else (if j.val < 88 then (24 : Fin 210) else (25 : Fin 210)))) else (if j.val < 91 then (if j.val < 90 then (26 : Fin 210) else (27 : Fin 210)) else (if j.val < 92 then (28 : Fin 210) else (if j.val < 93 then (29 : Fin 210) else (30 : Fin 210))))) else (if j.val < 99 then (if j.val < 96 then (if j.val < 95 then (31 : Fin 210) else (32 : Fin 210)) else (if j.val < 97 then (33 : Fin 210) else (if j.val < 98 then (34 : Fin 210) else (35 : Fin 210)))) else (if j.val < 102 then (if j.val < 100 then (36 : Fin 210) else (if j.val < 101 then (37 : Fin 210) else (38 : Fin 210))) else (if j.val < 103 then (39 : Fin 210) else (if j.val < 104 then (40 : Fin 210) else (41 : Fin 210)))))) else (if j.val < 115 then (if j.val < 110 then (if j.val < 107 then (if j.val < 106 then (84 : Fin 210) else (85 : Fin 210)) else (if j.val < 108 then (86 : Fin 210) else (if j.val < 109 then (87 : Fin 210) else (88 : Fin 210)))) else (if j.val < 112 then (if j.val < 111 then (89 : Fin 210) else (90 : Fin 210)) else (if j.val < 113 then (91 : Fin 210) else (if j.val < 114 then (92 : Fin 210) else (93 : Fin 210))))) else (if j.val < 120 then (if j.val < 117 then (if j.val < 116 then (94 : Fin 210) else (95 : Fin 210)) else (if j.val < 118 then (96 : Fin 210) else (if j.val < 119 then (97 : Fin 210) else (98 : Fin 210)))) else (if j.val < 123 then (if j.val < 121 then (99 : Fin 210) else (if j.val < 122 then (100 : Fin 210) else (101 : Fin 210))) else (if j.val < 124 then (102 : Fin 210) else (if j.val < 125 then (103 : Fin 210) else (104 : Fin 210))))))) else (if j.val < 147 then (if j.val < 136 then (if j.val < 131 then (if j.val < 128 then (if j.val < 127 then (105 : Fin 210) else (106 : Fin 210)) else (if j.val < 129 then (107 : Fin 210) else (if j.val < 130 then (108 : Fin 210) else (109 : Fin 210)))) else (if j.val < 133 then (if j.val < 132 then (110 : Fin 210) else (111 : Fin 210)) else (if j.val < 134 then (112 : Fin 210) else (if j.val < 135 then (113 : Fin 210) else (114 : Fin 210))))) else (if j.val < 141 then (if j.val < 138 then (if j.val < 137 then (115 : Fin 210) else (116 : Fin 210)) else (if j.val < 139 then (117 : Fin 210) else (if j.val < 140 then (118 : Fin 210) else (119 : Fin 210)))) else (if j.val < 144 then (if j.val < 142 then (120 : Fin 210) else (if j.val < 143 then (121 : Fin 210) else (122 : Fin 210))) else (if j.val < 145 then (123 : Fin 210) else (if j.val < 146 then (124 : Fin 210) else (125 : Fin 210)))))) else (if j.val < 157 then (if j.val < 152 then (if j.val < 149 then (if j.val < 148 then (126 : Fin 210) else (127 : Fin 210)) else (if j.val < 150 then (128 : Fin 210) else (if j.val < 151 then (129 : Fin 210) else (130 : Fin 210)))) else (if j.val < 154 then (if j.val < 153 then (131 : Fin 210) else (132 : Fin 210)) else (if j.val < 155 then (133 : Fin 210) else (if j.val < 156 then (134 : Fin 210) else (135 : Fin 210))))) else (if j.val < 162 then (if j.val < 159 then (if j.val < 158 then (136 : Fin 210) else (137 : Fin 210)) else (if j.val < 160 then (138 : Fin 210) else (if j.val < 161 then (139 : Fin 210) else (140 : Fin 210)))) else (if j.val < 165 then (if j.val < 163 then (141 : Fin 210) else (if j.val < 164 then (142 : Fin 210) else (143 : Fin 210))) else (if j.val < 166 then (144 : Fin 210) else (if j.val < 167 then (145 : Fin 210) else (146 : Fin 210))))))))) else (if j.val < 252 then (if j.val < 210 then (if j.val < 189 then (if j.val < 178 then (if j.val < 173 then (if j.val < 170 then (if j.val < 169 then (42 : Fin 210) else (43 : Fin 210)) else (if j.val < 171 then (44 : Fin 210) else (if j.val < 172 then (45 : Fin 210) else (46 : Fin 210)))) else (if j.val < 175 then (if j.val < 174 then (47 : Fin 210) else (48 : Fin 210)) else (if j.val < 176 then (49 : Fin 210) else (if j.val < 177 then (50 : Fin 210) else (51 : Fin 210))))) else (if j.val < 183 then (if j.val < 180 then (if j.val < 179 then (52 : Fin 210) else (53 : Fin 210)) else (if j.val < 181 then (54 : Fin 210) else (if j.val < 182 then (55 : Fin 210) else (56 : Fin 210)))) else (if j.val < 186 then (if j.val < 184 then (57 : Fin 210) else (if j.val < 185 then (58 : Fin 210) else (59 : Fin 210))) else (if j.val < 187 then (60 : Fin 210) else (if j.val < 188 then (61 : Fin 210) else (62 : Fin 210)))))) else (if j.val < 199 then (if j.val < 194 then (if j.val < 191 then (if j.val < 190 then (105 : Fin 210) else (106 : Fin 210)) else (if j.val < 192 then (107 : Fin 210) else (if j.val < 193 then (108 : Fin 210) else (109 : Fin 210)))) else (if j.val < 196 then (if j.val < 195 then (110 : Fin 210) else (111 : Fin 210)) else (if j.val < 197 then (112 : Fin 210) else (if j.val < 198 then (113 : Fin 210) else (114 : Fin 210))))) else (if j.val < 204 then (if j.val < 201 then (if j.val < 200 then (115 : Fin 210) else (116 : Fin 210)) else (if j.val < 202 then (117 : Fin 210) else (if j.val < 203 then (118 : Fin 210) else (119 : Fin 210)))) else (if j.val < 207 then (if j.val < 205 then (120 : Fin 210) else (if j.val < 206 then (121 : Fin 210) else (122 : Fin 210))) else (if j.val < 208 then (123 : Fin 210) else (if j.val < 209 then (124 : Fin 210) else (125 : Fin 210))))))) else (if j.val < 231 then (if j.val < 220 then (if j.val < 215 then (if j.val < 212 then (if j.val < 211 then (147 : Fin 210) else (148 : Fin 210)) else (if j.val < 213 then (149 : Fin 210) else (if j.val < 214 then (150 : Fin 210) else (151 : Fin 210)))) else (if j.val < 217 then (if j.val < 216 then (152 : Fin 210) else (153 : Fin 210)) else (if j.val < 218 then (154 : Fin 210) else (if j.val < 219 then (155 : Fin 210) else (156 : Fin 210))))) else (if j.val < 225 then (if j.val < 222 then (if j.val < 221 then (157 : Fin 210) else (158 : Fin 210)) else (if j.val < 223 then (159 : Fin 210) else (if j.val < 224 then (160 : Fin 210) else (161 : Fin 210)))) else (if j.val < 228 then (if j.val < 226 then (162 : Fin 210) else (if j.val < 227 then (163 : Fin 210) else (164 : Fin 210))) else (if j.val < 229 then (165 : Fin 210) else (if j.val < 230 then (166 : Fin 210) else (167 : Fin 210)))))) else (if j.val < 241 then (if j.val < 236 then (if j.val < 233 then (if j.val < 232 then (168 : Fin 210) else (169 : Fin 210)) else (if j.val < 234 then (170 : Fin 210) else (if j.val < 235 then (171 : Fin 210) else (172 : Fin 210)))) else (if j.val < 238 then (if j.val < 237 then (173 : Fin 210) else (174 : Fin 210)) else (if j.val < 239 then (175 : Fin 210) else (if j.val < 240 then (176 : Fin 210) else (177 : Fin 210))))) else (if j.val < 246 then (if j.val < 243 then (if j.val < 242 then (178 : Fin 210) else (179 : Fin 210)) else (if j.val < 244 then (180 : Fin 210) else (if j.val < 245 then (181 : Fin 210) else (182 : Fin 210)))) else (if j.val < 249 then (if j.val < 247 then (183 : Fin 210) else (if j.val < 248 then (184 : Fin 210) else (185 : Fin 210))) else (if j.val < 250 then (186 : Fin 210) else (if j.val < 251 then (187 : Fin 210) else (188 : Fin 210)))))))) else (if j.val < 294 then (if j.val < 273 then (if j.val < 262 then (if j.val < 257 then (if j.val < 254 then (if j.val < 253 then (63 : Fin 210) else (64 : Fin 210)) else (if j.val < 255 then (65 : Fin 210) else (if j.val < 256 then (66 : Fin 210) else (67 : Fin 210)))) else (if j.val < 259 then (if j.val < 258 then (68 : Fin 210) else (69 : Fin 210)) else (if j.val < 260 then (70 : Fin 210) else (if j.val < 261 then (71 : Fin 210) else (72 : Fin 210))))) else (if j.val < 267 then (if j.val < 264 then (if j.val < 263 then (73 : Fin 210) else (74 : Fin 210)) else (if j.val < 265 then (75 : Fin 210) else (if j.val < 266 then (76 : Fin 210) else (77 : Fin 210)))) else (if j.val < 270 then (if j.val < 268 then (78 : Fin 210) else (if j.val < 269 then (79 : Fin 210) else (80 : Fin 210))) else (if j.val < 271 then (81 : Fin 210) else (if j.val < 272 then (82 : Fin 210) else (83 : Fin 210)))))) else (if j.val < 283 then (if j.val < 278 then (if j.val < 275 then (if j.val < 274 then (126 : Fin 210) else (127 : Fin 210)) else (if j.val < 276 then (128 : Fin 210) else (if j.val < 277 then (129 : Fin 210) else (130 : Fin 210)))) else (if j.val < 280 then (if j.val < 279 then (131 : Fin 210) else (132 : Fin 210)) else (if j.val < 281 then (133 : Fin 210) else (if j.val < 282 then (134 : Fin 210) else (135 : Fin 210))))) else (if j.val < 288 then (if j.val < 285 then (if j.val < 284 then (136 : Fin 210) else (137 : Fin 210)) else (if j.val < 286 then (138 : Fin 210) else (if j.val < 287 then (139 : Fin 210) else (140 : Fin 210)))) else (if j.val < 291 then (if j.val < 289 then (141 : Fin 210) else (if j.val < 290 then (142 : Fin 210) else (143 : Fin 210))) else (if j.val < 292 then (144 : Fin 210) else (if j.val < 293 then (145 : Fin 210) else (146 : Fin 210))))))) else (if j.val < 315 then (if j.val < 304 then (if j.val < 299 then (if j.val < 296 then (if j.val < 295 then (168 : Fin 210) else (169 : Fin 210)) else (if j.val < 297 then (170 : Fin 210) else (if j.val < 298 then (171 : Fin 210) else (172 : Fin 210)))) else (if j.val < 301 then (if j.val < 300 then (173 : Fin 210) else (174 : Fin 210)) else (if j.val < 302 then (175 : Fin 210) else (if j.val < 303 then (176 : Fin 210) else (177 : Fin 210))))) else (if j.val < 309 then (if j.val < 306 then (if j.val < 305 then (178 : Fin 210) else (179 : Fin 210)) else (if j.val < 307 then (180 : Fin 210) else (if j.val < 308 then (181 : Fin 210) else (182 : Fin 210)))) else (if j.val < 312 then (if j.val < 310 then (183 : Fin 210) else (if j.val < 311 then (184 : Fin 210) else (185 : Fin 210))) else (if j.val < 313 then (186 : Fin 210) else (if j.val < 314 then (187 : Fin 210) else (188 : Fin 210)))))) else (if j.val < 325 then (if j.val < 320 then (if j.val < 317 then (if j.val < 316 then (189 : Fin 210) else (190 : Fin 210)) else (if j.val < 318 then (191 : Fin 210) else (if j.val < 319 then (192 : Fin 210) else (193 : Fin 210)))) else (if j.val < 322 then (if j.val < 321 then (194 : Fin 210) else (195 : Fin 210)) else (if j.val < 323 then (196 : Fin 210) else (if j.val < 324 then (197 : Fin 210) else (198 : Fin 210))))) else (if j.val < 330 then (if j.val < 327 then (if j.val < 326 then (199 : Fin 210) else (200 : Fin 210)) else (if j.val < 328 then (201 : Fin 210) else (if j.val < 329 then (202 : Fin 210) else (203 : Fin 210)))) else (if j.val < 333 then (if j.val < 331 then (204 : Fin 210) else (if j.val < 332 then (205 : Fin 210) else (206 : Fin 210))) else (if j.val < 334 then (207 : Fin 210) else (if j.val < 335 then (208 : Fin 210) else (209 : Fin 210))))))))))

theorem secondReal_columns_0 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 0 = true := by decide +kernel

theorem secondReal_columns_1 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 1 = true := by decide +kernel

theorem secondReal_columns_2 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 2 = true := by decide +kernel

theorem secondReal_columns_3 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 3 = true := by decide +kernel

theorem secondReal_columns_4 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 4 = true := by decide +kernel

theorem secondReal_columns_5 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 5 = true := by decide +kernel

theorem secondReal_columns_6 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 6 = true := by decide +kernel

theorem secondReal_columns_7 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 7 = true := by decide +kernel

theorem secondReal_columns_8 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 8 = true := by decide +kernel

theorem secondReal_columns_9 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 9 = true := by decide +kernel

theorem secondReal_columns_10 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 10 = true := by decide +kernel

theorem secondReal_columns_11 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 11 = true := by decide +kernel

theorem secondReal_columns_12 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 12 = true := by decide +kernel

theorem secondReal_columns_13 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 13 = true := by decide +kernel

theorem secondReal_columns_14 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 14 = true := by decide +kernel

theorem secondReal_columns_15 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 15 = true := by decide +kernel

theorem secondReal_columns_16 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 16 = true := by decide +kernel

theorem secondReal_columns_17 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 17 = true := by decide +kernel

theorem secondReal_columns_18 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 18 = true := by decide +kernel

theorem secondReal_columns_19 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 19 = true := by decide +kernel

theorem secondReal_columns_20 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 20 = true := by decide +kernel

theorem secondReal_columns_21 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 21 = true := by decide +kernel

theorem secondReal_columns_22 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 22 = true := by decide +kernel

theorem secondReal_columns_23 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 23 = true := by decide +kernel

theorem secondReal_columns_24 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 24 = true := by decide +kernel

theorem secondReal_columns_25 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 25 = true := by decide +kernel

theorem secondReal_columns_26 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 26 = true := by decide +kernel

theorem secondReal_columns_27 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 27 = true := by decide +kernel

theorem secondReal_columns_28 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 28 = true := by decide +kernel

theorem secondReal_columns_29 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 29 = true := by decide +kernel

theorem secondReal_columns_30 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 30 = true := by decide +kernel

theorem secondReal_columns_31 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 31 = true := by decide +kernel

theorem secondReal_columns_32 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 32 = true := by decide +kernel

theorem secondReal_columns_33 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 33 = true := by decide +kernel

theorem secondReal_columns_34 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 34 = true := by decide +kernel

theorem secondReal_columns_35 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 35 = true := by decide +kernel

theorem secondReal_columns_36 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 36 = true := by decide +kernel

theorem secondReal_columns_37 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 37 = true := by decide +kernel

theorem secondReal_columns_38 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 38 = true := by decide +kernel

theorem secondReal_columns_39 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 39 = true := by decide +kernel

theorem secondReal_columns_40 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 40 = true := by decide +kernel

theorem secondReal_columns_41 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 41 = true := by decide +kernel

theorem secondReal_columns_42 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 42 = true := by decide +kernel

theorem secondReal_columns_43 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 43 = true := by decide +kernel

theorem secondReal_columns_44 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 44 = true := by decide +kernel

theorem secondReal_columns_45 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 45 = true := by decide +kernel

theorem secondReal_columns_46 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 46 = true := by decide +kernel

theorem secondReal_columns_47 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 47 = true := by decide +kernel

theorem secondReal_columns_48 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 48 = true := by decide +kernel

theorem secondReal_columns_49 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 49 = true := by decide +kernel

theorem secondReal_columns_50 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 50 = true := by decide +kernel

theorem secondReal_columns_51 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 51 = true := by decide +kernel

theorem secondReal_columns_52 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 52 = true := by decide +kernel

theorem secondReal_columns_53 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 53 = true := by decide +kernel

theorem secondReal_columns_54 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 54 = true := by decide +kernel

theorem secondReal_columns_55 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 55 = true := by decide +kernel

theorem secondReal_columns_56 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 56 = true := by decide +kernel

theorem secondReal_columns_57 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 57 = true := by decide +kernel

theorem secondReal_columns_58 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 58 = true := by decide +kernel

theorem secondReal_columns_59 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 59 = true := by decide +kernel

theorem secondReal_columns_60 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 60 = true := by decide +kernel

theorem secondReal_columns_61 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 61 = true := by decide +kernel

theorem secondReal_columns_62 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 62 = true := by decide +kernel

theorem secondReal_columns_63 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 63 = true := by decide +kernel

theorem secondReal_columns_64 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 64 = true := by decide +kernel

theorem secondReal_columns_65 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 65 = true := by decide +kernel

theorem secondReal_columns_66 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 66 = true := by decide +kernel

theorem secondReal_columns_67 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 67 = true := by decide +kernel

theorem secondReal_columns_68 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 68 = true := by decide +kernel

theorem secondReal_columns_69 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 69 = true := by decide +kernel

theorem secondReal_columns_70 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 70 = true := by decide +kernel

theorem secondReal_columns_71 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 71 = true := by decide +kernel

theorem secondReal_columns_72 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 72 = true := by decide +kernel

theorem secondReal_columns_73 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 73 = true := by decide +kernel

theorem secondReal_columns_74 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 74 = true := by decide +kernel

theorem secondReal_columns_75 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 75 = true := by decide +kernel

theorem secondReal_columns_76 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 76 = true := by decide +kernel

theorem secondReal_columns_77 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 77 = true := by decide +kernel

theorem secondReal_columns_78 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 78 = true := by decide +kernel

theorem secondReal_columns_79 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 79 = true := by decide +kernel

theorem secondReal_columns_80 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 80 = true := by decide +kernel

theorem secondReal_columns_81 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 81 = true := by decide +kernel

theorem secondReal_columns_82 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 82 = true := by decide +kernel

theorem secondReal_columns_83 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 83 = true := by decide +kernel

theorem secondReal_columns_84 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 84 = true := by decide +kernel

theorem secondReal_columns_85 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 85 = true := by decide +kernel

theorem secondReal_columns_86 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 86 = true := by decide +kernel

theorem secondReal_columns_87 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 87 = true := by decide +kernel

theorem secondReal_columns_88 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 88 = true := by decide +kernel

theorem secondReal_columns_89 : (compactSecondReal.columns secondExpand).exactRowCheck polySecondReal 89 = true := by decide +kernel

theorem secondReal_columns : (compactSecondReal.columns secondExpand) = polySecondReal := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact secondReal_columns_0
  · exact secondReal_columns_1
  · exact secondReal_columns_2
  · exact secondReal_columns_3
  · exact secondReal_columns_4
  · exact secondReal_columns_5
  · exact secondReal_columns_6
  · exact secondReal_columns_7
  · exact secondReal_columns_8
  · exact secondReal_columns_9
  · exact secondReal_columns_10
  · exact secondReal_columns_11
  · exact secondReal_columns_12
  · exact secondReal_columns_13
  · exact secondReal_columns_14
  · exact secondReal_columns_15
  · exact secondReal_columns_16
  · exact secondReal_columns_17
  · exact secondReal_columns_18
  · exact secondReal_columns_19
  · exact secondReal_columns_20
  · exact secondReal_columns_21
  · exact secondReal_columns_22
  · exact secondReal_columns_23
  · exact secondReal_columns_24
  · exact secondReal_columns_25
  · exact secondReal_columns_26
  · exact secondReal_columns_27
  · exact secondReal_columns_28
  · exact secondReal_columns_29
  · exact secondReal_columns_30
  · exact secondReal_columns_31
  · exact secondReal_columns_32
  · exact secondReal_columns_33
  · exact secondReal_columns_34
  · exact secondReal_columns_35
  · exact secondReal_columns_36
  · exact secondReal_columns_37
  · exact secondReal_columns_38
  · exact secondReal_columns_39
  · exact secondReal_columns_40
  · exact secondReal_columns_41
  · exact secondReal_columns_42
  · exact secondReal_columns_43
  · exact secondReal_columns_44
  · exact secondReal_columns_45
  · exact secondReal_columns_46
  · exact secondReal_columns_47
  · exact secondReal_columns_48
  · exact secondReal_columns_49
  · exact secondReal_columns_50
  · exact secondReal_columns_51
  · exact secondReal_columns_52
  · exact secondReal_columns_53
  · exact secondReal_columns_54
  · exact secondReal_columns_55
  · exact secondReal_columns_56
  · exact secondReal_columns_57
  · exact secondReal_columns_58
  · exact secondReal_columns_59
  · exact secondReal_columns_60
  · exact secondReal_columns_61
  · exact secondReal_columns_62
  · exact secondReal_columns_63
  · exact secondReal_columns_64
  · exact secondReal_columns_65
  · exact secondReal_columns_66
  · exact secondReal_columns_67
  · exact secondReal_columns_68
  · exact secondReal_columns_69
  · exact secondReal_columns_70
  · exact secondReal_columns_71
  · exact secondReal_columns_72
  · exact secondReal_columns_73
  · exact secondReal_columns_74
  · exact secondReal_columns_75
  · exact secondReal_columns_76
  · exact secondReal_columns_77
  · exact secondReal_columns_78
  · exact secondReal_columns_79
  · exact secondReal_columns_80
  · exact secondReal_columns_81
  · exact secondReal_columns_82
  · exact secondReal_columns_83
  · exact secondReal_columns_84
  · exact secondReal_columns_85
  · exact secondReal_columns_86
  · exact secondReal_columns_87
  · exact secondReal_columns_88
  · exact secondReal_columns_89

theorem secondImag_columns_0 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 0 = true := by decide +kernel

theorem secondImag_columns_1 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 1 = true := by decide +kernel

theorem secondImag_columns_2 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 2 = true := by decide +kernel

theorem secondImag_columns_3 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 3 = true := by decide +kernel

theorem secondImag_columns_4 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 4 = true := by decide +kernel

theorem secondImag_columns_5 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 5 = true := by decide +kernel

theorem secondImag_columns_6 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 6 = true := by decide +kernel

theorem secondImag_columns_7 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 7 = true := by decide +kernel

theorem secondImag_columns_8 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 8 = true := by decide +kernel

theorem secondImag_columns_9 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 9 = true := by decide +kernel

theorem secondImag_columns_10 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 10 = true := by decide +kernel

theorem secondImag_columns_11 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 11 = true := by decide +kernel

theorem secondImag_columns_12 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 12 = true := by decide +kernel

theorem secondImag_columns_13 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 13 = true := by decide +kernel

theorem secondImag_columns_14 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 14 = true := by decide +kernel

theorem secondImag_columns_15 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 15 = true := by decide +kernel

theorem secondImag_columns_16 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 16 = true := by decide +kernel

theorem secondImag_columns_17 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 17 = true := by decide +kernel

theorem secondImag_columns_18 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 18 = true := by decide +kernel

theorem secondImag_columns_19 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 19 = true := by decide +kernel

theorem secondImag_columns_20 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 20 = true := by decide +kernel

theorem secondImag_columns_21 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 21 = true := by decide +kernel

theorem secondImag_columns_22 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 22 = true := by decide +kernel

theorem secondImag_columns_23 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 23 = true := by decide +kernel

theorem secondImag_columns_24 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 24 = true := by decide +kernel

theorem secondImag_columns_25 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 25 = true := by decide +kernel

theorem secondImag_columns_26 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 26 = true := by decide +kernel

theorem secondImag_columns_27 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 27 = true := by decide +kernel

theorem secondImag_columns_28 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 28 = true := by decide +kernel

theorem secondImag_columns_29 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 29 = true := by decide +kernel

theorem secondImag_columns_30 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 30 = true := by decide +kernel

theorem secondImag_columns_31 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 31 = true := by decide +kernel

theorem secondImag_columns_32 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 32 = true := by decide +kernel

theorem secondImag_columns_33 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 33 = true := by decide +kernel

theorem secondImag_columns_34 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 34 = true := by decide +kernel

theorem secondImag_columns_35 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 35 = true := by decide +kernel

theorem secondImag_columns_36 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 36 = true := by decide +kernel

theorem secondImag_columns_37 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 37 = true := by decide +kernel

theorem secondImag_columns_38 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 38 = true := by decide +kernel

theorem secondImag_columns_39 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 39 = true := by decide +kernel

theorem secondImag_columns_40 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 40 = true := by decide +kernel

theorem secondImag_columns_41 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 41 = true := by decide +kernel

theorem secondImag_columns_42 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 42 = true := by decide +kernel

theorem secondImag_columns_43 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 43 = true := by decide +kernel

theorem secondImag_columns_44 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 44 = true := by decide +kernel

theorem secondImag_columns_45 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 45 = true := by decide +kernel

theorem secondImag_columns_46 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 46 = true := by decide +kernel

theorem secondImag_columns_47 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 47 = true := by decide +kernel

theorem secondImag_columns_48 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 48 = true := by decide +kernel

theorem secondImag_columns_49 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 49 = true := by decide +kernel

theorem secondImag_columns_50 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 50 = true := by decide +kernel

theorem secondImag_columns_51 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 51 = true := by decide +kernel

theorem secondImag_columns_52 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 52 = true := by decide +kernel

theorem secondImag_columns_53 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 53 = true := by decide +kernel

theorem secondImag_columns_54 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 54 = true := by decide +kernel

theorem secondImag_columns_55 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 55 = true := by decide +kernel

theorem secondImag_columns_56 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 56 = true := by decide +kernel

theorem secondImag_columns_57 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 57 = true := by decide +kernel

theorem secondImag_columns_58 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 58 = true := by decide +kernel

theorem secondImag_columns_59 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 59 = true := by decide +kernel

theorem secondImag_columns_60 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 60 = true := by decide +kernel

theorem secondImag_columns_61 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 61 = true := by decide +kernel

theorem secondImag_columns_62 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 62 = true := by decide +kernel

theorem secondImag_columns_63 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 63 = true := by decide +kernel

theorem secondImag_columns_64 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 64 = true := by decide +kernel

theorem secondImag_columns_65 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 65 = true := by decide +kernel

theorem secondImag_columns_66 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 66 = true := by decide +kernel

theorem secondImag_columns_67 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 67 = true := by decide +kernel

theorem secondImag_columns_68 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 68 = true := by decide +kernel

theorem secondImag_columns_69 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 69 = true := by decide +kernel

theorem secondImag_columns_70 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 70 = true := by decide +kernel

theorem secondImag_columns_71 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 71 = true := by decide +kernel

theorem secondImag_columns_72 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 72 = true := by decide +kernel

theorem secondImag_columns_73 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 73 = true := by decide +kernel

theorem secondImag_columns_74 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 74 = true := by decide +kernel

theorem secondImag_columns_75 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 75 = true := by decide +kernel

theorem secondImag_columns_76 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 76 = true := by decide +kernel

theorem secondImag_columns_77 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 77 = true := by decide +kernel

theorem secondImag_columns_78 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 78 = true := by decide +kernel

theorem secondImag_columns_79 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 79 = true := by decide +kernel

theorem secondImag_columns_80 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 80 = true := by decide +kernel

theorem secondImag_columns_81 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 81 = true := by decide +kernel

theorem secondImag_columns_82 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 82 = true := by decide +kernel

theorem secondImag_columns_83 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 83 = true := by decide +kernel

theorem secondImag_columns_84 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 84 = true := by decide +kernel

theorem secondImag_columns_85 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 85 = true := by decide +kernel

theorem secondImag_columns_86 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 86 = true := by decide +kernel

theorem secondImag_columns_87 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 87 = true := by decide +kernel

theorem secondImag_columns_88 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 88 = true := by decide +kernel

theorem secondImag_columns_89 : (compactSecondImag.columns secondExpand).exactRowCheck polySecondImag 89 = true := by decide +kernel

theorem secondImag_columns : (compactSecondImag.columns secondExpand) = polySecondImag := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact secondImag_columns_0
  · exact secondImag_columns_1
  · exact secondImag_columns_2
  · exact secondImag_columns_3
  · exact secondImag_columns_4
  · exact secondImag_columns_5
  · exact secondImag_columns_6
  · exact secondImag_columns_7
  · exact secondImag_columns_8
  · exact secondImag_columns_9
  · exact secondImag_columns_10
  · exact secondImag_columns_11
  · exact secondImag_columns_12
  · exact secondImag_columns_13
  · exact secondImag_columns_14
  · exact secondImag_columns_15
  · exact secondImag_columns_16
  · exact secondImag_columns_17
  · exact secondImag_columns_18
  · exact secondImag_columns_19
  · exact secondImag_columns_20
  · exact secondImag_columns_21
  · exact secondImag_columns_22
  · exact secondImag_columns_23
  · exact secondImag_columns_24
  · exact secondImag_columns_25
  · exact secondImag_columns_26
  · exact secondImag_columns_27
  · exact secondImag_columns_28
  · exact secondImag_columns_29
  · exact secondImag_columns_30
  · exact secondImag_columns_31
  · exact secondImag_columns_32
  · exact secondImag_columns_33
  · exact secondImag_columns_34
  · exact secondImag_columns_35
  · exact secondImag_columns_36
  · exact secondImag_columns_37
  · exact secondImag_columns_38
  · exact secondImag_columns_39
  · exact secondImag_columns_40
  · exact secondImag_columns_41
  · exact secondImag_columns_42
  · exact secondImag_columns_43
  · exact secondImag_columns_44
  · exact secondImag_columns_45
  · exact secondImag_columns_46
  · exact secondImag_columns_47
  · exact secondImag_columns_48
  · exact secondImag_columns_49
  · exact secondImag_columns_50
  · exact secondImag_columns_51
  · exact secondImag_columns_52
  · exact secondImag_columns_53
  · exact secondImag_columns_54
  · exact secondImag_columns_55
  · exact secondImag_columns_56
  · exact secondImag_columns_57
  · exact secondImag_columns_58
  · exact secondImag_columns_59
  · exact secondImag_columns_60
  · exact secondImag_columns_61
  · exact secondImag_columns_62
  · exact secondImag_columns_63
  · exact secondImag_columns_64
  · exact secondImag_columns_65
  · exact secondImag_columns_66
  · exact secondImag_columns_67
  · exact secondImag_columns_68
  · exact secondImag_columns_69
  · exact secondImag_columns_70
  · exact secondImag_columns_71
  · exact secondImag_columns_72
  · exact secondImag_columns_73
  · exact secondImag_columns_74
  · exact secondImag_columns_75
  · exact secondImag_columns_76
  · exact secondImag_columns_77
  · exact secondImag_columns_78
  · exact secondImag_columns_79
  · exact secondImag_columns_80
  · exact secondImag_columns_81
  · exact secondImag_columns_82
  · exact secondImag_columns_83
  · exact secondImag_columns_84
  · exact secondImag_columns_85
  · exact secondImag_columns_86
  · exact secondImag_columns_87
  · exact secondImag_columns_88
  · exact secondImag_columns_89

theorem secondTarget_columns_0 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 0 = true := by decide +kernel

theorem secondTarget_columns_1 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 1 = true := by decide +kernel

theorem secondTarget_columns_2 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 2 = true := by decide +kernel

theorem secondTarget_columns_3 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 3 = true := by decide +kernel

theorem secondTarget_columns_4 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 4 = true := by decide +kernel

theorem secondTarget_columns_5 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 5 = true := by decide +kernel

theorem secondTarget_columns_6 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 6 = true := by decide +kernel

theorem secondTarget_columns_7 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 7 = true := by decide +kernel

theorem secondTarget_columns_8 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 8 = true := by decide +kernel

theorem secondTarget_columns_9 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 9 = true := by decide +kernel

theorem secondTarget_columns_10 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 10 = true := by decide +kernel

theorem secondTarget_columns_11 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 11 = true := by decide +kernel

theorem secondTarget_columns_12 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 12 = true := by decide +kernel

theorem secondTarget_columns_13 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 13 = true := by decide +kernel

theorem secondTarget_columns_14 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 14 = true := by decide +kernel

theorem secondTarget_columns_15 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 15 = true := by decide +kernel

theorem secondTarget_columns_16 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 16 = true := by decide +kernel

theorem secondTarget_columns_17 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 17 = true := by decide +kernel

theorem secondTarget_columns_18 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 18 = true := by decide +kernel

theorem secondTarget_columns_19 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 19 = true := by decide +kernel

theorem secondTarget_columns_20 : ((data.normalSecond.columns secondPick).columns secondExpand).exactRowCheck data.normalSecond 20 = true := by decide +kernel

theorem secondTarget_columns : ((data.normalSecond.columns secondPick).columns secondExpand) = data.normalSecond := by
  apply MatrixBox.eq_of_exact_rows
  intro i
  fin_cases i
  · exact secondTarget_columns_0
  · exact secondTarget_columns_1
  · exact secondTarget_columns_2
  · exact secondTarget_columns_3
  · exact secondTarget_columns_4
  · exact secondTarget_columns_5
  · exact secondTarget_columns_6
  · exact secondTarget_columns_7
  · exact secondTarget_columns_8
  · exact secondTarget_columns_9
  · exact secondTarget_columns_10
  · exact secondTarget_columns_11
  · exact secondTarget_columns_12
  · exact secondTarget_columns_13
  · exact secondTarget_columns_14
  · exact secondTarget_columns_15
  · exact secondTarget_columns_16
  · exact secondTarget_columns_17
  · exact secondTarget_columns_18
  · exact secondTarget_columns_19
  · exact secondTarget_columns_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
