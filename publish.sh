#
# bash publish.sh "maximum-draws" "Maximum Draws" "https://www.hackerrank.com/challenges/maximum-draws" ~/hackerrank/maximum-draws.cpp
#

if [ $# -ne 4 ];
then
    echo bash publish.sh "maximum-draws" "Maximum Draws" "https://www.hackerrank.com/challenges/maximum-draws" ~/hackerrank/maximum-draws.cpp
    exit
fi

git add $4
git commit -m "Adding solution to $1"
git push origin master

cd ~/arpitbhayani.me/
python scripts/add-new-programming-question.py hackerrank "$1" "$2" "$3" $4
git add --all
git commit -m "Adding solution of $2"
git push origin source

bash scripts/publish.sh
