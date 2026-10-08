import SeedPhaseTapeComposition

/- A bounded compositional replay of the original complete 385-tag fixture.
Each actual leaf is reduced separately. Split proofs use the generic append
and complete-child lemmas. Exact physical refinement remains a separate step. -/
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.PureCentre385Compositional

def cell_000 : CellCode := ordinalCellCode 2241383
def cell_001 : CellCode := childCell cell_000 0
def cell_002 : CellCode := childCell cell_000 1
def cell_003 : CellCode := childCell cell_000 2
def cell_004 : CellCode := childCell cell_000 3
def cell_005 : CellCode := childCell cell_000 4
def cell_006 : CellCode := childCell cell_005 0
def cell_007 : CellCode := childCell cell_005 1
def cell_008 : CellCode := childCell cell_005 2
def cell_009 : CellCode := childCell cell_005 3
def cell_010 : CellCode := childCell cell_005 4
def cell_011 : CellCode := childCell cell_005 5
def cell_012 : CellCode := childCell cell_005 6
def cell_013 : CellCode := childCell cell_005 7
def cell_014 : CellCode := childCell cell_005 8
def cell_015 : CellCode := childCell cell_005 9
def cell_016 : CellCode := childCell cell_005 10
def cell_017 : CellCode := childCell cell_005 11
def cell_018 : CellCode := childCell cell_005 12
def cell_019 : CellCode := childCell cell_005 13
def cell_020 : CellCode := childCell cell_005 14
def cell_021 : CellCode := childCell cell_005 15
def cell_022 : CellCode := childCell cell_005 16
def cell_023 : CellCode := childCell cell_005 17
def cell_024 : CellCode := childCell cell_005 18
def cell_025 : CellCode := childCell cell_005 19
def cell_026 : CellCode := childCell cell_005 20
def cell_027 : CellCode := childCell cell_005 21
def cell_028 : CellCode := childCell cell_005 22
def cell_029 : CellCode := childCell cell_005 23
def cell_030 : CellCode := childCell cell_005 24
def cell_031 : CellCode := childCell cell_005 25
def cell_032 : CellCode := childCell cell_005 26
def cell_033 : CellCode := childCell cell_005 27
def cell_034 : CellCode := childCell cell_005 28
def cell_035 : CellCode := childCell cell_005 29
def cell_036 : CellCode := childCell cell_005 30
def cell_037 : CellCode := childCell cell_005 31
def cell_038 : CellCode := childCell cell_000 5
def cell_039 : CellCode := childCell cell_000 6
def cell_040 : CellCode := childCell cell_039 0
def cell_041 : CellCode := childCell cell_039 1
def cell_042 : CellCode := childCell cell_039 2
def cell_043 : CellCode := childCell cell_039 3
def cell_044 : CellCode := childCell cell_039 4
def cell_045 : CellCode := childCell cell_039 5
def cell_046 : CellCode := childCell cell_039 6
def cell_047 : CellCode := childCell cell_039 7
def cell_048 : CellCode := childCell cell_039 8
def cell_049 : CellCode := childCell cell_039 9
def cell_050 : CellCode := childCell cell_039 10
def cell_051 : CellCode := childCell cell_039 11
def cell_052 : CellCode := childCell cell_039 12
def cell_053 : CellCode := childCell cell_039 13
def cell_054 : CellCode := childCell cell_039 14
def cell_055 : CellCode := childCell cell_039 15
def cell_056 : CellCode := childCell cell_039 16
def cell_057 : CellCode := childCell cell_039 17
def cell_058 : CellCode := childCell cell_039 18
def cell_059 : CellCode := childCell cell_039 19
def cell_060 : CellCode := childCell cell_039 20
def cell_061 : CellCode := childCell cell_039 21
def cell_062 : CellCode := childCell cell_039 22
def cell_063 : CellCode := childCell cell_039 23
def cell_064 : CellCode := childCell cell_039 24
def cell_065 : CellCode := childCell cell_039 25
def cell_066 : CellCode := childCell cell_039 26
def cell_067 : CellCode := childCell cell_039 27
def cell_068 : CellCode := childCell cell_039 28
def cell_069 : CellCode := childCell cell_039 29
def cell_070 : CellCode := childCell cell_039 30
def cell_071 : CellCode := childCell cell_039 31
def cell_072 : CellCode := childCell cell_000 7
def cell_073 : CellCode := childCell cell_000 8
def cell_074 : CellCode := childCell cell_073 0
def cell_075 : CellCode := childCell cell_073 1
def cell_076 : CellCode := childCell cell_073 2
def cell_077 : CellCode := childCell cell_073 3
def cell_078 : CellCode := childCell cell_073 4
def cell_079 : CellCode := childCell cell_073 5
def cell_080 : CellCode := childCell cell_073 6
def cell_081 : CellCode := childCell cell_073 7
def cell_082 : CellCode := childCell cell_073 8
def cell_083 : CellCode := childCell cell_073 9
def cell_084 : CellCode := childCell cell_073 10
def cell_085 : CellCode := childCell cell_073 11
def cell_086 : CellCode := childCell cell_073 12
def cell_087 : CellCode := childCell cell_073 13
def cell_088 : CellCode := childCell cell_073 14
def cell_089 : CellCode := childCell cell_073 15
def cell_090 : CellCode := childCell cell_073 16
def cell_091 : CellCode := childCell cell_073 17
def cell_092 : CellCode := childCell cell_073 18
def cell_093 : CellCode := childCell cell_073 19
def cell_094 : CellCode := childCell cell_073 20
def cell_095 : CellCode := childCell cell_073 21
def cell_096 : CellCode := childCell cell_073 22
def cell_097 : CellCode := childCell cell_073 23
def cell_098 : CellCode := childCell cell_073 24
def cell_099 : CellCode := childCell cell_073 25
def cell_100 : CellCode := childCell cell_073 26
def cell_101 : CellCode := childCell cell_073 27
def cell_102 : CellCode := childCell cell_073 28
def cell_103 : CellCode := childCell cell_073 29
def cell_104 : CellCode := childCell cell_073 30
def cell_105 : CellCode := childCell cell_073 31
def cell_106 : CellCode := childCell cell_000 9
def cell_107 : CellCode := childCell cell_000 10
def cell_108 : CellCode := childCell cell_107 0
def cell_109 : CellCode := childCell cell_107 1
def cell_110 : CellCode := childCell cell_107 2
def cell_111 : CellCode := childCell cell_107 3
def cell_112 : CellCode := childCell cell_107 4
def cell_113 : CellCode := childCell cell_107 5
def cell_114 : CellCode := childCell cell_107 6
def cell_115 : CellCode := childCell cell_107 7
def cell_116 : CellCode := childCell cell_107 8
def cell_117 : CellCode := childCell cell_107 9
def cell_118 : CellCode := childCell cell_107 10
def cell_119 : CellCode := childCell cell_107 11
def cell_120 : CellCode := childCell cell_107 12
def cell_121 : CellCode := childCell cell_107 13
def cell_122 : CellCode := childCell cell_107 14
def cell_123 : CellCode := childCell cell_107 15
def cell_124 : CellCode := childCell cell_107 16
def cell_125 : CellCode := childCell cell_107 17
def cell_126 : CellCode := childCell cell_107 18
def cell_127 : CellCode := childCell cell_107 19
def cell_128 : CellCode := childCell cell_107 20
def cell_129 : CellCode := childCell cell_107 21
def cell_130 : CellCode := childCell cell_107 22
def cell_131 : CellCode := childCell cell_107 23
def cell_132 : CellCode := childCell cell_107 24
def cell_133 : CellCode := childCell cell_107 25
def cell_134 : CellCode := childCell cell_107 26
def cell_135 : CellCode := childCell cell_107 27
def cell_136 : CellCode := childCell cell_107 28
def cell_137 : CellCode := childCell cell_107 29
def cell_138 : CellCode := childCell cell_107 30
def cell_139 : CellCode := childCell cell_107 31
def cell_140 : CellCode := childCell cell_000 11
def cell_141 : CellCode := childCell cell_000 12
def cell_142 : CellCode := childCell cell_000 13
def cell_143 : CellCode := childCell cell_142 0
def cell_144 : CellCode := childCell cell_142 1
def cell_145 : CellCode := childCell cell_142 2
def cell_146 : CellCode := childCell cell_142 3
def cell_147 : CellCode := childCell cell_142 4
def cell_148 : CellCode := childCell cell_142 5
def cell_149 : CellCode := childCell cell_142 6
def cell_150 : CellCode := childCell cell_142 7
def cell_151 : CellCode := childCell cell_142 8
def cell_152 : CellCode := childCell cell_142 9
def cell_153 : CellCode := childCell cell_142 10
def cell_154 : CellCode := childCell cell_142 11
def cell_155 : CellCode := childCell cell_142 12
def cell_156 : CellCode := childCell cell_142 13
def cell_157 : CellCode := childCell cell_142 14
def cell_158 : CellCode := childCell cell_142 15
def cell_159 : CellCode := childCell cell_142 16
def cell_160 : CellCode := childCell cell_142 17
def cell_161 : CellCode := childCell cell_142 18
def cell_162 : CellCode := childCell cell_142 19
def cell_163 : CellCode := childCell cell_142 20
def cell_164 : CellCode := childCell cell_142 21
def cell_165 : CellCode := childCell cell_142 22
def cell_166 : CellCode := childCell cell_142 23
def cell_167 : CellCode := childCell cell_142 24
def cell_168 : CellCode := childCell cell_142 25
def cell_169 : CellCode := childCell cell_142 26
def cell_170 : CellCode := childCell cell_142 27
def cell_171 : CellCode := childCell cell_142 28
def cell_172 : CellCode := childCell cell_142 29
def cell_173 : CellCode := childCell cell_142 30
def cell_174 : CellCode := childCell cell_142 31
def cell_175 : CellCode := childCell cell_000 14
def cell_176 : CellCode := childCell cell_175 0
def cell_177 : CellCode := childCell cell_175 1
def cell_178 : CellCode := childCell cell_175 2
def cell_179 : CellCode := childCell cell_175 3
def cell_180 : CellCode := childCell cell_175 4
def cell_181 : CellCode := childCell cell_175 5
def cell_182 : CellCode := childCell cell_175 6
def cell_183 : CellCode := childCell cell_175 7
def cell_184 : CellCode := childCell cell_175 8
def cell_185 : CellCode := childCell cell_175 9
def cell_186 : CellCode := childCell cell_175 10
def cell_187 : CellCode := childCell cell_175 11
def cell_188 : CellCode := childCell cell_175 12
def cell_189 : CellCode := childCell cell_175 13
def cell_190 : CellCode := childCell cell_175 14
def cell_191 : CellCode := childCell cell_175 15
def cell_192 : CellCode := childCell cell_175 16
def cell_193 : CellCode := childCell cell_175 17
def cell_194 : CellCode := childCell cell_175 18
def cell_195 : CellCode := childCell cell_175 19
def cell_196 : CellCode := childCell cell_175 20
def cell_197 : CellCode := childCell cell_175 21
def cell_198 : CellCode := childCell cell_175 22
def cell_199 : CellCode := childCell cell_175 23
def cell_200 : CellCode := childCell cell_175 24
def cell_201 : CellCode := childCell cell_175 25
def cell_202 : CellCode := childCell cell_175 26
def cell_203 : CellCode := childCell cell_175 27
def cell_204 : CellCode := childCell cell_175 28
def cell_205 : CellCode := childCell cell_175 29
def cell_206 : CellCode := childCell cell_175 30
def cell_207 : CellCode := childCell cell_175 31
def cell_208 : CellCode := childCell cell_000 15
def cell_209 : CellCode := childCell cell_000 16
def cell_210 : CellCode := childCell cell_000 17
def cell_211 : CellCode := childCell cell_000 18
def cell_212 : CellCode := childCell cell_000 19
def cell_213 : CellCode := childCell cell_000 20
def cell_214 : CellCode := childCell cell_213 0
def cell_215 : CellCode := childCell cell_213 1
def cell_216 : CellCode := childCell cell_213 2
def cell_217 : CellCode := childCell cell_213 3
def cell_218 : CellCode := childCell cell_213 4
def cell_219 : CellCode := childCell cell_213 5
def cell_220 : CellCode := childCell cell_213 6
def cell_221 : CellCode := childCell cell_213 7
def cell_222 : CellCode := childCell cell_213 8
def cell_223 : CellCode := childCell cell_213 9
def cell_224 : CellCode := childCell cell_213 10
def cell_225 : CellCode := childCell cell_213 11
def cell_226 : CellCode := childCell cell_213 12
def cell_227 : CellCode := childCell cell_213 13
def cell_228 : CellCode := childCell cell_213 14
def cell_229 : CellCode := childCell cell_213 15
def cell_230 : CellCode := childCell cell_213 16
def cell_231 : CellCode := childCell cell_213 17
def cell_232 : CellCode := childCell cell_213 18
def cell_233 : CellCode := childCell cell_213 19
def cell_234 : CellCode := childCell cell_213 20
def cell_235 : CellCode := childCell cell_213 21
def cell_236 : CellCode := childCell cell_213 22
def cell_237 : CellCode := childCell cell_213 23
def cell_238 : CellCode := childCell cell_213 24
def cell_239 : CellCode := childCell cell_213 25
def cell_240 : CellCode := childCell cell_213 26
def cell_241 : CellCode := childCell cell_213 27
def cell_242 : CellCode := childCell cell_213 28
def cell_243 : CellCode := childCell cell_213 29
def cell_244 : CellCode := childCell cell_213 30
def cell_245 : CellCode := childCell cell_213 31
def cell_246 : CellCode := childCell cell_000 21
def cell_247 : CellCode := childCell cell_000 22
def cell_248 : CellCode := childCell cell_247 0
def cell_249 : CellCode := childCell cell_247 1
def cell_250 : CellCode := childCell cell_247 2
def cell_251 : CellCode := childCell cell_247 3
def cell_252 : CellCode := childCell cell_247 4
def cell_253 : CellCode := childCell cell_247 5
def cell_254 : CellCode := childCell cell_247 6
def cell_255 : CellCode := childCell cell_247 7
def cell_256 : CellCode := childCell cell_247 8
def cell_257 : CellCode := childCell cell_247 9
def cell_258 : CellCode := childCell cell_247 10
def cell_259 : CellCode := childCell cell_247 11
def cell_260 : CellCode := childCell cell_247 12
def cell_261 : CellCode := childCell cell_247 13
def cell_262 : CellCode := childCell cell_247 14
def cell_263 : CellCode := childCell cell_247 15
def cell_264 : CellCode := childCell cell_247 16
def cell_265 : CellCode := childCell cell_247 17
def cell_266 : CellCode := childCell cell_247 18
def cell_267 : CellCode := childCell cell_247 19
def cell_268 : CellCode := childCell cell_247 20
def cell_269 : CellCode := childCell cell_247 21
def cell_270 : CellCode := childCell cell_247 22
def cell_271 : CellCode := childCell cell_247 23
def cell_272 : CellCode := childCell cell_247 24
def cell_273 : CellCode := childCell cell_247 25
def cell_274 : CellCode := childCell cell_247 26
def cell_275 : CellCode := childCell cell_247 27
def cell_276 : CellCode := childCell cell_247 28
def cell_277 : CellCode := childCell cell_247 29
def cell_278 : CellCode := childCell cell_247 30
def cell_279 : CellCode := childCell cell_247 31
def cell_280 : CellCode := childCell cell_000 23
def cell_281 : CellCode := childCell cell_000 24
def cell_282 : CellCode := childCell cell_281 0
def cell_283 : CellCode := childCell cell_281 1
def cell_284 : CellCode := childCell cell_281 2
def cell_285 : CellCode := childCell cell_281 3
def cell_286 : CellCode := childCell cell_281 4
def cell_287 : CellCode := childCell cell_281 5
def cell_288 : CellCode := childCell cell_281 6
def cell_289 : CellCode := childCell cell_281 7
def cell_290 : CellCode := childCell cell_281 8
def cell_291 : CellCode := childCell cell_281 9
def cell_292 : CellCode := childCell cell_281 10
def cell_293 : CellCode := childCell cell_281 11
def cell_294 : CellCode := childCell cell_281 12
def cell_295 : CellCode := childCell cell_281 13
def cell_296 : CellCode := childCell cell_281 14
def cell_297 : CellCode := childCell cell_281 15
def cell_298 : CellCode := childCell cell_281 16
def cell_299 : CellCode := childCell cell_281 17
def cell_300 : CellCode := childCell cell_281 18
def cell_301 : CellCode := childCell cell_281 19
def cell_302 : CellCode := childCell cell_281 20
def cell_303 : CellCode := childCell cell_281 21
def cell_304 : CellCode := childCell cell_281 22
def cell_305 : CellCode := childCell cell_281 23
def cell_306 : CellCode := childCell cell_281 24
def cell_307 : CellCode := childCell cell_281 25
def cell_308 : CellCode := childCell cell_281 26
def cell_309 : CellCode := childCell cell_281 27
def cell_310 : CellCode := childCell cell_281 28
def cell_311 : CellCode := childCell cell_281 29
def cell_312 : CellCode := childCell cell_281 30
def cell_313 : CellCode := childCell cell_281 31
def cell_314 : CellCode := childCell cell_000 25
def cell_315 : CellCode := childCell cell_000 26
def cell_316 : CellCode := childCell cell_000 27
def cell_317 : CellCode := childCell cell_000 28
def cell_318 : CellCode := childCell cell_317 0
def cell_319 : CellCode := childCell cell_317 1
def cell_320 : CellCode := childCell cell_317 2
def cell_321 : CellCode := childCell cell_317 3
def cell_322 : CellCode := childCell cell_317 4
def cell_323 : CellCode := childCell cell_317 5
def cell_324 : CellCode := childCell cell_317 6
def cell_325 : CellCode := childCell cell_317 7
def cell_326 : CellCode := childCell cell_317 8
def cell_327 : CellCode := childCell cell_317 9
def cell_328 : CellCode := childCell cell_317 10
def cell_329 : CellCode := childCell cell_317 11
def cell_330 : CellCode := childCell cell_317 12
def cell_331 : CellCode := childCell cell_317 13
def cell_332 : CellCode := childCell cell_317 14
def cell_333 : CellCode := childCell cell_317 15
def cell_334 : CellCode := childCell cell_317 16
def cell_335 : CellCode := childCell cell_317 17
def cell_336 : CellCode := childCell cell_317 18
def cell_337 : CellCode := childCell cell_317 19
def cell_338 : CellCode := childCell cell_317 20
def cell_339 : CellCode := childCell cell_317 21
def cell_340 : CellCode := childCell cell_317 22
def cell_341 : CellCode := childCell cell_317 23
def cell_342 : CellCode := childCell cell_317 24
def cell_343 : CellCode := childCell cell_317 25
def cell_344 : CellCode := childCell cell_317 26
def cell_345 : CellCode := childCell cell_317 27
def cell_346 : CellCode := childCell cell_317 28
def cell_347 : CellCode := childCell cell_317 29
def cell_348 : CellCode := childCell cell_317 30
def cell_349 : CellCode := childCell cell_317 31
def cell_350 : CellCode := childCell cell_000 29
def cell_351 : CellCode := childCell cell_000 30
def cell_352 : CellCode := childCell cell_351 0
def cell_353 : CellCode := childCell cell_351 1
def cell_354 : CellCode := childCell cell_351 2
def cell_355 : CellCode := childCell cell_351 3
def cell_356 : CellCode := childCell cell_351 4
def cell_357 : CellCode := childCell cell_351 5
def cell_358 : CellCode := childCell cell_351 6
def cell_359 : CellCode := childCell cell_351 7
def cell_360 : CellCode := childCell cell_351 8
def cell_361 : CellCode := childCell cell_351 9
def cell_362 : CellCode := childCell cell_351 10
def cell_363 : CellCode := childCell cell_351 11
def cell_364 : CellCode := childCell cell_351 12
def cell_365 : CellCode := childCell cell_351 13
def cell_366 : CellCode := childCell cell_351 14
def cell_367 : CellCode := childCell cell_351 15
def cell_368 : CellCode := childCell cell_351 16
def cell_369 : CellCode := childCell cell_351 17
def cell_370 : CellCode := childCell cell_351 18
def cell_371 : CellCode := childCell cell_351 19
def cell_372 : CellCode := childCell cell_351 20
def cell_373 : CellCode := childCell cell_351 21
def cell_374 : CellCode := childCell cell_351 22
def cell_375 : CellCode := childCell cell_351 23
def cell_376 : CellCode := childCell cell_351 24
def cell_377 : CellCode := childCell cell_351 25
def cell_378 : CellCode := childCell cell_351 26
def cell_379 : CellCode := childCell cell_351 27
def cell_380 : CellCode := childCell cell_351 28
def cell_381 : CellCode := childCell cell_351 29
def cell_382 : CellCode := childCell cell_351 30
def cell_383 : CellCode := childCell cell_351 31
def cell_384 : CellCode := childCell cell_000 31

