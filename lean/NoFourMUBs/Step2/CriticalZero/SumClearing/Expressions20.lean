import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions19
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0960 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0959
def v0960 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0959 X Y k)
theorem e0960_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0960) = v0960 X Y k := by
  simp only [e0960,v0960,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0959_eval]
def e0961 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0960 e0127
def v0961 (X Y k : ℂ) : ℂ := (v0960 X Y k)*(v0127 X Y k)
theorem e0961_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0961) = v0961 X Y k := by
  simp only [e0961,v0961,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0960_eval,e0127_eval]
def e0962 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0953 e0961
def v0962 (X Y k : ℂ) : ℂ := (v0953 X Y k)+(v0961 X Y k)
theorem e0962_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0962) = v0962 X Y k := by
  simp only [e0962,v0962,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0953_eval,e0961_eval]
def e0963 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0962 e0152
def v0963 (X Y k : ℂ) : ℂ := (v0962 X Y k)*(v0152 X Y k)
theorem e0963_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0963) = v0963 X Y k := by
  simp only [e0963,v0963,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0962_eval,e0152_eval]
def e0964 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0939
def v0964 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0939 X Y k)
theorem e0964_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0964) = v0964 X Y k := by
  simp only [e0964,v0964,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0939_eval]
def e0965 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0964 e0744
def v0965 (X Y k : ℂ) : ℂ := (v0964 X Y k)*(v0744 X Y k)
theorem e0965_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0965) = v0965 X Y k := by
  simp only [e0965,v0965,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0964_eval,e0744_eval]
def e0966 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0946
def v0966 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0946 X Y k)
theorem e0966_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0966) = v0966 X Y k := by
  simp only [e0966,v0966,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0946_eval]
def e0967 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0966 e0748
def v0967 (X Y k : ℂ) : ℂ := (v0966 X Y k)*(v0748 X Y k)
theorem e0967_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0967) = v0967 X Y k := by
  simp only [e0967,v0967,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0966_eval,e0748_eval]
def e0968 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0967
def v0968 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0967 X Y k)
theorem e0968_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0968) = v0968 X Y k := by
  simp only [e0968,v0968,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0967_eval]
def e0969 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0968 e0585
def v0969 (X Y k : ℂ) : ℂ := (v0968 X Y k)*(v0585 X Y k)
theorem e0969_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0969) = v0969 X Y k := by
  simp only [e0969,v0969,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0968_eval,e0585_eval]
def e0970 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0965 e0969
def v0970 (X Y k : ℂ) : ℂ := (v0965 X Y k)+(v0969 X Y k)
theorem e0970_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0970) = v0970 X Y k := by
  simp only [e0970,v0970,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0965_eval,e0969_eval]
def e0971 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0970 e0245
def v0971 (X Y k : ℂ) : ℂ := (v0970 X Y k)*(v0245 X Y k)
theorem e0971_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0971) = v0971 X Y k := by
  simp only [e0971,v0971,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0970_eval,e0245_eval]
def e0972 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0964 e0748
def v0972 (X Y k : ℂ) : ℂ := (v0964 X Y k)*(v0748 X Y k)
theorem e0972_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0972) = v0972 X Y k := by
  simp only [e0972,v0972,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0964_eval,e0748_eval]
def e0973 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0972 e0001
def v0973 (X Y k : ℂ) : ℂ := (v0972 X Y k)*(v0001 X Y k)
theorem e0973_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0973) = v0973 X Y k := by
  simp only [e0973,v0973,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0972_eval,e0001_eval]
def e0974 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0966 e0744
def v0974 (X Y k : ℂ) : ℂ := (v0966 X Y k)*(v0744 X Y k)
theorem e0974_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0974) = v0974 X Y k := by
  simp only [e0974,v0974,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0966_eval,e0744_eval]
def e0975 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0973 e0974
def v0975 (X Y k : ℂ) : ℂ := (v0973 X Y k)+(v0974 X Y k)
theorem e0975_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0975) = v0975 X Y k := by
  simp only [e0975,v0975,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0973_eval,e0974_eval]
