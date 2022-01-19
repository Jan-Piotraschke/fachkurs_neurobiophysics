NEURON {
	POINT_PROCESS MySynapse
	RANGE tau_A, tau_B, e, i, g
	NONSPECIFIC_CURRENT i
}

UNITS {
	(nA) = (nanoamp)
	(mV) = (millivolt)
	(uS) = (microsiemens)
}

PARAMETER {
	tau_A = 0.1 (ms)
	tau_B = 10 (ms)
	e = 0	(mV)
}

ASSIGNED {
	v (mV)
	i (nA)
	g (uS)
}
: ODE variables
STATE {
	A (uS)
	B (uS)
}
: initial conditions
INITIAL {
	A = 0
	B = 0
}
: our model system
BREAKPOINT {
	SOLVE state METHOD cnexp
	g = B - A
	i = g * (v - e)
}
: ODEs
DERIVATIVE state {
	A' = -A / tau_A
	B' = -B / tau_B
}

NET_RECEIVE(weight (uS)) {
	A = A + weight
	B = B + weight
}