def tags_384 : List WitnessTag := [.accept 0]
def tags_383 : List WitnessTag := [.accept 0]
def tags_382 : List WitnessTag := [.midpoint 1]
def tags_381 : List WitnessTag := [.endpoint 1 137367876]
def tags_380 : List WitnessTag := [.midpoint 1]
def tags_379 : List WitnessTag := [.endpoint 5 139535942]
def tags_378 : List WitnessTag := [.midpoint 5]
def tags_377 : List WitnessTag := [.accept 0]
def tags_376 : List WitnessTag := [.midpoint 1]
def tags_375 : List WitnessTag := [.accept 0]
def tags_374 : List WitnessTag := [.endpoint 4 190912587]
def tags_373 : List WitnessTag := [.accept 0]
def tags_372 : List WitnessTag := [.endpoint 1 137845679]
def tags_371 : List WitnessTag := [.accept 0]
def tags_370 : List WitnessTag := [.endpoint 5 138727926]
def tags_369 : List WitnessTag := [.accept 0]
def tags_368 : List WitnessTag := [.accept 0]
def tags_367 : List WitnessTag := [.midpoint 1]
def tags_366 : List WitnessTag := [.midpoint 1]
def tags_365 : List WitnessTag := [.midpoint 1]
def tags_364 : List WitnessTag := [.midpoint 1]
def tags_363 : List WitnessTag := [.accept 0]
def tags_362 : List WitnessTag := [.midpoint 1]
def tags_361 : List WitnessTag := [.midpoint 1]
def tags_360 : List WitnessTag := [.midpoint 1]
def tags_359 : List WitnessTag := [.endpoint 4 190769906]
def tags_358 : List WitnessTag := [.midpoint 1]
def tags_357 : List WitnessTag := [.endpoint 1 137725090]
def tags_356 : List WitnessTag := [.midpoint 1]
def tags_355 : List WitnessTag := [.accept 0]
def tags_354 : List WitnessTag := [.accept 0]
def tags_353 : List WitnessTag := [.accept 0]
def tags_352 : List WitnessTag := [.endpoint 1 137099235]
def tags_351 : List WitnessTag := .split::(((((tags_352++tags_353)++(tags_354++tags_355))++((tags_356++tags_357)++(tags_358++tags_359)))++(((tags_360++tags_361)++(tags_362++tags_363))++((tags_364++tags_365)++(tags_366++tags_367))))++((((tags_368++tags_369)++(tags_370++tags_371))++((tags_372++tags_373)++(tags_374++tags_375)))++(((tags_376++tags_377)++(tags_378++tags_379))++((tags_380++tags_381)++(tags_382++tags_383)))))
def tags_350 : List WitnessTag := [.accept 0]
def tags_349 : List WitnessTag := [.endpoint 0 190468196]
def tags_348 : List WitnessTag := [.endpoint 0 191376882]
def tags_347 : List WitnessTag := [.midpoint 0]
def tags_346 : List WitnessTag := [.midpoint 0]
def tags_345 : List WitnessTag := [.accept 0]
def tags_344 : List WitnessTag := [.midpoint 1]
def tags_343 : List WitnessTag := [.midpoint 0]
def tags_342 : List WitnessTag := [.midpoint 0]
def tags_341 : List WitnessTag := [.endpoint 0 188660289]
def tags_340 : List WitnessTag := [.endpoint 0 189720306]
def tags_339 : List WitnessTag := [.midpoint 0]
def tags_338 : List WitnessTag := [.midpoint 0]
def tags_337 : List WitnessTag := [.accept 0]
def tags_336 : List WitnessTag := [.accept 0]
def tags_335 : List WitnessTag := [.endpoint 0 190691459]
def tags_334 : List WitnessTag := [.midpoint 0]
def tags_333 : List WitnessTag := [.midpoint 1]
def tags_332 : List WitnessTag := [.midpoint 1]
def tags_331 : List WitnessTag := [.endpoint 0 190853557]
def tags_330 : List WitnessTag := [.endpoint 0 191659395]
def tags_329 : List WitnessTag := [.midpoint 1]
def tags_328 : List WitnessTag := [.midpoint 1]
def tags_327 : List WitnessTag := [.midpoint 1]
def tags_326 : List WitnessTag := [.endpoint 0 188280338]
def tags_325 : List WitnessTag := [.midpoint 1]
def tags_324 : List WitnessTag := [.midpoint 1]
def tags_323 : List WitnessTag := [.endpoint 0 188946864]
def tags_322 : List WitnessTag := [.endpoint 0 189903327]
def tags_321 : List WitnessTag := [.accept 0]
def tags_320 : List WitnessTag := [.midpoint 1]
def tags_319 : List WitnessTag := [.midpoint 1]
def tags_318 : List WitnessTag := [.midpoint 1]
def tags_317 : List WitnessTag := .split::(((((tags_318++tags_319)++(tags_320++tags_321))++((tags_322++tags_323)++(tags_324++tags_325)))++(((tags_326++tags_327)++(tags_328++tags_329))++((tags_330++tags_331)++(tags_332++tags_333))))++((((tags_334++tags_335)++(tags_336++tags_337))++((tags_338++tags_339)++(tags_340++tags_341)))++(((tags_342++tags_343)++(tags_344++tags_345))++((tags_346++tags_347)++(tags_348++tags_349)))))
def tags_316 : List WitnessTag := [.accept 0]
def tags_315 : List WitnessTag := [.accept 0]
def tags_314 : List WitnessTag := [.accept 0]
def tags_313 : List WitnessTag := [.accept 0]
def tags_312 : List WitnessTag := [.midpoint 3]
def tags_311 : List WitnessTag := [.endpoint 0 188707005]
def tags_310 : List WitnessTag := [.endpoint 0 189820161]
def tags_309 : List WitnessTag := [.endpoint 3 190834161]
def tags_308 : List WitnessTag := [.midpoint 3]
def tags_307 : List WitnessTag := [.midpoint 3]
def tags_306 : List WitnessTag := [.midpoint 3]
def tags_305 : List WitnessTag := [.accept 0]
def tags_304 : List WitnessTag := [.accept 0]
def tags_303 : List WitnessTag := [.accept 0]
def tags_302 : List WitnessTag := [.endpoint 0 188364711]
def tags_301 : List WitnessTag := [.accept 0]
def tags_300 : List WitnessTag := [.endpoint 3 190937555]
def tags_299 : List WitnessTag := [.accept 0]
def tags_298 : List WitnessTag := [.midpoint 3]
def tags_297 : List WitnessTag := [.accept 0]
def tags_296 : List WitnessTag := [.midpoint 1]
def tags_295 : List WitnessTag := [.midpoint 1]
def tags_294 : List WitnessTag := [.midpoint 1]
def tags_293 : List WitnessTag := [.endpoint 3 188943493]
def tags_292 : List WitnessTag := [.midpoint 3]
def tags_291 : List WitnessTag := [.endpoint 3 190798975]
def tags_290 : List WitnessTag := [.midpoint 1]
def tags_289 : List WitnessTag := [.accept 0]
def tags_288 : List WitnessTag := [.accept 0]
def tags_287 : List WitnessTag := [.accept 0]
def tags_286 : List WitnessTag := [.midpoint 1]
def tags_285 : List WitnessTag := [.accept 0]
def tags_284 : List WitnessTag := [.endpoint 3 188972338]
def tags_283 : List WitnessTag := [.accept 0]
def tags_282 : List WitnessTag := [.endpoint 3 190752662]
def tags_281 : List WitnessTag := .split::(((((tags_282++tags_283)++(tags_284++tags_285))++((tags_286++tags_287)++(tags_288++tags_289)))++(((tags_290++tags_291)++(tags_292++tags_293))++((tags_294++tags_295)++(tags_296++tags_297))))++((((tags_298++tags_299)++(tags_300++tags_301))++((tags_302++tags_303)++(tags_304++tags_305)))++(((tags_306++tags_307)++(tags_308++tags_309))++((tags_310++tags_311)++(tags_312++tags_313)))))
def tags_280 : List WitnessTag := [.accept 0]
def tags_279 : List WitnessTag := [.accept 0]
def tags_278 : List WitnessTag := [.midpoint 4]
def tags_277 : List WitnessTag := [.accept 0]
def tags_276 : List WitnessTag := [.accept 0]
def tags_275 : List WitnessTag := [.accept 0]
def tags_274 : List WitnessTag := [.accept 0]
def tags_273 : List WitnessTag := [.accept 0]
def tags_272 : List WitnessTag := [.accept 0]
def tags_271 : List WitnessTag := [.endpoint 4 191314646]
def tags_270 : List WitnessTag := [.midpoint 4]
def tags_269 : List WitnessTag := [.accept 0]
def tags_268 : List WitnessTag := [.endpoint 2 137498916]
def tags_267 : List WitnessTag := [.accept 0]
def tags_266 : List WitnessTag := [.endpoint 4 190945512]
def tags_265 : List WitnessTag := [.accept 0]
def tags_264 : List WitnessTag := [.accept 0]
def tags_263 : List WitnessTag := [.midpoint 4]
def tags_262 : List WitnessTag := [.midpoint 4]
def tags_261 : List WitnessTag := [.accept 0]
def tags_260 : List WitnessTag := [.endpoint 1 138210844]
def tags_259 : List WitnessTag := [.accept 0]
def tags_258 : List WitnessTag := [.midpoint 4]
def tags_257 : List WitnessTag := [.accept 0]
def tags_256 : List WitnessTag := [.accept 0]
def tags_255 : List WitnessTag := [.midpoint 4]
def tags_254 : List WitnessTag := [.midpoint 4]
def tags_253 : List WitnessTag := [.endpoint 4 191088876]
def tags_252 : List WitnessTag := [.midpoint 4]
def tags_251 : List WitnessTag := [.endpoint 4 190814952]
def tags_250 : List WitnessTag := [.midpoint 4]
def tags_249 : List WitnessTag := [.accept 0]
def tags_248 : List WitnessTag := [.endpoint 4 190746942]
def tags_247 : List WitnessTag := .split::(((((tags_248++tags_249)++(tags_250++tags_251))++((tags_252++tags_253)++(tags_254++tags_255)))++(((tags_256++tags_257)++(tags_258++tags_259))++((tags_260++tags_261)++(tags_262++tags_263))))++((((tags_264++tags_265)++(tags_266++tags_267))++((tags_268++tags_269)++(tags_270++tags_271)))++(((tags_272++tags_273)++(tags_274++tags_275))++((tags_276++tags_277)++(tags_278++tags_279)))))
def tags_246 : List WitnessTag := [.accept 0]
def tags_245 : List WitnessTag := [.accept 0]
def tags_244 : List WitnessTag := [.endpoint 2 138127825]
def tags_243 : List WitnessTag := [.midpoint 0]
def tags_242 : List WitnessTag := [.midpoint 0]
def tags_241 : List WitnessTag := [.accept 0]
def tags_240 : List WitnessTag := [.accept 0]
def tags_239 : List WitnessTag := [.endpoint 0 188677691]
def tags_238 : List WitnessTag := [.endpoint 0 189969633]
def tags_237 : List WitnessTag := [.midpoint 2]
def tags_236 : List WitnessTag := [.midpoint 2]
def tags_235 : List WitnessTag := [.endpoint 0 189471737]
def tags_234 : List WitnessTag := [.endpoint 0 190776340]
def tags_233 : List WitnessTag := [.endpoint 2 139312885]
def tags_232 : List WitnessTag := [.midpoint 2]
def tags_231 : List WitnessTag := [.midpoint 2]
def tags_230 : List WitnessTag := [.midpoint 2]
def tags_229 : List WitnessTag := [.accept 0]
def tags_228 : List WitnessTag := [.midpoint 1]
def tags_227 : List WitnessTag := [.accept 0]
def tags_226 : List WitnessTag := [.midpoint 1]
def tags_225 : List WitnessTag := [.accept 0]
def tags_224 : List WitnessTag := [.accept 0]
def tags_223 : List WitnessTag := [.accept 0]
def tags_222 : List WitnessTag := [.endpoint 1 137686082]
def tags_221 : List WitnessTag := [.accept 0]
def tags_220 : List WitnessTag := [.endpoint 2 138194020]
def tags_219 : List WitnessTag := [.midpoint 2]
def tags_218 : List WitnessTag := [.midpoint 2]
def tags_217 : List WitnessTag := [.accept 0]
def tags_216 : List WitnessTag := [.accept 0]
def tags_215 : List WitnessTag := [.accept 0]
def tags_214 : List WitnessTag := [.midpoint 2]
def tags_213 : List WitnessTag := .split::(((((tags_214++tags_215)++(tags_216++tags_217))++((tags_218++tags_219)++(tags_220++tags_221)))++(((tags_222++tags_223)++(tags_224++tags_225))++((tags_226++tags_227)++(tags_228++tags_229))))++((((tags_230++tags_231)++(tags_232++tags_233))++((tags_234++tags_235)++(tags_236++tags_237)))++(((tags_238++tags_239)++(tags_240++tags_241))++((tags_242++tags_243)++(tags_244++tags_245)))))
def tags_212 : List WitnessTag := [.accept 0]
def tags_211 : List WitnessTag := [.accept 0]
def tags_210 : List WitnessTag := [.accept 0]
def tags_209 : List WitnessTag := [.accept 0]
def tags_208 : List WitnessTag := [.accept 0]
def tags_207 : List WitnessTag := [.midpoint 1]
def tags_206 : List WitnessTag := [.midpoint 1]
def tags_205 : List WitnessTag := [.midpoint 1]
def tags_204 : List WitnessTag := [.midpoint 1]
def tags_203 : List WitnessTag := [.midpoint 1]
def tags_202 : List WitnessTag := [.midpoint 1]
def tags_201 : List WitnessTag := [.midpoint 1]
def tags_200 : List WitnessTag := [.midpoint 1]
def tags_199 : List WitnessTag := [.midpoint 1]
def tags_198 : List WitnessTag := [.midpoint 1]
def tags_197 : List WitnessTag := [.midpoint 1]
def tags_196 : List WitnessTag := [.midpoint 1]
def tags_195 : List WitnessTag := [.accept 0]
def tags_194 : List WitnessTag := [.midpoint 1]
def tags_193 : List WitnessTag := [.midpoint 1]
def tags_192 : List WitnessTag := [.midpoint 1]
def tags_191 : List WitnessTag := [.midpoint 1]
def tags_190 : List WitnessTag := [.midpoint 1]
def tags_189 : List WitnessTag := [.midpoint 1]
def tags_188 : List WitnessTag := [.midpoint 1]
def tags_187 : List WitnessTag := [.midpoint 1]
def tags_186 : List WitnessTag := [.midpoint 1]
def tags_185 : List WitnessTag := [.midpoint 1]
def tags_184 : List WitnessTag := [.midpoint 1]
def tags_183 : List WitnessTag := [.midpoint 1]
def tags_182 : List WitnessTag := [.midpoint 1]
def tags_181 : List WitnessTag := [.midpoint 1]
def tags_180 : List WitnessTag := [.midpoint 1]
def tags_179 : List WitnessTag := [.midpoint 1]
def tags_178 : List WitnessTag := [.midpoint 1]
def tags_177 : List WitnessTag := [.midpoint 1]
def tags_176 : List WitnessTag := [.midpoint 1]
def tags_175 : List WitnessTag := .split::(((((tags_176++tags_177)++(tags_178++tags_179))++((tags_180++tags_181)++(tags_182++tags_183)))++(((tags_184++tags_185)++(tags_186++tags_187))++((tags_188++tags_189)++(tags_190++tags_191))))++((((tags_192++tags_193)++(tags_194++tags_195))++((tags_196++tags_197)++(tags_198++tags_199)))++(((tags_200++tags_201)++(tags_202++tags_203))++((tags_204++tags_205)++(tags_206++tags_207)))))
def tags_174 : List WitnessTag := [.midpoint 1]
def tags_173 : List WitnessTag := [.midpoint 1]
def tags_172 : List WitnessTag := [.midpoint 1]
def tags_171 : List WitnessTag := [.midpoint 1]
def tags_170 : List WitnessTag := [.accept 0]
def tags_169 : List WitnessTag := [.midpoint 1]
def tags_168 : List WitnessTag := [.midpoint 1]
def tags_167 : List WitnessTag := [.midpoint 1]
def tags_166 : List WitnessTag := [.accept 0]
def tags_165 : List WitnessTag := [.midpoint 1]
def tags_164 : List WitnessTag := [.midpoint 1]
def tags_163 : List WitnessTag := [.midpoint 1]
def tags_162 : List WitnessTag := [.accept 0]
def tags_161 : List WitnessTag := [.accept 0]
def tags_160 : List WitnessTag := [.accept 0]
def tags_159 : List WitnessTag := [.midpoint 1]
def tags_158 : List WitnessTag := [.midpoint 1]
def tags_157 : List WitnessTag := [.midpoint 1]
def tags_156 : List WitnessTag := [.midpoint 1]
def tags_155 : List WitnessTag := [.midpoint 1]
def tags_154 : List WitnessTag := [.midpoint 1]
def tags_153 : List WitnessTag := [.midpoint 1]
def tags_152 : List WitnessTag := [.midpoint 1]
def tags_151 : List WitnessTag := [.midpoint 1]
def tags_150 : List WitnessTag := [.midpoint 1]
def tags_149 : List WitnessTag := [.midpoint 1]
def tags_148 : List WitnessTag := [.midpoint 1]
def tags_147 : List WitnessTag := [.midpoint 1]
def tags_146 : List WitnessTag := [.accept 0]
def tags_145 : List WitnessTag := [.midpoint 1]
def tags_144 : List WitnessTag := [.midpoint 1]
def tags_143 : List WitnessTag := [.midpoint 1]
def tags_142 : List WitnessTag := .split::(((((tags_143++tags_144)++(tags_145++tags_146))++((tags_147++tags_148)++(tags_149++tags_150)))++(((tags_151++tags_152)++(tags_153++tags_154))++((tags_155++tags_156)++(tags_157++tags_158))))++((((tags_159++tags_160)++(tags_161++tags_162))++((tags_163++tags_164)++(tags_165++tags_166)))++(((tags_167++tags_168)++(tags_169++tags_170))++((tags_171++tags_172)++(tags_173++tags_174)))))
def tags_141 : List WitnessTag := [.midpoint 1]
def tags_140 : List WitnessTag := [.accept 0]
def tags_139 : List WitnessTag := [.accept 0]
def tags_138 : List WitnessTag := [.midpoint 1]
def tags_137 : List WitnessTag := [.midpoint 1]
def tags_136 : List WitnessTag := [.midpoint 1]
def tags_135 : List WitnessTag := [.endpoint 5 139732957]
def tags_134 : List WitnessTag := [.endpoint 1 138217599]
def tags_133 : List WitnessTag := [.accept 0]
def tags_132 : List WitnessTag := [.midpoint 1]
def tags_131 : List WitnessTag := [.accept 0]
def tags_130 : List WitnessTag := [.accept 0]
def tags_129 : List WitnessTag := [.accept 0]
def tags_128 : List WitnessTag := [.midpoint 1]
def tags_127 : List WitnessTag := [.accept 0]
def tags_126 : List WitnessTag := [.endpoint 5 139308934]
def tags_125 : List WitnessTag := [.accept 0]
def tags_124 : List WitnessTag := [.accept 0]
def tags_123 : List WitnessTag := [.midpoint 1]
def tags_122 : List WitnessTag := [.midpoint 1]
def tags_121 : List WitnessTag := [.midpoint 1]
def tags_120 : List WitnessTag := [.midpoint 1]
def tags_119 : List WitnessTag := [.endpoint 1 137926208]
def tags_118 : List WitnessTag := [.midpoint 1]
def tags_117 : List WitnessTag := [.midpoint 1]
def tags_116 : List WitnessTag := [.midpoint 1]
def tags_115 : List WitnessTag := [.endpoint 1 138339692]
def tags_114 : List WitnessTag := [.midpoint 1]
def tags_113 : List WitnessTag := [.midpoint 1]
def tags_112 : List WitnessTag := [.midpoint 1]
def tags_111 : List WitnessTag := [.accept 0]
def tags_110 : List WitnessTag := [.endpoint 1 138222005]
def tags_109 : List WitnessTag := [.accept 0]
def tags_108 : List WitnessTag := [.midpoint 1]
def tags_107 : List WitnessTag := .split::(((((tags_108++tags_109)++(tags_110++tags_111))++((tags_112++tags_113)++(tags_114++tags_115)))++(((tags_116++tags_117)++(tags_118++tags_119))++((tags_120++tags_121)++(tags_122++tags_123))))++((((tags_124++tags_125)++(tags_126++tags_127))++((tags_128++tags_129)++(tags_130++tags_131)))++(((tags_132++tags_133)++(tags_134++tags_135))++((tags_136++tags_137)++(tags_138++tags_139)))))
def tags_106 : List WitnessTag := [.accept 0]
def tags_105 : List WitnessTag := [.midpoint 1]
def tags_104 : List WitnessTag := [.midpoint 1]
def tags_103 : List WitnessTag := [.midpoint 1]
def tags_102 : List WitnessTag := [.midpoint 1]
def tags_101 : List WitnessTag := [.accept 0]
def tags_100 : List WitnessTag := [.midpoint 1]
def tags_099 : List WitnessTag := [.midpoint 1]
def tags_098 : List WitnessTag := [.midpoint 1]
def tags_097 : List WitnessTag := [.accept 0]
def tags_096 : List WitnessTag := [.midpoint 1]
def tags_095 : List WitnessTag := [.midpoint 1]
def tags_094 : List WitnessTag := [.midpoint 1]
def tags_093 : List WitnessTag := [.accept 0]
def tags_092 : List WitnessTag := [.accept 0]
def tags_091 : List WitnessTag := [.accept 0]
def tags_090 : List WitnessTag := [.midpoint 1]
def tags_089 : List WitnessTag := [.midpoint 1]
def tags_088 : List WitnessTag := [.midpoint 1]
def tags_087 : List WitnessTag := [.midpoint 1]
def tags_086 : List WitnessTag := [.midpoint 1]
def tags_085 : List WitnessTag := [.midpoint 1]
def tags_084 : List WitnessTag := [.midpoint 1]
def tags_083 : List WitnessTag := [.midpoint 1]
def tags_082 : List WitnessTag := [.midpoint 1]
def tags_081 : List WitnessTag := [.midpoint 1]
def tags_080 : List WitnessTag := [.midpoint 1]
def tags_079 : List WitnessTag := [.midpoint 1]
def tags_078 : List WitnessTag := [.midpoint 1]
def tags_077 : List WitnessTag := [.accept 0]
def tags_076 : List WitnessTag := [.midpoint 1]
def tags_075 : List WitnessTag := [.midpoint 1]
def tags_074 : List WitnessTag := [.midpoint 1]
def tags_073 : List WitnessTag := .split::(((((tags_074++tags_075)++(tags_076++tags_077))++((tags_078++tags_079)++(tags_080++tags_081)))++(((tags_082++tags_083)++(tags_084++tags_085))++((tags_086++tags_087)++(tags_088++tags_089))))++((((tags_090++tags_091)++(tags_092++tags_093))++((tags_094++tags_095)++(tags_096++tags_097)))++(((tags_098++tags_099)++(tags_100++tags_101))++((tags_102++tags_103)++(tags_104++tags_105)))))
def tags_072 : List WitnessTag := [.accept 0]
def tags_071 : List WitnessTag := [.midpoint 4]
def tags_070 : List WitnessTag := [.midpoint 1]
def tags_069 : List WitnessTag := [.endpoint 1 137925253]
def tags_068 : List WitnessTag := [.midpoint 1]
def tags_067 : List WitnessTag := [.midpoint 4]
def tags_066 : List WitnessTag := [.midpoint 4]
def tags_065 : List WitnessTag := [.accept 0]
def tags_064 : List WitnessTag := [.endpoint 1 137281071]
def tags_063 : List WitnessTag := [.midpoint 4]
def tags_062 : List WitnessTag := [.midpoint 4]
def tags_061 : List WitnessTag := [.midpoint 4]
def tags_060 : List WitnessTag := [.endpoint 1 138398846]
def tags_059 : List WitnessTag := [.midpoint 4]
def tags_058 : List WitnessTag := [.midpoint 4]
def tags_057 : List WitnessTag := [.endpoint 4 190409113]
def tags_056 : List WitnessTag := [.midpoint 4]
def tags_055 : List WitnessTag := [.midpoint 1]
def tags_054 : List WitnessTag := [.midpoint 1]
def tags_053 : List WitnessTag := [.midpoint 1]
def tags_052 : List WitnessTag := [.midpoint 1]
def tags_051 : List WitnessTag := [.midpoint 4]
def tags_050 : List WitnessTag := [.midpoint 1]
def tags_049 : List WitnessTag := [.midpoint 1]
def tags_048 : List WitnessTag := [.midpoint 1]
def tags_047 : List WitnessTag := [.midpoint 4]
def tags_046 : List WitnessTag := [.midpoint 1]
def tags_045 : List WitnessTag := [.endpoint 1 137967686]
def tags_044 : List WitnessTag := [.midpoint 1]
def tags_043 : List WitnessTag := [.midpoint 4]
def tags_042 : List WitnessTag := [.midpoint 4]
def tags_041 : List WitnessTag := [.midpoint 4]
def tags_040 : List WitnessTag := [.endpoint 1 137305337]
def tags_039 : List WitnessTag := .split::(((((tags_040++tags_041)++(tags_042++tags_043))++((tags_044++tags_045)++(tags_046++tags_047)))++(((tags_048++tags_049)++(tags_050++tags_051))++((tags_052++tags_053)++(tags_054++tags_055))))++((((tags_056++tags_057)++(tags_058++tags_059))++((tags_060++tags_061)++(tags_062++tags_063)))++(((tags_064++tags_065)++(tags_066++tags_067))++((tags_068++tags_069)++(tags_070++tags_071)))))
def tags_038 : List WitnessTag := [.accept 0]
def tags_037 : List WitnessTag := [.midpoint 1]
def tags_036 : List WitnessTag := [.midpoint 1]
def tags_035 : List WitnessTag := [.midpoint 1]
def tags_034 : List WitnessTag := [.midpoint 1]
def tags_033 : List WitnessTag := [.accept 0]
def tags_032 : List WitnessTag := [.midpoint 1]
def tags_031 : List WitnessTag := [.endpoint 1 137367736]
def tags_030 : List WitnessTag := [.midpoint 1]
def tags_029 : List WitnessTag := [.endpoint 4 190599154]
def tags_028 : List WitnessTag := [.midpoint 1]
def tags_027 : List WitnessTag := [.accept 0]
def tags_026 : List WitnessTag := [.midpoint 1]
def tags_025 : List WitnessTag := [.accept 0]
def tags_024 : List WitnessTag := [.accept 0]
def tags_023 : List WitnessTag := [.accept 0]
def tags_022 : List WitnessTag := [.endpoint 1 138007504]
def tags_021 : List WitnessTag := [.midpoint 1]
def tags_020 : List WitnessTag := [.midpoint 1]
def tags_019 : List WitnessTag := [.midpoint 1]
def tags_018 : List WitnessTag := [.midpoint 1]
def tags_017 : List WitnessTag := [.midpoint 1]
def tags_016 : List WitnessTag := [.midpoint 1]
def tags_015 : List WitnessTag := [.midpoint 1]
def tags_014 : List WitnessTag := [.midpoint 1]
def tags_013 : List WitnessTag := [.midpoint 1]
def tags_012 : List WitnessTag := [.midpoint 1]
def tags_011 : List WitnessTag := [.midpoint 1]
def tags_010 : List WitnessTag := [.midpoint 1]
def tags_009 : List WitnessTag := [.accept 0]
def tags_008 : List WitnessTag := [.midpoint 1]
def tags_007 : List WitnessTag := [.endpoint 1 137523506]
def tags_006 : List WitnessTag := [.midpoint 1]
def tags_005 : List WitnessTag := .split::(((((tags_006++tags_007)++(tags_008++tags_009))++((tags_010++tags_011)++(tags_012++tags_013)))++(((tags_014++tags_015)++(tags_016++tags_017))++((tags_018++tags_019)++(tags_020++tags_021))))++((((tags_022++tags_023)++(tags_024++tags_025))++((tags_026++tags_027)++(tags_028++tags_029)))++(((tags_030++tags_031)++(tags_032++tags_033))++((tags_034++tags_035)++(tags_036++tags_037)))))
def tags_004 : List WitnessTag := [.accept 0]
def tags_003 : List WitnessTag := [.accept 0]
def tags_002 : List WitnessTag := [.accept 0]
def tags_001 : List WitnessTag := [.accept 0]
def tags_000 : List WitnessTag := .split::(((((tags_001++tags_002)++(tags_003++tags_004))++((tags_005++tags_038)++(tags_039++tags_072)))++(((tags_073++tags_106)++(tags_107++tags_140))++((tags_141++tags_142)++(tags_175++tags_208))))++((((tags_209++tags_210)++(tags_211++tags_212))++((tags_213++tags_246)++(tags_247++tags_280)))++(((tags_281++tags_314)++(tags_315++tags_316))++((tags_317++tags_350)++(tags_351++tags_384)))))

