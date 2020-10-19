# Textmodes Bold, Dim, Underline und Reverse
export tmDim="$(tput dim)";                     # Textmode dim (half bright)
export tmReset="$(tput sgr0)";                  # Textmode normal (turn off)
export tmBold="$(tput bold)";                   # Textmode bold
export tmULStart="$(tput smul)";                # Textmode begin underline
export tmULStop="$(tput rmul)";                 # Textmode end underline
export tmREVERSE="$(tput rev)";                 # Textmode reverse
