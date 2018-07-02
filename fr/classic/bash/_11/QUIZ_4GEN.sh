function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash11/if1 2> /dev/null
	rm $HOME/.GameScript_bash11/if2 2> /dev/null
	rm $HOME/.GameScript_bash11/if3 2> /dev/null
	rm $HOME/.GameScript_bash11/if4 2> /dev/null
	rm $HOME/.GameScript_bash11/if5 2> /dev/null
	rm $HOME/.GameScript_bash11/if6 2> /dev/null
	rm $HOME/.GameScript_bash11/if7 2> /dev/null
	rm $HOME/.GameScript_bash11/CODE 2> /dev/null
	rmdir $HOME/.GameScript_bash11 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 11 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  exit
  unlock "bash" "10" "2211" "ddfb"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="11"
LANGUAGE="fr"
SPEAKER="m1"

LINES=155
if [ ! "$1" == "MUTE" ]; then prepare_audio; fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