theorem checked_384 : checkWitnessTape [cell_384] tags_384 = true := by
  decide +kernel
#print axioms checked_384

theorem checked_383 : checkWitnessTape [cell_383] tags_383 = true := by
  decide +kernel
#print axioms checked_383

theorem checked_382 : checkWitnessTape [cell_382] tags_382 = true := by
  decide +kernel
#print axioms checked_382

theorem checked_381 : checkWitnessTape [cell_381] tags_381 = true := by
  decide +kernel
#print axioms checked_381

theorem checked_380 : checkWitnessTape [cell_380] tags_380 = true := by
  decide +kernel
#print axioms checked_380

theorem checked_379 : checkWitnessTape [cell_379] tags_379 = true := by
  decide +kernel
#print axioms checked_379

theorem checked_378 : checkWitnessTape [cell_378] tags_378 = true := by
  decide +kernel
#print axioms checked_378

theorem checked_377 : checkWitnessTape [cell_377] tags_377 = true := by
  decide +kernel
#print axioms checked_377

theorem checked_376 : checkWitnessTape [cell_376] tags_376 = true := by
  decide +kernel
#print axioms checked_376

theorem checked_375 : checkWitnessTape [cell_375] tags_375 = true := by
  decide +kernel
#print axioms checked_375

theorem checked_374 : checkWitnessTape [cell_374] tags_374 = true := by
  decide +kernel
#print axioms checked_374

theorem checked_373 : checkWitnessTape [cell_373] tags_373 = true := by
  decide +kernel
#print axioms checked_373

theorem checked_372 : checkWitnessTape [cell_372] tags_372 = true := by
  decide +kernel
#print axioms checked_372

theorem checked_371 : checkWitnessTape [cell_371] tags_371 = true := by
  decide +kernel
#print axioms checked_371

theorem checked_370 : checkWitnessTape [cell_370] tags_370 = true := by
  decide +kernel
#print axioms checked_370

theorem checked_369 : checkWitnessTape [cell_369] tags_369 = true := by
  decide +kernel
#print axioms checked_369

theorem checked_368 : checkWitnessTape [cell_368] tags_368 = true := by
  decide +kernel
#print axioms checked_368

theorem checked_367 : checkWitnessTape [cell_367] tags_367 = true := by
  decide +kernel
#print axioms checked_367

theorem checked_366 : checkWitnessTape [cell_366] tags_366 = true := by
  decide +kernel
#print axioms checked_366

theorem checked_365 : checkWitnessTape [cell_365] tags_365 = true := by
  decide +kernel
#print axioms checked_365

theorem checked_364 : checkWitnessTape [cell_364] tags_364 = true := by
  decide +kernel
#print axioms checked_364

theorem checked_363 : checkWitnessTape [cell_363] tags_363 = true := by
  decide +kernel
#print axioms checked_363

theorem checked_362 : checkWitnessTape [cell_362] tags_362 = true := by
  decide +kernel
#print axioms checked_362

theorem checked_361 : checkWitnessTape [cell_361] tags_361 = true := by
  decide +kernel
#print axioms checked_361

theorem checked_360 : checkWitnessTape [cell_360] tags_360 = true := by
  decide +kernel
#print axioms checked_360

theorem checked_359 : checkWitnessTape [cell_359] tags_359 = true := by
  decide +kernel
#print axioms checked_359

theorem checked_358 : checkWitnessTape [cell_358] tags_358 = true := by
  decide +kernel
#print axioms checked_358

theorem checked_357 : checkWitnessTape [cell_357] tags_357 = true := by
  decide +kernel
#print axioms checked_357

theorem checked_356 : checkWitnessTape [cell_356] tags_356 = true := by
  decide +kernel
#print axioms checked_356

theorem checked_355 : checkWitnessTape [cell_355] tags_355 = true := by
  decide +kernel
#print axioms checked_355

theorem checked_354 : checkWitnessTape [cell_354] tags_354 = true := by
  decide +kernel
#print axioms checked_354

theorem checked_353 : checkWitnessTape [cell_353] tags_353 = true := by
  decide +kernel
#print axioms checked_353

theorem checked_352 : checkWitnessTape [cell_352] tags_352 = true := by
  decide +kernel
#print axioms checked_352

theorem checked_351 : checkWitnessTape [cell_351] tags_351 = true := by
  apply checkWitnessTape_split cell_351 (((((tags_352++tags_353)++(tags_354++tags_355))++((tags_356++tags_357)++(tags_358++tags_359)))++(((tags_360++tags_361)++(tags_362++tags_363))++((tags_364++tags_365)++(tags_366++tags_367))))++((((tags_368++tags_369)++(tags_370++tags_371))++((tags_372++tags_373)++(tags_374++tags_375)))++(((tags_376++tags_377)++(tags_378++tags_379))++((tags_380++tags_381)++(tags_382++tags_383))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_352]++[cell_353])++([cell_354]++[cell_355]))++(([cell_356]++[cell_357])++([cell_358]++[cell_359])))++((([cell_360]++[cell_361])++([cell_362]++[cell_363]))++(([cell_364]++[cell_365])++([cell_366]++[cell_367]))))++(((([cell_368]++[cell_369])++([cell_370]++[cell_371]))++(([cell_372]++[cell_373])++([cell_374]++[cell_375])))++((([cell_376]++[cell_377])++([cell_378]++[cell_379]))++(([cell_380]++[cell_381])++([cell_382]++[cell_383]))))) (((((tags_352++tags_353)++(tags_354++tags_355))++((tags_356++tags_357)++(tags_358++tags_359)))++(((tags_360++tags_361)++(tags_362++tags_363))++((tags_364++tags_365)++(tags_366++tags_367))))++((((tags_368++tags_369)++(tags_370++tags_371))++((tags_372++tags_373)++(tags_374++tags_375)))++(((tags_376++tags_377)++(tags_378++tags_379))++((tags_380++tags_381)++(tags_382++tags_383))))) = true
  exact (checkWitnessTape_append (((([cell_352]++[cell_353])++([cell_354]++[cell_355]))++(([cell_356]++[cell_357])++([cell_358]++[cell_359])))++((([cell_360]++[cell_361])++([cell_362]++[cell_363]))++(([cell_364]++[cell_365])++([cell_366]++[cell_367])))) (((([cell_368]++[cell_369])++([cell_370]++[cell_371]))++(([cell_372]++[cell_373])++([cell_374]++[cell_375])))++((([cell_376]++[cell_377])++([cell_378]++[cell_379]))++(([cell_380]++[cell_381])++([cell_382]++[cell_383])))) ((((tags_352++tags_353)++(tags_354++tags_355))++((tags_356++tags_357)++(tags_358++tags_359)))++(((tags_360++tags_361)++(tags_362++tags_363))++((tags_364++tags_365)++(tags_366++tags_367)))) ((((tags_368++tags_369)++(tags_370++tags_371))++((tags_372++tags_373)++(tags_374++tags_375)))++(((tags_376++tags_377)++(tags_378++tags_379))++((tags_380++tags_381)++(tags_382++tags_383)))) (checkWitnessTape_append ((([cell_352]++[cell_353])++([cell_354]++[cell_355]))++(([cell_356]++[cell_357])++([cell_358]++[cell_359]))) ((([cell_360]++[cell_361])++([cell_362]++[cell_363]))++(([cell_364]++[cell_365])++([cell_366]++[cell_367]))) (((tags_352++tags_353)++(tags_354++tags_355))++((tags_356++tags_357)++(tags_358++tags_359))) (((tags_360++tags_361)++(tags_362++tags_363))++((tags_364++tags_365)++(tags_366++tags_367))) (checkWitnessTape_append (([cell_352]++[cell_353])++([cell_354]++[cell_355])) (([cell_356]++[cell_357])++([cell_358]++[cell_359])) ((tags_352++tags_353)++(tags_354++tags_355)) ((tags_356++tags_357)++(tags_358++tags_359)) (checkWitnessTape_append ([cell_352]++[cell_353]) ([cell_354]++[cell_355]) (tags_352++tags_353) (tags_354++tags_355) (checkWitnessTape_append [cell_352] [cell_353] tags_352 tags_353 checked_352 checked_353) (checkWitnessTape_append [cell_354] [cell_355] tags_354 tags_355 checked_354 checked_355)) (checkWitnessTape_append ([cell_356]++[cell_357]) ([cell_358]++[cell_359]) (tags_356++tags_357) (tags_358++tags_359) (checkWitnessTape_append [cell_356] [cell_357] tags_356 tags_357 checked_356 checked_357) (checkWitnessTape_append [cell_358] [cell_359] tags_358 tags_359 checked_358 checked_359))) (checkWitnessTape_append (([cell_360]++[cell_361])++([cell_362]++[cell_363])) (([cell_364]++[cell_365])++([cell_366]++[cell_367])) ((tags_360++tags_361)++(tags_362++tags_363)) ((tags_364++tags_365)++(tags_366++tags_367)) (checkWitnessTape_append ([cell_360]++[cell_361]) ([cell_362]++[cell_363]) (tags_360++tags_361) (tags_362++tags_363) (checkWitnessTape_append [cell_360] [cell_361] tags_360 tags_361 checked_360 checked_361) (checkWitnessTape_append [cell_362] [cell_363] tags_362 tags_363 checked_362 checked_363)) (checkWitnessTape_append ([cell_364]++[cell_365]) ([cell_366]++[cell_367]) (tags_364++tags_365) (tags_366++tags_367) (checkWitnessTape_append [cell_364] [cell_365] tags_364 tags_365 checked_364 checked_365) (checkWitnessTape_append [cell_366] [cell_367] tags_366 tags_367 checked_366 checked_367)))) (checkWitnessTape_append ((([cell_368]++[cell_369])++([cell_370]++[cell_371]))++(([cell_372]++[cell_373])++([cell_374]++[cell_375]))) ((([cell_376]++[cell_377])++([cell_378]++[cell_379]))++(([cell_380]++[cell_381])++([cell_382]++[cell_383]))) (((tags_368++tags_369)++(tags_370++tags_371))++((tags_372++tags_373)++(tags_374++tags_375))) (((tags_376++tags_377)++(tags_378++tags_379))++((tags_380++tags_381)++(tags_382++tags_383))) (checkWitnessTape_append (([cell_368]++[cell_369])++([cell_370]++[cell_371])) (([cell_372]++[cell_373])++([cell_374]++[cell_375])) ((tags_368++tags_369)++(tags_370++tags_371)) ((tags_372++tags_373)++(tags_374++tags_375)) (checkWitnessTape_append ([cell_368]++[cell_369]) ([cell_370]++[cell_371]) (tags_368++tags_369) (tags_370++tags_371) (checkWitnessTape_append [cell_368] [cell_369] tags_368 tags_369 checked_368 checked_369) (checkWitnessTape_append [cell_370] [cell_371] tags_370 tags_371 checked_370 checked_371)) (checkWitnessTape_append ([cell_372]++[cell_373]) ([cell_374]++[cell_375]) (tags_372++tags_373) (tags_374++tags_375) (checkWitnessTape_append [cell_372] [cell_373] tags_372 tags_373 checked_372 checked_373) (checkWitnessTape_append [cell_374] [cell_375] tags_374 tags_375 checked_374 checked_375))) (checkWitnessTape_append (([cell_376]++[cell_377])++([cell_378]++[cell_379])) (([cell_380]++[cell_381])++([cell_382]++[cell_383])) ((tags_376++tags_377)++(tags_378++tags_379)) ((tags_380++tags_381)++(tags_382++tags_383)) (checkWitnessTape_append ([cell_376]++[cell_377]) ([cell_378]++[cell_379]) (tags_376++tags_377) (tags_378++tags_379) (checkWitnessTape_append [cell_376] [cell_377] tags_376 tags_377 checked_376 checked_377) (checkWitnessTape_append [cell_378] [cell_379] tags_378 tags_379 checked_378 checked_379)) (checkWitnessTape_append ([cell_380]++[cell_381]) ([cell_382]++[cell_383]) (tags_380++tags_381) (tags_382++tags_383) (checkWitnessTape_append [cell_380] [cell_381] tags_380 tags_381 checked_380 checked_381) (checkWitnessTape_append [cell_382] [cell_383] tags_382 tags_383 checked_382 checked_383)))))
#print axioms checked_351

theorem checked_350 : checkWitnessTape [cell_350] tags_350 = true := by
  decide +kernel
#print axioms checked_350

theorem checked_349 : checkWitnessTape [cell_349] tags_349 = true := by
  decide +kernel
#print axioms checked_349

theorem checked_348 : checkWitnessTape [cell_348] tags_348 = true := by
  decide +kernel
#print axioms checked_348

theorem checked_347 : checkWitnessTape [cell_347] tags_347 = true := by
  decide +kernel
#print axioms checked_347

theorem checked_346 : checkWitnessTape [cell_346] tags_346 = true := by
  decide +kernel
#print axioms checked_346

theorem checked_345 : checkWitnessTape [cell_345] tags_345 = true := by
  decide +kernel
#print axioms checked_345

theorem checked_344 : checkWitnessTape [cell_344] tags_344 = true := by
  decide +kernel
#print axioms checked_344

theorem checked_343 : checkWitnessTape [cell_343] tags_343 = true := by
  decide +kernel
#print axioms checked_343

theorem checked_342 : checkWitnessTape [cell_342] tags_342 = true := by
  decide +kernel
#print axioms checked_342

theorem checked_341 : checkWitnessTape [cell_341] tags_341 = true := by
  decide +kernel
#print axioms checked_341

theorem checked_340 : checkWitnessTape [cell_340] tags_340 = true := by
  decide +kernel
#print axioms checked_340

theorem checked_339 : checkWitnessTape [cell_339] tags_339 = true := by
  decide +kernel
#print axioms checked_339

theorem checked_338 : checkWitnessTape [cell_338] tags_338 = true := by
  decide +kernel
#print axioms checked_338

theorem checked_337 : checkWitnessTape [cell_337] tags_337 = true := by
  decide +kernel
#print axioms checked_337

theorem checked_336 : checkWitnessTape [cell_336] tags_336 = true := by
  decide +kernel
#print axioms checked_336

theorem checked_335 : checkWitnessTape [cell_335] tags_335 = true := by
  decide +kernel
#print axioms checked_335

theorem checked_334 : checkWitnessTape [cell_334] tags_334 = true := by
  decide +kernel
#print axioms checked_334

theorem checked_333 : checkWitnessTape [cell_333] tags_333 = true := by
  decide +kernel
#print axioms checked_333

theorem checked_332 : checkWitnessTape [cell_332] tags_332 = true := by
  decide +kernel
#print axioms checked_332

theorem checked_331 : checkWitnessTape [cell_331] tags_331 = true := by
  decide +kernel
#print axioms checked_331

theorem checked_330 : checkWitnessTape [cell_330] tags_330 = true := by
  decide +kernel
#print axioms checked_330

theorem checked_329 : checkWitnessTape [cell_329] tags_329 = true := by
  decide +kernel
#print axioms checked_329

theorem checked_328 : checkWitnessTape [cell_328] tags_328 = true := by
  decide +kernel
#print axioms checked_328

theorem checked_327 : checkWitnessTape [cell_327] tags_327 = true := by
  decide +kernel
#print axioms checked_327

theorem checked_326 : checkWitnessTape [cell_326] tags_326 = true := by
  decide +kernel
#print axioms checked_326

theorem checked_325 : checkWitnessTape [cell_325] tags_325 = true := by
  decide +kernel
#print axioms checked_325

theorem checked_324 : checkWitnessTape [cell_324] tags_324 = true := by
  decide +kernel
#print axioms checked_324

theorem checked_323 : checkWitnessTape [cell_323] tags_323 = true := by
  decide +kernel
#print axioms checked_323

theorem checked_322 : checkWitnessTape [cell_322] tags_322 = true := by
  decide +kernel
#print axioms checked_322

theorem checked_321 : checkWitnessTape [cell_321] tags_321 = true := by
  decide +kernel
#print axioms checked_321

theorem checked_320 : checkWitnessTape [cell_320] tags_320 = true := by
  decide +kernel
#print axioms checked_320

theorem checked_319 : checkWitnessTape [cell_319] tags_319 = true := by
  decide +kernel
#print axioms checked_319

theorem checked_318 : checkWitnessTape [cell_318] tags_318 = true := by
  decide +kernel
#print axioms checked_318

theorem checked_317 : checkWitnessTape [cell_317] tags_317 = true := by
  apply checkWitnessTape_split cell_317 (((((tags_318++tags_319)++(tags_320++tags_321))++((tags_322++tags_323)++(tags_324++tags_325)))++(((tags_326++tags_327)++(tags_328++tags_329))++((tags_330++tags_331)++(tags_332++tags_333))))++((((tags_334++tags_335)++(tags_336++tags_337))++((tags_338++tags_339)++(tags_340++tags_341)))++(((tags_342++tags_343)++(tags_344++tags_345))++((tags_346++tags_347)++(tags_348++tags_349))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_318]++[cell_319])++([cell_320]++[cell_321]))++(([cell_322]++[cell_323])++([cell_324]++[cell_325])))++((([cell_326]++[cell_327])++([cell_328]++[cell_329]))++(([cell_330]++[cell_331])++([cell_332]++[cell_333]))))++(((([cell_334]++[cell_335])++([cell_336]++[cell_337]))++(([cell_338]++[cell_339])++([cell_340]++[cell_341])))++((([cell_342]++[cell_343])++([cell_344]++[cell_345]))++(([cell_346]++[cell_347])++([cell_348]++[cell_349]))))) (((((tags_318++tags_319)++(tags_320++tags_321))++((tags_322++tags_323)++(tags_324++tags_325)))++(((tags_326++tags_327)++(tags_328++tags_329))++((tags_330++tags_331)++(tags_332++tags_333))))++((((tags_334++tags_335)++(tags_336++tags_337))++((tags_338++tags_339)++(tags_340++tags_341)))++(((tags_342++tags_343)++(tags_344++tags_345))++((tags_346++tags_347)++(tags_348++tags_349))))) = true
  exact (checkWitnessTape_append (((([cell_318]++[cell_319])++([cell_320]++[cell_321]))++(([cell_322]++[cell_323])++([cell_324]++[cell_325])))++((([cell_326]++[cell_327])++([cell_328]++[cell_329]))++(([cell_330]++[cell_331])++([cell_332]++[cell_333])))) (((([cell_334]++[cell_335])++([cell_336]++[cell_337]))++(([cell_338]++[cell_339])++([cell_340]++[cell_341])))++((([cell_342]++[cell_343])++([cell_344]++[cell_345]))++(([cell_346]++[cell_347])++([cell_348]++[cell_349])))) ((((tags_318++tags_319)++(tags_320++tags_321))++((tags_322++tags_323)++(tags_324++tags_325)))++(((tags_326++tags_327)++(tags_328++tags_329))++((tags_330++tags_331)++(tags_332++tags_333)))) ((((tags_334++tags_335)++(tags_336++tags_337))++((tags_338++tags_339)++(tags_340++tags_341)))++(((tags_342++tags_343)++(tags_344++tags_345))++((tags_346++tags_347)++(tags_348++tags_349)))) (checkWitnessTape_append ((([cell_318]++[cell_319])++([cell_320]++[cell_321]))++(([cell_322]++[cell_323])++([cell_324]++[cell_325]))) ((([cell_326]++[cell_327])++([cell_328]++[cell_329]))++(([cell_330]++[cell_331])++([cell_332]++[cell_333]))) (((tags_318++tags_319)++(tags_320++tags_321))++((tags_322++tags_323)++(tags_324++tags_325))) (((tags_326++tags_327)++(tags_328++tags_329))++((tags_330++tags_331)++(tags_332++tags_333))) (checkWitnessTape_append (([cell_318]++[cell_319])++([cell_320]++[cell_321])) (([cell_322]++[cell_323])++([cell_324]++[cell_325])) ((tags_318++tags_319)++(tags_320++tags_321)) ((tags_322++tags_323)++(tags_324++tags_325)) (checkWitnessTape_append ([cell_318]++[cell_319]) ([cell_320]++[cell_321]) (tags_318++tags_319) (tags_320++tags_321) (checkWitnessTape_append [cell_318] [cell_319] tags_318 tags_319 checked_318 checked_319) (checkWitnessTape_append [cell_320] [cell_321] tags_320 tags_321 checked_320 checked_321)) (checkWitnessTape_append ([cell_322]++[cell_323]) ([cell_324]++[cell_325]) (tags_322++tags_323) (tags_324++tags_325) (checkWitnessTape_append [cell_322] [cell_323] tags_322 tags_323 checked_322 checked_323) (checkWitnessTape_append [cell_324] [cell_325] tags_324 tags_325 checked_324 checked_325))) (checkWitnessTape_append (([cell_326]++[cell_327])++([cell_328]++[cell_329])) (([cell_330]++[cell_331])++([cell_332]++[cell_333])) ((tags_326++tags_327)++(tags_328++tags_329)) ((tags_330++tags_331)++(tags_332++tags_333)) (checkWitnessTape_append ([cell_326]++[cell_327]) ([cell_328]++[cell_329]) (tags_326++tags_327) (tags_328++tags_329) (checkWitnessTape_append [cell_326] [cell_327] tags_326 tags_327 checked_326 checked_327) (checkWitnessTape_append [cell_328] [cell_329] tags_328 tags_329 checked_328 checked_329)) (checkWitnessTape_append ([cell_330]++[cell_331]) ([cell_332]++[cell_333]) (tags_330++tags_331) (tags_332++tags_333) (checkWitnessTape_append [cell_330] [cell_331] tags_330 tags_331 checked_330 checked_331) (checkWitnessTape_append [cell_332] [cell_333] tags_332 tags_333 checked_332 checked_333)))) (checkWitnessTape_append ((([cell_334]++[cell_335])++([cell_336]++[cell_337]))++(([cell_338]++[cell_339])++([cell_340]++[cell_341]))) ((([cell_342]++[cell_343])++([cell_344]++[cell_345]))++(([cell_346]++[cell_347])++([cell_348]++[cell_349]))) (((tags_334++tags_335)++(tags_336++tags_337))++((tags_338++tags_339)++(tags_340++tags_341))) (((tags_342++tags_343)++(tags_344++tags_345))++((tags_346++tags_347)++(tags_348++tags_349))) (checkWitnessTape_append (([cell_334]++[cell_335])++([cell_336]++[cell_337])) (([cell_338]++[cell_339])++([cell_340]++[cell_341])) ((tags_334++tags_335)++(tags_336++tags_337)) ((tags_338++tags_339)++(tags_340++tags_341)) (checkWitnessTape_append ([cell_334]++[cell_335]) ([cell_336]++[cell_337]) (tags_334++tags_335) (tags_336++tags_337) (checkWitnessTape_append [cell_334] [cell_335] tags_334 tags_335 checked_334 checked_335) (checkWitnessTape_append [cell_336] [cell_337] tags_336 tags_337 checked_336 checked_337)) (checkWitnessTape_append ([cell_338]++[cell_339]) ([cell_340]++[cell_341]) (tags_338++tags_339) (tags_340++tags_341) (checkWitnessTape_append [cell_338] [cell_339] tags_338 tags_339 checked_338 checked_339) (checkWitnessTape_append [cell_340] [cell_341] tags_340 tags_341 checked_340 checked_341))) (checkWitnessTape_append (([cell_342]++[cell_343])++([cell_344]++[cell_345])) (([cell_346]++[cell_347])++([cell_348]++[cell_349])) ((tags_342++tags_343)++(tags_344++tags_345)) ((tags_346++tags_347)++(tags_348++tags_349)) (checkWitnessTape_append ([cell_342]++[cell_343]) ([cell_344]++[cell_345]) (tags_342++tags_343) (tags_344++tags_345) (checkWitnessTape_append [cell_342] [cell_343] tags_342 tags_343 checked_342 checked_343) (checkWitnessTape_append [cell_344] [cell_345] tags_344 tags_345 checked_344 checked_345)) (checkWitnessTape_append ([cell_346]++[cell_347]) ([cell_348]++[cell_349]) (tags_346++tags_347) (tags_348++tags_349) (checkWitnessTape_append [cell_346] [cell_347] tags_346 tags_347 checked_346 checked_347) (checkWitnessTape_append [cell_348] [cell_349] tags_348 tags_349 checked_348 checked_349)))))
