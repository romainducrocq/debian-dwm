//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	{" ", "echo \"$(cat /sys/class/power_supply/BAT1/status): $(cat /sys/class/power_supply/BAT1/capacity)%\"",	30,		17},

	{"Disk: ", "df -h / | awk ' /[0-9]/ {print $3 \"/\" $2}'",	30,		18},

	{"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		19},

	{"", "date '+%b %d (%a) %I:%M%p |'",					5,		20},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
