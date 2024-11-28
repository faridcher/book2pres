#! /usr/bin/env -S sed -E -f
# transliterate 
# replace invalid chars
s/[“”]/"/g
s/’/'/g
s/–/-/g

# escape tex special chars don't do _ in equations! eqn are edited after this script
s/[&%$#_{}~^\]/\\&/g

# greek letters
s/α/$\\alpha$$/g
s/β/$\\beta$/g
s/γ/$\\gamma$/g
s/Σ/$\\Sigma$/g
s/≤/$\\leq$/g
s/π/$\\pi$/g
s/ε/$\\epsilon$/g
s/φ/$\\phi$/g
s/θ/$\\theta$/g
s/∞/$\\infty$/g
