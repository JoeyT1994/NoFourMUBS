import CriticalNonzeroPolynomialData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroPolynomial20261003
section
variable {R : Type*} [CommRing R]

def quarticCoefficient0 (k : R) : R := (((((((((((((((((((((((((((((((((((((((-3486784401 : R)*k^2)+(-13817997441 : R))*k^2)+(-36288385803 : R))*k^2)+(-66019321107 : R))*k^2)+(-97342276500 : R))*k^2)+(-113367072852 : R))*k^2)+(-106045084332 : R))*k^2)+(-77530577868 : R))*k^2)+(-41671922958 : R))*k^2)+(-12671943342 : R))*k^2)+(809608438 : R))*k^2)+(2919271558 : R))*k^2)+(992028508 : R))*k^2)+(-94976356 : R))*k^2)+(-102983804 : R))*k^2)+(361444 : R))*k^2)+(3541463 : R))*k^2)+(97767 : R))*k^2)+(-37827 : R))*k^2)+(-2187 : R))

def quarticCoefficient1 (k : R) : R := (((((((((((((((((((((((((((((((((((((((420901272 : R)*k^2)+(2886787512 : R))*k^2)+(10138319640 : R))*k^2)+(23574687768 : R))*k^2)+(39960327456 : R))*k^2)+(51993245088 : R))*k^2)+(52815287712 : R))*k^2)+(41097327520 : R))*k^2)+(23075687568 : R))*k^2)+(7882475088 : R))*k^2)+(267577360 : R))*k^2)+(-1249425904 : R))*k^2)+(-551175392 : R))*k^2)+(-26053216 : R))*k^2)+(39260320 : R))*k^2)+(5820064 : R))*k^2)+(-1539688 : R))*k^2)+(-201544 : R))*k^2)+(18072 : R))*k^2)+(1944 : R))

def quarticCoefficient2 (k : R) : R := (((((((((((((((((((((((((((((((((((((((((((2657205 : R)*k^2)+(21434787 : R))*k^2)+(61061040 : R))*k^2)+(8960868 : R))*k^2)+(-494889993 : R))*k^2)+(-1930567587 : R))*k^2)+(-4332876080 : R))*k^2)+(-6763489216 : R))*k^2)+(-7744637422 : R))*k^2)+(-6571024242 : R))*k^2)+(-4018102352 : R))*k^2)+(-1583621272 : R))*k^2)+(-213780626 : R))*k^2)+(158593418 : R))*k^2)+(100467952 : R))*k^2)+(17905248 : R))*k^2)+(-2985207 : R))*k^2)+(-1245665 : R))*k^2)+(88288 : R))*k^2)+(55956 : R))*k^2)+(-1077 : R))*k^2)+(-567 : R))

def quarticCoefficient3 (k : R) : R := (((((((((((((((((((((((((((((((((((((((((((-196830 : R)*k^2)+(-2112642 : R))*k^2)+(-10072188 : R))*k^2)+(-27469044 : R))*k^2)+(-43992462 : R))*k^2)+(-28402850 : R))*k^2)+(49631280 : R))*k^2)+(177805200 : R))*k^2)+(289069828 : R))*k^2)+(310448508 : R))*k^2)+(231487640 : R))*k^2)+(113765320 : R))*k^2)+(27898164 : R))*k^2)+(-4948692 : R))*k^2)+(-6718928 : R))*k^2)+(-2244720 : R))*k^2)+(-237798 : R))*k^2)+(32326 : R))*k^2)+(2436 : R))*k^2)+(-2548 : R))*k^2)+(-230 : R))*k^2)+(54 : R))

def quarticCoefficient4 (k : R) : R := ((((((((((((((((((((((((((((((((((((((((((3645 : R)*k^2)+(48651 : R))*k^2)+(296349 : R))*k^2)+(1082753 : R))*k^2)+(2610350 : R))*k^2)+(4254172 : R))*k^2)+(4445588 : R))*k^2)+(2077380 : R))*k^2)+(-1813538 : R))*k^2)+(-4606278 : R))*k^2)+(-4695482 : R))*k^2)+(-2879202 : R))*k^2)+(-1005952 : R))*k^2)+(-59380 : R))*k^2)+(136324 : R))*k^2)+(78260 : R))*k^2)+(22461 : R))*k^2)+(3667 : R))*k^2)+(261 : R))*k^2)+(-23 : R))*k^2)+(-6 : R))*k^2)

def denominatorCoefficient0 (k : R) : R := (((((((((((((((((((((-59049 : R)*k^2)+(-118098 : R))*k^2)+(-172773 : R))*k^2)+(-175608 : R))*k^2)+(-112338 : R))*k^2)+(-31916 : R))*k^2)+(8430 : R))*k^2)+(6280 : R))*k^2)+(-133 : R))*k^2)+(-146 : R))*k^2)+(-9 : R))

