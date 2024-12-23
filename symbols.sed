#! /usr/bin/env -S sed -E -f
# transliterate
# replace invalid chars
s/[“”]/"/g
s/’/'/g
# en em dash
s/–/-/g
# pipe
s/∣/|/g

s/±/$\\pm$/g

# greek letters. complete this from the undergradmath
s/α/$\\alpha$/g
s/σ/$\\sigma$/g
s/β/$\\beta$/g
s/γ/$\\gamma$/g
s/Σ/$\\Sigma$/g
s/≤/$\\leq$/g
s/π/$\\pi$/g
s/ε/$\\epsilon$/g
s/φ/$\\phi$/g
s/θ/$\\theta$/g
s/∞/$\\infty$/g
s/µ/$\\mu$/g
s/∧/$\\wedge$/g
s/λ/$\\lambda$/g
s/×/$\\times$/g
s/χ/$\\chi$/g