#print axioms checked_317

theorem checked_316 : checkWitnessTape [cell_316] tags_316 = true := by
  decide +kernel
#print axioms checked_316

theorem checked_315 : checkWitnessTape [cell_315] tags_315 = true := by
  decide +kernel
#print axioms checked_315

theorem checked_314 : checkWitnessTape [cell_314] tags_314 = true := by
  decide +kernel
#print axioms checked_314

theorem checked_313 : checkWitnessTape [cell_313] tags_313 = true := by
  decide +kernel
#print axioms checked_313

theorem checked_312 : checkWitnessTape [cell_312] tags_312 = true := by
  decide +kernel
#print axioms checked_312

theorem checked_311 : checkWitnessTape [cell_311] tags_311 = true := by
  decide +kernel
#print axioms checked_311

theorem checked_310 : checkWitnessTape [cell_310] tags_310 = true := by
  decide +kernel
#print axioms checked_310

theorem checked_309 : checkWitnessTape [cell_309] tags_309 = true := by
  decide +kernel
#print axioms checked_309

theorem checked_308 : checkWitnessTape [cell_308] tags_308 = true := by
  decide +kernel
#print axioms checked_308

theorem checked_307 : checkWitnessTape [cell_307] tags_307 = true := by
  decide +kernel
#print axioms checked_307

theorem checked_306 : checkWitnessTape [cell_306] tags_306 = true := by
  decide +kernel
#print axioms checked_306

theorem checked_305 : checkWitnessTape [cell_305] tags_305 = true := by
  decide +kernel
#print axioms checked_305

theorem checked_304 : checkWitnessTape [cell_304] tags_304 = true := by
  decide +kernel
#print axioms checked_304

theorem checked_303 : checkWitnessTape [cell_303] tags_303 = true := by
  decide +kernel
#print axioms checked_303

theorem checked_302 : checkWitnessTape [cell_302] tags_302 = true := by
  decide +kernel
#print axioms checked_302

theorem checked_301 : checkWitnessTape [cell_301] tags_301 = true := by
  decide +kernel
#print axioms checked_301

theorem checked_300 : checkWitnessTape [cell_300] tags_300 = true := by
  decide +kernel
#print axioms checked_300

theorem checked_299 : checkWitnessTape [cell_299] tags_299 = true := by
  decide +kernel
#print axioms checked_299

theorem checked_298 : checkWitnessTape [cell_298] tags_298 = true := by
  decide +kernel
#print axioms checked_298

theorem checked_297 : checkWitnessTape [cell_297] tags_297 = true := by
  decide +kernel
#print axioms checked_297

theorem checked_296 : checkWitnessTape [cell_296] tags_296 = true := by
  decide +kernel
#print axioms checked_296

theorem checked_295 : checkWitnessTape [cell_295] tags_295 = true := by
  decide +kernel
#print axioms checked_295

theorem checked_294 : checkWitnessTape [cell_294] tags_294 = true := by
  decide +kernel
#print axioms checked_294

theorem checked_293 : checkWitnessTape [cell_293] tags_293 = true := by
  decide +kernel
#print axioms checked_293

theorem checked_292 : checkWitnessTape [cell_292] tags_292 = true := by
  decide +kernel
#print axioms checked_292

theorem checked_291 : checkWitnessTape [cell_291] tags_291 = true := by
  decide +kernel
#print axioms checked_291

theorem checked_290 : checkWitnessTape [cell_290] tags_290 = true := by
  decide +kernel
#print axioms checked_290

theorem checked_289 : checkWitnessTape [cell_289] tags_289 = true := by
  decide +kernel
#print axioms checked_289

theorem checked_288 : checkWitnessTape [cell_288] tags_288 = true := by
  decide +kernel
#print axioms checked_288

theorem checked_287 : checkWitnessTape [cell_287] tags_287 = true := by
  decide +kernel
#print axioms checked_287

theorem checked_286 : checkWitnessTape [cell_286] tags_286 = true := by
  decide +kernel
#print axioms checked_286

theorem checked_285 : checkWitnessTape [cell_285] tags_285 = true := by
  decide +kernel
#print axioms checked_285

theorem checked_284 : checkWitnessTape [cell_284] tags_284 = true := by
  decide +kernel
#print axioms checked_284

theorem checked_283 : checkWitnessTape [cell_283] tags_283 = true := by
  decide +kernel
#print axioms checked_283

theorem checked_282 : checkWitnessTape [cell_282] tags_282 = true := by
  decide +kernel
#print axioms checked_282

theorem checked_281 : checkWitnessTape [cell_281] tags_281 = true := by
  apply checkWitnessTape_split cell_281 (((((tags_282++tags_283)++(tags_284++tags_285))++((tags_286++tags_287)++(tags_288++tags_289)))++(((tags_290++tags_291)++(tags_292++tags_293))++((tags_294++tags_295)++(tags_296++tags_297))))++((((tags_298++tags_299)++(tags_300++tags_301))++((tags_302++tags_303)++(tags_304++tags_305)))++(((tags_306++tags_307)++(tags_308++tags_309))++((tags_310++tags_311)++(tags_312++tags_313))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_282]++[cell_283])++([cell_284]++[cell_285]))++(([cell_286]++[cell_287])++([cell_288]++[cell_289])))++((([cell_290]++[cell_291])++([cell_292]++[cell_293]))++(([cell_294]++[cell_295])++([cell_296]++[cell_297]))))++(((([cell_298]++[cell_299])++([cell_300]++[cell_301]))++(([cell_302]++[cell_303])++([cell_304]++[cell_305])))++((([cell_306]++[cell_307])++([cell_308]++[cell_309]))++(([cell_310]++[cell_311])++([cell_312]++[cell_313]))))) (((((tags_282++tags_283)++(tags_284++tags_285))++((tags_286++tags_287)++(tags_288++tags_289)))++(((tags_290++tags_291)++(tags_292++tags_293))++((tags_294++tags_295)++(tags_296++tags_297))))++((((tags_298++tags_299)++(tags_300++tags_301))++((tags_302++tags_303)++(tags_304++tags_305)))++(((tags_306++tags_307)++(tags_308++tags_309))++((tags_310++tags_311)++(tags_312++tags_313))))) = true
  exact (checkWitnessTape_append (((([cell_282]++[cell_283])++([cell_284]++[cell_285]))++(([cell_286]++[cell_287])++([cell_288]++[cell_289])))++((([cell_290]++[cell_291])++([cell_292]++[cell_293]))++(([cell_294]++[cell_295])++([cell_296]++[cell_297])))) (((([cell_298]++[cell_299])++([cell_300]++[cell_301]))++(([cell_302]++[cell_303])++([cell_304]++[cell_305])))++((([cell_306]++[cell_307])++([cell_308]++[cell_309]))++(([cell_310]++[cell_311])++([cell_312]++[cell_313])))) ((((tags_282++tags_283)++(tags_284++tags_285))++((tags_286++tags_287)++(tags_288++tags_289)))++(((tags_290++tags_291)++(tags_292++tags_293))++((tags_294++tags_295)++(tags_296++tags_297)))) ((((tags_298++tags_299)++(tags_300++tags_301))++((tags_302++tags_303)++(tags_304++tags_305)))++(((tags_306++tags_307)++(tags_308++tags_309))++((tags_310++tags_311)++(tags_312++tags_313)))) (checkWitnessTape_append ((([cell_282]++[cell_283])++([cell_284]++[cell_285]))++(([cell_286]++[cell_287])++([cell_288]++[cell_289]))) ((([cell_290]++[cell_291])++([cell_292]++[cell_293]))++(([cell_294]++[cell_295])++([cell_296]++[cell_297]))) (((tags_282++tags_283)++(tags_284++tags_285))++((tags_286++tags_287)++(tags_288++tags_289))) (((tags_290++tags_291)++(tags_292++tags_293))++((tags_294++tags_295)++(tags_296++tags_297))) (checkWitnessTape_append (([cell_282]++[cell_283])++([cell_284]++[cell_285])) (([cell_286]++[cell_287])++([cell_288]++[cell_289])) ((tags_282++tags_283)++(tags_284++tags_285)) ((tags_286++tags_287)++(tags_288++tags_289)) (checkWitnessTape_append ([cell_282]++[cell_283]) ([cell_284]++[cell_285]) (tags_282++tags_283) (tags_284++tags_285) (checkWitnessTape_append [cell_282] [cell_283] tags_282 tags_283 checked_282 checked_283) (checkWitnessTape_append [cell_284] [cell_285] tags_284 tags_285 checked_284 checked_285)) (checkWitnessTape_append ([cell_286]++[cell_287]) ([cell_288]++[cell_289]) (tags_286++tags_287) (tags_288++tags_289) (checkWitnessTape_append [cell_286] [cell_287] tags_286 tags_287 checked_286 checked_287) (checkWitnessTape_append [cell_288] [cell_289] tags_288 tags_289 checked_288 checked_289))) (checkWitnessTape_append (([cell_290]++[cell_291])++([cell_292]++[cell_293])) (([cell_294]++[cell_295])++([cell_296]++[cell_297])) ((tags_290++tags_291)++(tags_292++tags_293)) ((tags_294++tags_295)++(tags_296++tags_297)) (checkWitnessTape_append ([cell_290]++[cell_291]) ([cell_292]++[cell_293]) (tags_290++tags_291) (tags_292++tags_293) (checkWitnessTape_append [cell_290] [cell_291] tags_290 tags_291 checked_290 checked_291) (checkWitnessTape_append [cell_292] [cell_293] tags_292 tags_293 checked_292 checked_293)) (checkWitnessTape_append ([cell_294]++[cell_295]) ([cell_296]++[cell_297]) (tags_294++tags_295) (tags_296++tags_297) (checkWitnessTape_append [cell_294] [cell_295] tags_294 tags_295 checked_294 checked_295) (checkWitnessTape_append [cell_296] [cell_297] tags_296 tags_297 checked_296 checked_297)))) (checkWitnessTape_append ((([cell_298]++[cell_299])++([cell_300]++[cell_301]))++(([cell_302]++[cell_303])++([cell_304]++[cell_305]))) ((([cell_306]++[cell_307])++([cell_308]++[cell_309]))++(([cell_310]++[cell_311])++([cell_312]++[cell_313]))) (((tags_298++tags_299)++(tags_300++tags_301))++((tags_302++tags_303)++(tags_304++tags_305))) (((tags_306++tags_307)++(tags_308++tags_309))++((tags_310++tags_311)++(tags_312++tags_313))) (checkWitnessTape_append (([cell_298]++[cell_299])++([cell_300]++[cell_301])) (([cell_302]++[cell_303])++([cell_304]++[cell_305])) ((tags_298++tags_299)++(tags_300++tags_301)) ((tags_302++tags_303)++(tags_304++tags_305)) (checkWitnessTape_append ([cell_298]++[cell_299]) ([cell_300]++[cell_301]) (tags_298++tags_299) (tags_300++tags_301) (checkWitnessTape_append [cell_298] [cell_299] tags_298 tags_299 checked_298 checked_299) (checkWitnessTape_append [cell_300] [cell_301] tags_300 tags_301 checked_300 checked_301)) (checkWitnessTape_append ([cell_302]++[cell_303]) ([cell_304]++[cell_305]) (tags_302++tags_303) (tags_304++tags_305) (checkWitnessTape_append [cell_302] [cell_303] tags_302 tags_303 checked_302 checked_303) (checkWitnessTape_append [cell_304] [cell_305] tags_304 tags_305 checked_304 checked_305))) (checkWitnessTape_append (([cell_306]++[cell_307])++([cell_308]++[cell_309])) (([cell_310]++[cell_311])++([cell_312]++[cell_313])) ((tags_306++tags_307)++(tags_308++tags_309)) ((tags_310++tags_311)++(tags_312++tags_313)) (checkWitnessTape_append ([cell_306]++[cell_307]) ([cell_308]++[cell_309]) (tags_306++tags_307) (tags_308++tags_309) (checkWitnessTape_append [cell_306] [cell_307] tags_306 tags_307 checked_306 checked_307) (checkWitnessTape_append [cell_308] [cell_309] tags_308 tags_309 checked_308 checked_309)) (checkWitnessTape_append ([cell_310]++[cell_311]) ([cell_312]++[cell_313]) (tags_310++tags_311) (tags_312++tags_313) (checkWitnessTape_append [cell_310] [cell_311] tags_310 tags_311 checked_310 checked_311) (checkWitnessTape_append [cell_312] [cell_313] tags_312 tags_313 checked_312 checked_313)))))
#print axioms checked_281

theorem checked_280 : checkWitnessTape [cell_280] tags_280 = true := by
  decide +kernel
#print axioms checked_280

theorem checked_279 : checkWitnessTape [cell_279] tags_279 = true := by
  decide +kernel
#print axioms checked_279

theorem checked_278 : checkWitnessTape [cell_278] tags_278 = true := by
  decide +kernel
#print axioms checked_278

theorem checked_277 : checkWitnessTape [cell_277] tags_277 = true := by
  decide +kernel
#print axioms checked_277

theorem checked_276 : checkWitnessTape [cell_276] tags_276 = true := by
  decide +kernel
#print axioms checked_276

theorem checked_275 : checkWitnessTape [cell_275] tags_275 = true := by
  decide +kernel
#print axioms checked_275

theorem checked_274 : checkWitnessTape [cell_274] tags_274 = true := by
  decide +kernel
#print axioms checked_274

theorem checked_273 : checkWitnessTape [cell_273] tags_273 = true := by
  decide +kernel
#print axioms checked_273

theorem checked_272 : checkWitnessTape [cell_272] tags_272 = true := by
  decide +kernel
#print axioms checked_272

theorem checked_271 : checkWitnessTape [cell_271] tags_271 = true := by
  decide +kernel
#print axioms checked_271

theorem checked_270 : checkWitnessTape [cell_270] tags_270 = true := by
  decide +kernel
#print axioms checked_270

theorem checked_269 : checkWitnessTape [cell_269] tags_269 = true := by
  decide +kernel
#print axioms checked_269

theorem checked_268 : checkWitnessTape [cell_268] tags_268 = true := by
  decide +kernel
#print axioms checked_268

theorem checked_267 : checkWitnessTape [cell_267] tags_267 = true := by
  decide +kernel
#print axioms checked_267

theorem checked_266 : checkWitnessTape [cell_266] tags_266 = true := by
  decide +kernel
#print axioms checked_266

theorem checked_265 : checkWitnessTape [cell_265] tags_265 = true := by
  decide +kernel
#print axioms checked_265

theorem checked_264 : checkWitnessTape [cell_264] tags_264 = true := by
  decide +kernel
#print axioms checked_264

theorem checked_263 : checkWitnessTape [cell_263] tags_263 = true := by
  decide +kernel
#print axioms checked_263

theorem checked_262 : checkWitnessTape [cell_262] tags_262 = true := by
  decide +kernel
#print axioms checked_262

theorem checked_261 : checkWitnessTape [cell_261] tags_261 = true := by
  decide +kernel
#print axioms checked_261

theorem checked_260 : checkWitnessTape [cell_260] tags_260 = true := by
  decide +kernel
#print axioms checked_260

theorem checked_259 : checkWitnessTape [cell_259] tags_259 = true := by
  decide +kernel
#print axioms checked_259

theorem checked_258 : checkWitnessTape [cell_258] tags_258 = true := by
  decide +kernel
#print axioms checked_258

theorem checked_257 : checkWitnessTape [cell_257] tags_257 = true := by
  decide +kernel
#print axioms checked_257

theorem checked_256 : checkWitnessTape [cell_256] tags_256 = true := by
  decide +kernel
#print axioms checked_256

theorem checked_255 : checkWitnessTape [cell_255] tags_255 = true := by
  decide +kernel
#print axioms checked_255

theorem checked_254 : checkWitnessTape [cell_254] tags_254 = true := by
  decide +kernel
#print axioms checked_254

theorem checked_253 : checkWitnessTape [cell_253] tags_253 = true := by
  decide +kernel
#print axioms checked_253

theorem checked_252 : checkWitnessTape [cell_252] tags_252 = true := by
  decide +kernel
#print axioms checked_252

theorem checked_251 : checkWitnessTape [cell_251] tags_251 = true := by
  decide +kernel
#print axioms checked_251

theorem checked_250 : checkWitnessTape [cell_250] tags_250 = true := by
  decide +kernel
#print axioms checked_250

theorem checked_249 : checkWitnessTape [cell_249] tags_249 = true := by
  decide +kernel
#print axioms checked_249

theorem checked_248 : checkWitnessTape [cell_248] tags_248 = true := by
  decide +kernel
#print axioms checked_248

theorem checked_247 : checkWitnessTape [cell_247] tags_247 = true := by
  apply checkWitnessTape_split cell_247 (((((tags_248++tags_249)++(tags_250++tags_251))++((tags_252++tags_253)++(tags_254++tags_255)))++(((tags_256++tags_257)++(tags_258++tags_259))++((tags_260++tags_261)++(tags_262++tags_263))))++((((tags_264++tags_265)++(tags_266++tags_267))++((tags_268++tags_269)++(tags_270++tags_271)))++(((tags_272++tags_273)++(tags_274++tags_275))++((tags_276++tags_277)++(tags_278++tags_279))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_248]++[cell_249])++([cell_250]++[cell_251]))++(([cell_252]++[cell_253])++([cell_254]++[cell_255])))++((([cell_256]++[cell_257])++([cell_258]++[cell_259]))++(([cell_260]++[cell_261])++([cell_262]++[cell_263]))))++(((([cell_264]++[cell_265])++([cell_266]++[cell_267]))++(([cell_268]++[cell_269])++([cell_270]++[cell_271])))++((([cell_272]++[cell_273])++([cell_274]++[cell_275]))++(([cell_276]++[cell_277])++([cell_278]++[cell_279]))))) (((((tags_248++tags_249)++(tags_250++tags_251))++((tags_252++tags_253)++(tags_254++tags_255)))++(((tags_256++tags_257)++(tags_258++tags_259))++((tags_260++tags_261)++(tags_262++tags_263))))++((((tags_264++tags_265)++(tags_266++tags_267))++((tags_268++tags_269)++(tags_270++tags_271)))++(((tags_272++tags_273)++(tags_274++tags_275))++((tags_276++tags_277)++(tags_278++tags_279))))) = true
  exact (checkWitnessTape_append (((([cell_248]++[cell_249])++([cell_250]++[cell_251]))++(([cell_252]++[cell_253])++([cell_254]++[cell_255])))++((([cell_256]++[cell_257])++([cell_258]++[cell_259]))++(([cell_260]++[cell_261])++([cell_262]++[cell_263])))) (((([cell_264]++[cell_265])++([cell_266]++[cell_267]))++(([cell_268]++[cell_269])++([cell_270]++[cell_271])))++((([cell_272]++[cell_273])++([cell_274]++[cell_275]))++(([cell_276]++[cell_277])++([cell_278]++[cell_279])))) ((((tags_248++tags_249)++(tags_250++tags_251))++((tags_252++tags_253)++(tags_254++tags_255)))++(((tags_256++tags_257)++(tags_258++tags_259))++((tags_260++tags_261)++(tags_262++tags_263)))) ((((tags_264++tags_265)++(tags_266++tags_267))++((tags_268++tags_269)++(tags_270++tags_271)))++(((tags_272++tags_273)++(tags_274++tags_275))++((tags_276++tags_277)++(tags_278++tags_279)))) (checkWitnessTape_append ((([cell_248]++[cell_249])++([cell_250]++[cell_251]))++(([cell_252]++[cell_253])++([cell_254]++[cell_255]))) ((([cell_256]++[cell_257])++([cell_258]++[cell_259]))++(([cell_260]++[cell_261])++([cell_262]++[cell_263]))) (((tags_248++tags_249)++(tags_250++tags_251))++((tags_252++tags_253)++(tags_254++tags_255))) (((tags_256++tags_257)++(tags_258++tags_259))++((tags_260++tags_261)++(tags_262++tags_263))) (checkWitnessTape_append (([cell_248]++[cell_249])++([cell_250]++[cell_251])) (([cell_252]++[cell_253])++([cell_254]++[cell_255])) ((tags_248++tags_249)++(tags_250++tags_251)) ((tags_252++tags_253)++(tags_254++tags_255)) (checkWitnessTape_append ([cell_248]++[cell_249]) ([cell_250]++[cell_251]) (tags_248++tags_249) (tags_250++tags_251) (checkWitnessTape_append [cell_248] [cell_249] tags_248 tags_249 checked_248 checked_249) (checkWitnessTape_append [cell_250] [cell_251] tags_250 tags_251 checked_250 checked_251)) (checkWitnessTape_append ([cell_252]++[cell_253]) ([cell_254]++[cell_255]) (tags_252++tags_253) (tags_254++tags_255) (checkWitnessTape_append [cell_252] [cell_253] tags_252 tags_253 checked_252 checked_253) (checkWitnessTape_append [cell_254] [cell_255] tags_254 tags_255 checked_254 checked_255))) (checkWitnessTape_append (([cell_256]++[cell_257])++([cell_258]++[cell_259])) (([cell_260]++[cell_261])++([cell_262]++[cell_263])) ((tags_256++tags_257)++(tags_258++tags_259)) ((tags_260++tags_261)++(tags_262++tags_263)) (checkWitnessTape_append ([cell_256]++[cell_257]) ([cell_258]++[cell_259]) (tags_256++tags_257) (tags_258++tags_259) (checkWitnessTape_append [cell_256] [cell_257] tags_256 tags_257 checked_256 checked_257) (checkWitnessTape_append [cell_258] [cell_259] tags_258 tags_259 checked_258 checked_259)) (checkWitnessTape_append ([cell_260]++[cell_261]) ([cell_262]++[cell_263]) (tags_260++tags_261) (tags_262++tags_263) (checkWitnessTape_append [cell_260] [cell_261] tags_260 tags_261 checked_260 checked_261) (checkWitnessTape_append [cell_262] [cell_263] tags_262 tags_263 checked_262 checked_263)))) (checkWitnessTape_append ((([cell_264]++[cell_265])++([cell_266]++[cell_267]))++(([cell_268]++[cell_269])++([cell_270]++[cell_271]))) ((([cell_272]++[cell_273])++([cell_274]++[cell_275]))++(([cell_276]++[cell_277])++([cell_278]++[cell_279]))) (((tags_264++tags_265)++(tags_266++tags_267))++((tags_268++tags_269)++(tags_270++tags_271))) (((tags_272++tags_273)++(tags_274++tags_275))++((tags_276++tags_277)++(tags_278++tags_279))) (checkWitnessTape_append (([cell_264]++[cell_265])++([cell_266]++[cell_267])) (([cell_268]++[cell_269])++([cell_270]++[cell_271])) ((tags_264++tags_265)++(tags_266++tags_267)) ((tags_268++tags_269)++(tags_270++tags_271)) (checkWitnessTape_append ([cell_264]++[cell_265]) ([cell_266]++[cell_267]) (tags_264++tags_265) (tags_266++tags_267) (checkWitnessTape_append [cell_264] [cell_265] tags_264 tags_265 checked_264 checked_265) (checkWitnessTape_append [cell_266] [cell_267] tags_266 tags_267 checked_266 checked_267)) (checkWitnessTape_append ([cell_268]++[cell_269]) ([cell_270]++[cell_271]) (tags_268++tags_269) (tags_270++tags_271) (checkWitnessTape_append [cell_268] [cell_269] tags_268 tags_269 checked_268 checked_269) (checkWitnessTape_append [cell_270] [cell_271] tags_270 tags_271 checked_270 checked_271))) (checkWitnessTape_append (([cell_272]++[cell_273])++([cell_274]++[cell_275])) (([cell_276]++[cell_277])++([cell_278]++[cell_279])) ((tags_272++tags_273)++(tags_274++tags_275)) ((tags_276++tags_277)++(tags_278++tags_279)) (checkWitnessTape_append ([cell_272]++[cell_273]) ([cell_274]++[cell_275]) (tags_272++tags_273) (tags_274++tags_275) (checkWitnessTape_append [cell_272] [cell_273] tags_272 tags_273 checked_272 checked_273) (checkWitnessTape_append [cell_274] [cell_275] tags_274 tags_275 checked_274 checked_275)) (checkWitnessTape_append ([cell_276]++[cell_277]) ([cell_278]++[cell_279]) (tags_276++tags_277) (tags_278++tags_279) (checkWitnessTape_append [cell_276] [cell_277] tags_276 tags_277 checked_276 checked_277) (checkWitnessTape_append [cell_278] [cell_279] tags_278 tags_279 checked_278 checked_279)))))
