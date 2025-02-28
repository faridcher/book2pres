#! /usr/bin/env -S sed -E -f
# transliterate
# replace invalid chars
s/[“”]/"/g
s/’/'/g
# en em dash
s/–/-/g
# pipe
s/∣/|/g
# hair space U+200A
s/ //g
# four-per-em-space U+2005
s/ //g

s/±/$\\pm$/g

# greek letters. complete this from the undergradmath
s/α/$\\alpha$/g
s/β/$\\beta$/g
s/γ/$\\gamma$/g
s/Γ/$\\Gamma$/g
s/δ/$\\delta$/g
s/Δ/$\\Delta$/g
s/ϵ/$\\epsilon$/g
s/ε/$\\varepsilon$/g
s/ζ/$\\zeta$/g
s/η/$\\eta$/g
s/θ/$\\theta$/g
s/Θ/$\\Theta$/g
s/κ/$\\kappa$/g
s/λ/$\\lambda$/g
s/µ/$\\mu$/g
s/ν/$\\nu$/g
s/ξ/$\\xi$/g
s/π/$\\pi$/g
s/ρ/$\\rho$/g
s/σ/$\\sigma$/g
s/Σ/$\\Sigma$/g
s/τ/$\\tau$/g
s/φ/$\\phi$/g
s/χ/$\\chi$/g
s/ψ/$\\psi$/g
s/ω/$\\omega$/g
s/Ω/$\\Omega$/g

# symbols
s/≤/$\\leq$/g
s/∞/$\\infty$/g
s/∧/$\\wedge$/g
s/×/$\\times$/g
