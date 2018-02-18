function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 4"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quelle est la commande pour déplacer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Quelle est la commande pour renommer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Comment renommer un fichier nommé 'oui' dans votre répertoire courant en 'non' et le déplacer dans son répertoire parent ?" "mv oui ../non"
  answer_text_fr "Comment copier dans votre répertoire courant un fichier dont le chemin absolu est '/root/file' ?" "cp /root/file ."
  answer_text_fr "Comment copier un fichier caché '.file' situé dans votre répertoire parent et le renommer en un fichier non caché 'file' dans le dossier '/root' ?" "cp ../.file /root/file"
  answer_text_fr "Quel symbole doit être utilisé pour séparer simplement deux commandes sur une même ligne ?" ";"
  answer_text_fr "Comment exécuter la commande 'rm file' uniquement si la commande précédente 'cd /root' est un succès ?" "cd /root&&rm file"
  answer_text_fr "Comment afficher 'good' si la commande 'cd /root' est un succès, et 'bad' sinon ?" "cd /root&&echo good||echo bad"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 2421a9d18fbb" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 4\" dans le chat, veuillez saisir votre pseudo :"
  PSEUDO=""
  while [[ $PSEUDO = "" ]]; do
    echo -en "\\e[1;31;42m # \\e[0m"
    read -r PSEUDO < /dev/tty
  done
  PASS=`encode $PSEUDO "a9d1" "21af"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 4" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
# justumen_intro_fr

enter 1