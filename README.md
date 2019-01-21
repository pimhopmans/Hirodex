# Stappen
* Ruby on Rails leren.  
  https://guides.rubyonrails.org/getting_started.html  
  https://www.codecademy.com/learn/learn-rails  

* API-requests leren.  
  https://pokeapi.co/  
  http://www.pokeapi-how.appspot.com/  
  https://www.learnhowtoprogram.com/rails/building-an-e-commerce-site-with-ajax-and-apis/making-api-calls-in-rails  
    
* Database opbouwen.  

* Favorieten bijhouden.  
  Door middel van een tabel.  

* Lay-out  
  (Met behulp van een template van Codecademy)  

* Extra’s  
  Zoekfunctie op basis van id of naam van een Pokémon. (niet aan toegekomen)  

# Problemen  
* De index-pagina zou meer moeten laten zien dan alleen de naam van de Pokémon. Hoe de PokéAPI is opgebouwd betekent dat dat voor elke individuele Pokémon een GET-request gedaan moet worden. Dat zijn (voor alle Pokémon) 949 requests. Dat duurt te lang en daarom heb ik besloten alleen de eerste 151 Pokémon te laten zien (hardcoded) en de database van tevoren op te bouwen met de benodigde informatie (id, naam, sprite, type). De informatie van één Pokémon wordt wel opgevraagd uit de API, zodat de vooraf opgebouwde database klein blijft.  

* Om API-requests te doen heb ik gekozen voor HTTParty in plaats van RestClient of Faraday. Faraday heeft meer functionaliteit dan HTTParty die niet nodig was voor dit project. RestClient werkte niet met mijn Ruby on Rails configuratie.  

* Om favorieten bij te houden heb ik besloten om een ‘inlog-functie’ aan de applicatie toe te voegen zodat alle favoriete Pokémon van een gebruiker bijgehouden kunnen worden in een tabel. De knop om aan te geven dat een Pokémon favoriet is kon, door conflicterende variabelenamen, alleen geplaatst worden op de *show*-pagina van een Pokémon. Bij een druk op de knop wordt de favoriete Pokémon opgeslagen in een tabel en wordt de knop vervangen (door jQuery) met de onfavoriet-knop.

* De PokéAPI heeft de flavor texts van de Pokémon op een andere plek geplaatst dan waar de meeste info over een Pokémon staat. Dit kostte een extra API-call. Door deze informatie moest heen geloopt worden om er zeker van te zijn dat er een Engelse flavor text gevonden wordt.

* De layout is nog niet helemaal naar tevredenheid. Maar met mijn ervaring van HTML/CSS is dit hoe ver ik nu kan komen.

* Voor de extra zoek-functie is helaas geen tijd meer.
