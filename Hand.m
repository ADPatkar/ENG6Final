classdef Hand
    properties (Access = public)
        cards = [];
    end
    methods (Access = public)
        function obj = Hand(deck)
            import pkg.Deck.*
            obj.cards = deck.cards(1:2);
            obj.cards(1).privacy = 1;
        end
        
        function 
    end
end