#print axioms checked_247

theorem checked_246 : checkWitnessTape [cell_246] tags_246 = true := by
  decide +kernel
#print axioms checked_246

theorem checked_245 : checkWitnessTape [cell_245] tags_245 = true := by
  decide +kernel
#print axioms checked_245

theorem checked_244 : checkWitnessTape [cell_244] tags_244 = true := by
  decide +kernel
#print axioms checked_244

theorem checked_243 : checkWitnessTape [cell_243] tags_243 = true := by
  decide +kernel
#print axioms checked_243

theorem checked_242 : checkWitnessTape [cell_242] tags_242 = true := by
  decide +kernel
#print axioms checked_242

theorem checked_241 : checkWitnessTape [cell_241] tags_241 = true := by
  decide +kernel
#print axioms checked_241

theorem checked_240 : checkWitnessTape [cell_240] tags_240 = true := by
  decide +kernel
#print axioms checked_240

theorem checked_239 : checkWitnessTape [cell_239] tags_239 = true := by
  decide +kernel
#print axioms checked_239

theorem checked_238 : checkWitnessTape [cell_238] tags_238 = true := by
  decide +kernel
#print axioms checked_238

theorem checked_237 : checkWitnessTape [cell_237] tags_237 = true := by
  decide +kernel
#print axioms checked_237

theorem checked_236 : checkWitnessTape [cell_236] tags_236 = true := by
  decide +kernel
#print axioms checked_236

theorem checked_235 : checkWitnessTape [cell_235] tags_235 = true := by
  decide +kernel
#print axioms checked_235

theorem checked_234 : checkWitnessTape [cell_234] tags_234 = true := by
  decide +kernel
#print axioms checked_234

theorem checked_233 : checkWitnessTape [cell_233] tags_233 = true := by
  decide +kernel
#print axioms checked_233

theorem checked_232 : checkWitnessTape [cell_232] tags_232 = true := by
  decide +kernel
#print axioms checked_232

theorem checked_231 : checkWitnessTape [cell_231] tags_231 = true := by
  decide +kernel
#print axioms checked_231

theorem checked_230 : checkWitnessTape [cell_230] tags_230 = true := by
  decide +kernel
#print axioms checked_230

theorem checked_229 : checkWitnessTape [cell_229] tags_229 = true := by
  decide +kernel
#print axioms checked_229

theorem checked_228 : checkWitnessTape [cell_228] tags_228 = true := by
  decide +kernel
#print axioms checked_228

theorem checked_227 : checkWitnessTape [cell_227] tags_227 = true := by
  decide +kernel
#print axioms checked_227

theorem checked_226 : checkWitnessTape [cell_226] tags_226 = true := by
  decide +kernel
#print axioms checked_226

theorem checked_225 : checkWitnessTape [cell_225] tags_225 = true := by
  decide +kernel
#print axioms checked_225

theorem checked_224 : checkWitnessTape [cell_224] tags_224 = true := by
  decide +kernel
#print axioms checked_224

theorem checked_223 : checkWitnessTape [cell_223] tags_223 = true := by
  decide +kernel
#print axioms checked_223

theorem checked_222 : checkWitnessTape [cell_222] tags_222 = true := by
  decide +kernel
#print axioms checked_222

theorem checked_221 : checkWitnessTape [cell_221] tags_221 = true := by
  decide +kernel
#print axioms checked_221

theorem checked_220 : checkWitnessTape [cell_220] tags_220 = true := by
  decide +kernel
#print axioms checked_220

theorem checked_219 : checkWitnessTape [cell_219] tags_219 = true := by
  decide +kernel
#print axioms checked_219

theorem checked_218 : checkWitnessTape [cell_218] tags_218 = true := by
  decide +kernel
#print axioms checked_218

theorem checked_217 : checkWitnessTape [cell_217] tags_217 = true := by
  decide +kernel
#print axioms checked_217

theorem checked_216 : checkWitnessTape [cell_216] tags_216 = true := by
  decide +kernel
#print axioms checked_216

theorem checked_215 : checkWitnessTape [cell_215] tags_215 = true := by
  decide +kernel
#print axioms checked_215

theorem checked_214 : checkWitnessTape [cell_214] tags_214 = true := by
  decide +kernel
#print axioms checked_214

theorem checked_213 : checkWitnessTape [cell_213] tags_213 = true := by
  apply checkWitnessTape_split cell_213 (((((tags_214++tags_215)++(tags_216++tags_217))++((tags_218++tags_219)++(tags_220++tags_221)))++(((tags_222++tags_223)++(tags_224++tags_225))++((tags_226++tags_227)++(tags_228++tags_229))))++((((tags_230++tags_231)++(tags_232++tags_233))++((tags_234++tags_235)++(tags_236++tags_237)))++(((tags_238++tags_239)++(tags_240++tags_241))++((tags_242++tags_243)++(tags_244++tags_245))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_214]++[cell_215])++([cell_216]++[cell_217]))++(([cell_218]++[cell_219])++([cell_220]++[cell_221])))++((([cell_222]++[cell_223])++([cell_224]++[cell_225]))++(([cell_226]++[cell_227])++([cell_228]++[cell_229]))))++(((([cell_230]++[cell_231])++([cell_232]++[cell_233]))++(([cell_234]++[cell_235])++([cell_236]++[cell_237])))++((([cell_238]++[cell_239])++([cell_240]++[cell_241]))++(([cell_242]++[cell_243])++([cell_244]++[cell_245]))))) (((((tags_214++tags_215)++(tags_216++tags_217))++((tags_218++tags_219)++(tags_220++tags_221)))++(((tags_222++tags_223)++(tags_224++tags_225))++((tags_226++tags_227)++(tags_228++tags_229))))++((((tags_230++tags_231)++(tags_232++tags_233))++((tags_234++tags_235)++(tags_236++tags_237)))++(((tags_238++tags_239)++(tags_240++tags_241))++((tags_242++tags_243)++(tags_244++tags_245))))) = true
  exact (checkWitnessTape_append (((([cell_214]++[cell_215])++([cell_216]++[cell_217]))++(([cell_218]++[cell_219])++([cell_220]++[cell_221])))++((([cell_222]++[cell_223])++([cell_224]++[cell_225]))++(([cell_226]++[cell_227])++([cell_228]++[cell_229])))) (((([cell_230]++[cell_231])++([cell_232]++[cell_233]))++(([cell_234]++[cell_235])++([cell_236]++[cell_237])))++((([cell_238]++[cell_239])++([cell_240]++[cell_241]))++(([cell_242]++[cell_243])++([cell_244]++[cell_245])))) ((((tags_214++tags_215)++(tags_216++tags_217))++((tags_218++tags_219)++(tags_220++tags_221)))++(((tags_222++tags_223)++(tags_224++tags_225))++((tags_226++tags_227)++(tags_228++tags_229)))) ((((tags_230++tags_231)++(tags_232++tags_233))++((tags_234++tags_235)++(tags_236++tags_237)))++(((tags_238++tags_239)++(tags_240++tags_241))++((tags_242++tags_243)++(tags_244++tags_245)))) (checkWitnessTape_append ((([cell_214]++[cell_215])++([cell_216]++[cell_217]))++(([cell_218]++[cell_219])++([cell_220]++[cell_221]))) ((([cell_222]++[cell_223])++([cell_224]++[cell_225]))++(([cell_226]++[cell_227])++([cell_228]++[cell_229]))) (((tags_214++tags_215)++(tags_216++tags_217))++((tags_218++tags_219)++(tags_220++tags_221))) (((tags_222++tags_223)++(tags_224++tags_225))++((tags_226++tags_227)++(tags_228++tags_229))) (checkWitnessTape_append (([cell_214]++[cell_215])++([cell_216]++[cell_217])) (([cell_218]++[cell_219])++([cell_220]++[cell_221])) ((tags_214++tags_215)++(tags_216++tags_217)) ((tags_218++tags_219)++(tags_220++tags_221)) (checkWitnessTape_append ([cell_214]++[cell_215]) ([cell_216]++[cell_217]) (tags_214++tags_215) (tags_216++tags_217) (checkWitnessTape_append [cell_214] [cell_215] tags_214 tags_215 checked_214 checked_215) (checkWitnessTape_append [cell_216] [cell_217] tags_216 tags_217 checked_216 checked_217)) (checkWitnessTape_append ([cell_218]++[cell_219]) ([cell_220]++[cell_221]) (tags_218++tags_219) (tags_220++tags_221) (checkWitnessTape_append [cell_218] [cell_219] tags_218 tags_219 checked_218 checked_219) (checkWitnessTape_append [cell_220] [cell_221] tags_220 tags_221 checked_220 checked_221))) (checkWitnessTape_append (([cell_222]++[cell_223])++([cell_224]++[cell_225])) (([cell_226]++[cell_227])++([cell_228]++[cell_229])) ((tags_222++tags_223)++(tags_224++tags_225)) ((tags_226++tags_227)++(tags_228++tags_229)) (checkWitnessTape_append ([cell_222]++[cell_223]) ([cell_224]++[cell_225]) (tags_222++tags_223) (tags_224++tags_225) (checkWitnessTape_append [cell_222] [cell_223] tags_222 tags_223 checked_222 checked_223) (checkWitnessTape_append [cell_224] [cell_225] tags_224 tags_225 checked_224 checked_225)) (checkWitnessTape_append ([cell_226]++[cell_227]) ([cell_228]++[cell_229]) (tags_226++tags_227) (tags_228++tags_229) (checkWitnessTape_append [cell_226] [cell_227] tags_226 tags_227 checked_226 checked_227) (checkWitnessTape_append [cell_228] [cell_229] tags_228 tags_229 checked_228 checked_229)))) (checkWitnessTape_append ((([cell_230]++[cell_231])++([cell_232]++[cell_233]))++(([cell_234]++[cell_235])++([cell_236]++[cell_237]))) ((([cell_238]++[cell_239])++([cell_240]++[cell_241]))++(([cell_242]++[cell_243])++([cell_244]++[cell_245]))) (((tags_230++tags_231)++(tags_232++tags_233))++((tags_234++tags_235)++(tags_236++tags_237))) (((tags_238++tags_239)++(tags_240++tags_241))++((tags_242++tags_243)++(tags_244++tags_245))) (checkWitnessTape_append (([cell_230]++[cell_231])++([cell_232]++[cell_233])) (([cell_234]++[cell_235])++([cell_236]++[cell_237])) ((tags_230++tags_231)++(tags_232++tags_233)) ((tags_234++tags_235)++(tags_236++tags_237)) (checkWitnessTape_append ([cell_230]++[cell_231]) ([cell_232]++[cell_233]) (tags_230++tags_231) (tags_232++tags_233) (checkWitnessTape_append [cell_230] [cell_231] tags_230 tags_231 checked_230 checked_231) (checkWitnessTape_append [cell_232] [cell_233] tags_232 tags_233 checked_232 checked_233)) (checkWitnessTape_append ([cell_234]++[cell_235]) ([cell_236]++[cell_237]) (tags_234++tags_235) (tags_236++tags_237) (checkWitnessTape_append [cell_234] [cell_235] tags_234 tags_235 checked_234 checked_235) (checkWitnessTape_append [cell_236] [cell_237] tags_236 tags_237 checked_236 checked_237))) (checkWitnessTape_append (([cell_238]++[cell_239])++([cell_240]++[cell_241])) (([cell_242]++[cell_243])++([cell_244]++[cell_245])) ((tags_238++tags_239)++(tags_240++tags_241)) ((tags_242++tags_243)++(tags_244++tags_245)) (checkWitnessTape_append ([cell_238]++[cell_239]) ([cell_240]++[cell_241]) (tags_238++tags_239) (tags_240++tags_241) (checkWitnessTape_append [cell_238] [cell_239] tags_238 tags_239 checked_238 checked_239) (checkWitnessTape_append [cell_240] [cell_241] tags_240 tags_241 checked_240 checked_241)) (checkWitnessTape_append ([cell_242]++[cell_243]) ([cell_244]++[cell_245]) (tags_242++tags_243) (tags_244++tags_245) (checkWitnessTape_append [cell_242] [cell_243] tags_242 tags_243 checked_242 checked_243) (checkWitnessTape_append [cell_244] [cell_245] tags_244 tags_245 checked_244 checked_245)))))
#print axioms checked_213

theorem checked_212 : checkWitnessTape [cell_212] tags_212 = true := by
  decide +kernel
#print axioms checked_212

theorem checked_211 : checkWitnessTape [cell_211] tags_211 = true := by
  decide +kernel
#print axioms checked_211

theorem checked_210 : checkWitnessTape [cell_210] tags_210 = true := by
  decide +kernel
#print axioms checked_210

theorem checked_209 : checkWitnessTape [cell_209] tags_209 = true := by
  decide +kernel
#print axioms checked_209

theorem checked_208 : checkWitnessTape [cell_208] tags_208 = true := by
  decide +kernel
#print axioms checked_208

theorem checked_207 : checkWitnessTape [cell_207] tags_207 = true := by
  decide +kernel
#print axioms checked_207

theorem checked_206 : checkWitnessTape [cell_206] tags_206 = true := by
  decide +kernel
#print axioms checked_206

theorem checked_205 : checkWitnessTape [cell_205] tags_205 = true := by
  decide +kernel
#print axioms checked_205

theorem checked_204 : checkWitnessTape [cell_204] tags_204 = true := by
  decide +kernel
#print axioms checked_204

theorem checked_203 : checkWitnessTape [cell_203] tags_203 = true := by
  decide +kernel
#print axioms checked_203

theorem checked_202 : checkWitnessTape [cell_202] tags_202 = true := by
  decide +kernel
#print axioms checked_202

theorem checked_201 : checkWitnessTape [cell_201] tags_201 = true := by
  decide +kernel
#print axioms checked_201

theorem checked_200 : checkWitnessTape [cell_200] tags_200 = true := by
  decide +kernel
#print axioms checked_200

theorem checked_199 : checkWitnessTape [cell_199] tags_199 = true := by
  decide +kernel
#print axioms checked_199

theorem checked_198 : checkWitnessTape [cell_198] tags_198 = true := by
  decide +kernel
#print axioms checked_198

theorem checked_197 : checkWitnessTape [cell_197] tags_197 = true := by
  decide +kernel
#print axioms checked_197

theorem checked_196 : checkWitnessTape [cell_196] tags_196 = true := by
  decide +kernel
#print axioms checked_196

theorem checked_195 : checkWitnessTape [cell_195] tags_195 = true := by
  decide +kernel
#print axioms checked_195

theorem checked_194 : checkWitnessTape [cell_194] tags_194 = true := by
  decide +kernel
#print axioms checked_194

theorem checked_193 : checkWitnessTape [cell_193] tags_193 = true := by
  decide +kernel
#print axioms checked_193

theorem checked_192 : checkWitnessTape [cell_192] tags_192 = true := by
  decide +kernel
#print axioms checked_192

theorem checked_191 : checkWitnessTape [cell_191] tags_191 = true := by
  decide +kernel
#print axioms checked_191

theorem checked_190 : checkWitnessTape [cell_190] tags_190 = true := by
  decide +kernel
#print axioms checked_190

theorem checked_189 : checkWitnessTape [cell_189] tags_189 = true := by
  decide +kernel
#print axioms checked_189

theorem checked_188 : checkWitnessTape [cell_188] tags_188 = true := by
  decide +kernel
#print axioms checked_188

theorem checked_187 : checkWitnessTape [cell_187] tags_187 = true := by
  decide +kernel
#print axioms checked_187

theorem checked_186 : checkWitnessTape [cell_186] tags_186 = true := by
  decide +kernel
#print axioms checked_186

theorem checked_185 : checkWitnessTape [cell_185] tags_185 = true := by
  decide +kernel
#print axioms checked_185

theorem checked_184 : checkWitnessTape [cell_184] tags_184 = true := by
  decide +kernel
#print axioms checked_184

theorem checked_183 : checkWitnessTape [cell_183] tags_183 = true := by
  decide +kernel
#print axioms checked_183

theorem checked_182 : checkWitnessTape [cell_182] tags_182 = true := by
  decide +kernel
#print axioms checked_182

theorem checked_181 : checkWitnessTape [cell_181] tags_181 = true := by
  decide +kernel
#print axioms checked_181

theorem checked_180 : checkWitnessTape [cell_180] tags_180 = true := by
  decide +kernel
#print axioms checked_180

theorem checked_179 : checkWitnessTape [cell_179] tags_179 = true := by
  decide +kernel
#print axioms checked_179

theorem checked_178 : checkWitnessTape [cell_178] tags_178 = true := by
  decide +kernel
#print axioms checked_178

theorem checked_177 : checkWitnessTape [cell_177] tags_177 = true := by
  decide +kernel
#print axioms checked_177

theorem checked_176 : checkWitnessTape [cell_176] tags_176 = true := by
  decide +kernel
#print axioms checked_176

theorem checked_175 : checkWitnessTape [cell_175] tags_175 = true := by
  apply checkWitnessTape_split cell_175 (((((tags_176++tags_177)++(tags_178++tags_179))++((tags_180++tags_181)++(tags_182++tags_183)))++(((tags_184++tags_185)++(tags_186++tags_187))++((tags_188++tags_189)++(tags_190++tags_191))))++((((tags_192++tags_193)++(tags_194++tags_195))++((tags_196++tags_197)++(tags_198++tags_199)))++(((tags_200++tags_201)++(tags_202++tags_203))++((tags_204++tags_205)++(tags_206++tags_207))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_176]++[cell_177])++([cell_178]++[cell_179]))++(([cell_180]++[cell_181])++([cell_182]++[cell_183])))++((([cell_184]++[cell_185])++([cell_186]++[cell_187]))++(([cell_188]++[cell_189])++([cell_190]++[cell_191]))))++(((([cell_192]++[cell_193])++([cell_194]++[cell_195]))++(([cell_196]++[cell_197])++([cell_198]++[cell_199])))++((([cell_200]++[cell_201])++([cell_202]++[cell_203]))++(([cell_204]++[cell_205])++([cell_206]++[cell_207]))))) (((((tags_176++tags_177)++(tags_178++tags_179))++((tags_180++tags_181)++(tags_182++tags_183)))++(((tags_184++tags_185)++(tags_186++tags_187))++((tags_188++tags_189)++(tags_190++tags_191))))++((((tags_192++tags_193)++(tags_194++tags_195))++((tags_196++tags_197)++(tags_198++tags_199)))++(((tags_200++tags_201)++(tags_202++tags_203))++((tags_204++tags_205)++(tags_206++tags_207))))) = true
  exact (checkWitnessTape_append (((([cell_176]++[cell_177])++([cell_178]++[cell_179]))++(([cell_180]++[cell_181])++([cell_182]++[cell_183])))++((([cell_184]++[cell_185])++([cell_186]++[cell_187]))++(([cell_188]++[cell_189])++([cell_190]++[cell_191])))) (((([cell_192]++[cell_193])++([cell_194]++[cell_195]))++(([cell_196]++[cell_197])++([cell_198]++[cell_199])))++((([cell_200]++[cell_201])++([cell_202]++[cell_203]))++(([cell_204]++[cell_205])++([cell_206]++[cell_207])))) ((((tags_176++tags_177)++(tags_178++tags_179))++((tags_180++tags_181)++(tags_182++tags_183)))++(((tags_184++tags_185)++(tags_186++tags_187))++((tags_188++tags_189)++(tags_190++tags_191)))) ((((tags_192++tags_193)++(tags_194++tags_195))++((tags_196++tags_197)++(tags_198++tags_199)))++(((tags_200++tags_201)++(tags_202++tags_203))++((tags_204++tags_205)++(tags_206++tags_207)))) (checkWitnessTape_append ((([cell_176]++[cell_177])++([cell_178]++[cell_179]))++(([cell_180]++[cell_181])++([cell_182]++[cell_183]))) ((([cell_184]++[cell_185])++([cell_186]++[cell_187]))++(([cell_188]++[cell_189])++([cell_190]++[cell_191]))) (((tags_176++tags_177)++(tags_178++tags_179))++((tags_180++tags_181)++(tags_182++tags_183))) (((tags_184++tags_185)++(tags_186++tags_187))++((tags_188++tags_189)++(tags_190++tags_191))) (checkWitnessTape_append (([cell_176]++[cell_177])++([cell_178]++[cell_179])) (([cell_180]++[cell_181])++([cell_182]++[cell_183])) ((tags_176++tags_177)++(tags_178++tags_179)) ((tags_180++tags_181)++(tags_182++tags_183)) (checkWitnessTape_append ([cell_176]++[cell_177]) ([cell_178]++[cell_179]) (tags_176++tags_177) (tags_178++tags_179) (checkWitnessTape_append [cell_176] [cell_177] tags_176 tags_177 checked_176 checked_177) (checkWitnessTape_append [cell_178] [cell_179] tags_178 tags_179 checked_178 checked_179)) (checkWitnessTape_append ([cell_180]++[cell_181]) ([cell_182]++[cell_183]) (tags_180++tags_181) (tags_182++tags_183) (checkWitnessTape_append [cell_180] [cell_181] tags_180 tags_181 checked_180 checked_181) (checkWitnessTape_append [cell_182] [cell_183] tags_182 tags_183 checked_182 checked_183))) (checkWitnessTape_append (([cell_184]++[cell_185])++([cell_186]++[cell_187])) (([cell_188]++[cell_189])++([cell_190]++[cell_191])) ((tags_184++tags_185)++(tags_186++tags_187)) ((tags_188++tags_189)++(tags_190++tags_191)) (checkWitnessTape_append ([cell_184]++[cell_185]) ([cell_186]++[cell_187]) (tags_184++tags_185) (tags_186++tags_187) (checkWitnessTape_append [cell_184] [cell_185] tags_184 tags_185 checked_184 checked_185) (checkWitnessTape_append [cell_186] [cell_187] tags_186 tags_187 checked_186 checked_187)) (checkWitnessTape_append ([cell_188]++[cell_189]) ([cell_190]++[cell_191]) (tags_188++tags_189) (tags_190++tags_191) (checkWitnessTape_append [cell_188] [cell_189] tags_188 tags_189 checked_188 checked_189) (checkWitnessTape_append [cell_190] [cell_191] tags_190 tags_191 checked_190 checked_191)))) (checkWitnessTape_append ((([cell_192]++[cell_193])++([cell_194]++[cell_195]))++(([cell_196]++[cell_197])++([cell_198]++[cell_199]))) ((([cell_200]++[cell_201])++([cell_202]++[cell_203]))++(([cell_204]++[cell_205])++([cell_206]++[cell_207]))) (((tags_192++tags_193)++(tags_194++tags_195))++((tags_196++tags_197)++(tags_198++tags_199))) (((tags_200++tags_201)++(tags_202++tags_203))++((tags_204++tags_205)++(tags_206++tags_207))) (checkWitnessTape_append (([cell_192]++[cell_193])++([cell_194]++[cell_195])) (([cell_196]++[cell_197])++([cell_198]++[cell_199])) ((tags_192++tags_193)++(tags_194++tags_195)) ((tags_196++tags_197)++(tags_198++tags_199)) (checkWitnessTape_append ([cell_192]++[cell_193]) ([cell_194]++[cell_195]) (tags_192++tags_193) (tags_194++tags_195) (checkWitnessTape_append [cell_192] [cell_193] tags_192 tags_193 checked_192 checked_193) (checkWitnessTape_append [cell_194] [cell_195] tags_194 tags_195 checked_194 checked_195)) (checkWitnessTape_append ([cell_196]++[cell_197]) ([cell_198]++[cell_199]) (tags_196++tags_197) (tags_198++tags_199) (checkWitnessTape_append [cell_196] [cell_197] tags_196 tags_197 checked_196 checked_197) (checkWitnessTape_append [cell_198] [cell_199] tags_198 tags_199 checked_198 checked_199))) (checkWitnessTape_append (([cell_200]++[cell_201])++([cell_202]++[cell_203])) (([cell_204]++[cell_205])++([cell_206]++[cell_207])) ((tags_200++tags_201)++(tags_202++tags_203)) ((tags_204++tags_205)++(tags_206++tags_207)) (checkWitnessTape_append ([cell_200]++[cell_201]) ([cell_202]++[cell_203]) (tags_200++tags_201) (tags_202++tags_203) (checkWitnessTape_append [cell_200] [cell_201] tags_200 tags_201 checked_200 checked_201) (checkWitnessTape_append [cell_202] [cell_203] tags_202 tags_203 checked_202 checked_203)) (checkWitnessTape_append ([cell_204]++[cell_205]) ([cell_206]++[cell_207]) (tags_204++tags_205) (tags_206++tags_207) (checkWitnessTape_append [cell_204] [cell_205] tags_204 tags_205 checked_204 checked_205) (checkWitnessTape_append [cell_206] [cell_207] tags_206 tags_207 checked_206 checked_207)))))