def e0976 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0967
def v0976 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0967 X Y k)
theorem e0976_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0976) = v0976 X Y k := by
  simp only [e0976,v0976,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0967_eval]
def e0977 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0976 e0001
def v0977 (X Y k : ℂ) : ℂ := (v0976 X Y k)*(v0001 X Y k)
theorem e0977_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0977) = v0977 X Y k := by
  simp only [e0977,v0977,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0976_eval,e0001_eval]
def e0978 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0975 e0977
def v0978 (X Y k : ℂ) : ℂ := (v0975 X Y k)+(v0977 X Y k)
theorem e0978_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0978) = v0978 X Y k := by
  simp only [e0978,v0978,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0975_eval,e0977_eval]
def e0979 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0978 e0255
def v0979 (X Y k : ℂ) : ℂ := (v0978 X Y k)*(v0255 X Y k)
theorem e0979_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0979) = v0979 X Y k := by
  simp only [e0979,v0979,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0978_eval,e0255_eval]
def e0980 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0979
def v0980 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0979 X Y k)
theorem e0980_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0980) = v0980 X Y k := by
  simp only [e0980,v0980,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0979_eval]
def e0981 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0980 e0127
def v0981 (X Y k : ℂ) : ℂ := (v0980 X Y k)*(v0127 X Y k)
theorem e0981_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0981) = v0981 X Y k := by
  simp only [e0981,v0981,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0980_eval,e0127_eval]
def e0982 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0971 e0981
def v0982 (X Y k : ℂ) : ℂ := (v0971 X Y k)+(v0981 X Y k)
theorem e0982_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0982) = v0982 X Y k := by
  simp only [e0982,v0982,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0971_eval,e0981_eval]
def e0983 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0982 e0661
def v0983 (X Y k : ℂ) : ℂ := (v0982 X Y k)*(v0661 X Y k)
theorem e0983_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0983) = v0983 X Y k := by
  simp only [e0983,v0983,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0982_eval,e0661_eval]
def e0984 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0939 e0466
def v0984 (X Y k : ℂ) : ℂ := (v0939 X Y k)*(v0466 X Y k)
theorem e0984_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0984) = v0984 X Y k := by
  simp only [e0984,v0984,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0939_eval,e0466_eval]
def e0985 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0946 e0472
def v0985 (X Y k : ℂ) : ℂ := (v0946 X Y k)*(v0472 X Y k)
theorem e0985_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0985) = v0985 X Y k := by
  simp only [e0985,v0985,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0946_eval,e0472_eval]
def e0986 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0985
def v0986 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0985 X Y k)
theorem e0986_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0986) = v0986 X Y k := by
  simp only [e0986,v0986,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0985_eval]
def e0987 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0986 e0475
def v0987 (X Y k : ℂ) : ℂ := (v0986 X Y k)*(v0475 X Y k)
theorem e0987_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0987) = v0987 X Y k := by
  simp only [e0987,v0987,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0986_eval,e0475_eval]
def e0988 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0984 e0987
def v0988 (X Y k : ℂ) : ℂ := (v0984 X Y k)+(v0987 X Y k)
theorem e0988_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0988) = v0988 X Y k := by
  simp only [e0988,v0988,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0984_eval,e0987_eval]
def e0989 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0988 e0065
def v0989 (X Y k : ℂ) : ℂ := (v0988 X Y k)*(v0065 X Y k)
theorem e0989_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0989) = v0989 X Y k := by
  simp only [e0989,v0989,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0988_eval,e0065_eval]
def e0990 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0939 e0472
def v0990 (X Y k : ℂ) : ℂ := (v0939 X Y k)*(v0472 X Y k)
theorem e0990_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0990) = v0990 X Y k := by
  simp only [e0990,v0990,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0939_eval,e0472_eval]
def e0991 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0946 e0466
def v0991 (X Y k : ℂ) : ℂ := (v0946 X Y k)*(v0466 X Y k)
theorem e0991_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0991) = v0991 X Y k := by
  simp only [e0991,v0991,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0946_eval,e0466_eval]