def denominatorCoefficient1 (k : R) : R := (((((((((((((((((((((4374 : R)*k^2)+(19836 : R))*k^2)+(38254 : R))*k^2)+(40784 : R))*k^2)+(24876 : R))*k^2)+(6440 : R))*k^2)+(-1780 : R))*k^2)+(-1584 : R))*k^2)+(-194 : R))*k^2)+(60 : R))*k^2)+(6 : R))

def denominatorCoefficient2 (k : R) : R := (((((((((((((((((((((((16 : R)*k^2)+(79 : R))*k^2)+(126 : R))*k^2)+(3 : R))*k^2)+(-216 : R))*k^2)+(-226 : R))*k^2)+(-12 : R))*k^2)+(126 : R))*k^2)+(88 : R))*k^2)+(19 : R))*k^2)+(-2 : R))*k^2)+(-1 : R))

def factorScale (k : R) : R := -262144*k^2*(3*k^2+1)^3

def cubeCoefficient0 (k : R) : R := denominatorCoefficient0 k^3

def cubeCoefficient1 (k : R) : R := 3*(denominatorCoefficient0 k)^2*denominatorCoefficient1 k

def cubeCoefficient2 (k : R) : R := 3*(denominatorCoefficient0 k)^2*denominatorCoefficient2 k+3*denominatorCoefficient0 k*(denominatorCoefficient1 k)^2

def cubeCoefficient3 (k : R) : R := 6*denominatorCoefficient0 k*denominatorCoefficient1 k*denominatorCoefficient2 k+(denominatorCoefficient1 k)^3

def cubeCoefficient4 (k : R) : R := 3*denominatorCoefficient0 k*(denominatorCoefficient2 k)^2+3*(denominatorCoefficient1 k)^2*denominatorCoefficient2 k

def cubeCoefficient5 (k : R) : R := 3*denominatorCoefficient1 k*(denominatorCoefficient2 k)^2

def cubeCoefficient6 (k : R) : R := (denominatorCoefficient2 k)^3

def factorCoefficient00 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient0 k)

def factorCoefficient01 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient1 k+quarticCoefficient1 k*cubeCoefficient0 k)

def factorCoefficient02 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient2 k+quarticCoefficient1 k*cubeCoefficient1 k+quarticCoefficient2 k*cubeCoefficient0 k)

def factorCoefficient03 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient3 k+quarticCoefficient1 k*cubeCoefficient2 k+quarticCoefficient2 k*cubeCoefficient1 k+quarticCoefficient3 k*cubeCoefficient0 k)

def factorCoefficient04 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient4 k+quarticCoefficient1 k*cubeCoefficient3 k+quarticCoefficient2 k*cubeCoefficient2 k+quarticCoefficient3 k*cubeCoefficient1 k+quarticCoefficient4 k*cubeCoefficient0 k)

def factorCoefficient05 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient5 k+quarticCoefficient1 k*cubeCoefficient4 k+quarticCoefficient2 k*cubeCoefficient3 k+quarticCoefficient3 k*cubeCoefficient2 k+quarticCoefficient4 k*cubeCoefficient1 k)

def factorCoefficient06 (k : R) : R := factorScale k*(quarticCoefficient0 k*cubeCoefficient6 k+quarticCoefficient1 k*cubeCoefficient5 k+quarticCoefficient2 k*cubeCoefficient4 k+quarticCoefficient3 k*cubeCoefficient3 k+quarticCoefficient4 k*cubeCoefficient2 k)

def factorCoefficient07 (k : R) : R := factorScale k*(quarticCoefficient1 k*cubeCoefficient6 k+quarticCoefficient2 k*cubeCoefficient5 k+quarticCoefficient3 k*cubeCoefficient4 k+quarticCoefficient4 k*cubeCoefficient3 k)

def factorCoefficient08 (k : R) : R := factorScale k*(quarticCoefficient2 k*cubeCoefficient6 k+quarticCoefficient3 k*cubeCoefficient5 k+quarticCoefficient4 k*cubeCoefficient4 k)

def factorCoefficient09 (k : R) : R := factorScale k*(quarticCoefficient3 k*cubeCoefficient6 k+quarticCoefficient4 k*cubeCoefficient5 k)

def factorCoefficient10 (k : R) : R := factorScale k*(quarticCoefficient4 k*cubeCoefficient6 k)

theorem quartic_decomposition (k K : R) :
    quartic k K=quarticCoefficient0 k+quarticCoefficient1 k*K+
      quarticCoefficient2 k*K^2+quarticCoefficient3 k*K^3+quarticCoefficient4 k*K^4 := by
  unfold quartic quarticCoefficient0 quarticCoefficient1 quarticCoefficient2 quarticCoefficient3 quarticCoefficient4
  ring

theorem denominator_decomposition (k K : R) :
    denFactorMinus k K*denFactorPlus k K=denominatorCoefficient0 k+
      denominatorCoefficient1 k*K+denominatorCoefficient2 k*K^2 := by
  unfold denFactorMinus denFactorPlus denominatorCoefficient0 denominatorCoefficient1 denominatorCoefficient2
  ring

end
#print axioms quartic_decomposition
#print axioms denominator_decomposition
end CriticalNonzeroPolynomial20261003