#print axioms checked_175

theorem checked_174 : checkWitnessTape [cell_174] tags_174 = true := by
  decide +kernel
#print axioms checked_174

theorem checked_173 : checkWitnessTape [cell_173] tags_173 = true := by
  decide +kernel
#print axioms checked_173

theorem checked_172 : checkWitnessTape [cell_172] tags_172 = true := by
  decide +kernel
#print axioms checked_172

theorem checked_171 : checkWitnessTape [cell_171] tags_171 = true := by
  decide +kernel
#print axioms checked_171

theorem checked_170 : checkWitnessTape [cell_170] tags_170 = true := by
  decide +kernel
#print axioms checked_170

theorem checked_169 : checkWitnessTape [cell_169] tags_169 = true := by
  decide +kernel
#print axioms checked_169

theorem checked_168 : checkWitnessTape [cell_168] tags_168 = true := by
  decide +kernel
#print axioms checked_168

theorem checked_167 : checkWitnessTape [cell_167] tags_167 = true := by
  decide +kernel
#print axioms checked_167

theorem checked_166 : checkWitnessTape [cell_166] tags_166 = true := by
  decide +kernel
#print axioms checked_166

theorem checked_165 : checkWitnessTape [cell_165] tags_165 = true := by
  decide +kernel
#print axioms checked_165

theorem checked_164 : checkWitnessTape [cell_164] tags_164 = true := by
  decide +kernel
#print axioms checked_164

theorem checked_163 : checkWitnessTape [cell_163] tags_163 = true := by
  decide +kernel
#print axioms checked_163

theorem checked_162 : checkWitnessTape [cell_162] tags_162 = true := by
  decide +kernel
#print axioms checked_162

theorem checked_161 : checkWitnessTape [cell_161] tags_161 = true := by
  decide +kernel
#print axioms checked_161

theorem checked_160 : checkWitnessTape [cell_160] tags_160 = true := by
  decide +kernel
#print axioms checked_160

theorem checked_159 : checkWitnessTape [cell_159] tags_159 = true := by
  decide +kernel
#print axioms checked_159

theorem checked_158 : checkWitnessTape [cell_158] tags_158 = true := by
  decide +kernel
#print axioms checked_158

theorem checked_157 : checkWitnessTape [cell_157] tags_157 = true := by
  decide +kernel
#print axioms checked_157

theorem checked_156 : checkWitnessTape [cell_156] tags_156 = true := by
  decide +kernel
#print axioms checked_156

theorem checked_155 : checkWitnessTape [cell_155] tags_155 = true := by
  decide +kernel
#print axioms checked_155

theorem checked_154 : checkWitnessTape [cell_154] tags_154 = true := by
  decide +kernel
#print axioms checked_154

theorem checked_153 : checkWitnessTape [cell_153] tags_153 = true := by
  decide +kernel
#print axioms checked_153

theorem checked_152 : checkWitnessTape [cell_152] tags_152 = true := by
  decide +kernel
#print axioms checked_152

theorem checked_151 : checkWitnessTape [cell_151] tags_151 = true := by
  decide +kernel
#print axioms checked_151

theorem checked_150 : checkWitnessTape [cell_150] tags_150 = true := by
  decide +kernel
#print axioms checked_150

theorem checked_149 : checkWitnessTape [cell_149] tags_149 = true := by
  decide +kernel
#print axioms checked_149

theorem checked_148 : checkWitnessTape [cell_148] tags_148 = true := by
  decide +kernel
#print axioms checked_148

theorem checked_147 : checkWitnessTape [cell_147] tags_147 = true := by
  decide +kernel
#print axioms checked_147

theorem checked_146 : checkWitnessTape [cell_146] tags_146 = true := by
  decide +kernel
#print axioms checked_146

theorem checked_145 : checkWitnessTape [cell_145] tags_145 = true := by
  decide +kernel
#print axioms checked_145

theorem checked_144 : checkWitnessTape [cell_144] tags_144 = true := by
  decide +kernel
#print axioms checked_144

theorem checked_143 : checkWitnessTape [cell_143] tags_143 = true := by
  decide +kernel
#print axioms checked_143

theorem checked_142 : checkWitnessTape [cell_142] tags_142 = true := by
  apply checkWitnessTape_split cell_142 (((((tags_143++tags_144)++(tags_145++tags_146))++((tags_147++tags_148)++(tags_149++tags_150)))++(((tags_151++tags_152)++(tags_153++tags_154))++((tags_155++tags_156)++(tags_157++tags_158))))++((((tags_159++tags_160)++(tags_161++tags_162))++((tags_163++tags_164)++(tags_165++tags_166)))++(((tags_167++tags_168)++(tags_169++tags_170))++((tags_171++tags_172)++(tags_173++tags_174))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_143]++[cell_144])++([cell_145]++[cell_146]))++(([cell_147]++[cell_148])++([cell_149]++[cell_150])))++((([cell_151]++[cell_152])++([cell_153]++[cell_154]))++(([cell_155]++[cell_156])++([cell_157]++[cell_158]))))++(((([cell_159]++[cell_160])++([cell_161]++[cell_162]))++(([cell_163]++[cell_164])++([cell_165]++[cell_166])))++((([cell_167]++[cell_168])++([cell_169]++[cell_170]))++(([cell_171]++[cell_172])++([cell_173]++[cell_174]))))) (((((tags_143++tags_144)++(tags_145++tags_146))++((tags_147++tags_148)++(tags_149++tags_150)))++(((tags_151++tags_152)++(tags_153++tags_154))++((tags_155++tags_156)++(tags_157++tags_158))))++((((tags_159++tags_160)++(tags_161++tags_162))++((tags_163++tags_164)++(tags_165++tags_166)))++(((tags_167++tags_168)++(tags_169++tags_170))++((tags_171++tags_172)++(tags_173++tags_174))))) = true
  exact (checkWitnessTape_append (((([cell_143]++[cell_144])++([cell_145]++[cell_146]))++(([cell_147]++[cell_148])++([cell_149]++[cell_150])))++((([cell_151]++[cell_152])++([cell_153]++[cell_154]))++(([cell_155]++[cell_156])++([cell_157]++[cell_158])))) (((([cell_159]++[cell_160])++([cell_161]++[cell_162]))++(([cell_163]++[cell_164])++([cell_165]++[cell_166])))++((([cell_167]++[cell_168])++([cell_169]++[cell_170]))++(([cell_171]++[cell_172])++([cell_173]++[cell_174])))) ((((tags_143++tags_144)++(tags_145++tags_146))++((tags_147++tags_148)++(tags_149++tags_150)))++(((tags_151++tags_152)++(tags_153++tags_154))++((tags_155++tags_156)++(tags_157++tags_158)))) ((((tags_159++tags_160)++(tags_161++tags_162))++((tags_163++tags_164)++(tags_165++tags_166)))++(((tags_167++tags_168)++(tags_169++tags_170))++((tags_171++tags_172)++(tags_173++tags_174)))) (checkWitnessTape_append ((([cell_143]++[cell_144])++([cell_145]++[cell_146]))++(([cell_147]++[cell_148])++([cell_149]++[cell_150]))) ((([cell_151]++[cell_152])++([cell_153]++[cell_154]))++(([cell_155]++[cell_156])++([cell_157]++[cell_158]))) (((tags_143++tags_144)++(tags_145++tags_146))++((tags_147++tags_148)++(tags_149++tags_150))) (((tags_151++tags_152)++(tags_153++tags_154))++((tags_155++tags_156)++(tags_157++tags_158))) (checkWitnessTape_append (([cell_143]++[cell_144])++([cell_145]++[cell_146])) (([cell_147]++[cell_148])++([cell_149]++[cell_150])) ((tags_143++tags_144)++(tags_145++tags_146)) ((tags_147++tags_148)++(tags_149++tags_150)) (checkWitnessTape_append ([cell_143]++[cell_144]) ([cell_145]++[cell_146]) (tags_143++tags_144) (tags_145++tags_146) (checkWitnessTape_append [cell_143] [cell_144] tags_143 tags_144 checked_143 checked_144) (checkWitnessTape_append [cell_145] [cell_146] tags_145 tags_146 checked_145 checked_146)) (checkWitnessTape_append ([cell_147]++[cell_148]) ([cell_149]++[cell_150]) (tags_147++tags_148) (tags_149++tags_150) (checkWitnessTape_append [cell_147] [cell_148] tags_147 tags_148 checked_147 checked_148) (checkWitnessTape_append [cell_149] [cell_150] tags_149 tags_150 checked_149 checked_150))) (checkWitnessTape_append (([cell_151]++[cell_152])++([cell_153]++[cell_154])) (([cell_155]++[cell_156])++([cell_157]++[cell_158])) ((tags_151++tags_152)++(tags_153++tags_154)) ((tags_155++tags_156)++(tags_157++tags_158)) (checkWitnessTape_append ([cell_151]++[cell_152]) ([cell_153]++[cell_154]) (tags_151++tags_152) (tags_153++tags_154) (checkWitnessTape_append [cell_151] [cell_152] tags_151 tags_152 checked_151 checked_152) (checkWitnessTape_append [cell_153] [cell_154] tags_153 tags_154 checked_153 checked_154)) (checkWitnessTape_append ([cell_155]++[cell_156]) ([cell_157]++[cell_158]) (tags_155++tags_156) (tags_157++tags_158) (checkWitnessTape_append [cell_155] [cell_156] tags_155 tags_156 checked_155 checked_156) (checkWitnessTape_append [cell_157] [cell_158] tags_157 tags_158 checked_157 checked_158)))) (checkWitnessTape_append ((([cell_159]++[cell_160])++([cell_161]++[cell_162]))++(([cell_163]++[cell_164])++([cell_165]++[cell_166]))) ((([cell_167]++[cell_168])++([cell_169]++[cell_170]))++(([cell_171]++[cell_172])++([cell_173]++[cell_174]))) (((tags_159++tags_160)++(tags_161++tags_162))++((tags_163++tags_164)++(tags_165++tags_166))) (((tags_167++tags_168)++(tags_169++tags_170))++((tags_171++tags_172)++(tags_173++tags_174))) (checkWitnessTape_append (([cell_159]++[cell_160])++([cell_161]++[cell_162])) (([cell_163]++[cell_164])++([cell_165]++[cell_166])) ((tags_159++tags_160)++(tags_161++tags_162)) ((tags_163++tags_164)++(tags_165++tags_166)) (checkWitnessTape_append ([cell_159]++[cell_160]) ([cell_161]++[cell_162]) (tags_159++tags_160) (tags_161++tags_162) (checkWitnessTape_append [cell_159] [cell_160] tags_159 tags_160 checked_159 checked_160) (checkWitnessTape_append [cell_161] [cell_162] tags_161 tags_162 checked_161 checked_162)) (checkWitnessTape_append ([cell_163]++[cell_164]) ([cell_165]++[cell_166]) (tags_163++tags_164) (tags_165++tags_166) (checkWitnessTape_append [cell_163] [cell_164] tags_163 tags_164 checked_163 checked_164) (checkWitnessTape_append [cell_165] [cell_166] tags_165 tags_166 checked_165 checked_166))) (checkWitnessTape_append (([cell_167]++[cell_168])++([cell_169]++[cell_170])) (([cell_171]++[cell_172])++([cell_173]++[cell_174])) ((tags_167++tags_168)++(tags_169++tags_170)) ((tags_171++tags_172)++(tags_173++tags_174)) (checkWitnessTape_append ([cell_167]++[cell_168]) ([cell_169]++[cell_170]) (tags_167++tags_168) (tags_169++tags_170) (checkWitnessTape_append [cell_167] [cell_168] tags_167 tags_168 checked_167 checked_168) (checkWitnessTape_append [cell_169] [cell_170] tags_169 tags_170 checked_169 checked_170)) (checkWitnessTape_append ([cell_171]++[cell_172]) ([cell_173]++[cell_174]) (tags_171++tags_172) (tags_173++tags_174) (checkWitnessTape_append [cell_171] [cell_172] tags_171 tags_172 checked_171 checked_172) (checkWitnessTape_append [cell_173] [cell_174] tags_173 tags_174 checked_173 checked_174)))))
#print axioms checked_142

theorem checked_141 : checkWitnessTape [cell_141] tags_141 = true := by
  decide +kernel
#print axioms checked_141

theorem checked_140 : checkWitnessTape [cell_140] tags_140 = true := by
  decide +kernel
#print axioms checked_140

theorem checked_139 : checkWitnessTape [cell_139] tags_139 = true := by
  decide +kernel
#print axioms checked_139

theorem checked_138 : checkWitnessTape [cell_138] tags_138 = true := by
  decide +kernel
#print axioms checked_138

theorem checked_137 : checkWitnessTape [cell_137] tags_137 = true := by
  decide +kernel
#print axioms checked_137

theorem checked_136 : checkWitnessTape [cell_136] tags_136 = true := by
  decide +kernel
#print axioms checked_136

theorem checked_135 : checkWitnessTape [cell_135] tags_135 = true := by
  decide +kernel
#print axioms checked_135

theorem checked_134 : checkWitnessTape [cell_134] tags_134 = true := by
  decide +kernel
#print axioms checked_134

theorem checked_133 : checkWitnessTape [cell_133] tags_133 = true := by
  decide +kernel
#print axioms checked_133

theorem checked_132 : checkWitnessTape [cell_132] tags_132 = true := by
  decide +kernel
#print axioms checked_132

theorem checked_131 : checkWitnessTape [cell_131] tags_131 = true := by
  decide +kernel
#print axioms checked_131

theorem checked_130 : checkWitnessTape [cell_130] tags_130 = true := by
  decide +kernel
#print axioms checked_130

theorem checked_129 : checkWitnessTape [cell_129] tags_129 = true := by
  decide +kernel
#print axioms checked_129

theorem checked_128 : checkWitnessTape [cell_128] tags_128 = true := by
  decide +kernel
#print axioms checked_128

theorem checked_127 : checkWitnessTape [cell_127] tags_127 = true := by
  decide +kernel
#print axioms checked_127

theorem checked_126 : checkWitnessTape [cell_126] tags_126 = true := by
  decide +kernel
#print axioms checked_126

theorem checked_125 : checkWitnessTape [cell_125] tags_125 = true := by
  decide +kernel
#print axioms checked_125

theorem checked_124 : checkWitnessTape [cell_124] tags_124 = true := by
  decide +kernel
#print axioms checked_124

theorem checked_123 : checkWitnessTape [cell_123] tags_123 = true := by
  decide +kernel
#print axioms checked_123

theorem checked_122 : checkWitnessTape [cell_122] tags_122 = true := by
  decide +kernel
#print axioms checked_122

theorem checked_121 : checkWitnessTape [cell_121] tags_121 = true := by
  decide +kernel
#print axioms checked_121

theorem checked_120 : checkWitnessTape [cell_120] tags_120 = true := by
  decide +kernel
#print axioms checked_120

theorem checked_119 : checkWitnessTape [cell_119] tags_119 = true := by
  decide +kernel
#print axioms checked_119

theorem checked_118 : checkWitnessTape [cell_118] tags_118 = true := by
  decide +kernel
#print axioms checked_118

theorem checked_117 : checkWitnessTape [cell_117] tags_117 = true := by
  decide +kernel
#print axioms checked_117

theorem checked_116 : checkWitnessTape [cell_116] tags_116 = true := by
  decide +kernel
#print axioms checked_116

theorem checked_115 : checkWitnessTape [cell_115] tags_115 = true := by
  decide +kernel
#print axioms checked_115

theorem checked_114 : checkWitnessTape [cell_114] tags_114 = true := by
  decide +kernel
#print axioms checked_114

theorem checked_113 : checkWitnessTape [cell_113] tags_113 = true := by
  decide +kernel
#print axioms checked_113

theorem checked_112 : checkWitnessTape [cell_112] tags_112 = true := by
  decide +kernel
#print axioms checked_112

theorem checked_111 : checkWitnessTape [cell_111] tags_111 = true := by
  decide +kernel
#print axioms checked_111

theorem checked_110 : checkWitnessTape [cell_110] tags_110 = true := by
  decide +kernel
#print axioms checked_110

theorem checked_109 : checkWitnessTape [cell_109] tags_109 = true := by
  decide +kernel
#print axioms checked_109

theorem checked_108 : checkWitnessTape [cell_108] tags_108 = true := by
  decide +kernel
#print axioms checked_108

theorem checked_107 : checkWitnessTape [cell_107] tags_107 = true := by
  apply checkWitnessTape_split cell_107 (((((tags_108++tags_109)++(tags_110++tags_111))++((tags_112++tags_113)++(tags_114++tags_115)))++(((tags_116++tags_117)++(tags_118++tags_119))++((tags_120++tags_121)++(tags_122++tags_123))))++((((tags_124++tags_125)++(tags_126++tags_127))++((tags_128++tags_129)++(tags_130++tags_131)))++(((tags_132++tags_133)++(tags_134++tags_135))++((tags_136++tags_137)++(tags_138++tags_139))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_108]++[cell_109])++([cell_110]++[cell_111]))++(([cell_112]++[cell_113])++([cell_114]++[cell_115])))++((([cell_116]++[cell_117])++([cell_118]++[cell_119]))++(([cell_120]++[cell_121])++([cell_122]++[cell_123]))))++(((([cell_124]++[cell_125])++([cell_126]++[cell_127]))++(([cell_128]++[cell_129])++([cell_130]++[cell_131])))++((([cell_132]++[cell_133])++([cell_134]++[cell_135]))++(([cell_136]++[cell_137])++([cell_138]++[cell_139]))))) (((((tags_108++tags_109)++(tags_110++tags_111))++((tags_112++tags_113)++(tags_114++tags_115)))++(((tags_116++tags_117)++(tags_118++tags_119))++((tags_120++tags_121)++(tags_122++tags_123))))++((((tags_124++tags_125)++(tags_126++tags_127))++((tags_128++tags_129)++(tags_130++tags_131)))++(((tags_132++tags_133)++(tags_134++tags_135))++((tags_136++tags_137)++(tags_138++tags_139))))) = true
  exact (checkWitnessTape_append (((([cell_108]++[cell_109])++([cell_110]++[cell_111]))++(([cell_112]++[cell_113])++([cell_114]++[cell_115])))++((([cell_116]++[cell_117])++([cell_118]++[cell_119]))++(([cell_120]++[cell_121])++([cell_122]++[cell_123])))) (((([cell_124]++[cell_125])++([cell_126]++[cell_127]))++(([cell_128]++[cell_129])++([cell_130]++[cell_131])))++((([cell_132]++[cell_133])++([cell_134]++[cell_135]))++(([cell_136]++[cell_137])++([cell_138]++[cell_139])))) ((((tags_108++tags_109)++(tags_110++tags_111))++((tags_112++tags_113)++(tags_114++tags_115)))++(((tags_116++tags_117)++(tags_118++tags_119))++((tags_120++tags_121)++(tags_122++tags_123)))) ((((tags_124++tags_125)++(tags_126++tags_127))++((tags_128++tags_129)++(tags_130++tags_131)))++(((tags_132++tags_133)++(tags_134++tags_135))++((tags_136++tags_137)++(tags_138++tags_139)))) (checkWitnessTape_append ((([cell_108]++[cell_109])++([cell_110]++[cell_111]))++(([cell_112]++[cell_113])++([cell_114]++[cell_115]))) ((([cell_116]++[cell_117])++([cell_118]++[cell_119]))++(([cell_120]++[cell_121])++([cell_122]++[cell_123]))) (((tags_108++tags_109)++(tags_110++tags_111))++((tags_112++tags_113)++(tags_114++tags_115))) (((tags_116++tags_117)++(tags_118++tags_119))++((tags_120++tags_121)++(tags_122++tags_123))) (checkWitnessTape_append (([cell_108]++[cell_109])++([cell_110]++[cell_111])) (([cell_112]++[cell_113])++([cell_114]++[cell_115])) ((tags_108++tags_109)++(tags_110++tags_111)) ((tags_112++tags_113)++(tags_114++tags_115)) (checkWitnessTape_append ([cell_108]++[cell_109]) ([cell_110]++[cell_111]) (tags_108++tags_109) (tags_110++tags_111) (checkWitnessTape_append [cell_108] [cell_109] tags_108 tags_109 checked_108 checked_109) (checkWitnessTape_append [cell_110] [cell_111] tags_110 tags_111 checked_110 checked_111)) (checkWitnessTape_append ([cell_112]++[cell_113]) ([cell_114]++[cell_115]) (tags_112++tags_113) (tags_114++tags_115) (checkWitnessTape_append [cell_112] [cell_113] tags_112 tags_113 checked_112 checked_113) (checkWitnessTape_append [cell_114] [cell_115] tags_114 tags_115 checked_114 checked_115))) (checkWitnessTape_append (([cell_116]++[cell_117])++([cell_118]++[cell_119])) (([cell_120]++[cell_121])++([cell_122]++[cell_123])) ((tags_116++tags_117)++(tags_118++tags_119)) ((tags_120++tags_121)++(tags_122++tags_123)) (checkWitnessTape_append ([cell_116]++[cell_117]) ([cell_118]++[cell_119]) (tags_116++tags_117) (tags_118++tags_119) (checkWitnessTape_append [cell_116] [cell_117] tags_116 tags_117 checked_116 checked_117) (checkWitnessTape_append [cell_118] [cell_119] tags_118 tags_119 checked_118 checked_119)) (checkWitnessTape_append ([cell_120]++[cell_121]) ([cell_122]++[cell_123]) (tags_120++tags_121) (tags_122++tags_123) (checkWitnessTape_append [cell_120] [cell_121] tags_120 tags_121 checked_120 checked_121) (checkWitnessTape_append [cell_122] [cell_123] tags_122 tags_123 checked_122 checked_123)))) (checkWitnessTape_append ((([cell_124]++[cell_125])++([cell_126]++[cell_127]))++(([cell_128]++[cell_129])++([cell_130]++[cell_131]))) ((([cell_132]++[cell_133])++([cell_134]++[cell_135]))++(([cell_136]++[cell_137])++([cell_138]++[cell_139]))) (((tags_124++tags_125)++(tags_126++tags_127))++((tags_128++tags_129)++(tags_130++tags_131))) (((tags_132++tags_133)++(tags_134++tags_135))++((tags_136++tags_137)++(tags_138++tags_139))) (checkWitnessTape_append (([cell_124]++[cell_125])++([cell_126]++[cell_127])) (([cell_128]++[cell_129])++([cell_130]++[cell_131])) ((tags_124++tags_125)++(tags_126++tags_127)) ((tags_128++tags_129)++(tags_130++tags_131)) (checkWitnessTape_append ([cell_124]++[cell_125]) ([cell_126]++[cell_127]) (tags_124++tags_125) (tags_126++tags_127) (checkWitnessTape_append [cell_124] [cell_125] tags_124 tags_125 checked_124 checked_125) (checkWitnessTape_append [cell_126] [cell_127] tags_126 tags_127 checked_126 checked_127)) (checkWitnessTape_append ([cell_128]++[cell_129]) ([cell_130]++[cell_131]) (tags_128++tags_129) (tags_130++tags_131) (checkWitnessTape_append [cell_128] [cell_129] tags_128 tags_129 checked_128 checked_129) (checkWitnessTape_append [cell_130] [cell_131] tags_130 tags_131 checked_130 checked_131))) (checkWitnessTape_append (([cell_132]++[cell_133])++([cell_134]++[cell_135])) (([cell_136]++[cell_137])++([cell_138]++[cell_139])) ((tags_132++tags_133)++(tags_134++tags_135)) ((tags_136++tags_137)++(tags_138++tags_139)) (checkWitnessTape_append ([cell_132]++[cell_133]) ([cell_134]++[cell_135]) (tags_132++tags_133) (tags_134++tags_135) (checkWitnessTape_append [cell_132] [cell_133] tags_132 tags_133 checked_132 checked_133) (checkWitnessTape_append [cell_134] [cell_135] tags_134 tags_135 checked_134 checked_135)) (checkWitnessTape_append ([cell_136]++[cell_137]) ([cell_138]++[cell_139]) (tags_136++tags_137) (tags_138++tags_139) (checkWitnessTape_append [cell_136] [cell_137] tags_136 tags_137 checked_136 checked_137) (checkWitnessTape_append [cell_138] [cell_139] tags_138 tags_139 checked_138 checked_139)))))
