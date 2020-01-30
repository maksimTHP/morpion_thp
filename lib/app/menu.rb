class Menu

  # introduction et boucle pour recommencer
  def initialize # Création du menu au lancement du jeu
    puts '+----------+----------+----------+'.yellow
    puts '|                                |'.yellow
    puts '|  BIENVENUE AU JEU DU MORPION   |'.yellow
    puts '|                                |'.yellow
    puts '+----------+----------+----------+'.yellow

    print "Joueur 1 comment t'appelles-tu ? ".yellow	# Demande le nom du premier joueur
		puts "(ou appuyez sur entrée pour 'J01')"
    print '> '
    $name1 = gets.chomp                               # variable globale avec le nom du joeur 1
		if $name1.strip == "" then $name1 = "J01" end     # Si pas de nom, on appelle comme J01
		print "Joueur 2 comment t'apelles-tu ? ".yellow	  # Demande le nom du deuxieme joueur
		puts "(ou appuyez sur entrée pour 'J02')"
    print '> '
    $name2 = gets.chomp                               # variable globale avec le nom du joeur 2
		if $name2.strip == "" then $name2 = "J02" end     # Si pas de nom, on appelle comme J02
  end

  def repeat # Demande au joueur si il veut recommencer la partie
    print 'Voulez-vous recommencer ? '.yellow
		puts '(Oui = 1 / Non = 0)'
    print '> '
    reponse = gets.chomp.to_i
  end
end
