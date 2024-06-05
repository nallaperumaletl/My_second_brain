# Define formatting variables
banner="\e[104m"
reset="\e[0m"
bold="\e[1m"
blink="\e[5m"
color="\e[96m"

# First echo statement
echo -e "${banner}Think Beyond!!! Dream Big ! ${reset}"
# Second echo statement
echo -e "${banner}${bold}${blink}${color}DO MORE..${reset}"


#### My defining in .bashrc
```bash
echo ""
echo "Hi Nalla Perumal.. Have a Good day!"
#echo -e "\e[38;5;82mHi Nalla Perumal \e[38;5;198Have a Good Day!"
echo ""
banner1="\e[104m"
reset="\e[0m"
echo -e "${banner1}Think Beyond!!! Dream Big !${reset}"
echo ""
#echo "DO MORE..."
#echo -e "\e[5mDO MORE..\e[0m" 
#echo -e "\e[96mDO MORE!!"      # This is for color(LIGHT CAYAN)
echo -e "\e[3m\e[1m\e[5m\e[96mDO MORE..\e[0m\e[0m"
#echo `date`
```