#print axioms checked_107

theorem checked_106 : checkWitnessTape [cell_106] tags_106 = true := by
  decide +kernel
#print axioms checked_106

theorem checked_105 : checkWitnessTape [cell_105] tags_105 = true := by
  decide +kernel
#print axioms checked_105

theorem checked_104 : checkWitnessTape [cell_104] tags_104 = true := by
  decide +kernel
#print axioms checked_104

theorem checked_103 : checkWitnessTape [cell_103] tags_103 = true := by
  decide +kernel
#print axioms checked_103

theorem checked_102 : checkWitnessTape [cell_102] tags_102 = true := by
  decide +kernel
#print axioms checked_102

theorem checked_101 : checkWitnessTape [cell_101] tags_101 = true := by
  decide +kernel
#print axioms checked_101

theorem checked_100 : checkWitnessTape [cell_100] tags_100 = true := by
  decide +kernel
#print axioms checked_100

theorem checked_099 : checkWitnessTape [cell_099] tags_099 = true := by
  decide +kernel
#print axioms checked_099

theorem checked_098 : checkWitnessTape [cell_098] tags_098 = true := by
  decide +kernel
#print axioms checked_098

theorem checked_097 : checkWitnessTape [cell_097] tags_097 = true := by
  decide +kernel
#print axioms checked_097

theorem checked_096 : checkWitnessTape [cell_096] tags_096 = true := by
  decide +kernel
#print axioms checked_096

theorem checked_095 : checkWitnessTape [cell_095] tags_095 = true := by
  decide +kernel
#print axioms checked_095

theorem checked_094 : checkWitnessTape [cell_094] tags_094 = true := by
  decide +kernel
#print axioms checked_094

theorem checked_093 : checkWitnessTape [cell_093] tags_093 = true := by
  decide +kernel
#print axioms checked_093

theorem checked_092 : checkWitnessTape [cell_092] tags_092 = true := by
  decide +kernel
#print axioms checked_092

theorem checked_091 : checkWitnessTape [cell_091] tags_091 = true := by
  decide +kernel
#print axioms checked_091

theorem checked_090 : checkWitnessTape [cell_090] tags_090 = true := by
  decide +kernel
#print axioms checked_090

theorem checked_089 : checkWitnessTape [cell_089] tags_089 = true := by
  decide +kernel
#print axioms checked_089

theorem checked_088 : checkWitnessTape [cell_088] tags_088 = true := by
  decide +kernel
#print axioms checked_088

theorem checked_087 : checkWitnessTape [cell_087] tags_087 = true := by
  decide +kernel
#print axioms checked_087

theorem checked_086 : checkWitnessTape [cell_086] tags_086 = true := by
  decide +kernel
#print axioms checked_086

theorem checked_085 : checkWitnessTape [cell_085] tags_085 = true := by
  decide +kernel
#print axioms checked_085

theorem checked_084 : checkWitnessTape [cell_084] tags_084 = true := by
  decide +kernel
#print axioms checked_084

theorem checked_083 : checkWitnessTape [cell_083] tags_083 = true := by
  decide +kernel
#print axioms checked_083

theorem checked_082 : checkWitnessTape [cell_082] tags_082 = true := by
  decide +kernel
#print axioms checked_082

theorem checked_081 : checkWitnessTape [cell_081] tags_081 = true := by
  decide +kernel
#print axioms checked_081

theorem checked_080 : checkWitnessTape [cell_080] tags_080 = true := by
  decide +kernel
#print axioms checked_080

theorem checked_079 : checkWitnessTape [cell_079] tags_079 = true := by
  decide +kernel
#print axioms checked_079

theorem checked_078 : checkWitnessTape [cell_078] tags_078 = true := by
  decide +kernel
#print axioms checked_078

theorem checked_077 : checkWitnessTape [cell_077] tags_077 = true := by
  decide +kernel
#print axioms checked_077

theorem checked_076 : checkWitnessTape [cell_076] tags_076 = true := by
  decide +kernel
#print axioms checked_076

theorem checked_075 : checkWitnessTape [cell_075] tags_075 = true := by
  decide +kernel
#print axioms checked_075

theorem checked_074 : checkWitnessTape [cell_074] tags_074 = true := by
  decide +kernel
#print axioms checked_074

theorem checked_073 : checkWitnessTape [cell_073] tags_073 = true := by
  apply checkWitnessTape_split cell_073 (((((tags_074++tags_075)++(tags_076++tags_077))++((tags_078++tags_079)++(tags_080++tags_081)))++(((tags_082++tags_083)++(tags_084++tags_085))++((tags_086++tags_087)++(tags_088++tags_089))))++((((tags_090++tags_091)++(tags_092++tags_093))++((tags_094++tags_095)++(tags_096++tags_097)))++(((tags_098++tags_099)++(tags_100++tags_101))++((tags_102++tags_103)++(tags_104++tags_105))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_074]++[cell_075])++([cell_076]++[cell_077]))++(([cell_078]++[cell_079])++([cell_080]++[cell_081])))++((([cell_082]++[cell_083])++([cell_084]++[cell_085]))++(([cell_086]++[cell_087])++([cell_088]++[cell_089]))))++(((([cell_090]++[cell_091])++([cell_092]++[cell_093]))++(([cell_094]++[cell_095])++([cell_096]++[cell_097])))++((([cell_098]++[cell_099])++([cell_100]++[cell_101]))++(([cell_102]++[cell_103])++([cell_104]++[cell_105]))))) (((((tags_074++tags_075)++(tags_076++tags_077))++((tags_078++tags_079)++(tags_080++tags_081)))++(((tags_082++tags_083)++(tags_084++tags_085))++((tags_086++tags_087)++(tags_088++tags_089))))++((((tags_090++tags_091)++(tags_092++tags_093))++((tags_094++tags_095)++(tags_096++tags_097)))++(((tags_098++tags_099)++(tags_100++tags_101))++((tags_102++tags_103)++(tags_104++tags_105))))) = true
  exact (checkWitnessTape_append (((([cell_074]++[cell_075])++([cell_076]++[cell_077]))++(([cell_078]++[cell_079])++([cell_080]++[cell_081])))++((([cell_082]++[cell_083])++([cell_084]++[cell_085]))++(([cell_086]++[cell_087])++([cell_088]++[cell_089])))) (((([cell_090]++[cell_091])++([cell_092]++[cell_093]))++(([cell_094]++[cell_095])++([cell_096]++[cell_097])))++((([cell_098]++[cell_099])++([cell_100]++[cell_101]))++(([cell_102]++[cell_103])++([cell_104]++[cell_105])))) ((((tags_074++tags_075)++(tags_076++tags_077))++((tags_078++tags_079)++(tags_080++tags_081)))++(((tags_082++tags_083)++(tags_084++tags_085))++((tags_086++tags_087)++(tags_088++tags_089)))) ((((tags_090++tags_091)++(tags_092++tags_093))++((tags_094++tags_095)++(tags_096++tags_097)))++(((tags_098++tags_099)++(tags_100++tags_101))++((tags_102++tags_103)++(tags_104++tags_105)))) (checkWitnessTape_append ((([cell_074]++[cell_075])++([cell_076]++[cell_077]))++(([cell_078]++[cell_079])++([cell_080]++[cell_081]))) ((([cell_082]++[cell_083])++([cell_084]++[cell_085]))++(([cell_086]++[cell_087])++([cell_088]++[cell_089]))) (((tags_074++tags_075)++(tags_076++tags_077))++((tags_078++tags_079)++(tags_080++tags_081))) (((tags_082++tags_083)++(tags_084++tags_085))++((tags_086++tags_087)++(tags_088++tags_089))) (checkWitnessTape_append (([cell_074]++[cell_075])++([cell_076]++[cell_077])) (([cell_078]++[cell_079])++([cell_080]++[cell_081])) ((tags_074++tags_075)++(tags_076++tags_077)) ((tags_078++tags_079)++(tags_080++tags_081)) (checkWitnessTape_append ([cell_074]++[cell_075]) ([cell_076]++[cell_077]) (tags_074++tags_075) (tags_076++tags_077) (checkWitnessTape_append [cell_074] [cell_075] tags_074 tags_075 checked_074 checked_075) (checkWitnessTape_append [cell_076] [cell_077] tags_076 tags_077 checked_076 checked_077)) (checkWitnessTape_append ([cell_078]++[cell_079]) ([cell_080]++[cell_081]) (tags_078++tags_079) (tags_080++tags_081) (checkWitnessTape_append [cell_078] [cell_079] tags_078 tags_079 checked_078 checked_079) (checkWitnessTape_append [cell_080] [cell_081] tags_080 tags_081 checked_080 checked_081))) (checkWitnessTape_append (([cell_082]++[cell_083])++([cell_084]++[cell_085])) (([cell_086]++[cell_087])++([cell_088]++[cell_089])) ((tags_082++tags_083)++(tags_084++tags_085)) ((tags_086++tags_087)++(tags_088++tags_089)) (checkWitnessTape_append ([cell_082]++[cell_083]) ([cell_084]++[cell_085]) (tags_082++tags_083) (tags_084++tags_085) (checkWitnessTape_append [cell_082] [cell_083] tags_082 tags_083 checked_082 checked_083) (checkWitnessTape_append [cell_084] [cell_085] tags_084 tags_085 checked_084 checked_085)) (checkWitnessTape_append ([cell_086]++[cell_087]) ([cell_088]++[cell_089]) (tags_086++tags_087) (tags_088++tags_089) (checkWitnessTape_append [cell_086] [cell_087] tags_086 tags_087 checked_086 checked_087) (checkWitnessTape_append [cell_088] [cell_089] tags_088 tags_089 checked_088 checked_089)))) (checkWitnessTape_append ((([cell_090]++[cell_091])++([cell_092]++[cell_093]))++(([cell_094]++[cell_095])++([cell_096]++[cell_097]))) ((([cell_098]++[cell_099])++([cell_100]++[cell_101]))++(([cell_102]++[cell_103])++([cell_104]++[cell_105]))) (((tags_090++tags_091)++(tags_092++tags_093))++((tags_094++tags_095)++(tags_096++tags_097))) (((tags_098++tags_099)++(tags_100++tags_101))++((tags_102++tags_103)++(tags_104++tags_105))) (checkWitnessTape_append (([cell_090]++[cell_091])++([cell_092]++[cell_093])) (([cell_094]++[cell_095])++([cell_096]++[cell_097])) ((tags_090++tags_091)++(tags_092++tags_093)) ((tags_094++tags_095)++(tags_096++tags_097)) (checkWitnessTape_append ([cell_090]++[cell_091]) ([cell_092]++[cell_093]) (tags_090++tags_091) (tags_092++tags_093) (checkWitnessTape_append [cell_090] [cell_091] tags_090 tags_091 checked_090 checked_091) (checkWitnessTape_append [cell_092] [cell_093] tags_092 tags_093 checked_092 checked_093)) (checkWitnessTape_append ([cell_094]++[cell_095]) ([cell_096]++[cell_097]) (tags_094++tags_095) (tags_096++tags_097) (checkWitnessTape_append [cell_094] [cell_095] tags_094 tags_095 checked_094 checked_095) (checkWitnessTape_append [cell_096] [cell_097] tags_096 tags_097 checked_096 checked_097))) (checkWitnessTape_append (([cell_098]++[cell_099])++([cell_100]++[cell_101])) (([cell_102]++[cell_103])++([cell_104]++[cell_105])) ((tags_098++tags_099)++(tags_100++tags_101)) ((tags_102++tags_103)++(tags_104++tags_105)) (checkWitnessTape_append ([cell_098]++[cell_099]) ([cell_100]++[cell_101]) (tags_098++tags_099) (tags_100++tags_101) (checkWitnessTape_append [cell_098] [cell_099] tags_098 tags_099 checked_098 checked_099) (checkWitnessTape_append [cell_100] [cell_101] tags_100 tags_101 checked_100 checked_101)) (checkWitnessTape_append ([cell_102]++[cell_103]) ([cell_104]++[cell_105]) (tags_102++tags_103) (tags_104++tags_105) (checkWitnessTape_append [cell_102] [cell_103] tags_102 tags_103 checked_102 checked_103) (checkWitnessTape_append [cell_104] [cell_105] tags_104 tags_105 checked_104 checked_105)))))
#print axioms checked_073

theorem checked_072 : checkWitnessTape [cell_072] tags_072 = true := by
  decide +kernel
#print axioms checked_072

theorem checked_071 : checkWitnessTape [cell_071] tags_071 = true := by
  decide +kernel
#print axioms checked_071

theorem checked_070 : checkWitnessTape [cell_070] tags_070 = true := by
  decide +kernel
#print axioms checked_070

theorem checked_069 : checkWitnessTape [cell_069] tags_069 = true := by
  decide +kernel
#print axioms checked_069

theorem checked_068 : checkWitnessTape [cell_068] tags_068 = true := by
  decide +kernel
#print axioms checked_068

theorem checked_067 : checkWitnessTape [cell_067] tags_067 = true := by
  decide +kernel
#print axioms checked_067

theorem checked_066 : checkWitnessTape [cell_066] tags_066 = true := by
  decide +kernel
#print axioms checked_066

theorem checked_065 : checkWitnessTape [cell_065] tags_065 = true := by
  decide +kernel
#print axioms checked_065

theorem checked_064 : checkWitnessTape [cell_064] tags_064 = true := by
  decide +kernel
#print axioms checked_064

theorem checked_063 : checkWitnessTape [cell_063] tags_063 = true := by
  decide +kernel
#print axioms checked_063

theorem checked_062 : checkWitnessTape [cell_062] tags_062 = true := by
  decide +kernel
#print axioms checked_062

theorem checked_061 : checkWitnessTape [cell_061] tags_061 = true := by
  decide +kernel
#print axioms checked_061

theorem checked_060 : checkWitnessTape [cell_060] tags_060 = true := by
  decide +kernel
#print axioms checked_060

theorem checked_059 : checkWitnessTape [cell_059] tags_059 = true := by
  decide +kernel
#print axioms checked_059

theorem checked_058 : checkWitnessTape [cell_058] tags_058 = true := by
  decide +kernel
#print axioms checked_058

theorem checked_057 : checkWitnessTape [cell_057] tags_057 = true := by
  decide +kernel
#print axioms checked_057

theorem checked_056 : checkWitnessTape [cell_056] tags_056 = true := by
  decide +kernel
#print axioms checked_056

theorem checked_055 : checkWitnessTape [cell_055] tags_055 = true := by
  decide +kernel
#print axioms checked_055

theorem checked_054 : checkWitnessTape [cell_054] tags_054 = true := by
  decide +kernel
#print axioms checked_054

theorem checked_053 : checkWitnessTape [cell_053] tags_053 = true := by
  decide +kernel
#print axioms checked_053

theorem checked_052 : checkWitnessTape [cell_052] tags_052 = true := by
  decide +kernel
#print axioms checked_052

theorem checked_051 : checkWitnessTape [cell_051] tags_051 = true := by
  decide +kernel
#print axioms checked_051

theorem checked_050 : checkWitnessTape [cell_050] tags_050 = true := by
  decide +kernel
#print axioms checked_050

theorem checked_049 : checkWitnessTape [cell_049] tags_049 = true := by
  decide +kernel
#print axioms checked_049

theorem checked_048 : checkWitnessTape [cell_048] tags_048 = true := by
  decide +kernel
#print axioms checked_048

theorem checked_047 : checkWitnessTape [cell_047] tags_047 = true := by
  decide +kernel
#print axioms checked_047

theorem checked_046 : checkWitnessTape [cell_046] tags_046 = true := by
  decide +kernel
#print axioms checked_046

theorem checked_045 : checkWitnessTape [cell_045] tags_045 = true := by
  decide +kernel
#print axioms checked_045

theorem checked_044 : checkWitnessTape [cell_044] tags_044 = true := by
  decide +kernel
#print axioms checked_044

theorem checked_043 : checkWitnessTape [cell_043] tags_043 = true := by
  decide +kernel
#print axioms checked_043

theorem checked_042 : checkWitnessTape [cell_042] tags_042 = true := by
  decide +kernel
#print axioms checked_042

theorem checked_041 : checkWitnessTape [cell_041] tags_041 = true := by
  decide +kernel
#print axioms checked_041

theorem checked_040 : checkWitnessTape [cell_040] tags_040 = true := by
  decide +kernel
#print axioms checked_040

theorem checked_039 : checkWitnessTape [cell_039] tags_039 = true := by
  apply checkWitnessTape_split cell_039 (((((tags_040++tags_041)++(tags_042++tags_043))++((tags_044++tags_045)++(tags_046++tags_047)))++(((tags_048++tags_049)++(tags_050++tags_051))++((tags_052++tags_053)++(tags_054++tags_055))))++((((tags_056++tags_057)++(tags_058++tags_059))++((tags_060++tags_061)++(tags_062++tags_063)))++(((tags_064++tags_065)++(tags_066++tags_067))++((tags_068++tags_069)++(tags_070++tags_071))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_040]++[cell_041])++([cell_042]++[cell_043]))++(([cell_044]++[cell_045])++([cell_046]++[cell_047])))++((([cell_048]++[cell_049])++([cell_050]++[cell_051]))++(([cell_052]++[cell_053])++([cell_054]++[cell_055]))))++(((([cell_056]++[cell_057])++([cell_058]++[cell_059]))++(([cell_060]++[cell_061])++([cell_062]++[cell_063])))++((([cell_064]++[cell_065])++([cell_066]++[cell_067]))++(([cell_068]++[cell_069])++([cell_070]++[cell_071]))))) (((((tags_040++tags_041)++(tags_042++tags_043))++((tags_044++tags_045)++(tags_046++tags_047)))++(((tags_048++tags_049)++(tags_050++tags_051))++((tags_052++tags_053)++(tags_054++tags_055))))++((((tags_056++tags_057)++(tags_058++tags_059))++((tags_060++tags_061)++(tags_062++tags_063)))++(((tags_064++tags_065)++(tags_066++tags_067))++((tags_068++tags_069)++(tags_070++tags_071))))) = true
  exact (checkWitnessTape_append (((([cell_040]++[cell_041])++([cell_042]++[cell_043]))++(([cell_044]++[cell_045])++([cell_046]++[cell_047])))++((([cell_048]++[cell_049])++([cell_050]++[cell_051]))++(([cell_052]++[cell_053])++([cell_054]++[cell_055])))) (((([cell_056]++[cell_057])++([cell_058]++[cell_059]))++(([cell_060]++[cell_061])++([cell_062]++[cell_063])))++((([cell_064]++[cell_065])++([cell_066]++[cell_067]))++(([cell_068]++[cell_069])++([cell_070]++[cell_071])))) ((((tags_040++tags_041)++(tags_042++tags_043))++((tags_044++tags_045)++(tags_046++tags_047)))++(((tags_048++tags_049)++(tags_050++tags_051))++((tags_052++tags_053)++(tags_054++tags_055)))) ((((tags_056++tags_057)++(tags_058++tags_059))++((tags_060++tags_061)++(tags_062++tags_063)))++(((tags_064++tags_065)++(tags_066++tags_067))++((tags_068++tags_069)++(tags_070++tags_071)))) (checkWitnessTape_append ((([cell_040]++[cell_041])++([cell_042]++[cell_043]))++(([cell_044]++[cell_045])++([cell_046]++[cell_047]))) ((([cell_048]++[cell_049])++([cell_050]++[cell_051]))++(([cell_052]++[cell_053])++([cell_054]++[cell_055]))) (((tags_040++tags_041)++(tags_042++tags_043))++((tags_044++tags_045)++(tags_046++tags_047))) (((tags_048++tags_049)++(tags_050++tags_051))++((tags_052++tags_053)++(tags_054++tags_055))) (checkWitnessTape_append (([cell_040]++[cell_041])++([cell_042]++[cell_043])) (([cell_044]++[cell_045])++([cell_046]++[cell_047])) ((tags_040++tags_041)++(tags_042++tags_043)) ((tags_044++tags_045)++(tags_046++tags_047)) (checkWitnessTape_append ([cell_040]++[cell_041]) ([cell_042]++[cell_043]) (tags_040++tags_041) (tags_042++tags_043) (checkWitnessTape_append [cell_040] [cell_041] tags_040 tags_041 checked_040 checked_041) (checkWitnessTape_append [cell_042] [cell_043] tags_042 tags_043 checked_042 checked_043)) (checkWitnessTape_append ([cell_044]++[cell_045]) ([cell_046]++[cell_047]) (tags_044++tags_045) (tags_046++tags_047) (checkWitnessTape_append [cell_044] [cell_045] tags_044 tags_045 checked_044 checked_045) (checkWitnessTape_append [cell_046] [cell_047] tags_046 tags_047 checked_046 checked_047))) (checkWitnessTape_append (([cell_048]++[cell_049])++([cell_050]++[cell_051])) (([cell_052]++[cell_053])++([cell_054]++[cell_055])) ((tags_048++tags_049)++(tags_050++tags_051)) ((tags_052++tags_053)++(tags_054++tags_055)) (checkWitnessTape_append ([cell_048]++[cell_049]) ([cell_050]++[cell_051]) (tags_048++tags_049) (tags_050++tags_051) (checkWitnessTape_append [cell_048] [cell_049] tags_048 tags_049 checked_048 checked_049) (checkWitnessTape_append [cell_050] [cell_051] tags_050 tags_051 checked_050 checked_051)) (checkWitnessTape_append ([cell_052]++[cell_053]) ([cell_054]++[cell_055]) (tags_052++tags_053) (tags_054++tags_055) (checkWitnessTape_append [cell_052] [cell_053] tags_052 tags_053 checked_052 checked_053) (checkWitnessTape_append [cell_054] [cell_055] tags_054 tags_055 checked_054 checked_055)))) (checkWitnessTape_append ((([cell_056]++[cell_057])++([cell_058]++[cell_059]))++(([cell_060]++[cell_061])++([cell_062]++[cell_063]))) ((([cell_064]++[cell_065])++([cell_066]++[cell_067]))++(([cell_068]++[cell_069])++([cell_070]++[cell_071]))) (((tags_056++tags_057)++(tags_058++tags_059))++((tags_060++tags_061)++(tags_062++tags_063))) (((tags_064++tags_065)++(tags_066++tags_067))++((tags_068++tags_069)++(tags_070++tags_071))) (checkWitnessTape_append (([cell_056]++[cell_057])++([cell_058]++[cell_059])) (([cell_060]++[cell_061])++([cell_062]++[cell_063])) ((tags_056++tags_057)++(tags_058++tags_059)) ((tags_060++tags_061)++(tags_062++tags_063)) (checkWitnessTape_append ([cell_056]++[cell_057]) ([cell_058]++[cell_059]) (tags_056++tags_057) (tags_058++tags_059) (checkWitnessTape_append [cell_056] [cell_057] tags_056 tags_057 checked_056 checked_057) (checkWitnessTape_append [cell_058] [cell_059] tags_058 tags_059 checked_058 checked_059)) (checkWitnessTape_append ([cell_060]++[cell_061]) ([cell_062]++[cell_063]) (tags_060++tags_061) (tags_062++tags_063) (checkWitnessTape_append [cell_060] [cell_061] tags_060 tags_061 checked_060 checked_061) (checkWitnessTape_append [cell_062] [cell_063] tags_062 tags_063 checked_062 checked_063))) (checkWitnessTape_append (([cell_064]++[cell_065])++([cell_066]++[cell_067])) (([cell_068]++[cell_069])++([cell_070]++[cell_071])) ((tags_064++tags_065)++(tags_066++tags_067)) ((tags_068++tags_069)++(tags_070++tags_071)) (checkWitnessTape_append ([cell_064]++[cell_065]) ([cell_066]++[cell_067]) (tags_064++tags_065) (tags_066++tags_067) (checkWitnessTape_append [cell_064] [cell_065] tags_064 tags_065 checked_064 checked_065) (checkWitnessTape_append [cell_066] [cell_067] tags_066 tags_067 checked_066 checked_067)) (checkWitnessTape_append ([cell_068]++[cell_069]) ([cell_070]++[cell_071]) (tags_068++tags_069) (tags_070++tags_071) (checkWitnessTape_append [cell_068] [cell_069] tags_068 tags_069 checked_068 checked_069) (checkWitnessTape_append [cell_070] [cell_071] tags_070 tags_071 checked_070 checked_071)))))
