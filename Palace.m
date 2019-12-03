classdef Palace
    properties
        places= [];
    end
    methods 
        function obj= Palace(deck)
            import pkg.Deck.*
            import pkg.Card.*
            obj.places = [deck.cards(1:3);deck.cards(4:6)];
           
            
            
        end
    end
end
