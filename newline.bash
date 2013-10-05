# newline
#
# ZSH styled % newline
#
# gist: https://gist.github.com/bahamas10/6567725
#
# Author: Dave Eddy <dave@daveeddy.com>
# Date: 10/4/13
# License: MIT

# conditonally output `%\n` based on the current column of the cursor
newline() {
	# get the cursor column
	# http://stackoverflow.com/questions/2575037/how-to-get-the-cursor-position-in-bash
	local pos oldstty row=0 col=0
	exec < /dev/tty
	oldstty=$(stty -g)
	stty raw -echo min 0
	tput u7 > /dev/tty
	IFS=';' read -r -d R -a pos
	stty "$oldstty"
	# change from one-based to zero based so they work with: tput cup $row $col
	col=${pos[1]}
	col=$((${col:-1} - 1))

	# if the cursor is not at column 0, inject the %\n
	if (( col != 0 )); then
		tput bold
		tput rev
		echo '%'
		tput sgr0
	fi
}