#print axioms checked_039

theorem checked_038 : checkWitnessTape [cell_038] tags_038 = true := by
  decide +kernel
#print axioms checked_038

theorem checked_037 : checkWitnessTape [cell_037] tags_037 = true := by
  decide +kernel
#print axioms checked_037

theorem checked_036 : checkWitnessTape [cell_036] tags_036 = true := by
  decide +kernel
#print axioms checked_036

theorem checked_035 : checkWitnessTape [cell_035] tags_035 = true := by
  decide +kernel
#print axioms checked_035

theorem checked_034 : checkWitnessTape [cell_034] tags_034 = true := by
  decide +kernel
#print axioms checked_034

theorem checked_033 : checkWitnessTape [cell_033] tags_033 = true := by
  decide +kernel
#print axioms checked_033

theorem checked_032 : checkWitnessTape [cell_032] tags_032 = true := by
  decide +kernel
#print axioms checked_032

theorem checked_031 : checkWitnessTape [cell_031] tags_031 = true := by
  decide +kernel
#print axioms checked_031

theorem checked_030 : checkWitnessTape [cell_030] tags_030 = true := by
  decide +kernel
#print axioms checked_030

theorem checked_029 : checkWitnessTape [cell_029] tags_029 = true := by
  decide +kernel
#print axioms checked_029

theorem checked_028 : checkWitnessTape [cell_028] tags_028 = true := by
  decide +kernel
#print axioms checked_028

theorem checked_027 : checkWitnessTape [cell_027] tags_027 = true := by
  decide +kernel
#print axioms checked_027

theorem checked_026 : checkWitnessTape [cell_026] tags_026 = true := by
  decide +kernel
#print axioms checked_026

theorem checked_025 : checkWitnessTape [cell_025] tags_025 = true := by
  decide +kernel
#print axioms checked_025

theorem checked_024 : checkWitnessTape [cell_024] tags_024 = true := by
  decide +kernel
#print axioms checked_024

theorem checked_023 : checkWitnessTape [cell_023] tags_023 = true := by
  decide +kernel
#print axioms checked_023

theorem checked_022 : checkWitnessTape [cell_022] tags_022 = true := by
  decide +kernel
#print axioms checked_022

theorem checked_021 : checkWitnessTape [cell_021] tags_021 = true := by
  decide +kernel
#print axioms checked_021

theorem checked_020 : checkWitnessTape [cell_020] tags_020 = true := by
  decide +kernel
#print axioms checked_020

theorem checked_019 : checkWitnessTape [cell_019] tags_019 = true := by
  decide +kernel
#print axioms checked_019

theorem checked_018 : checkWitnessTape [cell_018] tags_018 = true := by
  decide +kernel
#print axioms checked_018

theorem checked_017 : checkWitnessTape [cell_017] tags_017 = true := by
  decide +kernel
#print axioms checked_017

theorem checked_016 : checkWitnessTape [cell_016] tags_016 = true := by
  decide +kernel
#print axioms checked_016

theorem checked_015 : checkWitnessTape [cell_015] tags_015 = true := by
  decide +kernel
#print axioms checked_015

theorem checked_014 : checkWitnessTape [cell_014] tags_014 = true := by
  decide +kernel
#print axioms checked_014

theorem checked_013 : checkWitnessTape [cell_013] tags_013 = true := by
  decide +kernel
#print axioms checked_013

theorem checked_012 : checkWitnessTape [cell_012] tags_012 = true := by
  decide +kernel
#print axioms checked_012

theorem checked_011 : checkWitnessTape [cell_011] tags_011 = true := by
  decide +kernel
#print axioms checked_011

theorem checked_010 : checkWitnessTape [cell_010] tags_010 = true := by
  decide +kernel
#print axioms checked_010

theorem checked_009 : checkWitnessTape [cell_009] tags_009 = true := by
  decide +kernel
#print axioms checked_009

theorem checked_008 : checkWitnessTape [cell_008] tags_008 = true := by
  decide +kernel
#print axioms checked_008

theorem checked_007 : checkWitnessTape [cell_007] tags_007 = true := by
  decide +kernel
#print axioms checked_007

theorem checked_006 : checkWitnessTape [cell_006] tags_006 = true := by
  decide +kernel
#print axioms checked_006

theorem checked_005 : checkWitnessTape [cell_005] tags_005 = true := by
  apply checkWitnessTape_split cell_005 (((((tags_006++tags_007)++(tags_008++tags_009))++((tags_010++tags_011)++(tags_012++tags_013)))++(((tags_014++tags_015)++(tags_016++tags_017))++((tags_018++tags_019)++(tags_020++tags_021))))++((((tags_022++tags_023)++(tags_024++tags_025))++((tags_026++tags_027)++(tags_028++tags_029)))++(((tags_030++tags_031)++(tags_032++tags_033))++((tags_034++tags_035)++(tags_036++tags_037))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_006]++[cell_007])++([cell_008]++[cell_009]))++(([cell_010]++[cell_011])++([cell_012]++[cell_013])))++((([cell_014]++[cell_015])++([cell_016]++[cell_017]))++(([cell_018]++[cell_019])++([cell_020]++[cell_021]))))++(((([cell_022]++[cell_023])++([cell_024]++[cell_025]))++(([cell_026]++[cell_027])++([cell_028]++[cell_029])))++((([cell_030]++[cell_031])++([cell_032]++[cell_033]))++(([cell_034]++[cell_035])++([cell_036]++[cell_037]))))) (((((tags_006++tags_007)++(tags_008++tags_009))++((tags_010++tags_011)++(tags_012++tags_013)))++(((tags_014++tags_015)++(tags_016++tags_017))++((tags_018++tags_019)++(tags_020++tags_021))))++((((tags_022++tags_023)++(tags_024++tags_025))++((tags_026++tags_027)++(tags_028++tags_029)))++(((tags_030++tags_031)++(tags_032++tags_033))++((tags_034++tags_035)++(tags_036++tags_037))))) = true
  exact (checkWitnessTape_append (((([cell_006]++[cell_007])++([cell_008]++[cell_009]))++(([cell_010]++[cell_011])++([cell_012]++[cell_013])))++((([cell_014]++[cell_015])++([cell_016]++[cell_017]))++(([cell_018]++[cell_019])++([cell_020]++[cell_021])))) (((([cell_022]++[cell_023])++([cell_024]++[cell_025]))++(([cell_026]++[cell_027])++([cell_028]++[cell_029])))++((([cell_030]++[cell_031])++([cell_032]++[cell_033]))++(([cell_034]++[cell_035])++([cell_036]++[cell_037])))) ((((tags_006++tags_007)++(tags_008++tags_009))++((tags_010++tags_011)++(tags_012++tags_013)))++(((tags_014++tags_015)++(tags_016++tags_017))++((tags_018++tags_019)++(tags_020++tags_021)))) ((((tags_022++tags_023)++(tags_024++tags_025))++((tags_026++tags_027)++(tags_028++tags_029)))++(((tags_030++tags_031)++(tags_032++tags_033))++((tags_034++tags_035)++(tags_036++tags_037)))) (checkWitnessTape_append ((([cell_006]++[cell_007])++([cell_008]++[cell_009]))++(([cell_010]++[cell_011])++([cell_012]++[cell_013]))) ((([cell_014]++[cell_015])++([cell_016]++[cell_017]))++(([cell_018]++[cell_019])++([cell_020]++[cell_021]))) (((tags_006++tags_007)++(tags_008++tags_009))++((tags_010++tags_011)++(tags_012++tags_013))) (((tags_014++tags_015)++(tags_016++tags_017))++((tags_018++tags_019)++(tags_020++tags_021))) (checkWitnessTape_append (([cell_006]++[cell_007])++([cell_008]++[cell_009])) (([cell_010]++[cell_011])++([cell_012]++[cell_013])) ((tags_006++tags_007)++(tags_008++tags_009)) ((tags_010++tags_011)++(tags_012++tags_013)) (checkWitnessTape_append ([cell_006]++[cell_007]) ([cell_008]++[cell_009]) (tags_006++tags_007) (tags_008++tags_009) (checkWitnessTape_append [cell_006] [cell_007] tags_006 tags_007 checked_006 checked_007) (checkWitnessTape_append [cell_008] [cell_009] tags_008 tags_009 checked_008 checked_009)) (checkWitnessTape_append ([cell_010]++[cell_011]) ([cell_012]++[cell_013]) (tags_010++tags_011) (tags_012++tags_013) (checkWitnessTape_append [cell_010] [cell_011] tags_010 tags_011 checked_010 checked_011) (checkWitnessTape_append [cell_012] [cell_013] tags_012 tags_013 checked_012 checked_013))) (checkWitnessTape_append (([cell_014]++[cell_015])++([cell_016]++[cell_017])) (([cell_018]++[cell_019])++([cell_020]++[cell_021])) ((tags_014++tags_015)++(tags_016++tags_017)) ((tags_018++tags_019)++(tags_020++tags_021)) (checkWitnessTape_append ([cell_014]++[cell_015]) ([cell_016]++[cell_017]) (tags_014++tags_015) (tags_016++tags_017) (checkWitnessTape_append [cell_014] [cell_015] tags_014 tags_015 checked_014 checked_015) (checkWitnessTape_append [cell_016] [cell_017] tags_016 tags_017 checked_016 checked_017)) (checkWitnessTape_append ([cell_018]++[cell_019]) ([cell_020]++[cell_021]) (tags_018++tags_019) (tags_020++tags_021) (checkWitnessTape_append [cell_018] [cell_019] tags_018 tags_019 checked_018 checked_019) (checkWitnessTape_append [cell_020] [cell_021] tags_020 tags_021 checked_020 checked_021)))) (checkWitnessTape_append ((([cell_022]++[cell_023])++([cell_024]++[cell_025]))++(([cell_026]++[cell_027])++([cell_028]++[cell_029]))) ((([cell_030]++[cell_031])++([cell_032]++[cell_033]))++(([cell_034]++[cell_035])++([cell_036]++[cell_037]))) (((tags_022++tags_023)++(tags_024++tags_025))++((tags_026++tags_027)++(tags_028++tags_029))) (((tags_030++tags_031)++(tags_032++tags_033))++((tags_034++tags_035)++(tags_036++tags_037))) (checkWitnessTape_append (([cell_022]++[cell_023])++([cell_024]++[cell_025])) (([cell_026]++[cell_027])++([cell_028]++[cell_029])) ((tags_022++tags_023)++(tags_024++tags_025)) ((tags_026++tags_027)++(tags_028++tags_029)) (checkWitnessTape_append ([cell_022]++[cell_023]) ([cell_024]++[cell_025]) (tags_022++tags_023) (tags_024++tags_025) (checkWitnessTape_append [cell_022] [cell_023] tags_022 tags_023 checked_022 checked_023) (checkWitnessTape_append [cell_024] [cell_025] tags_024 tags_025 checked_024 checked_025)) (checkWitnessTape_append ([cell_026]++[cell_027]) ([cell_028]++[cell_029]) (tags_026++tags_027) (tags_028++tags_029) (checkWitnessTape_append [cell_026] [cell_027] tags_026 tags_027 checked_026 checked_027) (checkWitnessTape_append [cell_028] [cell_029] tags_028 tags_029 checked_028 checked_029))) (checkWitnessTape_append (([cell_030]++[cell_031])++([cell_032]++[cell_033])) (([cell_034]++[cell_035])++([cell_036]++[cell_037])) ((tags_030++tags_031)++(tags_032++tags_033)) ((tags_034++tags_035)++(tags_036++tags_037)) (checkWitnessTape_append ([cell_030]++[cell_031]) ([cell_032]++[cell_033]) (tags_030++tags_031) (tags_032++tags_033) (checkWitnessTape_append [cell_030] [cell_031] tags_030 tags_031 checked_030 checked_031) (checkWitnessTape_append [cell_032] [cell_033] tags_032 tags_033 checked_032 checked_033)) (checkWitnessTape_append ([cell_034]++[cell_035]) ([cell_036]++[cell_037]) (tags_034++tags_035) (tags_036++tags_037) (checkWitnessTape_append [cell_034] [cell_035] tags_034 tags_035 checked_034 checked_035) (checkWitnessTape_append [cell_036] [cell_037] tags_036 tags_037 checked_036 checked_037)))))
#print axioms checked_005

theorem checked_004 : checkWitnessTape [cell_004] tags_004 = true := by
  decide +kernel
#print axioms checked_004

theorem checked_003 : checkWitnessTape [cell_003] tags_003 = true := by
  decide +kernel
#print axioms checked_003

theorem checked_002 : checkWitnessTape [cell_002] tags_002 = true := by
  decide +kernel
#print axioms checked_002

theorem checked_001 : checkWitnessTape [cell_001] tags_001 = true := by
  decide +kernel
#print axioms checked_001

theorem checked_000 : checkWitnessTape [cell_000] tags_000 = true := by
  apply checkWitnessTape_split cell_000 (((((tags_001++tags_002)++(tags_003++tags_004))++((tags_005++tags_038)++(tags_039++tags_072)))++(((tags_073++tags_106)++(tags_107++tags_140))++((tags_141++tags_142)++(tags_175++tags_208))))++((((tags_209++tags_210)++(tags_211++tags_212))++((tags_213++tags_246)++(tags_247++tags_280)))++(((tags_281++tags_314)++(tags_315++tags_316))++((tags_317++tags_350)++(tags_351++tags_384))))) (by decide +kernel) (by decide +kernel)
  change checkWitnessTape ((((([cell_001]++[cell_002])++([cell_003]++[cell_004]))++(([cell_005]++[cell_038])++([cell_039]++[cell_072])))++((([cell_073]++[cell_106])++([cell_107]++[cell_140]))++(([cell_141]++[cell_142])++([cell_175]++[cell_208]))))++(((([cell_209]++[cell_210])++([cell_211]++[cell_212]))++(([cell_213]++[cell_246])++([cell_247]++[cell_280])))++((([cell_281]++[cell_314])++([cell_315]++[cell_316]))++(([cell_317]++[cell_350])++([cell_351]++[cell_384]))))) (((((tags_001++tags_002)++(tags_003++tags_004))++((tags_005++tags_038)++(tags_039++tags_072)))++(((tags_073++tags_106)++(tags_107++tags_140))++((tags_141++tags_142)++(tags_175++tags_208))))++((((tags_209++tags_210)++(tags_211++tags_212))++((tags_213++tags_246)++(tags_247++tags_280)))++(((tags_281++tags_314)++(tags_315++tags_316))++((tags_317++tags_350)++(tags_351++tags_384))))) = true
  exact (checkWitnessTape_append (((([cell_001]++[cell_002])++([cell_003]++[cell_004]))++(([cell_005]++[cell_038])++([cell_039]++[cell_072])))++((([cell_073]++[cell_106])++([cell_107]++[cell_140]))++(([cell_141]++[cell_142])++([cell_175]++[cell_208])))) (((([cell_209]++[cell_210])++([cell_211]++[cell_212]))++(([cell_213]++[cell_246])++([cell_247]++[cell_280])))++((([cell_281]++[cell_314])++([cell_315]++[cell_316]))++(([cell_317]++[cell_350])++([cell_351]++[cell_384])))) ((((tags_001++tags_002)++(tags_003++tags_004))++((tags_005++tags_038)++(tags_039++tags_072)))++(((tags_073++tags_106)++(tags_107++tags_140))++((tags_141++tags_142)++(tags_175++tags_208)))) ((((tags_209++tags_210)++(tags_211++tags_212))++((tags_213++tags_246)++(tags_247++tags_280)))++(((tags_281++tags_314)++(tags_315++tags_316))++((tags_317++tags_350)++(tags_351++tags_384)))) (checkWitnessTape_append ((([cell_001]++[cell_002])++([cell_003]++[cell_004]))++(([cell_005]++[cell_038])++([cell_039]++[cell_072]))) ((([cell_073]++[cell_106])++([cell_107]++[cell_140]))++(([cell_141]++[cell_142])++([cell_175]++[cell_208]))) (((tags_001++tags_002)++(tags_003++tags_004))++((tags_005++tags_038)++(tags_039++tags_072))) (((tags_073++tags_106)++(tags_107++tags_140))++((tags_141++tags_142)++(tags_175++tags_208))) (checkWitnessTape_append (([cell_001]++[cell_002])++([cell_003]++[cell_004])) (([cell_005]++[cell_038])++([cell_039]++[cell_072])) ((tags_001++tags_002)++(tags_003++tags_004)) ((tags_005++tags_038)++(tags_039++tags_072)) (checkWitnessTape_append ([cell_001]++[cell_002]) ([cell_003]++[cell_004]) (tags_001++tags_002) (tags_003++tags_004) (checkWitnessTape_append [cell_001] [cell_002] tags_001 tags_002 checked_001 checked_002) (checkWitnessTape_append [cell_003] [cell_004] tags_003 tags_004 checked_003 checked_004)) (checkWitnessTape_append ([cell_005]++[cell_038]) ([cell_039]++[cell_072]) (tags_005++tags_038) (tags_039++tags_072) (checkWitnessTape_append [cell_005] [cell_038] tags_005 tags_038 checked_005 checked_038) (checkWitnessTape_append [cell_039] [cell_072] tags_039 tags_072 checked_039 checked_072))) (checkWitnessTape_append (([cell_073]++[cell_106])++([cell_107]++[cell_140])) (([cell_141]++[cell_142])++([cell_175]++[cell_208])) ((tags_073++tags_106)++(tags_107++tags_140)) ((tags_141++tags_142)++(tags_175++tags_208)) (checkWitnessTape_append ([cell_073]++[cell_106]) ([cell_107]++[cell_140]) (tags_073++tags_106) (tags_107++tags_140) (checkWitnessTape_append [cell_073] [cell_106] tags_073 tags_106 checked_073 checked_106) (checkWitnessTape_append [cell_107] [cell_140] tags_107 tags_140 checked_107 checked_140)) (checkWitnessTape_append ([cell_141]++[cell_142]) ([cell_175]++[cell_208]) (tags_141++tags_142) (tags_175++tags_208) (checkWitnessTape_append [cell_141] [cell_142] tags_141 tags_142 checked_141 checked_142) (checkWitnessTape_append [cell_175] [cell_208] tags_175 tags_208 checked_175 checked_208)))) (checkWitnessTape_append ((([cell_209]++[cell_210])++([cell_211]++[cell_212]))++(([cell_213]++[cell_246])++([cell_247]++[cell_280]))) ((([cell_281]++[cell_314])++([cell_315]++[cell_316]))++(([cell_317]++[cell_350])++([cell_351]++[cell_384]))) (((tags_209++tags_210)++(tags_211++tags_212))++((tags_213++tags_246)++(tags_247++tags_280))) (((tags_281++tags_314)++(tags_315++tags_316))++((tags_317++tags_350)++(tags_351++tags_384))) (checkWitnessTape_append (([cell_209]++[cell_210])++([cell_211]++[cell_212])) (([cell_213]++[cell_246])++([cell_247]++[cell_280])) ((tags_209++tags_210)++(tags_211++tags_212)) ((tags_213++tags_246)++(tags_247++tags_280)) (checkWitnessTape_append ([cell_209]++[cell_210]) ([cell_211]++[cell_212]) (tags_209++tags_210) (tags_211++tags_212) (checkWitnessTape_append [cell_209] [cell_210] tags_209 tags_210 checked_209 checked_210) (checkWitnessTape_append [cell_211] [cell_212] tags_211 tags_212 checked_211 checked_212)) (checkWitnessTape_append ([cell_213]++[cell_246]) ([cell_247]++[cell_280]) (tags_213++tags_246) (tags_247++tags_280) (checkWitnessTape_append [cell_213] [cell_246] tags_213 tags_246 checked_213 checked_246) (checkWitnessTape_append [cell_247] [cell_280] tags_247 tags_280 checked_247 checked_280))) (checkWitnessTape_append (([cell_281]++[cell_314])++([cell_315]++[cell_316])) (([cell_317]++[cell_350])++([cell_351]++[cell_384])) ((tags_281++tags_314)++(tags_315++tags_316)) ((tags_317++tags_350)++(tags_351++tags_384)) (checkWitnessTape_append ([cell_281]++[cell_314]) ([cell_315]++[cell_316]) (tags_281++tags_314) (tags_315++tags_316) (checkWitnessTape_append [cell_281] [cell_314] tags_281 tags_314 checked_281 checked_314) (checkWitnessTape_append [cell_315] [cell_316] tags_315 tags_316 checked_315 checked_316)) (checkWitnessTape_append ([cell_317]++[cell_350]) ([cell_351]++[cell_384]) (tags_317++tags_350) (tags_351++tags_384) (checkWitnessTape_append [cell_317] [cell_350] tags_317 tags_350 checked_317 checked_350) (checkWitnessTape_append [cell_351] [cell_384] tags_351 tags_384 checked_351 checked_384)))))
#print axioms checked_000

theorem erased_fixture : eraseTape tags_000 = [54, 6, 6, 6, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6, 6, 1, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6, 6, 54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6, 6, 54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6, 6, 6, 6, 54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 6, 54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6, 6] := by
  decide +kernel
#print axioms erased_fixture

theorem checked : checkWitnessTape [ordinalCellCode 2241383] tags_000 = true := checked_000
#print axioms checked

end Seed0024PhaseCore20261007.PureCentre385Compositional