def e0992 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0990 e0991
def v0992 (X Y k : ℂ) : ℂ := (v0990 X Y k)+(v0991 X Y k)
theorem e0992_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0992) = v0992 X Y k := by
  simp only [e0992,v0992,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0990_eval,e0991_eval]
def e0993 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0985
def v0993 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0985 X Y k)
theorem e0993_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0993) = v0993 X Y k := by
  simp only [e0993,v0993,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0985_eval]
def e0994 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0992 e0993
def v0994 (X Y k : ℂ) : ℂ := (v0992 X Y k)+(v0993 X Y k)
theorem e0994_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0994) = v0994 X Y k := by
  simp only [e0994,v0994,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0992_eval,e0993_eval]
def e0995 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0994 e0075
def v0995 (X Y k : ℂ) : ℂ := (v0994 X Y k)*(v0075 X Y k)
theorem e0995_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0995) = v0995 X Y k := by
  simp only [e0995,v0995,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0994_eval,e0075_eval]
def e0996 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0995
def v0996 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0995 X Y k)
theorem e0996_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0996) = v0996 X Y k := by
  simp only [e0996,v0996,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0995_eval]
def e0997 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0996 e0541
def v0997 (X Y k : ℂ) : ℂ := (v0996 X Y k)*(v0541 X Y k)
theorem e0997_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0997) = v0997 X Y k := by
  simp only [e0997,v0997,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0996_eval,e0541_eval]
def e0998 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0989 e0997
def v0998 (X Y k : ℂ) : ℂ := (v0989 X Y k)+(v0997 X Y k)
theorem e0998_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0998) = v0998 X Y k := by
  simp only [e0998,v0998,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0989_eval,e0997_eval]
def e0999 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 7
def v0999 (X Y k : ℂ) : ℂ := (v0009 X Y k)^7
theorem e0999_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0999) = v0999 X Y k := by
  simp only [e0999,v0999,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e1000 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0790 e0999
def v1000 (X Y k : ℂ) : ℂ := (v0790 X Y k)*(v0999 X Y k)
theorem e1000_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1000) = v1000 X Y k := by
  simp only [e1000,v1000,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0790_eval,e0999_eval]
def e1001 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1000 e0113
def v1001 (X Y k : ℂ) : ℂ := (v1000 X Y k)*(v0113 X Y k)
theorem e1001_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1001) = v1001 X Y k := by
  simp only [e1001,v1001,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1000_eval,e0113_eval]
def e1002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1001 e0115
def v1002 (X Y k : ℂ) : ℂ := (v1001 X Y k)*(v0115 X Y k)
theorem e1002_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1002) = v1002 X Y k := by
  simp only [e1002,v1002,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1001_eval,e0115_eval]
def e1003 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1002 e0228
def v1003 (X Y k : ℂ) : ℂ := (v1002 X Y k)*(v0228 X Y k)
theorem e1003_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1003) = v1003 X Y k := by
  simp only [e1003,v1003,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1002_eval,e0228_eval]
def e1004 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1003 e0230
def v1004 (X Y k : ℂ) : ℂ := (v1003 X Y k)*(v0230 X Y k)
theorem e1004_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1004) = v1004 X Y k := by
  simp only [e1004,v1004,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1003_eval,e0230_eval]
def e1005 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0998 e1004
def v1005 (X Y k : ℂ) : ℂ := (v0998 X Y k)*(v1004 X Y k)
theorem e1005_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1005) = v1005 X Y k := by
  simp only [e1005,v1005,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0998_eval,e1004_eval]
def e1006 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[6]]]
def v1006 (X Y k : ℂ) : ℂ := (6 : ℂ)
theorem e1006_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1006) = v1006 X Y k := by
  norm_num [e1006,v1006,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e1007 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1006 e0939
def v1007 (X Y k : ℂ) : ℂ := (v1006 X Y k)*(v0939 X Y k)
theorem e1007_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1007) = v1007 X Y k := by
  simp only [e1007,v1007,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1006_eval,e0939_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
