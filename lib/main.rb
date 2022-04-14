require "./00_journalists.rb"
require "./01_cryptocurrencies.rb"


################ CRYPTOCURRENCIES

def main_cryptocurrencies
    puts "----------------------------------------------------"
    tab = ["La ou les crypto qui ont la plus grosse valeur","La ou les crypto qui ont la plus petite valeur","Les devises dont le cours est inférieur à 6000","La devise la plus chère parmi celle dont le cours est inférieur à 6000","Revenir au menu principal"]
    tab.each_with_index{|val,i| puts "#{i+1}. #{val}"}
    puts "----------------------------------------------------"
    choice = 0
    while choice < 1 || choice > 5
        puts "Votre choix :"
        choice = gets.chomp.to_i
    end
    return choice
end

def perform_cryptocurrencies
    choice = main_cryptocurrencies
    case choice
    when 1
        biggest_value
    when 2
        samllest_value
    when 3
        below_6000 = less_than_6000
        puts "Voici la liste des devises dont le cours est inférieur à 6000"
        below_6000.each_key {|k|
            puts k
        }
    when 4
        biggest_value_less_than_6000
    when 5
        return choice
    end
end


################ JOUNALISTS
def main_journalists
    puts "----------------------------------------------------"
    tab = ["Combien y a t-il de handle ?","Quel est le handle le plus court ?","Combien y-a-t'il de hanle contenant 5 caractères ?","Combien de handle commencent par une majucule ?", "Liste des handle par ordre alphabétique", "Liste des handle trier par taille", "Position de la personne @epenser","Répartition des handle par taille (nb handle avec 1 caractre, nb handle avec 2 caractere etc.)","Revenir au menu principal"]
    tab.each_with_index{|val,i| puts "#{i+1}. #{val}"}
    puts "----------------------------------------------------"
    choice = 0
    while choice < 1 || choice > 9
        puts "Votre choix :"
        choice = gets.chomp.to_i
    end
    return choice
end

def perform_journalists
    choice = main_journalists
    case choice
    when 1
        number_handle
    when 2
        shortest_handle
    when 3
        handle_five_characters
    when 4
        handle_start_uppercase
    when 5
        puts "La tu m'en demande trop"
        puts "Appuyer sur entree pour quitter"
        gets.chomp.to_i
        puts "Non, je rigole, j'ai galérer mais j'y suis arrivé !!"
        alphabetical_order
    when 6
        size_list = size_handle
        puts "Le tableau trier par taille croissante :\n#{size_list}"
    when 7
        handle_position
    when 8
        repartition_handle
    when 9
        return choice
    end
end

################ MAIN
def main 
    puts "----------------------------------------------------"
    tab = ["Journalistes","Crypto","Quittez le programme"]
    tab.each_with_index{|val,i| puts "#{i+1}. #{val}"}
    puts "----------------------------------------------------"
    choice = 0
    while choice < 1 || choice > 3
        puts "Votre choix :"
        choice = gets.chomp.to_i
    end
    return choice
end

def perform
    choice = main
    case choice
    when 1
        loop do 
            choice = perform_journalists
            break if choice == 9
        end

    when 2
        loop do 
            choice = perform_cryptocurrencies
            break if choice == 5
        end
    when 3
        puts "À bientôt ! On t'attend pour encore plus d'aventures"
        return choice
    end
end

loop do 
    choice = perform
    break if choice == 3
end